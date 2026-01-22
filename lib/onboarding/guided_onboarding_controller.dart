import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboarding_state.dart';
import '../services/guided_onboarding.dart' as OldService;

/// High-level steps for the hybrid onboarding walkthrough.
enum GuidedOnboardingStep {
  none,
  trackSelection,
  lessonSelection,
  scenarioSelection,
  scenarioOverview,
  taskIntro,
  taskGuidance,
  taskFeedback,
  resultsTakeaway,
  infoSettings,
  completed,
}

/// Controller for guided onboarding state and persistence.
/// Uses the same keys as OnboardingState for consistency.
class GuidedOnboardingController {
  // Use the same keys as OnboardingState
  static const String _activeKey = 'onboarding_active';
  static const String _stepKey = 'onboarding_step';
  static const String _scenarioSectionKey = 'onboarding_scenario_section';

  /// Total number of guided onboarding steps (for display in the bottom sheet).
  static const int totalSteps = 17;

  static bool _active = false;
  static GuidedOnboardingStep _step = GuidedOnboardingStep.none;
  static bool _initialized = false;
  static double? _measuredBottomSheetHeight; // Exposed measured height for steps 4-16
  // Tracks which sub-section of the scenario overview the user is on (0-4).
  // 0 => step 7, 1 => step 8, 2 => step 9, 3 => step 10, 4 => step 11.
  static int _scenarioSectionIndex = 0;

  /// Notifies listeners when the guided onboarding step changes.
  /// Used by screens (e.g., ScenarioScreen) to rebuild when the step advances.
  static final ValueNotifier<GuidedOnboardingStep> stepNotifier =
      ValueNotifier<GuidedOnboardingStep>(_step);

  /// Notifies listeners when the scenario overview sub-section changes (steps 7–11).
  static final ValueNotifier<int> scenarioSectionNotifier =
      ValueNotifier<int>(_scenarioSectionIndex);

  static bool get isActive => _active;
  static GuidedOnboardingStep get currentStep => _step;
  static int get scenarioSectionIndex => _scenarioSectionIndex;
  
  /// Get the measured bottom sheet height (for steps 4-16).
  /// Returns null if not yet measured.
  /// This is updated by GuidedOverlay when it measures the bottom sheet.
  static double? get measuredBottomSheetHeight => _measuredBottomSheetHeight;
  
  /// Set the measured bottom sheet height (called by GuidedOverlay).
  /// This should only be called by GuidedOverlay during measurement.
  static void setMeasuredBottomSheetHeight(double? height) {
    _measuredBottomSheetHeight = height;
  }

  /// Initialize state from persistent storage. Call this early in app lifecycle.
  /// Note: OnboardingState.loadOnboardingStatus() should be called first in main.dart.
  static Future<void> initialize() async {
    if (_initialized) return;
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Restore state from shared keys
      _active = prefs.getBool(_activeKey) ?? false;
      final stepIndex = prefs.getInt(_stepKey);
      if (stepIndex != null &&
          stepIndex >= 0 &&
          stepIndex < GuidedOnboardingStep.values.length) {
        _step = GuidedOnboardingStep.values[stepIndex];
      } else {
        _step = GuidedOnboardingStep.none;
      }

      // Restore scenario section index (only meaningful for scenarioOverview).
      final storedSection = prefs.getInt(_scenarioSectionKey);
      if (_step == GuidedOnboardingStep.scenarioOverview &&
          storedSection != null &&
          storedSection >= 0 &&
          storedSection <= 4) {
        _scenarioSectionIndex = storedSection;
      } else {
        _scenarioSectionIndex = 0;
      }
      
      // If onboarding was completed, ensure active is false
      if (_step == GuidedOnboardingStep.completed) {
        _active = false;
      }
      
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Initialized: active=$_active, step=$_step, '
            'scenarioSectionIndex=$_scenarioSectionIndex');
      }
      
      _initialized = true;
      // Ensure notifiers are in sync with restored state.
      stepNotifier.value = _step;
      scenarioSectionNotifier.value = _scenarioSectionIndex;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Error initializing: $e');
      }
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
      await prefs.setInt(_scenarioSectionKey, _scenarioSectionIndex);
      
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Persisted: active=$_active, step=$_step');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Error persisting state: $e');
      }
      // Silently fail - state will reset on next app start
    }
  }

  /// Start the guided walkthrough from the Tracks screen.
  /// This should be called after intro slides are shown.
  static Future<void> start() async {
    _active = true;
    _step = GuidedOnboardingStep.trackSelection;
    _scenarioSectionIndex = 0;
    stepNotifier.value = _step;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    await _persistState();
    
    // Mark that intro has been shown (so we don't show it again)
    await OnboardingState.markIntroShown();
    
    // COMPATIBILITY SYNC: Keep old service in sync for screens that still use it.
    // 
    // Why this exists:
    // - Multiple screens (task_screen, track_screen, scenario_screen, etc.) still use
    //   the old GuidedOnboarding service directly (not through GuidedOnboardingController).
    // - Settings page uses OldService alias.
    // - This sync ensures both systems stay in sync until all screens are migrated.
    //
    // TODO: Migrate remaining screens to use GuidedOnboardingController, then remove this.
    try {
      await OldService.GuidedOnboarding.initialize();
      final oldStep = _convertStepToOld(_step);
      await OldService.GuidedOnboarding.goTo(oldStep);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Could not sync old service: $e');
      }
    }
    
    if (kDebugMode) {
      debugPrint(
        '[GUIDED_ONBOARDING] Started walkthrough: '
        'active=$_active, step=$_step (persisted to $_activeKey/$_stepKey)',
      );
    }
    // Notify listeners of initial step
    stepNotifier.value = _step;
  }
  

  /// Advance to the next step.
  static Future<void> goNext() async {
    if (!_active) return;
    
    final previous = _step;

    switch (_step) {
      case GuidedOnboardingStep.trackSelection:
        _step = GuidedOnboardingStep.lessonSelection;
        break;
      case GuidedOnboardingStep.lessonSelection:
        _step = GuidedOnboardingStep.scenarioSelection;
        break;
      case GuidedOnboardingStep.scenarioSelection:
        _step = GuidedOnboardingStep.scenarioOverview;
        _scenarioSectionIndex = 0;
        break;
      case GuidedOnboardingStep.scenarioOverview:
        // Scenario overview sections (steps 7–11) are advanced via
        // advanceScenarioSection / advanceFromProTipToTask, not goNext.
        if (kDebugMode) {
          debugPrint(
              '[GUIDED_FLOW] next ignored for scenarioOverview – use advanceScenarioSection/advanceFromProTipToTask');
        }
        return;
      case GuidedOnboardingStep.taskIntro:
        _step = GuidedOnboardingStep.taskGuidance;
        break;
      case GuidedOnboardingStep.taskGuidance:
        _step = GuidedOnboardingStep.taskFeedback;
        break;
      case GuidedOnboardingStep.taskFeedback:
        _step = GuidedOnboardingStep.resultsTakeaway;
        break;
      case GuidedOnboardingStep.resultsTakeaway:
        _step = GuidedOnboardingStep.infoSettings;
        break;
      case GuidedOnboardingStep.infoSettings:
        await complete();
        return;
      default:
        return;
    }
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] goNext: $previous -> $_step');
      debugPrint('[GUIDED_FLOW] next enum=$previous -> $_step active=$_active');
    }
    stepNotifier.value = _step;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    await _persistState();
    
    // Sync the old service for backward compatibility
    try {
      final oldStep = _convertStepToOld(_step);
      await OldService.GuidedOnboarding.goTo(oldStep);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Could not sync old service on goNext: $e');
      }
    }
  }
  
  /// Alias for goNext() for convenience.
  static Future<void> next() => goNext();

  /// Go to a specific step.
  /// Can be called even when not active (for resuming).
  static Future<void> goTo(GuidedOnboardingStep step) async {
    // Allow setting step even if not active (for resuming)
    final previous = _step;
    _step = step;
    // If going to a non-none step, mark as active
    if (step != GuidedOnboardingStep.none && step != GuidedOnboardingStep.completed) {
      _active = true;
    }
    // Reset scenario section index when leaving or re-entering scenarioOverview.
    if (step != GuidedOnboardingStep.scenarioOverview) {
      _scenarioSectionIndex = 0;
    } else if (_scenarioSectionIndex < 0 || _scenarioSectionIndex > 4) {
      _scenarioSectionIndex = 0;
    }
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] goTo: $previous -> $_step');
    }
    stepNotifier.value = _step;
    await _persistState();
    
    // Sync the old service for backward compatibility
    try {
      final oldStep = _convertStepToOld(step);
      await OldService.GuidedOnboarding.goTo(oldStep);
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Could not sync old service on goTo: $e');
      }
    }
    
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] Went to step: $step (active=$_active)');
    }
  }

  /// Go back to the previous step.
  static Future<GuidedOnboardingStep?> goBack() async {
    if (!_active) return null;
    
    final oldStep = _step;
    GuidedOnboardingStep? previousStep;
    switch (_step) {
      case GuidedOnboardingStep.trackSelection:
        return null; // Can't go back from first step
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
        _scenarioSectionIndex = 0;
        scenarioSectionNotifier.value = _scenarioSectionIndex;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.taskIntro:
        _step = GuidedOnboardingStep.scenarioOverview;
        _scenarioSectionIndex = 4; // go back to last scenario section (step 11)
        scenarioSectionNotifier.value = _scenarioSectionIndex;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.taskGuidance:
        _step = GuidedOnboardingStep.taskIntro;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.taskFeedback:
        _step = GuidedOnboardingStep.taskGuidance;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.resultsTakeaway:
        _step = GuidedOnboardingStep.taskFeedback;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.infoSettings:
        _step = GuidedOnboardingStep.resultsTakeaway;
        previousStep = _step;
        break;
      default:
        return null;
    }
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] goBack: $oldStep -> $_step');
    }
    stepNotifier.value = _step;
    await _persistState();
    return previousStep;
  }

  /// Skip the entire onboarding flow.
  static Future<void> skip() async {
    if (!_active) return;
    await complete();
  }

  /// Mark the onboarding as fully complete.
  static Future<void> complete() async {
    _active = false;
    _step = GuidedOnboardingStep.completed;
    await _persistState();
    
    // Mark as completed in centralized state
    await OnboardingState.markCompleted();
    
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] Completed walkthrough');
    }
    stepNotifier.value = _step;
  }

  /// Reset onboarding (for testing/replay).
  static Future<void> resetCompletely() async {
    _active = false;
    _step = GuidedOnboardingStep.none;
    _scenarioSectionIndex = 0;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    await _persistState();
    
    // Reset centralized state
    await OnboardingState.reset();
    
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] Reset completely');
    }
    stepNotifier.value = _step;
  }

  /// Get current step number (1-16) for display.
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
        // Steps 7-11 for the 5 sections of scenario overview (0-4).
        final int idx = _scenarioSectionIndex.clamp(0, 4).toInt();
        return 7 + idx; // 7, 8, 9, 10, 11
      case GuidedOnboardingStep.taskIntro:
        return 12;
      case GuidedOnboardingStep.taskGuidance:
        return 13;
      case GuidedOnboardingStep.taskFeedback:
        return 14;
      case GuidedOnboardingStep.resultsTakeaway:
        return 15;
      case GuidedOnboardingStep.infoSettings:
        return settingsPage ? 17 : 16; // Step 16 on home screen, step 17 on settings page
      default:
        return null;
    }
  }

  /// Advance within the scenario overview (steps 7-10) by incrementing the
  /// internal section index only. Does not change the current step enum.
  static Future<void> advanceScenarioSection() async {
    if (!_active) return;
    if (_step != GuidedOnboardingStep.scenarioOverview) {
      if (kDebugMode) {
        debugPrint(
            '[GUIDED_FLOW] section advance ignored – step=$_step, idx=$_scenarioSectionIndex');
      }
      return;
    }
    if (_scenarioSectionIndex >= 4) {
      if (kDebugMode) {
        debugPrint(
            '[GUIDED_FLOW] section advance ignored at last index=$_scenarioSectionIndex');
      }
      return;
    }
    final before = _scenarioSectionIndex;
    _scenarioSectionIndex++;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    if (kDebugMode) {
      debugPrint(
          '[GUIDED_FLOW] section advance idx=$before -> $_scenarioSectionIndex');
    }
    await _persistState();
    try {
      final oldStep = _convertStepToOld(_step);
      await OldService.GuidedOnboarding.goTo(oldStep);
    } catch (e) {
      if (kDebugMode) {
        debugPrint(
            '[GUIDED_ONBOARDING] Could not sync old service on section advance: $e');
      }
    }
  }

  /// Advance from the Pro Tip (step 11, scenarioOverview idx=4) into the
  /// task intro (step 12). Only valid when we're on the last scenario section.
  static Future<void> advanceFromProTipToTask() async {
    if (!_active) return;
    if (_step != GuidedOnboardingStep.scenarioOverview ||
        _scenarioSectionIndex != 4) {
      if (kDebugMode) {
        debugPrint(
            '[GUIDED_FLOW] proTip -> taskIntro ignored (step=$_step, idx=$_scenarioSectionIndex)');
      }
      return;
    }
    if (kDebugMode) {
      debugPrint('[GUIDED_FLOW] proTip -> taskIntro');
    }
    _step = GuidedOnboardingStep.taskIntro;
    _scenarioSectionIndex = 0;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    stepNotifier.value = _step;
    await _persistState();
    try {
      final oldStep = _convertStepToOld(_step);
      await OldService.GuidedOnboarding.goTo(oldStep);
    } catch (e) {
      if (kDebugMode) {
        debugPrint(
            '[GUIDED_ONBOARDING] Could not sync old service on proTip->taskIntro: $e');
      }
    }
  }
  
  /// Convert our GuidedOnboardingStep enum to the old service's enum.
  static OldService.GuidedOnboardingStep _convertStepToOld(GuidedOnboardingStep step) {
    switch (step) {
      case GuidedOnboardingStep.none:
        return OldService.GuidedOnboardingStep.none;
      case GuidedOnboardingStep.trackSelection:
        return OldService.GuidedOnboardingStep.trackSelection;
      case GuidedOnboardingStep.lessonSelection:
        return OldService.GuidedOnboardingStep.lessonSelection;
      case GuidedOnboardingStep.scenarioSelection:
        return OldService.GuidedOnboardingStep.scenarioSelection;
      case GuidedOnboardingStep.scenarioOverview:
        return OldService.GuidedOnboardingStep.scenarioOverview;
      case GuidedOnboardingStep.taskIntro:
        return OldService.GuidedOnboardingStep.taskIntro;
      case GuidedOnboardingStep.taskGuidance:
        return OldService.GuidedOnboardingStep.taskGuidance;
      case GuidedOnboardingStep.taskFeedback:
        // Map to taskGuidance for old service compatibility
        return OldService.GuidedOnboardingStep.taskGuidance;
      case GuidedOnboardingStep.resultsTakeaway:
        return OldService.GuidedOnboardingStep.resultsTakeaway;
      case GuidedOnboardingStep.infoSettings:
        return OldService.GuidedOnboardingStep.infoSettings;
      case GuidedOnboardingStep.completed:
        return OldService.GuidedOnboardingStep.completed;
    }
  }

  /// Get UI action hint for a specific step (single source of truth).
  ///
  /// Returns `null` if no hint is needed for this step.
  ///
  /// **CRITICAL:** This is the **ONLY** place where UI-action helper text is defined.
  /// Steps 4,5,6,11,15 require hints; all other steps return `null`.
  /// **Do NOT** duplicate these hints in screen-level code or bottom sheet.
  static String? getUIActionHint(int? stepNumber) {
    if (stepNumber == null) return null;
    
    switch (stepNumber) {
      case 4:
        return "Tap the highlighted track to continue.";
      case 5:
        return "Tap the highlighted lesson to continue.";
      case 6:
        return "Tap the highlighted scenario to continue.";
      case 11:
        return "Tap 'Try the Task' to continue.";
      case 16:
        return "Tap the highlighted tile to open Info & Settings.";
      default:
        return null;
    }
  }
}
