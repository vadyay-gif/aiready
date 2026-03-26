import '../onboarding/onboarding_state.dart';

class OnboardingService {
  /// Check if onboarding has been seen (completed)
  /// This is a convenience method that uses the centralized state.
  static Future<bool> hasSeenOnboarding() async {
    final status = await OnboardingState.loadOnboardingStatus();
    return status.isCompleted;
  }

  /// Mark onboarding as seen (completed)
  /// This is a convenience method that uses the centralized state.
  static Future<void> markOnboardingSeen() async {
    await OnboardingState.markCompleted();
  }

  /// Reset onboarding (for replay functionality)
  /// This is a convenience method that uses the centralized state.
  static Future<void> resetOnboarding() async {
    await OnboardingState.reset();
  }
}
