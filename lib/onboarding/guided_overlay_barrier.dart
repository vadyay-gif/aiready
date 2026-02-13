import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/foundation.dart';
import 'onboarding_debug_log.dart';

/// Debug toggle for onboarding logs and diagnostics.
/// Set to true for verification builds; false for release.
const bool kOnboardingDebug = true;

/// Hit-test barrier that blocks all pointer events outside the cutout area.
/// Uses custom RenderBox with hit testing to allow taps only within highlighted regions.
/// NOTE: Bottom sheet area is excluded by Positioned constraint in GuidedOverlay,
/// so this barrier never physically covers the bottom sheet area.
class GuidedOverlayBarrier extends SingleChildRenderObjectWidget {
  const GuidedOverlayBarrier({
    super.key,
    required this.targetKey,
    this.secondTargetKey,
    required this.cutoutReady,
    this.cutoutRect,
    required super.child,
  });

  final GlobalKey targetKey;
  final GlobalKey? secondTargetKey;
  final bool cutoutReady;
  final Rect? cutoutRect;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _BarrierRenderBox(
      targetKey: targetKey,
      secondTargetKey: secondTargetKey,
      cutoutReady: cutoutReady,
      cutoutRect: cutoutRect,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderObject renderObject) {
    (renderObject as _BarrierRenderBox)
      ..targetKey = targetKey
      ..secondTargetKey = secondTargetKey
      ..cutoutReady = cutoutReady
      ..cutoutRect = cutoutRect;
  }
}

/// Custom RenderBox that blocks hit testing outside cutout areas.
class _BarrierRenderBox extends RenderProxyBox {
  _BarrierRenderBox({
    required this.targetKey,
    this.secondTargetKey,
    required this.cutoutReady,
    this.cutoutRect,
  });

  GlobalKey targetKey;
  GlobalKey? secondTargetKey;
  bool cutoutReady;
  Rect? cutoutRect;

  List<Rect> _getCutoutRects() {
    final List<Rect> rects = [];
    
    if (size.isEmpty) return rects;

    // If cutout is ready and we have a cutoutRect, use it directly.
    // IMPORTANT: cutoutRect is already in this barrier's local coordinate space.
    if (cutoutReady && cutoutRect != null) {
      // Add padding around cutout for easier tapping.
      const padding = 4.0;
      rects.add(Rect.fromLTWH(
        cutoutRect!.left - padding,
        cutoutRect!.top - padding,
        cutoutRect!.width + (padding * 2),
        cutoutRect!.height + (padding * 2),
      ));
      return rects;
    }

    // Fallback: compute from keys (for when cutout not ready but we still need to check)
    void addRectFromKey(GlobalKey key) {
      if (key.currentContext == null) return;
      final renderBox = key.currentContext!.findRenderObject() as RenderBox?;
      if (renderBox == null || !renderBox.hasSize) return;
      
      final globalPosition = renderBox.localToGlobal(Offset.zero);
      final localPosition = globalToLocal(globalPosition);
      
      // Add padding around cutout for easier tapping
      const padding = 4.0;
      rects.add(Rect.fromLTWH(
        localPosition.dx - padding,
        localPosition.dy - padding,
        renderBox.size.width + (padding * 2),
        renderBox.size.height + (padding * 2),
      ));
    }

    addRectFromKey(targetKey);
    if (secondTargetKey != null) {
      addRectFromKey(secondTargetKey!);
    }
    
    return rects;
  }

  @override
  bool hitTest(BoxHitTestResult result, {required Offset position}) {
    if (!size.contains(position)) {
      return false;
    }

    // When cutout is NOT ready: block ALL pointer events
    if (!cutoutReady) {
      if (kOnboardingDebug && kDebugMode) {
        debugPrint('[BARRIER] Tapped at $position (blocked - cutout not ready)');
      }
      OnboardingDebugLog.log(
        'overlay_hit_test',
        'barrier blocked tap at $position (cutout not ready)',
      );
      result.add(BoxHitTestEntry(this, position));
      return true; // Consume the hit, preventing it from reaching underlying widgets
    }

    // When cutout IS ready: allow taps through cutout hole only
    final cutoutRects = _getCutoutRects();
    final Rect? debugRect =
        cutoutRects.isNotEmpty ? cutoutRects.first : null;
    final isInsideCutout = cutoutRects.any((rect) => rect.contains(position));

    OnboardingDebugLog.log(
      'overlay_hit_test',
      'hitTest: tap=$position rect=$debugRect contains=$isInsideCutout',
    );
    
    if (isInsideCutout) {
      // Allow hit to pass through - don't add this box to result
      // This allows the underlying widget to receive the tap
      if (kOnboardingDebug && kDebugMode) {
        debugPrint('[BARRIER] Tapped at $position (passed through cutout)');
      }
      OnboardingDebugLog.log(
        'overlay_hit_test',
        'barrier allowed tap through cutout at $position',
      );
      return false;
    }
    
    // Block hit - consume the event by adding this box to result
    // NOTE: Bottom sheet area is excluded by Positioned constraint in GuidedOverlay
    // (barrier is positioned with bottom: bottomSheetHeight), so this barrier
    // never physically covers the bottom sheet area. No exclusion logic needed here.
    if (kOnboardingDebug && kDebugMode) {
      debugPrint('[BARRIER] Tapped at $position (blocked - outside cutout)');
    }
    OnboardingDebugLog.log(
      'overlay_hit_test',
      'barrier blocked tap at $position (outside cutout)',
    );
    result.add(BoxHitTestEntry(this, position));
    return true; // Consume the hit, preventing it from reaching underlying widgets
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // No visual painting needed - this is just for hit testing
    super.paint(context, offset);
  }
}
