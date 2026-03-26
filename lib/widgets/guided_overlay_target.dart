import 'package:flutter/material.dart';

/// Wrapper widget that adds CompositedTransformTarget to a highlighted widget.
/// This enables the bubble to be anchored using CompositedTransformFollower.
/// 
/// Usage:
/// ```dart
/// GuidedOverlayTarget(
///   layerLink: layerLink,
///   child: YourWidget(key: globalKey),
/// )
/// ```
class GuidedOverlayTarget extends StatelessWidget {
  const GuidedOverlayTarget({
    super.key,
    required this.layerLink,
    required this.child,
  });

  final LayerLink layerLink;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: layerLink,
      child: child,
    );
  }
}
