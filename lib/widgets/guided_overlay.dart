import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../onboarding/guided_overlay_geometry.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_overlay_barrier.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import '../ui/adaptive/adaptive_dimensions.dart';
import '../ui/platform/ui_track.dart';

/// Debug toggle for onboarding logs and diagnostics.
/// Set to true for verification builds; false for release.
const bool kOnboardingDebug = true;

/// Guided onboarding overlay widget for steps 4-16.
/// Supports both simple mode (legacy) and advanced mode (steps 4-16 with bottom sheet).
class GuidedOverlay extends StatefulWidget {
  const GuidedOverlay({
    super.key,
    required this.text,
    this.highlightedKey,
    this.secondHighlightedKey,
    this.showCompletionButton = false,
    this.showContinueButton = false,
    this.continueButtonText = 'Continue',
    this.onComplete,
    this.onContinue,
    this.scrollController,
    this.showDimmedOverlay = true,
    // Advanced mode parameters (for steps 4-16)
    this.currentStep,
    this.onPreviousStep,
    this.onSkip,
    this.child,
    this.onHighlightReadyChanged,
  });

  final String text;
  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final bool showCompletionButton;
  final bool showContinueButton;
  final String continueButtonText;
  final VoidCallback? onComplete;
  final VoidCallback? onContinue;
  final ScrollController? scrollController;
  final bool showDimmedOverlay;
  // Advanced mode
  final int? currentStep;
  final VoidCallback? onPreviousStep;
  final VoidCallback? onSkip;
  final Widget? child;
  // Optional callback to notify when the current highlight rect becomes ready/unready.
  // Used by hosting screens (e.g., HomeScreen step 4) to hard-lock taps until
  // the overlay geometry is fully measured.
  final ValueChanged<bool>? onHighlightReadyChanged;

  @override
  State<GuidedOverlay> createState() => _GuidedOverlayState();
}

class _GuidedOverlayState extends State<GuidedOverlay> {
  Rect? _targetRect;
  bool _isSyncing = false;
  int _syncToken = 0;
  double? _bottomSheetHeight;
  final GlobalKey _bottomSheetKey = GlobalKey();
  // Paint surface key for the dimmed overlay CustomPaint (single source of truth for coordinate space)
  final GlobalKey _paintSurfaceKey = GlobalKey();
  bool _measurementScheduled = false; // Guard against measurement loops
  bool _lastHighlightReady = false;

  // Step 4 readiness gating – limit how many frames we wait for HomeScreen/target/paint
  // to be fully laid out before attempting measurement.
  int _step4ReadinessAttempts = 0;
  static const int _maxStep4ReadinessAttempts = 20;

  // Determine if we're in advanced mode (steps 4-16)
  bool get _isAdvancedMode => widget.currentStep != null && widget.currentStep! >= 4 && widget.currentStep! <= 16;
  bool get _shouldUseBottomSheet => _isAdvancedMode && !kIsWeb && MediaQuery.of(context).size.width < 900;

  @override
  void initState() {
    super.initState();
    if (_isAdvancedMode) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scheduleMeasurement();
        _syncToStep();
      });
    }
  }

  @override
  void didUpdateWidget(GuidedOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Freeze fix: only skip sync if step didn't change
    if (_isAdvancedMode && oldWidget.currentStep != widget.currentStep) {
      // If we are leaving step 4, clear highlight readiness so hosts can lock taps again.
      if (oldWidget.currentStep == 4 && widget.currentStep != 4) {
        _updateHighlightReady(false);
      }
      // Step changed - re-measure bottom sheet (button visibility may change height) and resync
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scheduleMeasurement();
        _syncToStep();
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Handle orientation changes: re-measure bottom sheet height and re-sync when metrics change
    if (_isAdvancedMode) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scheduleMeasurement();
        _syncToStep();
      });
    }
  }
  
  /// Measure the actual rendered height of the bottom sheet.
  /// Called after layout to get accurate height for barrier positioning.
  /// Debounced: only setState if height changed by >1px to prevent loops.
  void _measureBottomSheetHeight() {
    if (!mounted) return;
    _measurementScheduled = false; // Clear flag when measurement runs
    
    final box = _bottomSheetKey.currentContext?.findRenderObject() as RenderBox?;
    if (box != null && box.hasSize) {
      final measuredHeight = box.size.height;
      // Only update if height changed by more than 1 logical pixel
      if (_bottomSheetHeight == null || 
          (measuredHeight - _bottomSheetHeight!).abs() > 1.0) {
        if (kOnboardingDebug && kDebugMode) {
          debugPrint('[GUIDED_OVERLAY] Measured bottom sheet height: $measuredHeight (was: $_bottomSheetHeight)');
        }
        setState(() {
          _bottomSheetHeight = measuredHeight;
        });
      }
    }
    // If not yet laid out, don't set estimated height - use 0.0 fallback in build()
  }
  
  /// Schedule a bottom sheet height measurement (debounced).
  void _scheduleMeasurement() {
    if (!_measurementScheduled && mounted) {
      _measurementScheduled = true;
      WidgetsBinding.instance.addPostFrameCallback((_) => _measureBottomSheetHeight());
    }
  }

  Future<void> _syncToStep() async {
    final currentToken = ++_syncToken;
    _isSyncing = true;
    _targetRect = null; // Clear rect during sync
    
    if (!mounted || currentToken != _syncToken) return;
    
    // Wait for layout to settle (all steps use same timing)
    final stepNumber = widget.currentStep ?? 4;
    await WidgetsBinding.instance.endOfFrame;
    await WidgetsBinding.instance.endOfFrame;
    
    // For step 4 (Grid layout), wait additional frame if key not ready
    if (stepNumber == 4) {
      final targetKey = widget.highlightedKey ?? widget.secondHighlightedKey;
      if (targetKey?.currentContext == null) {
        await WidgetsBinding.instance.endOfFrame;
      }
    }
    
    if (!mounted || currentToken != _syncToken) return;
    
    // Ensure target visible
    await _ensureTargetVisible();
    
    if (!mounted || currentToken != _syncToken) return;
    
    // Verify target above bottom sheet for steps 7-10 and 13
    if ((stepNumber >= 7 && stepNumber <= 10) || stepNumber == 13) {
      await _verifyTargetAboveBottomSheet();
    }
    
    if (!mounted || currentToken != _syncToken) return;
    
    // STEP 4 READINESS GATE: ensure HomeScreen + target + paint surface are ready.
    if (stepNumber == 4) {
      final targetKey = widget.highlightedKey ?? widget.secondHighlightedKey;
      final ready = _isStep4Ready(targetKey);

      if (!ready) {
        _step4ReadinessAttempts++;
        if (kOnboardingDebug && kDebugMode) {
          debugPrint(
            '[STEP 4 READY] Gate NOT ready (attempt $_step4ReadinessAttempts/$_maxStep4ReadinessAttempts). '
            'Scheduling next frame.',
          );
        }

        if (_step4ReadinessAttempts <= _maxStep4ReadinessAttempts) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted || currentToken != _syncToken) return;
            _syncToStep();
          });
        } else {
          if (kOnboardingDebug && kDebugMode) {
            debugPrint('[STEP 4 READY] Gate FAILED after $_step4ReadinessAttempts attempts. '
                'Giving up on measurement for this session.');
          }
          if (mounted && currentToken == _syncToken) {
            setState(() {
              _isSyncing = false;
            });
          }
        }
        return;
      } else {
        if (kOnboardingDebug && kDebugMode) {
          debugPrint(
            '[STEP 4 READY] Gate PASSED (attempt $_step4ReadinessAttempts). '
            'Proceeding to stable rect measurement.',
          );
        }
      }
    }

    // Measure target rect - UNIFIED pipeline for all steps (4-16)
    // Retry until rect is stable (<= 2px delta) or attempts exhausted.
    // This restores the stable-rect behavior required for grids/lists.
    Rect? measuredRect;
    final targetKey = widget.highlightedKey ?? widget.secondHighlightedKey;
    
    // Stable measurement loop: up to 5 attempts, accept when delta <= 2 on all components
    Rect? previousRect;
    for (int attempt = 0; attempt < 5; attempt++) {
      if (!mounted || currentToken != _syncToken) return;
      
      final currentRect = _getRectForKey(targetKey);
      if (currentRect != null) {
        if (previousRect != null) {
          final deltaX = (currentRect.left - previousRect.left).abs();
          final deltaY = (currentRect.top - previousRect.top).abs();
          final deltaW = (currentRect.width - previousRect.width).abs();
          final deltaH = (currentRect.height - previousRect.height).abs();
          
          if (deltaX <= 2 && deltaY <= 2 && deltaW <= 2 && deltaH <= 2) {
            // Stable rect - accept and stop
            measuredRect = currentRect;
            break;
          }
        }
        previousRect = currentRect;
      }
      
      // Wait for next frame before re-measuring
      await WidgetsBinding.instance.endOfFrame;
    }
    
    _targetRect = measuredRect;
    if (stepNumber == 4) {
      if (measuredRect != null) {
        // Reset attempts once we have a usable rect
        _step4ReadinessAttempts = 0;
        _updateHighlightReady(true);
      } else {
        _updateHighlightReady(false);
      }
    } else {
      // Any non-step-4 step clears the step 4 readiness flag
      _updateHighlightReady(false);
    }
    
    if (mounted && currentToken == _syncToken) {
      setState(() {
        _isSyncing = false;
      });
    }
  }

  void _updateHighlightReady(bool ready) {
    if (_lastHighlightReady == ready) return;
    _lastHighlightReady = ready;
    if (widget.onHighlightReadyChanged != null) {
      if (kOnboardingDebug && kDebugMode) {
        debugPrint('[STEP4_LOCK] ready=$ready');
      }
      widget.onHighlightReadyChanged!(ready);
    }
  }

  @override
  void dispose() {
    // Ensure readiness flag is cleared when overlay is disposed.
    _updateHighlightReady(false);
    super.dispose();
  }

  /// Step 4 readiness check: require non-null contexts and non-zero sizes for
  /// both the target RenderBox and the paint surface RenderBox.
  bool _isStep4Ready(GlobalKey? targetKey) {
    if (targetKey?.currentContext == null) {
      if (kOnboardingDebug && kDebugMode) {
        debugPrint('[STEP 4 READY] targetKey.currentContext is null');
      }
      return false;
    }
    if (_paintSurfaceKey.currentContext == null) {
      if (kOnboardingDebug && kDebugMode) {
        debugPrint('[STEP 4 READY] _paintSurfaceKey.currentContext is null');
      }
      return false;
    }

    final targetBox = targetKey!.currentContext!.findRenderObject() as RenderBox?;
    final paintBox = _paintSurfaceKey.currentContext!.findRenderObject() as RenderBox?;

    final targetReady = targetBox != null && targetBox.hasSize && targetBox.size.width > 0 && targetBox.size.height > 0;
    final paintReady = paintBox != null && paintBox.hasSize && paintBox.size.width > 0 && paintBox.size.height > 0;

    if (kOnboardingDebug && kDebugMode) {
      debugPrint(
        '[STEP 4 READY] readiness check: '
        'targetReady=$targetReady (box=$targetBox), '
        'paintReady=$paintReady (box=$paintBox)',
      );
    }

    return targetReady && paintReady;
  }

  Future<void> _ensureTargetVisible() async {
    final targetKey = widget.highlightedKey ?? widget.secondHighlightedKey;
    if (targetKey == null) return;
    
    final targetContext = targetKey.currentContext;
    if (targetContext == null) return;
    
    final stepNumber = widget.currentStep ?? 4;
    
    // Step-specific alignment mapping
    double alignment;
    if (stepNumber == 7) {
      alignment = 0.12;
    } else if (stepNumber == 8 || stepNumber == 9) {
      alignment = 0.15;
    } else if (stepNumber == 10) {
      alignment = 0.18;
    } else if (stepNumber == 13 || stepNumber == 14) {
      alignment = 0.18;
    } else {
      alignment = 0.2;
    }
    
    // Use Scrollable.ensureVisible (not controller)
    Scrollable.ensureVisible(
      targetContext,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      alignment: alignment,
      alignmentPolicy: ScrollPositionAlignmentPolicy.explicit,
    );
    
    await WidgetsBinding.instance.endOfFrame;
    
    // DEBUG: Log Steps 7-11 auto-scroll (temporary, removable)
    if (kOnboardingDebug && kDebugMode && stepNumber >= 7 && stepNumber <= 11) {
      final scrollOffset = widget.scrollController?.offset ?? 0;
      debugPrint('[GUIDED_OVERLAY Steps 7-11] After ensureVisible for step $stepNumber, scrollOffset: $scrollOffset');
    }
  }

  Future<void> _verifyTargetAboveBottomSheet() async {
    final targetKey = widget.highlightedKey ?? widget.secondHighlightedKey;
    if (targetKey == null) return;
    
    final targetContext = targetKey.currentContext;
    if (targetContext == null) return;
    
    final renderBox = targetContext.findRenderObject() as RenderBox?;
    if (renderBox == null || !renderBox.hasSize) return;
    
    final screenSize = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).padding;
    final safeAreaTop = viewPadding.top;
    
    // Use estimated height (last-good version uses estimate)
    final estimatedHeight = _shouldUseBottomSheet 
        ? MobileGuidedBottomSheet.getEstimatedHeight(context)
        : 0.0;
    
    final safeBottom = screenSize.height - estimatedHeight - viewPadding.bottom - 12;
    final globalPosition = renderBox.localToGlobal(Offset.zero);
    final rectBottom = globalPosition.dy + renderBox.size.height;
    
    // If target is below safe bottom, scroll up
    if (rectBottom > safeBottom) {
      final overlap = rectBottom - safeBottom;
      final scrollController = widget.scrollController;
      if (scrollController != null && scrollController.hasClients) {
        final currentOffset = scrollController.position.pixels;
        final newOffset = (currentOffset + overlap + 12).clamp(
          scrollController.position.minScrollExtent,
          scrollController.position.maxScrollExtent,
        );
        await scrollController.animateTo(
          newOffset,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
        await WidgetsBinding.instance.endOfFrame;
      }
    }
    
    // Also ensure target top is below app bar
    final rectTop = globalPosition.dy;
    if (rectTop < safeAreaTop + 56) {
      final scrollController = widget.scrollController;
      if (scrollController != null && scrollController.hasClients) {
        final currentOffset = scrollController.position.pixels;
        final neededScroll = (safeAreaTop + 56 - rectTop);
        final newOffset = (currentOffset - neededScroll).clamp(
          scrollController.position.minScrollExtent,
          scrollController.position.maxScrollExtent,
        );
        await scrollController.animateTo(
          newOffset,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
        await WidgetsBinding.instance.endOfFrame;
      }
    }
  }

  /// Measure the rect for a target key in the paint surface's local coordinate space.
  /// Returns null if either the target or the paint surface is not ready.
  Rect? _getRectForKey(GlobalKey? key) {
    if (key?.currentContext == null) return null;
    if (_paintSurfaceKey.currentContext == null) return null;
    
    final targetBox = key!.currentContext!.findRenderObject() as RenderBox?;
    final paintBox = _paintSurfaceKey.currentContext!.findRenderObject() as RenderBox?;
    if (targetBox == null || !targetBox.hasSize || paintBox == null || !paintBox.hasSize) {
      return null;
    }
    
    // Global bounds of the target
    final globalTopLeft = targetBox.localToGlobal(Offset.zero);
    final globalBottomRight = targetBox.localToGlobal(targetBox.size.bottomRight(Offset.zero));
    
    // Convert once into the paint surface's local coordinate space
    final localTopLeft = paintBox.globalToLocal(globalTopLeft);
    final localBottomRight = paintBox.globalToLocal(globalBottomRight);
    final localRect = Rect.fromPoints(localTopLeft, localBottomRight);

    // STEP 4 DIAGNOSTICS: log both global and local rect plus canvas size + DPR,
    // but only when guided onboarding is active and we're on step 4.
    if (kOnboardingDebug && kDebugMode) {
      final isStep4 = GuidedOnboardingController.isActive &&
          GuidedOnboardingController.currentStep == GuidedOnboardingStep.trackSelection;
      if (isStep4) {
        final paintSize = paintBox.size;
        final dpr = WidgetsBinding.instance.platformDispatcher.views.isNotEmpty
            ? WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio
            : 1.0;
        debugPrint(
          '[STEP 4 DEBUG] globalRect: '
          '(${globalTopLeft.dx}, ${globalTopLeft.dy}) -> '
          '(${globalBottomRight.dx}, ${globalBottomRight.dy}), '
          'localRect: $localRect, '
          'paintSurfaceSize: $paintSize, '
          'devicePixelRatio: $dpr',
        );
      }
    }

    return localRect;
  }

  @override
  Widget build(BuildContext context) {
    // Advanced mode: steps 4-16 with bottom sheet
    if (_isAdvancedMode && _shouldUseBottomSheet) {
      // Use measured height if available, otherwise use 0.0 (safe fallback)
      // Bottom sheet is Layer 3 (always on top), so it remains tappable even if barrier covers full screen
      final excludeHeight = _bottomSheetHeight ?? 0.0;
      
      // Schedule measurement after this build completes (debounced)
      _scheduleMeasurement();
      
      return Stack(
        children: [
          // LAYER 1: Child content (app content - tap-blocked by barrier)
          if (widget.child != null) widget.child!,
          
          // LAYER 2: Dimmed overlay + Barrier (blocks taps to app content only)
          // IMPORTANT: Barrier does NOT cover bottom sheet area
          if (widget.showDimmedOverlay) ...[
            // Visual scrim (full screen for visual effect, NON-INTERACTIVE)
            Positioned.fill(
              child: IgnorePointer(
                ignoring: true, // Scrim is purely visual - does not intercept taps
                child: _DimmedOverlay(
                  targetRect: _targetRect,
                  paintSurfaceKey: _paintSurfaceKey,
                ),
              ),
            ),

            // DEBUG ONLY: Draw a visible border for Step 4 using the same local rect as the cutout
            if (kOnboardingDebug &&
                widget.currentStep != null &&
                widget.currentStep == 4 &&
                _targetRect != null) ...[
              // Debug log for Step 4 rect and paint surface size
              Builder(
                builder: (context) {
                  if (kOnboardingDebug && kDebugMode) {
                    final paintBox = _paintSurfaceKey.currentContext?.findRenderObject() as RenderBox?;
                    final paintSize = paintBox?.size ?? Size.zero;
                    debugPrint(
                      '[STEP 4 DEBUG] _targetRect (local): $_targetRect, '
                      'paintSurfaceSize: $paintSize',
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              Positioned(
                left: _targetRect!.left,
                top: _targetRect!.top,
                width: _targetRect!.width,
                height: _targetRect!.height,
                child: IgnorePointer(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.redAccent,
                        width: 2,
                      ),
                      // Semi-transparent fill so the debug area is clearly visible.
                      color: Colors.redAccent.withOpacity(0.18),
                    ),
                  ),
                ),
              ),
            ],
            // Tap blocker (excludes bottom sheet area - only covers content above sheet)
            if (widget.highlightedKey != null || widget.secondHighlightedKey != null)
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: excludeHeight, // Exclude bottom sheet area (0.0 until measured)
                child: GuidedOverlayBarrier(
                  targetKey: widget.highlightedKey ?? widget.secondHighlightedKey!,
                  secondTargetKey: widget.highlightedKey != null ? widget.secondHighlightedKey : null,
                  child: const SizedBox.expand(),
                ),
              ),
          ],
          
          // LAYER 3: Bottom sheet (ALWAYS on top, NEVER blocked)
          MobileGuidedBottomSheet(
            key: _bottomSheetKey, // Key for measuring actual rendered height
            text: widget.text,
            stepNumber: widget.currentStep,
            showContinueButton: widget.showContinueButton,
            showCompletionButton: widget.showCompletionButton,
            continueButtonText: widget.continueButtonText,
            onContinue: widget.onContinue,
            onComplete: widget.onComplete,
            onPreviousStep: widget.onPreviousStep,
            onSkip: widget.onSkip,
            showNavigationButtons: true,
          ),
        ],
      );
    }
    
    // Simple mode: legacy behavior
    return Stack(
      children: [
        if (widget.showDimmedOverlay)
          Positioned.fill(
            child: _DimmedOverlay(
              highlightedKey: widget.highlightedKey,
              secondHighlightedKey: widget.secondHighlightedKey,
              scrollController: widget.scrollController,
            ),
          ),
        _MessageBubble(
          text: widget.text,
          showCompletionButton: widget.showCompletionButton,
          showContinueButton: widget.showContinueButton,
          continueButtonText: widget.continueButtonText,
          highlightedKey: widget.highlightedKey,
          onComplete: widget.onComplete,
          onContinue: widget.onContinue,
          scrollController: widget.scrollController,
        ),
      ],
    );
  }
}

class _DimmedOverlay extends StatefulWidget {
  const _DimmedOverlay({
    this.highlightedKey,
    this.secondHighlightedKey,
    this.scrollController,
    this.targetRect,
    this.paintSurfaceKey,
  });

  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final ScrollController? scrollController;
  final Rect? targetRect; // For advanced mode
  final GlobalKey? paintSurfaceKey; // Paint surface key from GuidedOverlay

  @override
  State<_DimmedOverlay> createState() => _DimmedOverlayState();
}

class _DimmedOverlayState extends State<_DimmedOverlay> {
  @override
  void initState() {
    super.initState();
    widget.scrollController?.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(_DimmedOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController?.removeListener(_onScroll);
      widget.scrollController?.addListener(_onScroll);
    }
  }

  @override
  void dispose() {
    widget.scrollController?.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: true,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomPaint(
            key: widget.paintSurfaceKey, // Key on actual paint surface for correct coordinate space
            size: Size(constraints.maxWidth, constraints.maxHeight),
            painter: _OverlayPainter(
              highlightedKey: widget.highlightedKey,
              secondHighlightedKey: widget.secondHighlightedKey,
              targetRect: widget.targetRect,
              dimColor: Colors.black.withValues(alpha: 0.45),
            ),
          );
        },
      ),
    );
  }
}

class _OverlayPainter extends CustomPainter {
  _OverlayPainter({
    this.highlightedKey,
    this.secondHighlightedKey,
    this.targetRect,
    required this.dimColor,
  });

  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final Rect? targetRect; // For advanced mode (already in local coordinates)
  final Color dimColor;

  @override
  void paint(Canvas canvas, Size size) {
    final List<Rect> highlightedRects = [];
    
    // Use targetRect if provided (advanced mode, already local), otherwise compute from keys
    if (targetRect != null) {
      var localRect = targetRect!;
      
      // UNIFIED: Safe canvas bounds intersection (applies to all steps)
      // This prevents cutout from being drawn outside the overlay canvas
      final canvasBounds = Rect.fromLTWH(0, 0, size.width, size.height);
      localRect = localRect.intersect(canvasBounds);
      
      highlightedRects.add(localRect);
    } else {
      // Legacy mode: compute from keys in the paint surface's own coordinate space.
      // For legacy/simple mode we don't rely on advanced mobile behavior, so a direct
      // use of globalPosition is acceptable as long as the paint surface matches the screen.
      if (highlightedKey?.currentContext != null) {
        final renderBox = highlightedKey!.currentContext!.findRenderObject() as RenderBox?;
        if (renderBox != null && renderBox.hasSize) {
          final globalPosition = renderBox.localToGlobal(Offset.zero);
          final localPosition = globalPosition;
          highlightedRects.add(Rect.fromLTWH(
            localPosition.dx,
            localPosition.dy,
            renderBox.size.width,
            renderBox.size.height,
          ));
        }
      }
      
      if (secondHighlightedKey?.currentContext != null) {
        final renderBox = secondHighlightedKey!.currentContext!.findRenderObject() as RenderBox?;
        if (renderBox != null && renderBox.hasSize) {
          final globalPosition = renderBox.localToGlobal(Offset.zero);
          final localPosition = globalPosition;
          highlightedRects.add(Rect.fromLTWH(
            localPosition.dx,
            localPosition.dy,
            renderBox.size.width,
            renderBox.size.height,
          ));
        }
      }
    }
    
    if (highlightedRects.isEmpty) {
      final dimPaint = Paint()..color = dimColor;
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), dimPaint);
      return;
    }
    
    // Calculate combined bounding rect
    double minLeft = size.width;
    double minTop = size.height;
    double maxRight = 0;
    double maxBottom = 0;
    
    for (final rect in highlightedRects) {
      if (rect.left < minLeft) minLeft = rect.left;
      if (rect.top < minTop) minTop = rect.top;
      if (rect.right > maxRight) maxRight = rect.right;
      if (rect.bottom > maxBottom) maxBottom = rect.bottom;
    }
    
    final combinedRect = Rect.fromLTRB(minLeft, minTop, maxRight, maxBottom);
    final dimPaint = Paint()..color = dimColor;

    // Draw dimmed areas around highlighted area
    if (combinedRect.top > 0) {
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, combinedRect.top), dimPaint);
    }
    if (combinedRect.left > 0) {
      canvas.drawRect(
        Rect.fromLTWH(0, combinedRect.top, combinedRect.left, combinedRect.height),
        dimPaint,
      );
    }
    if (combinedRect.right < size.width) {
      canvas.drawRect(
        Rect.fromLTWH(combinedRect.right, combinedRect.top, size.width - combinedRect.right, combinedRect.height),
        dimPaint,
      );
    }
    if (combinedRect.bottom < size.height) {
      canvas.drawRect(
        Rect.fromLTWH(0, combinedRect.bottom, size.width, size.height - combinedRect.bottom),
        dimPaint,
      );
    }
  }

  @override
  bool shouldRepaint(_OverlayPainter oldDelegate) => true;
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({
    required this.text,
    required this.showCompletionButton,
    required this.showContinueButton,
    required this.continueButtonText,
    this.highlightedKey,
    this.onComplete,
    this.onContinue,
    this.scrollController,
  });

  final String text;
  final bool showCompletionButton;
  final bool showContinueButton;
  final String continueButtonText;
  final GlobalKey? highlightedKey;
  final VoidCallback? onComplete;
  final VoidCallback? onContinue;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    if (highlightedKey?.currentContext != null) {
      final renderBox = highlightedKey!.currentContext!.findRenderObject() as RenderBox?;
      if (renderBox != null && renderBox.hasSize) {
        final position = renderBox.localToGlobal(Offset.zero);
        final screenHeight = MediaQuery.of(context).size.height;
        final messageHeight = (showCompletionButton || showContinueButton) ? 180.0 : 100.0;
        final spacing = 16.0;

        final isAbove = position.dy > messageHeight + spacing;
        final top = isAbove
            ? position.dy - messageHeight - spacing
            : position.dy + renderBox.size.height + spacing;

        return Positioned(
          left: 16,
          right: 16,
          top: top.clamp(16.0, screenHeight - messageHeight - 16),
          child: IgnorePointer(
            ignoring: false,
            child: _BubbleContent(
              text: text,
              showCompletionButton: showCompletionButton,
              showContinueButton: showContinueButton,
              continueButtonText: continueButtonText,
              onComplete: onComplete,
              onContinue: onContinue,
            ),
          ),
        );
      }
    }

    return Positioned(
      left: 16,
      right: 16,
      bottom: 24 + MediaQuery.of(context).padding.bottom,
      child: IgnorePointer(
        ignoring: false,
        child: _BubbleContent(
          text: text,
          showCompletionButton: showCompletionButton,
          showContinueButton: showContinueButton,
          continueButtonText: continueButtonText,
          onComplete: onComplete,
          onContinue: onContinue,
        ),
      ),
    );
  }
}

class _BubbleContent extends StatelessWidget {
  const _BubbleContent({
    required this.text,
    required this.showCompletionButton,
    required this.showContinueButton,
    required this.continueButtonText,
    this.onComplete,
    this.onContinue,
  });

  final String text;
  final bool showCompletionButton;
  final bool showContinueButton;
  final String continueButtonText;
  final VoidCallback? onComplete;
  final VoidCallback? onContinue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              height: 1.4,
              color: Color(0xFF1C1C1E),
            ),
          ),
        ),
        if (showContinueButton && onContinue != null) ...[
          const SizedBox(height: 12),
          Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: onContinue,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF007AFF),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  continueButtonText,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ] else if (showCompletionButton) ...[
          const SizedBox(height: 12),
          SizedBox(
            height: 48,
            child: ElevatedButton(
              onPressed: onComplete,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF007AFF),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Onboarding Complete',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
