/// Breakpoint system for responsive design across all device sizes.
enum Breakpoint {
  xs, // < 360px (very small phones)
  sm, // 360-479px (small phones)
  md, // 480-767px (large phones / small tablets)
  lg, // 768-1023px (tablets)
  xl, // >= 1024px (desktop/web)
}

/// Get breakpoint for a given width.
Breakpoint breakpointForWidth(double width) {
  if (width < 360) return Breakpoint.xs;
  if (width < 480) return Breakpoint.sm;
  if (width < 768) return Breakpoint.md;
  if (width < 1024) return Breakpoint.lg;
  return Breakpoint.xl;
}

/// Check if breakpoint represents a phone.
bool isPhone(Breakpoint breakpoint) {
  return breakpoint == Breakpoint.xs ||
      breakpoint == Breakpoint.sm ||
      breakpoint == Breakpoint.md;
}

/// Check if breakpoint represents a tablet.
bool isTablet(Breakpoint breakpoint) {
  return breakpoint == Breakpoint.lg;
}

/// Check if breakpoint represents desktop/web.
bool isDesktop(Breakpoint breakpoint) {
  return breakpoint == Breakpoint.xl;
}
