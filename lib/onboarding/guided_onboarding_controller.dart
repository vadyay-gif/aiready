import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'onboarding_state.dart';
import '../services/guided_onboarding.dart' as old_service;
import 'onboarding_debug_log.dart';

/// High-level steps for the hybrid onboarding walkthrough.
enum GuidedOnboardingStep {
  none,
  intro1, // Step 1: Intro slide 1
  intro2, // Step 2: Intro slide 2
  intro3, // Step 3: Intro slide 3
  trackSelection,
  lessonSelection,
  scenarioSelection,
  scenarioOverview,
  taskIntro,
  taskGuidance,
  taskFeedback,
  resultsTakeaway,
  infoSettings,
  repeatOnboarding, // Step 17: Settings page, Repeat Onboarding; goNext here -> completed
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

  /// Step entry tick: increments every time the current onboarding step changes
  /// (forward, backward, skip, or UI action). Screens use this to reset guards
  /// and positioning deterministically on step re-entry.
  static int _stepEntryTick = 0;
  static final ValueNotifier<int> stepEntryTick =
      ValueNotifier<int>(_stepEntryTick);

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
        // Migration: old persisted index 10 was completed; now 10 = repeatOnboarding. If _active is false, it was completed.
        if (_step == GuidedOnboardingStep.repeatOnboarding && !_active) {
          _step = GuidedOnboardingStep.completed;
        }
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
      // Note: Don't increment tick on initialization - only on user actions
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

  /// Start the guided walkthrough from intro slide 1.
  /// Use this for Repeat Onboarding to restart from the beginning.
  static Future<void> startFromIntro() async {
    _active = true;
    _step = GuidedOnboardingStep.intro1;
    _scenarioSectionIndex = 0;
    stepNotifier.value = _step;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    _incrementStepEntryTick('ui');
    await _persistState();
    
    // Don't mark intro as shown - we're restarting from intro
    // await OnboardingState.markIntroShown();
    
    // COMPATIBILITY SYNC: Keep old service in sync for screens that still use it.
    // Only sync when transitioning to non-intro steps (intro steps don't need old service).
    // TaskScreen/ScenarioScreen use GuidedOnboardingController, so they don't need old service.
    // This reduces risk of old service overriding controller state.
    try {
      await old_service.GuidedOnboarding.initialize();
      // Don't sync intro steps to old service - they map to 'none' and screens use controller
      // Only sync when we reach trackSelection or later steps
      if (_step != GuidedOnboardingStep.intro1 && 
          _step != GuidedOnboardingStep.intro2 && 
          _step != GuidedOnboardingStep.intro3) {
        if (!old_service.GuidedOnboarding.isActive) {
          old_service.GuidedOnboarding.start();
        }
        final oldStep = _convertStepToOld(_step);
        await old_service.GuidedOnboarding.goTo(oldStep);
        if (kDebugMode) {
          debugPrint('[GUIDED_ONBOARDING] startFromIntro sync: $_step -> $oldStep (old service)');
        }
      } else {
        if (kDebugMode) {
          debugPrint('[GUIDED_ONBOARDING] startFromIntro: skipping old service sync for intro step $_step');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Could not sync old service: $e');
      }
    }
    
    if (kDebugMode) {
      debugPrint(
        '[GUIDED_ONBOARDING] Started from intro: '
        'active=$_active, step=$_step (persisted to $_activeKey/$_stepKey)',
      );
    }
    stepNotifier.value = _step;
    _incrementStepEntryTick('ui');

    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
    OnboardingDebugLog.log('controller', 'started from intro at step=$_step');
  }

  /// Start the guided walkthrough from the Tracks screen.
  /// This should be called after intro slides are shown.
  static Future<void> start() async {
    _active = true;
    _step = GuidedOnboardingStep.trackSelection;
    _scenarioSectionIndex = 0;
    stepNotifier.value = _step;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    _incrementStepEntryTick('ui');
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
      await old_service.GuidedOnboarding.initialize();
      // Ensure old service is active for goTo to work
      if (!old_service.GuidedOnboarding.isActive) {
        old_service.GuidedOnboarding.start();
      }
      final oldStep = _convertStepToOld(_step);
      await old_service.GuidedOnboarding.goTo(oldStep);
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] start sync: $_step -> $oldStep (old service active=${old_service.GuidedOnboarding.isActive})');
      }
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

    // Record initial controller snapshot for diagnostics.
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
    OnboardingDebugLog.log('controller', 'started walkthrough at step=$_step');
  }
  

  /// Helper to increment step entry tick and notify listeners.
  /// Called whenever the step changes (Next, Prev, Skip, UI action, etc.).
  static void _incrementStepEntryTick(String reason) {
    _stepEntryTick++;
    stepEntryTick.value = _stepEntryTick;
    final stepNumber = getCurrentStepNumber();
    if (kDebugMode) {
      debugPrint(
        '[GUIDED_STEP] stepEntryTick++ reason=$reason stepNumber=$stepNumber',
      );
    }
  }

  /// Advance to the next step.
  static Future<void> goNext() async {
    if (!_active) return;
    
    final previous = _step;
    OnboardingDebugLog.lastStepNumberBeforeAction ??=
        getCurrentStepNumber() ?? 0;

    switch (_step) {
      case GuidedOnboardingStep.intro1:
        _step = GuidedOnboardingStep.intro2;
        break;
      case GuidedOnboardingStep.intro2:
        _step = GuidedOnboardingStep.intro3;
        break;
      case GuidedOnboardingStep.intro3:
        _step = GuidedOnboardingStep.trackSelection;
        break;
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
        // Scenario overview has sub-steps (7–11) driven by scenarioSectionIndex.
        // For Steps 7–10 (index 0–3), goNext() should delegate to
        // advanceScenarioSection(). For Step 11 (index 4), require the
        // user to tap "Try the Task" instead of advancing here.
        if (_scenarioSectionIndex < 4) {
          if (kDebugMode) {
            debugPrint('[GUIDED_FLOW] goNext delegates to advanceScenarioSection '
                'idx=$_scenarioSectionIndex');
          }
          await advanceScenarioSection();
        } else {
          if (kDebugMode) {
            debugPrint('[GUIDED_FLOW] goNext ignored at last scenario section '
                'idx=$_scenarioSectionIndex (requires Try the Task)');
          }
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
        _step = GuidedOnboardingStep.repeatOnboarding;
        OnboardingDebugLog.log(
          'controller',
          'step transition infoSettings -> repeatOnboarding',
        );
        OnboardingDebugLog.log(
          'controller',
          'now stepNumber=17 enum=GuidedOnboardingStep.repeatOnboarding',
        );
        break;
      case GuidedOnboardingStep.repeatOnboarding:
        await complete();
        return;
      default:
        return;
    }
    if (kDebugMode) {
      final beforeNumber = getCurrentStepNumber();
      debugPrint(
          '[GUIDED_STEP] goNext: enum=$previous -> $_step, stepNumber=$beforeNumber');
    }

    OnboardingDebugLog.recordStepTransition(
      from: previous.toString(),
      to: _step.toString(),
    );
    OnboardingDebugLog.lastStepNumberAfterAction =
        getCurrentStepNumber() ?? 0;
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
    stepNotifier.value = _step;
    scenarioSectionNotifier.value = _scenarioSectionIndex;
    await _persistState();
    
    // Sync the old service for backward compatibility (only for non-intro steps)
    // Intro steps don't need old service sync - screens use GuidedOnboardingController
    try {
      // Only sync when transitioning to/from non-intro steps
      if (_step != GuidedOnboardingStep.intro1 && 
          _step != GuidedOnboardingStep.intro2 && 
          _step != GuidedOnboardingStep.intro3 &&
          previous != GuidedOnboardingStep.intro1 && 
          previous != GuidedOnboardingStep.intro2 && 
          previous != GuidedOnboardingStep.intro3) {
        await old_service.GuidedOnboarding.initialize();
        if (!old_service.GuidedOnboarding.isActive && _active) {
          old_service.GuidedOnboarding.start();
        }
        final oldStep = _convertStepToOld(_step);
        await old_service.GuidedOnboarding.goTo(oldStep);
        if (kDebugMode && previous != _step) {
          debugPrint('[GUIDED_ONBOARDING] goNext sync: $_step -> $oldStep (old service)');
        }
      } else if (previous == GuidedOnboardingStep.intro3 && _step == GuidedOnboardingStep.trackSelection) {
        // Special case: intro3 -> trackSelection transition - sync old service for Step 4
        await old_service.GuidedOnboarding.initialize();
        if (!old_service.GuidedOnboarding.isActive) {
          old_service.GuidedOnboarding.start();
        }
        final oldStep = _convertStepToOld(_step);
        await old_service.GuidedOnboarding.goTo(oldStep);
        if (kDebugMode) {
          debugPrint('[GUIDED_ONBOARDING] goNext sync: intro3->trackSelection -> $oldStep (old service)');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Could not sync old service on goNext: $e');
      }
    }
  }
  
  /// Alias for goNext() for convenience.
  static Future<void> next() => goNext();

  /// Sync intro step from PageView page index (for swiping between intro slides).
  /// 
  /// This method updates the controller step to match the visible intro page
  /// when the user swipes between pages. It does NOT trigger navigation,
  /// old service sync, or any side effects beyond updating the step enum.
  /// 
  /// Requirements:
  /// - Only works when controller is active and step is an intro step
  /// - Maps pageIndex: 0 -> intro1, 1 -> intro2, 2 -> intro3
  /// - Idempotent: does nothing if already on the target step
  /// - Post-frame safe: can be called from post-frame callbacks
  /// - Synchronous: does not await persistence to avoid desync
  /// - Static: uses the same static state as all other controller methods
  static void setIntroStepFromPage(int pageIndex) {
    if (!_active) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] setIntroStepFromPage: ignored (not active)');
      }
      return;
    }
    
    // Map page index to step enum
    GuidedOnboardingStep targetStep;
    switch (pageIndex) {
      case 0:
        targetStep = GuidedOnboardingStep.intro1;
        break;
      case 1:
        targetStep = GuidedOnboardingStep.intro2;
        break;
      case 2:
        targetStep = GuidedOnboardingStep.intro3;
        break;
      default:
        if (kDebugMode) {
          debugPrint('[GUIDED_ONBOARDING] setIntroStepFromPage: invalid pageIndex=$pageIndex');
        }
        return;
    }
    
    // Only update if we're currently on an intro step (or transitioning to one)
    final isCurrentlyIntro = _step == GuidedOnboardingStep.intro1 ||
        _step == GuidedOnboardingStep.intro2 ||
        _step == GuidedOnboardingStep.intro3;
    
    if (!isCurrentlyIntro && _step != GuidedOnboardingStep.none) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] setIntroStepFromPage: ignored (not on intro step, current=$_step)');
      }
      return;
    }
    
    // Idempotent: do nothing if already on target step
    if (_step == targetStep) {
      return;
    }
    
    // Update step without navigation or old service sync
    final previous = _step;
    _step = targetStep;
    stepNotifier.value = _step;
    _incrementStepEntryTick('ui');
    
    // Persist state asynchronously (fire-and-forget to keep method synchronous)
    // Add error handling to prevent unhandled exceptions
    _persistState().catchError((e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] setIntroStepFromPage persist failed: $e');
      }
    });
    
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] setIntroStepFromPage: pageIndex=$pageIndex -> $previous -> $_step');
    }
  }

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
    _incrementStepEntryTick('ui');
    await _persistState();
    
    // Sync the old service for backward compatibility (only for non-intro steps)
    // Intro steps don't need old service sync - screens use GuidedOnboardingController
    try {
      if (step != GuidedOnboardingStep.intro1 && 
          step != GuidedOnboardingStep.intro2 && 
          step != GuidedOnboardingStep.intro3) {
        await old_service.GuidedOnboarding.initialize();
        if (!old_service.GuidedOnboarding.isActive && _active) {
          old_service.GuidedOnboarding.start();
        }
        final oldStep = _convertStepToOld(step);
        await old_service.GuidedOnboarding.goTo(oldStep);
        if (kDebugMode) {
          debugPrint('[GUIDED_ONBOARDING] goTo sync: $step -> $oldStep (old service)');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_ONBOARDING] Could not sync old service on goTo: $e');
      }
    }
    
    if (kDebugMode) {
      debugPrint('[GUIDED_ONBOARDING] Went to step: $step (active=$_active)');
    }

    OnboardingDebugLog.recordStepTransition(
      from: previous.toString(),
      to: _step.toString(),
    );
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
  }

  /// Go back to the previous step.
  static Future<GuidedOnboardingStep?> goBack() async {
    if (!_active) return null;
    
    final oldStep = _step;
    OnboardingDebugLog.lastStepNumberBeforeAction =
        getCurrentStepNumber() ?? 0;
    GuidedOnboardingStep? previousStep;
    switch (_step) {
      case GuidedOnboardingStep.intro1:
        return null; // Can't go back from first step
      case GuidedOnboardingStep.intro2:
        _step = GuidedOnboardingStep.intro1;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.intro3:
        _step = GuidedOnboardingStep.intro2;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.trackSelection:
        _step = GuidedOnboardingStep.intro3;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.lessonSelection:
        _step = GuidedOnboardingStep.trackSelection;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.scenarioSelection:
        _step = GuidedOnboardingStep.lessonSelection;
        previousStep = _step;
        break;
      case GuidedOnboardingStep.scenarioOverview:
        // Within scenarioOverview (steps 7–11), Previous should walk backwards
        // through scenarioSectionIndex (11→10→9→8→7) without leaving the screen.
        // Only when we reach section index 0 (step 7) and go back again do we
        // navigate to Step 6 (scenarioSelection).
        if (_scenarioSectionIndex > 0) {
          final before = _scenarioSectionIndex;
          _scenarioSectionIndex--;
          scenarioSectionNotifier.value = _scenarioSectionIndex;
          previousStep = _step; // remain on scenarioOverview
          if (kDebugMode) {
            debugPrint(
              '[GUIDED_FLOW] goBack scenarioOverview section idx=$before -> $_scenarioSectionIndex',
            );
          }
          OnboardingDebugLog.log(
            'controller',
            'scenarioOverview goBack section idx=$before -> $_scenarioSectionIndex',
          );
        } else {
          _step = GuidedOnboardingStep.scenarioSelection;
          _scenarioSectionIndex = 0;
          scenarioSectionNotifier.value = _scenarioSectionIndex;
          previousStep = _step;
        }
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
      case GuidedOnboardingStep.repeatOnboarding:
        _step = GuidedOnboardingStep.infoSettings;
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

    OnboardingDebugLog.lastStepNumberAfterAction =
        getCurrentStepNumber() ?? 0;
    OnboardingDebugLog.recordStepTransition(
      from: oldStep.toString(),
      to: _step.toString(),
    );
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
    return previousStep;
  }

  /// Skip the entire onboarding flow.
  static Future<void> skip() async {
    if (!_active) return;
    OnboardingDebugLog.lastStepNumberBeforeAction =
        getCurrentStepNumber() ?? 0;
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
    _incrementStepEntryTick('skip');
    OnboardingDebugLog.log('controller', 'completed walkthrough');
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
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

    OnboardingDebugLog.log('controller', 'reset completely');
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
  }

  /// Get current step number (1-17) for display.
  /// For scenarioOverview, scenarioSectionIndex (0–4) maps to steps 7–11.
  /// infoSettings = step 16 (Home). repeatOnboarding = step 17 (Settings). [settingsPage param ignored]
  static int? getCurrentStepNumber({int? scenarioSectionIndex, bool settingsPage = false}) {
    if (!_active) return null;

    switch (_step) {
      case GuidedOnboardingStep.intro1:
        return 1;
      case GuidedOnboardingStep.intro2:
        return 2;
      case GuidedOnboardingStep.intro3:
        return 3;
      case GuidedOnboardingStep.trackSelection:
        return 4;
      case GuidedOnboardingStep.lessonSelection:
        return 5;
      case GuidedOnboardingStep.scenarioSelection:
        return 6;
      case GuidedOnboardingStep.scenarioOverview:
        // Steps 7–11 for the 5 sections of scenario overview (0–4).
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
        return 16; // Step 16 on Home (Settings tile)
      case GuidedOnboardingStep.repeatOnboarding:
        return 17; // Step 17 on Settings (Repeat Onboarding)
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
    _incrementStepEntryTick('ui');
    if (kDebugMode) {
      debugPrint(
        '[GUIDED_FLOW] advanceScenarioSection idx=$before -> $_scenarioSectionIndex',
      );
    }
    OnboardingDebugLog.log(
      'controller',
      'section advance idx=$before -> $_scenarioSectionIndex',
    );
    await _persistState();
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
    _incrementStepEntryTick('ui');
    await _persistState();
    try {
      final oldStep = _convertStepToOld(_step);
      await old_service.GuidedOnboarding.goTo(oldStep);
    } catch (e) {
      if (kDebugMode) {
        debugPrint(
            '[GUIDED_ONBOARDING] Could not sync old service on proTip->taskIntro: $e');
      }
    }

    OnboardingDebugLog.recordStepTransition(
      from: GuidedOnboardingStep.scenarioOverview.toString(),
      to: _step.toString(),
    );
    OnboardingDebugLog.controllerState = OnboardingControllerDebugState(
      isActive: _active,
      currentStepLabel: _step.toString(),
      stepNumber: getCurrentStepNumber(),
      totalSteps: totalSteps,
      scenarioSectionIndex: _scenarioSectionIndex,
    );
  }
  
  /// Convert our GuidedOnboardingStep enum to the old service's enum.
  static old_service.GuidedOnboardingStep _convertStepToOld(GuidedOnboardingStep step) {
    switch (step) {
      case GuidedOnboardingStep.none:
        return old_service.GuidedOnboardingStep.none;
      case GuidedOnboardingStep.intro1:
      case GuidedOnboardingStep.intro2:
      case GuidedOnboardingStep.intro3:
        // Old service doesn't have intro steps, map to none
        return old_service.GuidedOnboardingStep.none;
      case GuidedOnboardingStep.trackSelection:
        return old_service.GuidedOnboardingStep.trackSelection;
      case GuidedOnboardingStep.lessonSelection:
        return old_service.GuidedOnboardingStep.lessonSelection;
      case GuidedOnboardingStep.scenarioSelection:
        return old_service.GuidedOnboardingStep.scenarioSelection;
      case GuidedOnboardingStep.scenarioOverview:
        return old_service.GuidedOnboardingStep.scenarioOverview;
      case GuidedOnboardingStep.taskIntro:
        return old_service.GuidedOnboardingStep.taskIntro;
      case GuidedOnboardingStep.taskGuidance:
        return old_service.GuidedOnboardingStep.taskGuidance;
      case GuidedOnboardingStep.taskFeedback:
        // Map to taskGuidance for old service compatibility
        return old_service.GuidedOnboardingStep.taskGuidance;
      case GuidedOnboardingStep.resultsTakeaway:
        return old_service.GuidedOnboardingStep.resultsTakeaway;
      case GuidedOnboardingStep.infoSettings:
        return old_service.GuidedOnboardingStep.infoSettings;
      case GuidedOnboardingStep.repeatOnboarding:
        return old_service.GuidedOnboardingStep.infoSettings; // Old service has no repeatOnboarding
      case GuidedOnboardingStep.completed:
        return old_service.GuidedOnboardingStep.completed;
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
