/// Build-time diagnostics constants.
/// Used to verify the installed APK matches the source code.
class BuildInfo {
  /// Unique build identifier - change this for each build to verify APK updates.
  static const String kBuildId = "AIREADY-2026-01-19-P";
  
  /// Expected number of onboarding steps (intro slides + guided walkthrough).
  static const int kExpectedOnboardingSteps = 16;
  
  /// Track 7 title - verify it matches everywhere.
  static const String kTrack7Title = "Root-Cause Thinking";
  
  /// Whether guided overlay is present in the app.
  /// This is a compile-time constant - if GuidedOverlay exists, this is true.
  static const bool kGuidedOverlayPresent = true;
}
