import 'package:flutter/material.dart';
import '../platform/ui_track.dart';
import '../mobile/mobile_scaffold.dart';
import '../web/web_scaffold.dart';

/// Unified scaffold that automatically chooses mobile or web implementation
/// based on the current UI track.
/// 
/// This is the single entry point for all scaffold usage in the app.
/// It ensures consistent UI track detection and proper scaffold selection.
class AppScaffold extends StatelessWidget {
  const AppScaffold({
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
    final track = currentUITrack(context);
    
    if (track == UITrack.web) {
      return WebScaffold(
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        backgroundColor: backgroundColor,
      );
    } else {
      return MobileScaffold(
        appBar: appBar,
        body: body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
        backgroundColor: backgroundColor,
      );
    }
  }
}
