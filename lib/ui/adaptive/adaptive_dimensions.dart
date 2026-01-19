import 'package:flutter/material.dart';
import 'breakpoints.dart';

/// Adaptive dimension system for content widths and sizing.
class AdaptiveDimensions {
  /// Get maximum content width for centered layouts.
  /// Returns double.infinity for phones (full width).
  static double contentMaxWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakpoint = breakpointForWidth(width);
    
    return switch (breakpoint) {
      Breakpoint.xs => double.infinity, // Full width on phones
      Breakpoint.sm => double.infinity,
      Breakpoint.md => double.infinity,
      Breakpoint.lg => 840.0, // Tablet
      Breakpoint.xl => 1040.0, // Desktop/web
    };
  }

  /// Get maximum width for callout bubbles/overlays.
  static double calloutMaxWidth(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final breakpoint = breakpointForWidth(width);
    
    return switch (breakpoint) {
      Breakpoint.xs => 320.0,
      Breakpoint.sm => 340.0,
      Breakpoint.md => 360.0,
      Breakpoint.lg => 450.0, // Increased for buttons
      Breakpoint.xl => 550.0, // Increased significantly for web to fit "Skip Onboarding" button
    };
  }
}
