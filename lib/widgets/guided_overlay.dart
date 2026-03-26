import 'package:flutter/material.dart';
import '../onboarding/guided_overlay_barrier.dart';
import '../onboarding/mobile_guided_bottom_sheet.dart';
import '../onboarding/onboarding_debug_log.dart';

/// Debug toggle for onboarding logs and diagnostics.
const bool kOnboardingDebug = true;

/// Pixel threshold for detecting rect changes (1.0-2.0px as specified).
const double _kRectChangeThreshold = 1.5;

/// Helper class for animating Rect values.
class _RectTween extends Tween<Rect?> {
  _RectTween({Rect? begin, Rect? end}) : super(begin: begin, end: end);

  @override
  Rect? lerp(double t) {
    if (begin == null || end == null) return end;
    return Rect.lerp(begin, end, t);
  }
}

/// Guided onboarding overlay widget for steps 4-17.
/// Uses MobileGuidedBottomSheet for controls and GuidedOverlayBarrier for hit-testing.
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
    // Advanced mode parameters (for steps 4-17)
    this.currentStep,
    this.onPreviousStep,
    this.onSkip,
    this.child,
    this.onHighlightReadyChanged,
    this.bottomSheetKey,
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
  final ValueChanged<bool>? onHighlightReadyChanged;
  // Optional key for bottom sheet (for scroll positioning)
  final GlobalKey? bottomSheetKey;

  @override
  State<GuidedOverlay> createState() => _GuidedOverlayState();
}

class _GuidedOverlayState extends State<GuidedOverlay> with SingleTickerProviderStateMixin {
  // Rect stability tracking
  Rect? _lastMeasuredRect;
  Rect? _candidateRect;
  Rect? _stableRect;
  int _stableFrames = 0;
  bool _hasEverLockedCutoutForThisStep = false;
  String? _lastNoCutoutReason;
  String? _lastResetReason;
  double? _lastRectDelta;
  int _resetCount = 0;
  int _pendingMeasureFrames = 0;
  int _framesSinceFirstCandidate = 0;
  static const int _kMaxStabilityFrames = 6;
  
  // Animation for smooth cutout transitions
  late AnimationController _rectAnimController;
  Animation<Rect?>? _rectAnimation;
  Rect? _paintRect;
  
  double? _bottomSheetHeight;
  final GlobalKey _bottomSheetKey =
      GlobalKey(debugLabel: 'guidedBottomSheet');
  final GlobalKey _paintSurfaceKey = GlobalKey();
  
  bool _measurementScheduled = false;
  
  @override
  void initState() {
    super.initState();
    widget.scrollController?.addListener(_onScroll);
    
    // Initialize animation controller
    _rectAnimController = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    
    _rectAnimController.addListener(() {
      if (_rectAnimation != null) {
        setState(() {
          _paintRect = _rectAnimation!.value;
        });
      }
    });
    
    _measureRects();
  }

  @override
  void didUpdateWidget(GuidedOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController?.removeListener(_onScroll);
      widget.scrollController?.addListener(_onScroll);
    }
    
    // Detect step/target change by comparing key identity and currentStep
    final stepChanged = oldWidget.highlightedKey != widget.highlightedKey ||
        oldWidget.secondHighlightedKey != widget.secondHighlightedKey ||
        oldWidget.currentStep != widget.currentStep;
    
    if (stepChanged) {
      // Reset stability when step/target changes
      _lastMeasuredRect = null;
      _candidateRect = null;
      _stableRect = null;
      _stableFrames = 0;
      _hasEverLockedCutoutForThisStep = false;
      _lastNoCutoutReason = null;
      _lastResetReason = null;
      _lastRectDelta = null;
      _resetCount = 0;
      _pendingMeasureFrames = 0;
      _framesSinceFirstCandidate = 0;
      _paintRect = null;
      _rectAnimController.reset();
      
      _measureRects();
    }
  }

  @override
  void dispose() {
    widget.scrollController?.removeListener(_onScroll);
    _rectAnimController.dispose();
    super.dispose();
  }

  void _onScroll() {
    _measureRects();
  }

  /// Check if two rects differ beyond the configured threshold.
  bool _rectsDiffer(Rect? a, Rect? b) {
    if (a == null || b == null) return a != b;
    return _rectDelta(a, b) > _kRectChangeThreshold;
  }

  /// Maximum absolute difference between corresponding edges of two rects.
  double _rectDelta(Rect a, Rect b) {
    final dx = (a.left - b.left).abs();
    final dy = (a.top - b.top).abs();
    final dw = (a.width - b.width).abs();
    final dh = (a.height - b.height).abs();
    return [dx, dy, dw, dh].reduce((value, element) => value > element ? value : element);
  }

  /// Heuristic to decide if a rect looks like a tappable tile instead of a header.
  bool _isSaneTileRect(Rect r, EdgeInsets padding) {
    // Require a minimum size to avoid tiny header elements.
    if (r.height < 80.0) return false;
    if (r.width < 120.0) return false;
    // Avoid very top-of-screen regions (status/app bar + a safety margin).
    if (r.top < (padding.top + 80.0)) return false;
    return true;
  }

  /// Compute combined rect from both highlighted keys.
  Rect? _computeCombinedRect() {
    final rect1 = _getRectForKey(widget.highlightedKey);
    final rect2 = _getRectForKey(widget.secondHighlightedKey);
    
    if (rect1 == null && rect2 == null) return null;
    if (rect1 == null) return rect2;
    if (rect2 == null) return rect1;
    
    // Combine both rects
    final minLeft = rect1.left < rect2.left ? rect1.left : rect2.left;
    final minTop = rect1.top < rect2.top ? rect1.top : rect2.top;
    final maxRight = rect1.right > rect2.right ? rect1.right : rect2.right;
    final maxBottom = rect1.bottom > rect2.bottom ? rect1.bottom : rect2.bottom;
    
    return Rect.fromLTRB(minLeft, minTop, maxRight, maxBottom);
  }

  /// Check if target is mounted (has context).
  bool _isTargetMounted() {
    return widget.highlightedKey?.currentContext != null ||
           widget.secondHighlightedKey?.currentContext != null;
  }

  void _measureRects() {
    // Prevent multiple scheduled measurements
    if (_measurementScheduled) return;
    _measurementScheduled = true;

    OnboardingDebugLog.log(
      'overlay',
      'schedule measurement (pendingFrames=$_pendingMeasureFrames, hasLastMeasured=${_lastMeasuredRect != null})',
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      bool needsAnotherFrame = false;
      try {
        if (!mounted) return;

        // Compute candidate rect in overlay coordinates
        final candidateRect = _computeCombinedRect();
        final bottomSheetHeight = _measureBottomSheetHeight();
        final bool hasAnyKey =
            widget.highlightedKey != null || widget.secondHighlightedKey != null;
        final bool targetMounted = _isTargetMounted();

        setState(() {
          _bottomSheetHeight = bottomSheetHeight;
          _candidateRect = candidateRect;

          // Bounded stability pump: ensure we can lock within a few frames.
          final int requiredFrames = _hasEverLockedCutoutForThisStep ? 1 : 2;

          // Frame counter for visible candidate while no stable rect is locked.
          if (!targetMounted || candidateRect == null) {
            _framesSinceFirstCandidate = 0;
          } else if (_stableRect == null) {
            _framesSinceFirstCandidate += 1;
            OnboardingDebugLog.log(
              'overlay',
              'framesSinceFirstCandidate++ => $_framesSinceFirstCandidate',
            );
          }

          if (!targetMounted) {
            // Target not mounted: no cutout, but keep sheet visible and barrier off.
            _lastMeasuredRect = null;
            _stableRect = null;
            _stableFrames = 0;
            _paintRect = null;
            _rectAnimController.reset();
            _lastNoCutoutReason = 'not mounted';
            _lastResetReason = 'target not mounted';
            _pendingMeasureFrames = 0;
            _framesSinceFirstCandidate = 0;
          } else if (_lastMeasuredRect == null) {
            // First measurement - set it but don't show cutout yet.
            _lastMeasuredRect = candidateRect;
            _stableFrames = 0;
            _stableRect = null;
            if (candidateRect == null) {
              _lastNoCutoutReason = 'candidate rect is null';
            } else {
              _lastNoCutoutReason =
                  'first candidate captured; waiting for next frame';
              // Start bounded pump whenever we see the first candidate.
              _pendingMeasureFrames = _kMaxStabilityFrames;
              needsAnotherFrame = true;
            }
          } else if (candidateRect == null) {
            // Target disappeared - reset stability.
            _lastMeasuredRect = null;
            _stableFrames = 0;
            _stableRect = null;
            _paintRect = null;
            _rectAnimController.reset();
            _lastNoCutoutReason = 'candidate rect disappeared';
            _lastResetReason = 'candidate rect disappeared';
            _resetCount++;
            _pendingMeasureFrames = 0;
            _framesSinceFirstCandidate = 0;
          } else if (_rectsDiffer(candidateRect, _lastMeasuredRect)) {
            // Rect changed beyond threshold - reset stability.
            final delta = _rectDelta(candidateRect, _lastMeasuredRect!);
            _lastRectDelta = delta;
            _lastMeasuredRect = candidateRect;
            _stableFrames = 0;
            _stableRect = null;
            _paintRect = null;
            _rectAnimController.reset();
            _lastNoCutoutReason =
                'rect unstable; delta=${delta.toStringAsFixed(2)} > threshold';
            _lastResetReason = 'rect jitter; delta=${delta.toStringAsFixed(2)}';
            _resetCount++;
            _pendingMeasureFrames = _kMaxStabilityFrames;
            needsAnotherFrame = true;
          } else {
            // Rect is stable - increment frame counter.
            _stableFrames += 1;
            OnboardingDebugLog.log(
              'overlay',
              'stableFrames++ => $_stableFrames (required=$requiredFrames)',
            );
            if (_stableFrames >= requiredFrames || _pendingMeasureFrames <= 0) {
              // Required frames matched (or pump exhausted).
              final previousStableRect = _stableRect;
              _stableRect = candidateRect;

              // Mark that we've locked a cutout for this step.
              if (!_hasEverLockedCutoutForThisStep) {
                _hasEverLockedCutoutForThisStep = true;
              }
              _lastNoCutoutReason = null;
              _pendingMeasureFrames = 0;
              _framesSinceFirstCandidate = 0;

              // Interrupt-safe animation retargeting.
              if (previousStableRect != null &&
                  _rectsDiffer(previousStableRect, _stableRect!)) {
                final beginRect = _paintRect ?? previousStableRect;
                _rectAnimController.stop();
                _rectAnimation = _RectTween(begin: beginRect, end: _stableRect)
                    .animate(
                  CurvedAnimation(
                    parent: _rectAnimController,
                    curve: Curves.easeOut,
                  ),
                );
                _rectAnimController.forward(from: 0.0);
              } else if (previousStableRect == null) {
                // First stable rect - set directly without animation.
                _paintRect = _stableRect;
              }
            } else {
              _lastNoCutoutReason =
                  'rect stable; waiting for frame $_stableFrames/$requiredFrames';
              // Still pending: request another frame if we have budget.
              if (_pendingMeasureFrames > 0) {
                _pendingMeasureFrames -= 1;
                needsAnotherFrame = true;
              }
            }
          }

          // Notify highlight ready state (based on stable rect).
          final bool isReady = _stableRect != null;
          widget.onHighlightReadyChanged?.call(isReady);

          // Push latest overlay diagnostics into shared logger.
          OnboardingDebugLog.overlayState = OnboardingOverlayDebugState(
            hasAnyKey: hasAnyKey,
            primaryTargetMounted: widget.highlightedKey?.currentContext != null,
            secondaryTargetMounted:
                widget.secondHighlightedKey?.currentContext != null,
            candidateRect: candidateRect,
            stableRect: _stableRect,
            paintRect: _paintRect,
            stableFrames: _stableFrames,
            requiredFrames: requiredFrames,
            measurementScheduled: _measurementScheduled,
            lastNoCutoutReason: _lastNoCutoutReason,
            lastResetReason: _lastResetReason,
            pendingMeasureFrames: _pendingMeasureFrames,
            resetCount: _resetCount,
            lastRectDelta: _lastRectDelta,
            framesSinceFirstCandidate: _framesSinceFirstCandidate,
          );
          OnboardingDebugLog.lastNoCutoutReason = _lastNoCutoutReason;
        });

        OnboardingDebugLog.log(
          'overlay',
          'run measurement: mounted=$targetMounted candidateRect=$candidateRect '
          'stableRect=$_stableRect stableFrames=$_stableFrames '
          'pendingFrames=$_pendingMeasureFrames resetCount=$_resetCount',
        );
      } finally {
        // IMPROVEMENT 4: Always reset guard, even if early return or exception.
        _measurementScheduled = false;
      }

      // Bounded pump: schedule another measurement while we have a pending cutout.
      if (needsAnotherFrame && mounted) {
        OnboardingDebugLog.log(
          'overlay',
          'pump: scheduling next frame (pendingFrames=$_pendingMeasureFrames)',
        );
        _measureRects();
      }
    });
  }

  Rect? _getRectForKey(GlobalKey? key) {
    if (key?.currentContext == null) return null;
    final targetBox = key!.currentContext!.findRenderObject() as RenderBox?;
    final overlayContext = _paintSurfaceKey.currentContext ?? context;
    final overlayBox = overlayContext.findRenderObject() as RenderBox?;
    if (targetBox == null || !targetBox.hasSize || overlayBox == null || !overlayBox.hasSize) {
      return null;
    }

    // Compute target rect in the coordinate space of the overlay's paint surface.
    final topLeftGlobal = targetBox.localToGlobal(Offset.zero);
    final topRightGlobal = targetBox.localToGlobal(Offset(targetBox.size.width, 0));
    final bottomLeftGlobal = targetBox.localToGlobal(Offset(0, targetBox.size.height));
    final bottomRightGlobal = targetBox.localToGlobal(targetBox.size.bottomRight(Offset.zero));

    final tl = overlayBox.globalToLocal(topLeftGlobal);
    final tr = overlayBox.globalToLocal(topRightGlobal);
    final bl = overlayBox.globalToLocal(bottomLeftGlobal);
    final br = overlayBox.globalToLocal(bottomRightGlobal);

    final left = [tl.dx, tr.dx, bl.dx, br.dx].reduce((a, b) => a < b ? a : b);
    final right = [tl.dx, tr.dx, bl.dx, br.dx].reduce((a, b) => a > b ? a : b);
    final top = [tl.dy, tr.dy, bl.dy, br.dy].reduce((a, b) => a < b ? a : b);
    final bottom = [tl.dy, tr.dy, bl.dy].reduce((a, b) => a > b ? a : b);

    return Rect.fromLTRB(left, top, right, bottom);
  }

  double? _measureBottomSheetHeight() {
    final context = _bottomSheetKey.currentContext;
    if (context == null) return null;
    final renderBox = context.findRenderObject() as RenderBox?;
    return renderBox?.size.height;
  }

  @override
  Widget build(BuildContext context) {
    final hasAnyKey = widget.highlightedKey != null || widget.secondHighlightedKey != null;
    final excludeHeight = _bottomSheetHeight ?? 0.0;
    
    // IMPROVEMENT 1: Barrier vs Cutout gating
    // Separate target mounted check from cutout ready check
    final bool targetMounted = _isTargetMounted();
    final bool cutoutReady = _stableRect != null;
    
    // Barrier shows when target is mounted (even if cutout not ready yet)
    final bool shouldShowBarrier = hasAnyKey && targetMounted;
    
    // If target not mounted => render nothing (barrier OFF)
    if (!targetMounted) {
      return Stack(
        children: [
          // Only show bottom sheet if step is set
          if (widget.currentStep != null)
            MobileGuidedBottomSheet(
              key: _bottomSheetKey,
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

    // Use animated rect for painting if available, otherwise use stable rect.
    final paintRect = _paintRect ?? _stableRect;

    // Step number for safety hatches.
    final int? stepNumber = widget.currentStep;
    final bool isStep4 = stepNumber == 4;
    final bool isStep5 = stepNumber == 5;
    final bool isStep6 = stepNumber == 6;

    return Stack(
      children: [
        // LAYER 1: Dimmed overlay (visual only, no hit-testing)
        if (widget.showDimmedOverlay && shouldShowBarrier)
          Positioned.fill(
            child: IgnorePointer(
              ignoring: true,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final Rect? effectiveRect = isStep4 && _candidateRect != null
                      ? _candidateRect
                      : (cutoutReady ? paintRect : null);
                  return CustomPaint(
                    key: _paintSurfaceKey,
                    size: Size(constraints.maxWidth, constraints.maxHeight),
                    painter: _OverlayPainter(
                      // For Step 4 we use the candidate rect immediately as the cutout.
                      cutoutRect: effectiveRect,
                      dimColor: Colors.black.withValues(alpha: 0.45),
                    ),
                  );
                },
              ),
            ),
          ),

        // LAYER 2: Full-screen interaction barrier (blocks ALL taps when target is mounted).
        // When cutout is ready: allows taps through cutout hole only.
        // When cutout is NOT ready: blocks ALL taps (except bottom sheet area),
        // with step-specific overrides:
        //  - Step 4: immediate override using candidateRect.
        //  - Step 5 & 6: override if stability hasn't locked after a few pump frames.
        if (shouldShowBarrier)
          Builder(
            builder: (context) {
              final padding = MediaQuery.of(context).padding;
              bool allowFallbackHole = false;

              if (isStep4 && targetMounted && _candidateRect != null && !cutoutReady) {
                // Step 4: immediate override as soon as we have a candidate rect.
                allowFallbackHole = true;
              } else if ((isStep5 || isStep6) &&
                  targetMounted &&
                  _candidateRect != null &&
                  !cutoutReady &&
                  // Require at least 2 frames with a visible candidate and no stable rect.
                  _framesSinceFirstCandidate >= 2) {
                // Only allow fallback if the candidateRect looks like a real tile,
                // not an app bar/header region.
                if (_isSaneTileRect(_candidateRect!, padding)) {
                  allowFallbackHole = true;
                } else {
                  final stepLabel = stepNumber ?? -1;
                  final reason =
                      'StepFallback SUPPRESSED (step=$stepLabel): candidateRect looks like header rect=$_candidateRect';
                  _lastResetReason = reason;
                  OnboardingDebugLog.log('overlay_hit_test', reason);
                }
              }

              final bool barrierCutoutReady = cutoutReady || allowFallbackHole;
              final Rect? barrierRect =
                  cutoutReady ? paintRect : (allowFallbackHole ? _candidateRect : null);

              if (allowFallbackHole) {
                final stepLabel = stepNumber ?? -1;
                final message = stepLabel == 4
                    ? 'Step4Override ACTIVE: using candidateRect as LOCAL cutout rect=$_candidateRect'
                    : 'StepFallback ACTIVE (step=$stepLabel): '
                      'framesSinceFirstCandidate=$_framesSinceFirstCandidate '
                      'rect=$_candidateRect';
                OnboardingDebugLog.log('overlay_hit_test', message);
              }

              return Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: excludeHeight,
                child: GuidedOverlayBarrier(
                  targetKey: widget.highlightedKey ?? widget.secondHighlightedKey!,
                  secondTargetKey: widget.highlightedKey != null ? widget.secondHighlightedKey : null,
                  cutoutReady: barrierCutoutReady,
                  cutoutRect: barrierRect,
                  child: const SizedBox.expand(),
                ),
              );
            },
          ),

        // LAYER 3: Bottom sheet (ALWAYS on top, NEVER blocked)
        if (widget.currentStep != null)
          MobileGuidedBottomSheet(
            key: widget.bottomSheetKey ?? _bottomSheetKey,
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
}

class _OverlayPainter extends CustomPainter {
  _OverlayPainter({
    this.cutoutRect,
    required this.dimColor,
  });

  final Rect? cutoutRect; // Nullable: when null, draw full-screen dim (no cutout)
  final Color dimColor;

  @override
  void paint(Canvas canvas, Size size) {
    final dimPaint = Paint()..color = dimColor;
    
    // IMPROVEMENT 1: If cutoutRect is null, draw full-screen dim (barrier visible, no cutout)
    if (cutoutRect == null) {
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), dimPaint);
      return;
    }
    
    // Clamp cutout rect to canvas bounds
    final clampedRect = cutoutRect!.intersect(Rect.fromLTWH(0, 0, size.width, size.height));
    
    if (clampedRect.width <= 0 || clampedRect.height <= 0) {
      // Invalid rect - draw full-screen dim
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), dimPaint);
      return;
    }

    // Draw dimmed areas around the cutout
    // Top area
    if (clampedRect.top > 0) {
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, clampedRect.top), dimPaint);
    }

    // Left area
    if (clampedRect.left > 0) {
      canvas.drawRect(
        Rect.fromLTWH(0, clampedRect.top, clampedRect.left, clampedRect.height),
        dimPaint,
      );
    }

    // Right area
    if (clampedRect.right < size.width) {
      canvas.drawRect(
        Rect.fromLTWH(clampedRect.right, clampedRect.top, size.width - clampedRect.right, clampedRect.height),
        dimPaint,
      );
    }

    // Bottom area
    if (clampedRect.bottom < size.height) {
      canvas.drawRect(
        Rect.fromLTWH(0, clampedRect.bottom, size.width, size.height - clampedRect.bottom),
        dimPaint,
      );
    }
  }

  @override
  bool shouldRepaint(_OverlayPainter oldDelegate) {
    // Repaint when cutout rect changes (for animation) or when cutout appears/disappears
    return oldDelegate.cutoutRect != cutoutRect;
  }
}
