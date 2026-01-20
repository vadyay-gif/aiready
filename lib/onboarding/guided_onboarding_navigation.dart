import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'guided_onboarding_controller.dart';
import '../screens/home_screen.dart';
import '../screens/track_screen.dart';

/// Centralized navigation helper for the guided onboarding "Previous Step" action.
///
/// This ensures that going back from cross-screen steps (e.g. 5 -> 4, 6 -> 5)
/// updates both the controller step enum and the active route so the correct
/// overlay appears on the correct screen.
Future<void> handleGuidedPrevious(BuildContext context) async {
  final currentStep = GuidedOnboardingController.currentStep;
  final routeName = ModalRoute.of(context)?.settings.name ?? 'unknown';

  GuidedOnboardingStep? targetStep;
  Widget? targetScreen;

  switch (currentStep) {
    case GuidedOnboardingStep.lessonSelection:
      // Step 5 -> Step 4 on HomeScreen
      targetStep = GuidedOnboardingStep.trackSelection;
      targetScreen = const HomeScreen();
      break;
    case GuidedOnboardingStep.scenarioSelection:
      // Step 6 -> Step 5 on TrackScreen (Track 1 only in guided flow)
      targetStep = GuidedOnboardingStep.lessonSelection;
      targetScreen = const TrackScreen(trackIndex: 0);
      break;
    default:
      // For all other steps, fall back to simple goBack() behavior
      targetStep = await GuidedOnboardingController.goBack();
      targetScreen = null;
      break;
  }

  if (kDebugMode) {
    debugPrint('[GUIDED_NAV] PREV route=$routeName enum=$currentStep '
        '-> enumAfter=$targetStep nav=${targetScreen == null ? "stay" : targetScreen.runtimeType}');
  }

  if (targetScreen != null && targetStep != null) {
    await GuidedOnboardingController.goTo(targetStep);
    if (!context.mounted) return;

    if (targetStep == GuidedOnboardingStep.trackSelection) {
      // Step 5 -> 4: return to the root HomeScreen without duplicating it.
      Navigator.popUntil(context, (route) => route.isFirst);
    } else if (targetStep == GuidedOnboardingStep.lessonSelection) {
      // Step 6 -> 5: replace current route with TrackScreen(trackIndex: 0).
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => targetScreen!),
      );
    }
  }
}

