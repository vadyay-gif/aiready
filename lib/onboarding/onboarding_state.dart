import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'guided_onboarding_controller.dart';

/// Status of onboarding
enum OnboardingStatusType {
  /// Fresh install - show intro slides
  fresh,
  /// Intro slides shown, guided walkthrough active
  active,
  /// Onboarding fully completed
  completed,
}

/// Centralized onboarding state management.
/// This is the single source of truth for onboarding status.
class OnboardingState {
  // SharedPreferences keys - single source of truth
  static const String _keySeenVersion = 'onboarding_seen_version';
  static const String _keyCompleted = 'onboarding_completed';
  static const String _keyActive = 'onboarding_active';
  static const String _keyStep = 'onboarding_step';

  // Install / state-version keys (used to defeat backup-restore weirdness)
  static const String _keyInstallId = 'install_id';
  static const String _keyStateVersion = 'onboarding_state_version';

  // Current onboarding version - bump this to force re-onboarding
  static const String _currentVersion = 'v4';

  // Current onboarding state schema version - bump when we change state semantics.
  static const int _currentStateVersion = 1;

  /// Load onboarding status from persistent storage.
  /// Call this early in app lifecycle, before routing decisions.
  static Future<OnboardingStatus> loadOnboardingStatus() async {
    try {
      final prefs = await SharedPreferences.getInstance();

      // First, check for and clear any old onboarding keys that might interfere
      // This ensures a truly fresh install always shows onboarding
      final oldSeenKey = prefs.getBool('onboarding_seen_v4');
      final oldSeenKeyV3 = prefs.getBool('onboarding_seen_v3');
      final oldSeenKeyV2 = prefs.getBool('onboarding_seen_v2');
      final oldSeenKeyV1 = prefs.getBool('onboarding_seen');

      // Install / state-version diagnostics
      final storedInstallId = prefs.getString(_keyInstallId);
      final storedStateVersion = prefs.getInt(_keyStateVersion);

      // Check version - if mismatch or missing, treat as fresh install
      final seenVersion = prefs.getString(_keySeenVersion);
      final completedValue = prefs.getBool(_keyCompleted);
      final activeValue = prefs.getBool(_keyActive);
      final stepValue = prefs.getInt(_keyStep);

      // Check if this is a truly fresh install (no keys exist at all)
      final hasAnyKey = seenVersion != null ||
          completedValue != null ||
          activeValue != null ||
          stepValue != null ||
          oldSeenKey != null ||
          oldSeenKeyV3 != null ||
          oldSeenKeyV2 != null ||
          oldSeenKeyV1 != null;

      // Debug logging
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Loading state:');
        debugPrint('  - hasAnyKey: $hasAnyKey');
        debugPrint('  - seenVersion: $seenVersion (current: $_currentVersion)');
        debugPrint('  - old keys found: onboarding_seen_v4=$oldSeenKey, v3=$oldSeenKeyV3, v2=$oldSeenKeyV2, v1=$oldSeenKeyV1');
        debugPrint('  - completed: $completedValue');
        debugPrint('  - active: $activeValue');
        debugPrint('  - step: $stepValue');
        debugPrint('  - installId: $storedInstallId');
        debugPrint('  - stateVersion: $storedStateVersion (current: $_currentStateVersion)');
      }

      // CRITICAL: If version doesn't match OR no keys exist, treat as fresh install.
      // Additionally, if installId or stateVersion are missing/mismatched, we
      // hard-reset onboarding regardless of restored prefs (e.g. from backup).
      final versionMatches = seenVersion == _currentVersion;
      final hasOldKeys =
          oldSeenKey == true || oldSeenKeyV3 == true || oldSeenKeyV2 == true || oldSeenKeyV1 == true;
      final hasValidInstallId = storedInstallId != null && storedInstallId.isNotEmpty;
      final stateVersionMatches = storedStateVersion == _currentStateVersion;

      final shouldForceFresh = !versionMatches ||
          !hasAnyKey ||
          hasOldKeys ||
          !hasValidInstallId ||
          !stateVersionMatches;

      if (kDebugMode) {
        debugPrint('[ONBOARDING] shouldForceFresh=$shouldForceFresh '
            '(versionMatches=$versionMatches, hasAnyKey=$hasAnyKey, '
            'hasOldKeys=$hasOldKeys, hasValidInstallId=$hasValidInstallId, '
            'stateVersionMatches=$stateVersionMatches)');
      }

      if (shouldForceFresh) {
        if (kDebugMode) {
          debugPrint('[ONBOARDING] Fresh install/state reset detected - '
              'versionMatches=$versionMatches, hasAnyKey=$hasAnyKey, '
              'hasOldKeys=$hasOldKeys, hasValidInstallId=$hasValidInstallId, '
              'stateVersionMatches=$stateVersionMatches');
          debugPrint('[ONBOARDING] Resetting all onboarding state and seeding installId/stateVersion');
        }

        // Clear ALL onboarding state for fresh install or version change
        await prefs.remove(_keySeenVersion);
        await prefs.remove(_keyCompleted);
        await prefs.remove(_keyActive);
        await prefs.remove(_keyStep);
        // Clear all old onboarding keys
        await prefs.remove('onboarding_seen_v4');
        await prefs.remove('onboarding_seen_v3');
        await prefs.remove('onboarding_seen_v2');
        await prefs.remove('onboarding_seen');
        await prefs.remove('guided_onboarding_active'); // Old key name
        await prefs.remove('guided_onboarding_step'); // Old key name

        // Explicitly seed baseline flags for a truly fresh intro.
        await prefs.setBool(_keyCompleted, false);
        await prefs.setBool(_keyActive, false);
        await prefs.setInt(_keyStep, GuidedOnboardingStep.none.index);

        // Seed installId and state-version so future launches are stable.
        final newInstallId = _generateInstallId();
        await prefs.setString(_keyInstallId, newInstallId);
        await prefs.setInt(_keyStateVersion, _currentStateVersion);

        if (kDebugMode) {
          debugPrint('[ONBOARDING] All onboarding keys cleared - returning fresh status (shouldShowIntro=true)');
        }

        return const OnboardingStatus(
          status: OnboardingStatusType.fresh,
          shouldShowIntro: true,
          shouldShowGuided: false,
          isCompleted: false,
          resumeStep: null,
        );
      }

      // Check if completed
      final completed = completedValue ?? false;
      if (completed) {
        if (kDebugMode) {
          debugPrint('[ONBOARDING] Onboarding completed - skipping');
        }
        return const OnboardingStatus(
          status: OnboardingStatusType.completed,
          shouldShowIntro: false,
          shouldShowGuided: false,
          isCompleted: true,
          resumeStep: null,
        );
      }

      // Check if active (mid-onboarding)
      final active = activeValue ?? false;
      if (active) {
        final stepIndex = stepValue;
        if (kDebugMode) {
          debugPrint('[ONBOARDING] Onboarding active - resuming at step: $stepIndex');
        }
        // If active, skip intro slides and go straight to guided walkthrough
        return OnboardingStatus(
          status: OnboardingStatusType.active,
          shouldShowIntro: false,
          shouldShowGuided: true,
          isCompleted: false,
          resumeStep: stepIndex,
        );
      }

      // Default: fresh install
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Fresh install - showing intro slides');
      }
      return const OnboardingStatus(
        status: OnboardingStatusType.fresh,
        shouldShowIntro: true,
        shouldShowGuided: false,
        isCompleted: false,
        resumeStep: null,
      );
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Error loading state: $e - defaulting to fresh');
      }
      // On error, default to fresh install
      return const OnboardingStatus(
        status: OnboardingStatusType.fresh,
        shouldShowIntro: true,
        shouldShowGuided: false,
        isCompleted: false,
        resumeStep: null,
      );
    }
  }

  /// Mark that intro slides have been shown and guided walkthrough should start.
  static Future<void> markIntroShown() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keySeenVersion, _currentVersion);
      await prefs.setBool(_keyActive, true);
      // Step will be set by GuidedOnboardingController.start()
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Intro slides shown - marking active');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Error marking intro shown: $e');
      }
    }
  }

  /// Mark onboarding as fully completed.
  static Future<void> markCompleted() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_keySeenVersion, _currentVersion);
      await prefs.setBool(_keyCompleted, true);
      await prefs.setBool(_keyActive, false);
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Onboarding completed');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Error marking completed: $e');
      }
    }
  }

  /// Reset onboarding (for testing/replay).
  static Future<void> reset() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(_keySeenVersion);
      await prefs.remove(_keyCompleted);
      await prefs.remove(_keyActive);
      await prefs.remove(_keyStep);
      await prefs.remove('onboarding_seen_v4'); // Also clear old key
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Onboarding reset');
      }
    } catch (e) {
      if (kDebugMode) {
        debugPrint('[ONBOARDING] Error resetting: $e');
      }
    }
  }

  /// Get the current version string (for external use).
  static String get currentVersion => _currentVersion;

  /// Generate a simple install identifier (no external deps).
  static String _generateInstallId() {
    final now = DateTime.now().millisecondsSinceEpoch;
    final random = Random().nextInt(1 << 32);
    return 'install_${now}_$random';
  }
}

/// Result of loading onboarding status.
class OnboardingStatus {
  final OnboardingStatusType status;
  final bool shouldShowIntro;
  final bool shouldShowGuided;
  final bool isCompleted;
  final int? resumeStep;

  const OnboardingStatus({
    required this.status,
    required this.shouldShowIntro,
    required this.shouldShowGuided,
    required this.isCompleted,
    this.resumeStep,
  });
}
