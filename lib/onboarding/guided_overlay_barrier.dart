import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'guided_overlay_geometry.dart';

/// Hit-test barrier that blocks all pointer events outside the cutout area.
/// Uses custom RenderBox with hit testing to allow taps only within highlighted regions.
class GuidedOverlayBarrier extends SingleChildRenderObjectWidget {
  const GuidedOverlayBarrier({
    super.key,
    required this.targetKey,
    this.secondTargetKey,
    required super.child,
  });

  final GlobalKey targetKey;
  final GlobalKey? secondTargetKey;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _BarrierRenderBox(
      targetKey: targetKey,
      secondTargetKey: secondTargetKey,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderObject renderObject) {
    (renderObject as _BarrierRenderBox)
      ..targetKey = targetKey
      ..secondTargetKey = secondTargetKey;
  }
}

/// Custom RenderBox that blocks hit testing outside cutout areas.
class _BarrierRenderBox extends RenderProxyBox {
  _BarrierRenderBox({
    required this.targetKey,
    this.secondTargetKey,
  });

  GlobalKey targetKey;
  GlobalKey? secondTargetKey;

  List<Rect> _getCutoutRects() {
    final List<Rect> rects = [];
    
    if (size.isEmpty) return rects;

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
    // Get cutout rects
    final cutoutRects = _getCutoutRects();
    
    // Check if hit is inside any cutout
    final isInsideCutout = cutoutRects.any((rect) => rect.contains(position));
    
    if (isInsideCutout) {
      // Allow hit to pass through - don't add this box to result
      // This allows the underlying widget to receive the tap
      return false;
    } else {
      // Block hit - consume the event by adding this box to result
      if (size.contains(position)) {
        result.add(BoxHitTestEntry(this, position));
        return true; // Consume the hit, preventing it from reaching underlying widgets
      }
      return false;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // No visual painting needed - this is just for hit testing
    super.paint(context, offset);
  }
}
