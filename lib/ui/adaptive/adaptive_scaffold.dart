import 'package:flutter/material.dart';
import 'adaptive_container.dart';

/// Adaptive scaffold that ensures consistent layout across all screens.
/// Automatically applies adaptive container and safe areas.
class AdaptiveScaffold extends StatelessWidget {
  const AdaptiveScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backgroundColor,
    this.resizeToAvoidBottomInset,
    this.bodyUsesAdaptiveContainer = true,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;
  final bool? resizeToAvoidBottomInset;
  final bool bodyUsesAdaptiveContainer;

  @override
  Widget build(BuildContext context) {
    Widget effectiveBody = body;
    
    // Wrap body in AdaptiveContainer if requested
    if (bodyUsesAdaptiveContainer) {
      effectiveBody = AdaptiveContainer(
        useSafeArea: false, // Scaffold handles SafeArea
        child: body,
      );
    }

    return Scaffold(
      appBar: appBar,
      body: effectiveBody,
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor ?? Colors.white,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    );
  }
}
