import 'package:shared_preferences/shared_preferences.dart';

class OnboardingService {
  static const String _onboardingSeenKey = 'onboarding_seen_v1';

  /// Check if onboarding has been seen
  static Future<bool> hasSeenOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_onboardingSeenKey) ?? false;
  }

  /// Mark onboarding as seen
  static Future<void> markOnboardingSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingSeenKey, true);
  }

  /// Reset onboarding (for replay functionality)
  static Future<void> resetOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_onboardingSeenKey, false);
  }
}
