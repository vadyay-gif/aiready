import 'package:flutter/material.dart';
import '../utils/adaptive_layout.dart';

/// Reusable adaptive container that applies:
/// - SafeArea handling
/// - Responsive horizontal padding
/// - Max width constraints for desktop/web
/// - Centered alignment on larger screens
/// 
/// Use this as a wrapper for page bodies, sections, or modal content.
class AdaptiveContainer extends StatelessWidget {
  const AdaptiveContainer({
    super.key,
    required this.child,
    this.padding,
    this.maxWidth,
    this.alignment = Alignment.topCenter,
    this.safeArea = true,
  });

  final Widget child;
  final EdgeInsets? padding;
  final double? maxWidth;
  final Alignment alignment;
  final bool safeArea;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ??
        EdgeInsets.symmetric(
          horizontal: AdaptiveLayout.horizontalPadding(context),
          vertical: AdaptiveLayout.verticalPadding(context),
        );
    
    final effectiveMaxWidth = maxWidth ?? AdaptiveLayout.maxContentWidth(context);

    Widget content = Container(
      constraints: effectiveMaxWidth < double.infinity
          ? BoxConstraints(maxWidth: effectiveMaxWidth)
          : null,
      alignment: alignment,
      padding: effectivePadding,
      child: child,
    );

    // Center on larger screens
    if (effectiveMaxWidth < double.infinity) {
      content = Center(child: content);
    }

    // Apply SafeArea if requested
    if (safeArea) {
      return SafeArea(child: content);
    }

    return content;
  }
}

/// Adaptive container for scrollable content.
class AdaptiveScrollContainer extends StatelessWidget {
  const AdaptiveScrollContainer({
    super.key,
    required this.child,
    this.padding,
    this.maxWidth,
    this.controller,
    this.physics,
  });

  final Widget child;
  final EdgeInsets? padding;
  final double? maxWidth;
  final ScrollController? controller;
  final ScrollPhysics? physics;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ??
        EdgeInsets.symmetric(
          horizontal: AdaptiveLayout.horizontalPadding(context),
          vertical: AdaptiveLayout.verticalPadding(context),
        );
    
    final effectiveMaxWidth = maxWidth ?? AdaptiveLayout.maxContentWidth(context);

    Widget content = SingleChildScrollView(
      controller: controller,
      physics: physics,
      child: Container(
        constraints: effectiveMaxWidth < double.infinity
            ? BoxConstraints(maxWidth: effectiveMaxWidth)
            : null,
        padding: effectivePadding,
        child: child,
      ),
    );

    // Center on larger screens
    if (effectiveMaxWidth < double.infinity) {
      content = Center(child: content);
    }

    return SafeArea(child: content);
  }
}
