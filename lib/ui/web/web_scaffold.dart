import 'package:flutter/material.dart';
import '../adaptive/adaptive_dimensions.dart';

/// Web/desktop-optimized scaffold.
/// 
/// Features:
/// - Centered content with maxWidth constraint
/// - Desktop-friendly spacing
/// - Mouse-optimized interactions
/// - Intentional desktop feel
class WebScaffold extends StatelessWidget {
  const WebScaffold({
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
    final maxWidth = AdaptiveDimensions.contentMaxWidth(context);
    
    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      appBar: appBar,
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: body,
        ),
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
    );
  }
}
