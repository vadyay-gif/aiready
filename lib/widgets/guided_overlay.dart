import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../onboarding/guided_overlay_geometry.dart';
import '../onboarding/guided_onboarding_controller.dart';
import '../onboarding/guided_overlay_barrier.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import '../ui/adaptive/adaptive_dimensions.dart';
import '../ui/platform/ui_track.dart';

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

  @override
  State<GuidedOverlay> createState() => _GuidedOverlayState();
}

class _GuidedOverlayState extends State<GuidedOverlay> {
  Rect? _targetRect;
  bool _isSyncing = false;
  int _syncToken = 0;
  double? _bottomSheetHeight;

  // Determine if we're in advanced mode (steps 4-16)
  bool get _isAdvancedMode => widget.currentStep != null && widget.currentStep! >= 4 && widget.currentStep! <= 16;
  bool get _shouldUseBottomSheet => _isAdvancedMode && !kIsWeb && MediaQuery.of(context).size.width < 900;

  @override
  void initState() {
    super.initState();
    if (_isAdvancedMode) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _syncToStep());
    }
  }

  @override
  void didUpdateWidget(GuidedOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Freeze fix: only skip sync if step didn't change
    if (_isAdvancedMode && oldWidget.currentStep != widget.currentStep) {
      // Step changed - always resync even if currently syncing
      WidgetsBinding.instance.addPostFrameCallback((_) => _syncToStep());
    }
  }

  Future<void> _syncToStep() async {
    final currentToken = ++_syncToken;
    _isSyncing = true;
    _targetRect = null; // Clear rect during sync
    
    if (!mounted || currentToken != _syncToken) return;
    
    // Step 4 is in a Grid - wait for 2 frames + small delay for stability
    final stepNumber = widget.currentStep ?? 4;
    if (stepNumber == 4) {
      await WidgetsBinding.instance.endOfFrame;
      await WidgetsBinding.instance.endOfFrame;
      await Future.delayed(const Duration(milliseconds: 80));
    } else {
      // Other steps: wait for 2 frames
      await WidgetsBinding.instance.endOfFrame;
      await WidgetsBinding.instance.endOfFrame;
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
    
    // Measure target rect with stability check for step 4
    Rect? measuredRect;
    if (stepNumber == 4) {
      // Step 4: measure until stable (<= 2px delta across 2 frames)
      Rect? prevRect;
      for (int i = 0; i < 5; i++) {
        await WidgetsBinding.instance.endOfFrame;
        if (!mounted || currentToken != _syncToken) return;
        
        final currentRect = _getRectForKey(widget.highlightedKey ?? widget.secondHighlightedKey);
        if (currentRect == null) {
          // Not measurable yet, retry next frame
          continue;
        }
        
        if (prevRect != null) {
          final deltaX = (currentRect.left - prevRect.left).abs();
          final deltaY = (currentRect.top - prevRect.top).abs();
          if (deltaX <= 2 && deltaY <= 2) {
            // Stable - use this rect
            measuredRect = currentRect;
            break;
          }
        }
        prevRect = currentRect;
      }
      // Use last measured rect if stability not achieved
      measuredRect ??= prevRect;
    } else {
      // Other steps: single measurement
      measuredRect = _getRectForKey(widget.highlightedKey ?? widget.secondHighlightedKey);
    }
    
    _targetRect = measuredRect;
    
    // DEBUG: Log Step 4 rect measurement (temporary, removable)
    // Note: _overlayKey is in _DimmedOverlay, not accessible here. Logging will be done in painter if needed.
    if (kDebugMode && stepNumber == 4 && _targetRect != null) {
      final screenSize = MediaQuery.of(context).size;
      final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
      debugPrint('[GUIDED_OVERLAY Step 4] globalRect: ${_targetRect.toString()}, screenSize: $screenSize, devicePixelRatio: $devicePixelRatio');
    }
    
    if (mounted && currentToken == _syncToken) {
      setState(() {
        _isSyncing = false;
      });
    }
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

  Rect? _getRectForKey(GlobalKey? key) {
    if (key?.currentContext == null) return null;
    final renderBox = key!.currentContext!.findRenderObject() as RenderBox?;
    if (renderBox == null || !renderBox.hasSize) return null;
    
    // Get global position of target
    final globalPosition = renderBox.localToGlobal(Offset.zero);
    
    // For advanced mode, the rect will be converted in the painter using overlayKey
    // Return global coordinates here - the painter will convert using _overlayKey
    // This matches the legacy mode behavior where conversion happens in the painter
    return Rect.fromLTWH(
      globalPosition.dx,
      globalPosition.dy,
      renderBox.size.width,
      renderBox.size.height,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Advanced mode: steps 4-16 with bottom sheet
    if (_isAdvancedMode && _shouldUseBottomSheet) {
      return Stack(
        children: [
          // Child content
          if (widget.child != null) widget.child!,
          // Dimmed overlay
          if (widget.showDimmedOverlay)
            Positioned.fill(
              child: _DimmedOverlay(
                targetRect: _targetRect,
              ),
            ),
          // Barrier (blocks taps outside cutout)
          if (widget.showDimmedOverlay && (widget.highlightedKey != null || widget.secondHighlightedKey != null))
            Positioned.fill(
              child: GuidedOverlayBarrier(
                targetKey: widget.highlightedKey ?? widget.secondHighlightedKey!,
                secondTargetKey: widget.highlightedKey != null ? widget.secondHighlightedKey : null,
                child: const SizedBox.expand(),
              ),
            ),
          // Bottom sheet (rendered last to be on top)
          MobileGuidedBottomSheet(
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
  });

  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final ScrollController? scrollController;
  final Rect? targetRect; // For advanced mode

  @override
  State<_DimmedOverlay> createState() => _DimmedOverlayState();
}

class _DimmedOverlayState extends State<_DimmedOverlay> {
  final GlobalKey _overlayKey = GlobalKey();

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
      key: _overlayKey,
      ignoring: true,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomPaint(
            size: Size(constraints.maxWidth, constraints.maxHeight),
            painter: _OverlayPainter(
              highlightedKey: widget.highlightedKey,
              secondHighlightedKey: widget.secondHighlightedKey,
              targetRect: widget.targetRect,
              dimColor: Colors.black.withValues(alpha: 0.45),
              overlayKey: _overlayKey,
              overlayContext: context,
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
    this.overlayKey,
    this.overlayContext,
  });

  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final Rect? targetRect; // For advanced mode (in global coordinates)
  final Color dimColor;
  final GlobalKey? overlayKey;
  final BuildContext? overlayContext; // For coordinate conversion

  @override
  void paint(Canvas canvas, Size size) {
    final List<Rect> highlightedRects = [];
    
    // Use targetRect if provided (advanced mode), otherwise compute from keys
    if (targetRect != null) {
      // Convert targetRect from global to overlay's local coordinate space
      // Convert both topLeft and bottomRight to ensure correct rect bounds
      Offset topLeftLocal = Offset(targetRect!.left, targetRect!.top);
      Offset bottomRightLocal = Offset(targetRect!.right, targetRect!.bottom);
      
      if (overlayKey?.currentContext != null) {
        final overlayRenderBox = overlayKey!.currentContext!.findRenderObject() as RenderBox?;
        if (overlayRenderBox != null) {
          topLeftLocal = overlayRenderBox.globalToLocal(Offset(targetRect!.left, targetRect!.top));
          bottomRightLocal = overlayRenderBox.globalToLocal(Offset(targetRect!.right, targetRect!.bottom));
        }
      } else if (overlayContext != null) {
        // Fallback: use overlayContext to find RenderBox
        final overlayRenderBox = overlayContext!.findRenderObject() as RenderBox?;
        if (overlayRenderBox != null) {
          topLeftLocal = overlayRenderBox.globalToLocal(Offset(targetRect!.left, targetRect!.top));
          bottomRightLocal = overlayRenderBox.globalToLocal(Offset(targetRect!.right, targetRect!.bottom));
        }
      }
      
      // Create rect from converted points to ensure correct bounds
      highlightedRects.add(Rect.fromPoints(topLeftLocal, bottomRightLocal));
    } else {
      // Legacy mode: compute from keys
      if (highlightedKey?.currentContext != null) {
        final renderBox = highlightedKey!.currentContext!.findRenderObject() as RenderBox?;
        if (renderBox != null && renderBox.hasSize) {
          final globalPosition = renderBox.localToGlobal(Offset.zero);
          Offset localPosition = globalPosition;
          if (overlayKey?.currentContext != null) {
            final overlayRenderBox = overlayKey!.currentContext!.findRenderObject() as RenderBox?;
            if (overlayRenderBox != null) {
              localPosition = overlayRenderBox.globalToLocal(globalPosition);
            }
          }
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
          Offset localPosition = globalPosition;
          if (overlayKey?.currentContext != null) {
            final overlayRenderBox = overlayKey!.currentContext!.findRenderObject() as RenderBox?;
            if (overlayRenderBox != null) {
              localPosition = overlayRenderBox.globalToLocal(globalPosition);
            }
          }
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
