import 'package:flutter/material.dart';
import 'adaptive_insets.dart';
import 'adaptive_dimensions.dart';

/// Adaptive container that applies responsive padding and max width constraints.
/// Use this as a wrapper for page bodies, sections, or modal content.
class AdaptiveContainer extends StatelessWidget {
  const AdaptiveContainer({
    super.key,
    required this.child,
    this.paddingOverride,
    this.maxWidthOverride,
    this.useSafeArea = true,
    this.alignment = Alignment.topCenter,
  });

  final Widget child;
  final EdgeInsets? paddingOverride;
  final double? maxWidthOverride;
  final bool useSafeArea;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = paddingOverride ?? AdaptiveInsets.pagePadding(context);
    final effectiveMaxWidth = maxWidthOverride ?? AdaptiveDimensions.contentMaxWidth(context);

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
    if (useSafeArea) {
      return SafeArea(child: content);
    }

    return content;
  }
}
