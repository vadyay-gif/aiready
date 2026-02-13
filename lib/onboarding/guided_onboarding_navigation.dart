import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'guided_onboarding_controller.dart';
import 'onboarding_debug_log.dart';
import '../screens/home_screen.dart';
import '../screens/track_screen.dart';
import '../screens/scenario_choice_screen.dart';
import '../screens/scenario_screen.dart';
import '../screens/task_screen.dart';
import '../screens/scenario_complete_screen.dart';
import '../screens/settings_page.dart';
import '../screens/onboarding_screen.dart';

/// Centralized handler for "Skip Onboarding" action.
///
/// This ensures Skip ALWAYS:
/// 1) Exits onboarding mode (sets inactive)
/// 2) Navigates to HomeScreen as the top route
/// 3) Works from ANY step on ANY screen
Future<void> handleGuidedSkip(BuildContext context) async {
  if (!GuidedOnboardingController.isActive) return;
  
  final before = GuidedOnboardingController.getCurrentStepNumber();
  final beforeEnum = GuidedOnboardingController.currentStep;
  
  OnboardingDebugLog.log(
    'guided_navigation',
    'Skip tapped: before=$before enum=$beforeEnum',
  );
  
  // Exit onboarding mode
  await GuidedOnboardingController.skip();
  
  final after = GuidedOnboardingController.getCurrentStepNumber();
  OnboardingDebugLog.log(
    'guided_navigation',
    'Skip after: now=$after route=home',
  );
  
  // Navigate to HomeScreen, clearing all routes using root navigator
  if (context.mounted) {
    Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const HomeScreen()),
      (route) => false,
    );
  }
}

/// Resume routing map: maps step numbers to their corresponding screens.
/// This matches the logic in main.dart _checkOnboardingStatus().
Widget? _getScreenForStep(GuidedOnboardingStep step, int? stepNumber) {
  if (stepNumber == null) return null;
  
  // Use enum values for intro steps for consistency
  switch (step) {
    case GuidedOnboardingStep.intro1:
      return const OnboardingScreen(initialPage: 0);
    case GuidedOnboardingStep.intro2:
      return const OnboardingScreen(initialPage: 1);
    case GuidedOnboardingStep.intro3:
      return const OnboardingScreen(initialPage: 2);
    default:
      break;
  }
  
  // Fall back to step number for other steps
  switch (stepNumber) {
    case 4: // trackSelection
      return const HomeScreen();
    case 5: // lessonSelection
      return const TrackScreen(trackIndex: 0);
    case 6: // scenarioSelection
      return const ScenarioChoiceScreen(trackIndex: 0, lessonIndex: 0);
    case 7:
    case 8:
    case 9:
    case 10:
    case 11: // scenarioOverview (sections 0-4)
      return const ScenarioScreen(trackIndex: 0, lessonIndex: 0, scenarioIndex: 0);
    case 12:
    case 13:
    case 14: // taskIntro, taskGuidance, taskFeedback
      return const TaskScreen(trackIndex: 0, lessonIndex: 0, scenarioIndex: 0);
    case 15: // resultsTakeaway
      return const ScenarioCompleteScreen(trackIndex: 0, lessonIndex: 0, scenarioIndex: 0);
    case 16: // infoSettings
      return const HomeScreen();
    case 17: // repeatOnboarding
      return const SettingsPage();
    default:
      return null;
  }
}

/// Centralized navigation helper for the guided onboarding "Next Step" action.
///
/// This ensures that advancing:
/// 1) Updates the controller step enum via goNext()
/// 2) Routes to the correct screen for the new step using the resume routing map
/// 3) Uses post-frame callback to avoid racing layout/overlay measurement
Future<void> handleGuidedNext(BuildContext context) async {
  final currentStep = GuidedOnboardingController.currentStep;
  final currentStepNumber = GuidedOnboardingController.getCurrentStepNumber();
  
  if (kDebugMode) {
    debugPrint('[GUIDED_NAV] NEXT: from step=$currentStep stepNumber=$currentStepNumber');
  }
  
  // Call controller.goNext() to update step enum
  await GuidedOnboardingController.goNext();
  await Future<void>.delayed(Duration.zero);

  final targetStep = GuidedOnboardingController.currentStep;
  final targetStepNumber = GuidedOnboardingController.getCurrentStepNumber();

  if (kDebugMode) {
    debugPrint('[GUIDED_NAV] NEXT: after goNext step=$targetStep stepNumber=$targetStepNumber');
  }

  // Get the target screen using the resume routing map
  final targetScreen = _getScreenForStep(targetStep, targetStepNumber);

  bool immediateNavSucceeded = false;
  if (targetScreen != null && context.mounted) {
    try {
      if (kDebugMode && currentStepNumber == 3) {
        debugPrint('[GUIDED_NAV] handleGuidedNext immediate nav attempted for step=$targetStepNumber');
      }
      Navigator.of(context, rootNavigator: true).pushReplacement(
        MaterialPageRoute(builder: (_) => targetScreen),
      );
      immediateNavSucceeded = true;
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[GUIDED_NAV] immediate nav failed, falling back to post-frame: $e');
      }
    }
  }

  if (!immediateNavSucceeded && targetScreen != null) {
    // Fallback: post-frame callback to avoid racing layout/overlay measurement
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!context.mounted) return;

      if (kDebugMode) {
        debugPrint('[GUIDED_NAV] NEXT: navigating to ${targetScreen.runtimeType} for step=$targetStep stepNumber=$targetStepNumber');
      }

      // Use root navigator for consistency
      Navigator.of(context, rootNavigator: true).pushReplacement(
        MaterialPageRoute(builder: (_) => targetScreen),
      );
    });
  }
}

/// Centralized navigation helper for the guided onboarding "Previous Step" action.
///
/// This ensures that going back:
/// 1) Updates the controller step enum via goBack()
/// 2) Routes to the correct screen for the new step using the resume routing map
/// 3) Forces the step to re-trigger its normal "entry" behavior (scroll/highlight)
/// After going back, the UI resets to the beginning of that step.
Future<void> handleGuidedPrevious(BuildContext context) async {
  final currentStep = GuidedOnboardingController.currentStep;
  final currentStepNumber = GuidedOnboardingController.getCurrentStepNumber();
  final routeName = ModalRoute.of(context)?.settings.name ?? 'unknown';

  // Call controller.goBack() to update step enum
  final targetStep = await GuidedOnboardingController.goBack();
  
  if (targetStep == null) {
    // Can't go back from first step
    if (kDebugMode) {
      debugPrint('[GUIDED_NAV] PREV: cannot go back from step=$currentStep');
    }
    return;
  }
  
  final targetStepNumber = GuidedOnboardingController.getCurrentStepNumber();
  
  if (kDebugMode) {
    debugPrint('[GUIDED_NAV] PREV route=$routeName enum=$currentStep stepNumber=$currentStepNumber '
        '-> enumAfter=$targetStep stepNumber=$targetStepNumber');
  }

  // Get the target screen using the resume routing map
  final targetScreen = _getScreenForStep(targetStep ?? GuidedOnboardingStep.none, targetStepNumber);
  
  if (kDebugMode) {
    debugPrint('[GUIDED_NAV] PREV: targetScreen=${targetScreen?.runtimeType} for step=$targetStep stepNumber=$targetStepNumber');
  }
  
  if (targetScreen != null) {
    // Check if we're already on the correct screen to avoid unnecessary route replacement
    // This is important for same-screen transitions (e.g., TaskScreen step 12 -> 13)
    final needsNavigation = _needsNavigation(context, targetScreen, currentStepNumber, targetStepNumber);
    
    if (needsNavigation) {
      // Route to the correct screen for the new step
      if (!context.mounted) return;
      
      // Use pushReplacement to navigate to the target screen
      // This ensures we're on the correct screen for the step
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => targetScreen),
      );
    } else {
      if (kDebugMode) {
        debugPrint('[GUIDED_NAV] PREV: already on correct screen, skipping navigation');
      }
    }
    
    // After navigation (or if already on correct screen), force step to re-trigger entry behavior
    // This ensures auto-scroll/highlight positioning runs as on fresh entry
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // The step change and screen rebuild will trigger ValueListenableBuilder rebuilds,
      // which will naturally reset step-specific state (scroll positions, highlights, etc.)
      // The overlay system will detect the step change and re-run entry logic
    });
  } else {
    // For steps that don't require route navigation (same screen),
    // ensure step resets by triggering a rebuild
    if (kDebugMode) {
      debugPrint('[GUIDED_NAV] PREV: no screen change needed for step=$targetStep');
    }
    // The stepNotifier.value change from goBack() will trigger rebuilds
    // Schedule post-frame callback to ensure entry behavior re-runs
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Step state will reset naturally through ValueListenableBuilder rebuilds
    });
  }
}

/// Helper to determine if navigation is needed.
/// Returns true if we need to navigate to a different screen, false if already on correct screen.
/// 
/// Note: For same-screen transitions (e.g., TaskScreen step 12 -> 13), we currently
/// always navigate to ensure fresh state and entry behavior runs. This could be optimized
/// further to skip navigation when already on the exact same screen with same parameters.
bool _needsNavigation(BuildContext context, Widget targetScreen, int? currentStepNum, int? targetStepNum) {
  // If we don't have step numbers, fall back to navigating.
  if (currentStepNum == null || targetStepNum == null) {
    return true;
  }

  // If the screen type for the current and target steps is the same,
  // we can stay on the current route and rely on stepNotifier-driven rebuilds.
  final Type? fromType = _getScreenTypeForStep(currentStepNum);
  final Type? toType = _getScreenTypeForStep(targetStepNum);

  if (fromType != null && toType != null && fromType == toType) {
    return false;
  }

  return true;
}

/// Get the screen type (runtimeType) for a given step number.
/// Used to detect same-screen transitions.
Type? _getScreenTypeForStep(int stepNumber) {
  switch (stepNumber) {
    case 1:
    case 2:
    case 3:
      return OnboardingScreen;
    case 4:
    case 16:
      return HomeScreen;
    case 5:
      return TrackScreen;
    case 6:
      return ScenarioChoiceScreen;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      return ScenarioScreen;
    case 12:
    case 13:
    case 14:
      return TaskScreen;
    case 15:
      return ScenarioCompleteScreen;
    case 17:
      return SettingsPage;
    default:
      return null;
  }
}

