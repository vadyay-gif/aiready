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

  static bool _active = false;
  static GuidedOnboardingStep _step = GuidedOnboardingStep.none;
  static bool _initialized = false;
  static double? _measuredBottomSheetHeight; // Exposed measured height for steps 4-16

  static bool get isActive => _active;
  static GuidedOnboardingStep get currentStep => _step;
  
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
      if (stepIndex != null && stepIndex >= 0 && stepIndex < GuidedOnboardingStep.values.length) {
        _step = GuidedOnboardingStep.values[stepIndex];
      } else {
        _step = GuidedOnboardingStep.none;
      }
      
      // If onboarding was completed, ensure active is false
      if (_step == GuidedOnboardingStep.completed) {
        _active = false;
      }
      
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Initialized: active=$_active, step=$_step');
      }
      
      _initialized = true;
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
      debugPrint('[GUIDED_ONBOARDING] Started walkthrough');
    }
  }
  

  /// Advance to the next step.
  static Future<void> goNext() async {
    if (!_active) return;
    
    switch (_step) {
      case GuidedOnboardingStep.trackSelection:
        _step = GuidedOnboardingStep.lessonSelection;
        break;
      case GuidedOnboardingStep.lessonSelection:
        _step = GuidedOnboardingStep.scenarioSelection;
        break;
      case GuidedOnboardingStep.scenarioSelection:
        _step = GuidedOnboardingStep.scenarioOverview;
        break;
      case GuidedOnboardingStep.scenarioOverview:
        _step = GuidedOnboardingStep.taskIntro;
        break;
      case GuidedOnboardingStep.taskIntro:
        _step = GuidedOnboardingStep.taskGuidance;
        break;
      case GuidedOnboardingStep.taskGuidance:
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
    _step = step;
    // If going to a non-none step, mark as active
    if (step != GuidedOnboardingStep.none && step != GuidedOnboardingStep.completed) {
      _active = true;
    }
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
  }

  /// Reset onboarding (for testing/replay).
  static Future<void> resetCompletely() async {
    _active = false;
    _step = GuidedOnboardingStep.none;
    await _persistState();
    
    // Reset centralized state
    await OnboardingState.reset();
    
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] Reset completely');
    }
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
      case 15:
        return "Tap the highlighted tile to open Info & Settings.";
      default:
        return null;
    }
  }
}
