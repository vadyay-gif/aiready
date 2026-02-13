import 'package:shared_preferences/shared_preferences.dart';
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
/// State is persisted to survive app restarts.
class GuidedOnboarding {
  static const String _activeKey = 'guided_onboarding_active';
  static const String _stepKey = 'guided_onboarding_step';
  static bool _active = false;
  static GuidedOnboardingStep _step = GuidedOnboardingStep.none;
  static bool _initialized = false;

  static bool get isActive => _active;
  static GuidedOnboardingStep get step => _step;

  /// Initialize state from persistent storage. Call this early in app lifecycle.
  static Future<void> initialize() async {
    if (_initialized) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      _active = prefs.getBool(_activeKey) ?? false;
      final stepIndex = prefs.getInt(_stepKey);
      if (stepIndex != null && stepIndex >= 0 && stepIndex < GuidedOnboardingStep.values.length) {
        _step = GuidedOnboardingStep.values[stepIndex];
      }
      // If onboarding was completed, ensure it's marked as seen
      if (_step == GuidedOnboardingStep.completed) {
        _active = false;
        await OnboardingService.markOnboardingSeen();
      }
      _initialized = true;
    } catch (e) {
      // If persistence fails, start fresh
      _active = false;
      _step = GuidedOnboardingStep.none;
      _initialized = true;
    }
  }

  /// Persist current state to storage.
  static Future<void> _persistState() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool(_activeKey, _active);
      await prefs.setInt(_stepKey, _step.index);
    } catch (e) {
      // Silently fail - state will reset on next app start
    }
  }

  /// Start the guided walkthrough from the Tracks screen.
  static Future<void> start() async {
    _active = true;
    _step = GuidedOnboardingStep.trackSelection;
    await _persistState();
  }

  static Future<void> goTo(GuidedOnboardingStep next) async {
    if (!_active) return;
    _step = next;
    await _persistState();
  }

  /// Go back to the previous step in the onboarding flow.
  static Future<GuidedOnboardingStep?> goBack() async {
    if (!_active) return null;
    
    GuidedOnboardingStep? previousStep;
    switch (_step) {
      case GuidedOnboardingStep.trackSelection:
        // Can't go back from first step
        return null;
      case GuidedOnboardingStep.lessonSelection:
        _step = GuidedOnboardingStep.trackSelection;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.scenarioSelection:
        _step = GuidedOnboardingStep.lessonSelection;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.scenarioOverview:
        _step = GuidedOnboardingStep.scenarioSelection;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.taskIntro:
        _step = GuidedOnboardingStep.scenarioOverview;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.taskGuidance:
        _step = GuidedOnboardingStep.taskIntro;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.resultsTakeaway:
        _step = GuidedOnboardingStep.taskGuidance;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.infoSettings:
        _step = GuidedOnboardingStep.resultsTakeaway;
        previousStep = _step;
        break;
      default:
        return null;
    }
    await _persistState();
    return previousStep;
  }

  /// Skip the entire onboarding flow.
  static Future<void> skip() async {
    if (!_active) return;
    await complete();
  }

  /// Mark the onboarding as fully complete and never show it again
  /// (unless manually reset via settings).
  static Future<void> complete() async {
    _active = false;
    _step = GuidedOnboardingStep.completed;
    await _persistState();
    await OnboardingService.markOnboardingSeen();
  }

  /// Used for manual reset / testing.
  static Future<void> resetCompletely() async {
    _active = false;
    _step = GuidedOnboardingStep.none;
    await _persistState();
    await OnboardingService.resetOnboarding();
  }

  /// Calculate the current step number (1-16) based on the current step and optional section index.
  /// For scenarioOverview, pass the section index (0-4) to get the correct step (7-11).
  /// For infoSettings, pass settingsPage: true if on the settings page (step 16), false for home screen (step 15).
  static int? getCurrentStepNumber({int? scenarioSectionIndex, bool settingsPage = false}) {
    if (!_active) return null;

    switch (_step) {
      case GuidedOnboardingStep.trackSelection:
        return 4;
      case GuidedOnboardingStep.lessonSelection:
        return 5;
      case GuidedOnboardingStep.scenarioSelection:
        return 6;
      case GuidedOnboardingStep.scenarioOverview:
        // Steps 7-11 for the 5 sections
        if (scenarioSectionIndex != null) {
          return 7 + scenarioSectionIndex; // 7, 8, 9, 10, or 11
        }
        return 7; // Default to first section
      case GuidedOnboardingStep.taskIntro:
        return 12;
      case GuidedOnboardingStep.taskGuidance:
        return 13;
      case GuidedOnboardingStep.resultsTakeaway:
        return 14;
      case GuidedOnboardingStep.infoSettings:
        return settingsPage ? 16 : 15; // Step 15 on home screen, step 16 on settings page
      default:
        return null;
    }
  }
}

