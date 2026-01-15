import 'onboarding_service.dart';

/// High-level steps for the hybrid onboarding walkthrough.
enum GuidedOnboardingStep {
  none,
  trackSelection,
  lessonSelection,
  scenarioSelection,
  scenarioOverview,
  taskIntro,
  taskGuidance,
  resultsTakeaway,
  infoSettings,
  completed,
}

/// Simple static controller for the guided in-app onboarding flow.
///
/// This intentionally avoids new dependencies. Screens query the current
/// [step] to decide whether to show an overlay and when to allow taps.
class GuidedOnboarding {
  static bool _active = false;
  static GuidedOnboardingStep _step = GuidedOnboardingStep.none;

  static bool get isActive => _active;
  static GuidedOnboardingStep get step => _step;

  /// Start the guided walkthrough from the Tracks screen.
  static void start() {
    _active = true;
    _step = GuidedOnboardingStep.trackSelection;
  }

  static void goTo(GuidedOnboardingStep next) {
    if (!_active) return;
    _step = next;
  }

  /// Mark the onboarding as fully complete and never show it again
  /// (unless manually reset via settings).
  static Future<void> complete() async {
    _active = false;
    _step = GuidedOnboardingStep.completed;
    await OnboardingService.markOnboardingSeen();
  }

  /// Used for manual reset / testing.
  static Future<void> resetCompletely() async {
    _active = false;
    _step = GuidedOnboardingStep.none;
    await OnboardingService.resetOnboarding();
  }
}

