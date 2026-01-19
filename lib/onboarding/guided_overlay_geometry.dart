import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../ui/adaptive/breakpoints.dart';
import '../ui/adaptive/adaptive_dimensions.dart';

/// Placement options for callout bubbles.
enum CalloutPlacement {
  above,
  below,
  left,
  right,
}

/// Geometry information for guided overlay positioning.
class GuidedOverlayGeometry {
  final Rect targetRect;
  final Rect cutoutRect;
  final CalloutPlacement placement;
  final double calloutMaxWidth;

  GuidedOverlayGeometry({
    required this.targetRect,
    required this.cutoutRect,
    required this.placement,
    required this.calloutMaxWidth,
  });
}

/// Geometry calculator for guided onboarding overlays.
class GuidedOverlayGeometryCalculator {
  /// Measure the rect for a target widget using its GlobalKey.
  /// Returns null if the key is not attached or not laid out yet.
  static Future<Rect?> measureRect(GlobalKey key) async {
    if (key.currentContext == null) return null;
    
    final renderBox = key.currentContext!.findRenderObject() as RenderBox?;
    if (renderBox == null || !renderBox.hasSize) return null;
    
    final globalPosition = renderBox.localToGlobal(Offset.zero);
    return Rect.fromLTWH(
      globalPosition.dx,
      globalPosition.dy,
      renderBox.size.width,
      renderBox.size.height,
    );
  }

  /// Convert a global rect to local coordinates relative to an overlay widget.
  static Rect? globalToLocal(Rect globalRect, BuildContext overlayContext) {
    final overlayRenderBox = overlayContext.findRenderObject() as RenderBox?;
    if (overlayRenderBox == null) return null;
    
    final localTopLeft = overlayRenderBox.globalToLocal(globalRect.topLeft);
    return Rect.fromLTWH(
      localTopLeft.dx,
      localTopLeft.dy,
      globalRect.width,
      globalRect.height,
    );
  }

  /// Calculate geometry for overlay positioning.
  /// Takes into account adaptive layouts (centered content columns on desktop).
  /// Returns geometry with rects in global coordinates (for overlay positioning).
  static Future<GuidedOverlayGeometry?> calculateGeometry({
    required GlobalKey targetKey,
    GlobalKey? secondTargetKey,
    required BuildContext context,
    required Size screenSize,
    required EdgeInsets safeAreaInsets,
    double calloutHeight = 200.0,
    double minSpacing = 12.0,
  }) async {
    // Measure target rect in global coordinates
    final targetRect = await measureRect(targetKey);
    if (targetRect == null) return null;

    // Measure second target if provided
    Rect? secondRect;
    if (secondTargetKey != null) {
      secondRect = await measureRect(secondTargetKey);
    }

    // Calculate combined cutout rect in global coordinates
    Rect cutoutRect = targetRect;
    if (secondRect != null) {
      final minLeft = targetRect.left < secondRect.left ? targetRect.left : secondRect.left;
      final minTop = targetRect.top < secondRect.top ? targetRect.top : secondRect.top;
      final maxRight = targetRect.right > secondRect.right ? targetRect.right : secondRect.right;
      final maxBottom = targetRect.bottom > secondRect.bottom ? targetRect.bottom : secondRect.bottom;
      cutoutRect = Rect.fromLTRB(minLeft, minTop, maxRight, maxBottom);
    }

    // Add padding to cutout for easier tapping (still in global coordinates)
    const cutoutPadding = 4.0;
    final paddedCutout = Rect.fromLTWH(
      cutoutRect.left - cutoutPadding,
      cutoutRect.top - cutoutPadding,
      cutoutRect.width + (cutoutPadding * 2),
      cutoutRect.height + (cutoutPadding * 2),
    );

    // Calculate available space for callout
    final availableAbove = targetRect.top - safeAreaInsets.top - minSpacing;
    final availableBelow = screenSize.height - targetRect.bottom - safeAreaInsets.bottom - minSpacing;
    final availableLeft = targetRect.left - safeAreaInsets.left - minSpacing;
    final availableRight = screenSize.width - targetRect.right - safeAreaInsets.right - minSpacing;

    // Determine placement
    CalloutPlacement placement;
    if (availableAbove >= calloutHeight + minSpacing && targetRect.top > screenSize.height * 0.5) {
      placement = CalloutPlacement.above;
    } else if (availableBelow >= calloutHeight + minSpacing) {
      placement = CalloutPlacement.below;
    } else if (availableRight >= 300 && screenSize.width > 600) {
      placement = CalloutPlacement.right;
    } else if (availableLeft >= 300 && screenSize.width > 600) {
      placement = CalloutPlacement.left;
    } else {
      // Fallback to below if no good option
      placement = CalloutPlacement.below;
    }

    // Get callout max width
    final calloutMaxWidth = AdaptiveDimensions.calloutMaxWidth(context);

    return GuidedOverlayGeometry(
      targetRect: targetRect, // Global coordinates
      cutoutRect: paddedCutout, // Global coordinates
      placement: placement,
      calloutMaxWidth: calloutMaxWidth,
    );
  }

  /// Recalculate geometry when viewport changes (orientation, resize, etc.).
  static Future<GuidedOverlayGeometry?> recalculateOnViewportChange({
    required GlobalKey targetKey,
    GlobalKey? secondTargetKey,
    required BuildContext context,
    required Size screenSize,
    required EdgeInsets safeAreaInsets,
    double calloutHeight = 200.0,
  }) async {
    // Wait for next frame to ensure layout is complete
    await Future.delayed(const Duration(milliseconds: 100));
    return calculateGeometry(
      targetKey: targetKey,
      secondTargetKey: secondTargetKey,
      context: context,
      screenSize: screenSize,
      safeAreaInsets: safeAreaInsets,
      calloutHeight: calloutHeight,
    );
  }
}
