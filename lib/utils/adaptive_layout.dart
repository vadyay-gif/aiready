import 'package:flutter/material.dart';

/// Central adaptive layout system for the AI Ready app.
/// Provides breakpoints, spacing tokens, and layout helpers that work
/// across phones, tablets, and desktop/web.
class AdaptiveLayout {
  // Breakpoint constants
  static const double breakpointXs = 360;
  static const double breakpointSm = 480;
  static const double breakpointMd = 768;
  static const double breakpointLg = 1024;

  /// Get current breakpoint category based on screen width.
  static Breakpoint currentBreakpoint(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < breakpointXs) return Breakpoint.xs;
    if (width < breakpointSm) return Breakpoint.sm;
    if (width < breakpointMd) return Breakpoint.md;
    if (width < breakpointLg) return Breakpoint.lg;
    return Breakpoint.xl;
  }

  /// Check if current device is a phone (narrow width).
  static bool isPhone(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width < breakpointMd;
  }

  /// Check if current device is a tablet.
  static bool isTablet(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= breakpointMd && width < breakpointLg;
  }

  /// Check if current device is desktop/web (wide width).
  static bool isDesktop(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return width >= breakpointLg;
  }

  /// Get horizontal padding based on screen size.
  static double horizontalPadding(BuildContext context) {
    final breakpoint = currentBreakpoint(context);
    switch (breakpoint) {
      case Breakpoint.xs:
        return 16.0;
      case Breakpoint.sm:
        return 20.0;
      case Breakpoint.md:
        return 24.0;
      case Breakpoint.lg:
        return 32.0;
      case Breakpoint.xl:
        return 40.0;
    }
  }

  /// Get vertical padding based on screen size.
  static double verticalPadding(BuildContext context) {
    final breakpoint = currentBreakpoint(context);
    switch (breakpoint) {
      case Breakpoint.xs:
        return 12.0;
      case Breakpoint.sm:
        return 16.0;
      case Breakpoint.md:
        return 20.0;
      case Breakpoint.lg:
        return 24.0;
      case Breakpoint.xl:
        return 32.0;
    }
  }

  /// Get spacing between sections based on screen size.
  static double sectionSpacing(BuildContext context) {
    final breakpoint = currentBreakpoint(context);
    switch (breakpoint) {
      case Breakpoint.xs:
        return 16.0;
      case Breakpoint.sm:
        return 20.0;
      case Breakpoint.md:
        return 24.0;
      case Breakpoint.lg:
        return 32.0;
      case Breakpoint.xl:
        return 40.0;
    }
  }

  /// Get maximum content width for centered layouts.
  static double maxContentWidth(BuildContext context) {
    final breakpoint = currentBreakpoint(context);
    switch (breakpoint) {
      case Breakpoint.xs:
      case Breakpoint.sm:
        return double.infinity; // Full width on phones
      case Breakpoint.md:
        return 720.0; // Tablet
      case Breakpoint.lg:
        return 960.0; // Desktop
      case Breakpoint.xl:
        return 1100.0; // Large desktop
    }
  }

  /// Get card/list item spacing.
  static double itemSpacing(BuildContext context) {
    final breakpoint = currentBreakpoint(context);
    switch (breakpoint) {
      case Breakpoint.xs:
        return 8.0;
      case Breakpoint.sm:
        return 12.0;
      case Breakpoint.md:
        return 16.0;
      case Breakpoint.lg:
        return 20.0;
      case Breakpoint.xl:
        return 24.0;
    }
  }
}

/// Breakpoint categories for responsive design.
enum Breakpoint {
  xs, // < 360px (very small phones)
  sm, // 360-479px (small phones)
  md, // 480-767px (large phones / small tablets)
  lg, // 768-1023px (tablets)
  xl, // ≥ 1024px (desktop/web)
}
