import 'package:flutter/material.dart';

/// Mobile-optimized scaffold for iOS and Android.
/// 
/// Features:
/// - Full-width body (no maxWidth constraint)
/// - Mobile-friendly spacing
/// - Touch-optimized tap targets
/// - Native mobile feel
class MobileScaffold extends StatelessWidget {
  const MobileScaffold({
    super.key,
    this.appBar,
    required this.body,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.backgroundColor,
  });

  final PreferredSizeWidget? appBar;
  final Widget body;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: appBar,
      body: body, // Full width, no maxWidth constraint
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
