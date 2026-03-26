import 'package:flutter/material.dart';
import 'breakpoints.dart';

/// Adaptive spacing and padding system.
class AdaptiveInsets {
  /// Get page-level horizontal padding based on screen size.
  static EdgeInsets pagePadding(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakpoint = breakpointForWidth(width);
    
    final horizontal = switch (breakpoint) {
      Breakpoint.xs => 16.0,
      Breakpoint.sm => 20.0,
      Breakpoint.md => 24.0,
      Breakpoint.lg => 32.0,
      Breakpoint.xl => 40.0,
    };
    
    final vertical = switch (breakpoint) {
      Breakpoint.xs => 12.0,
      Breakpoint.sm => 16.0,
      Breakpoint.md => 20.0,
      Breakpoint.lg => 24.0,
      Breakpoint.xl => 32.0,
    };
    
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  /// Get spacing between major sections.
  static double sectionGap(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakpoint = breakpointForWidth(width);
    
    return switch (breakpoint) {
      Breakpoint.xs => 16.0,
      Breakpoint.sm => 20.0,
      Breakpoint.md => 24.0,
      Breakpoint.lg => 32.0,
      Breakpoint.xl => 40.0,
    };
  }

  /// Get spacing between cards/list items.
  static double cardGap(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakpoint = breakpointForWidth(width);
    
    return switch (breakpoint) {
      Breakpoint.xs => 8.0,
      Breakpoint.sm => 12.0,
      Breakpoint.md => 16.0,
      Breakpoint.lg => 20.0,
      Breakpoint.xl => 24.0,
    };
  }
}
