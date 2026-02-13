import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Single in-memory ring-buffer for onboarding + overlay diagnostics.
///
/// This is intentionally lightweight: no persistence, no timers, no IO.
/// It is only used for developer diagnostics (hidden settings panel).
class OnboardingLogEntry {
  OnboardingLogEntry({
    required this.timestamp,
    required this.category,
    required this.message,
  });

  final DateTime timestamp;
  final String category;
  final String message;
}

/// Snapshot of the controller state (high-level step info).
class OnboardingControllerDebugState {
  const OnboardingControllerDebugState({
    required this.isActive,
    required this.currentStepLabel,
    required this.stepNumber,
    required this.totalSteps,
    required this.scenarioSectionIndex,
  });

  final bool isActive;
  final String currentStepLabel;
  final int? stepNumber;
  final int totalSteps;
  final int scenarioSectionIndex;
}

/// Snapshot of the overlay engine state (cutout geometry + stability).
class OnboardingOverlayDebugState {
  const OnboardingOverlayDebugState({
    required this.hasAnyKey,
    required this.primaryTargetMounted,
    required this.secondaryTargetMounted,
    required this.candidateRect,
    required this.stableRect,
    required this.paintRect,
    required this.stableFrames,
    required this.requiredFrames,
    required this.measurementScheduled,
    required this.lastNoCutoutReason,
    required this.lastResetReason,
    required this.pendingMeasureFrames,
    required this.resetCount,
    required this.lastRectDelta,
    required this.framesSinceFirstCandidate,
  });

  final bool hasAnyKey;
  final bool primaryTargetMounted;
  final bool secondaryTargetMounted;
  final Rect? candidateRect;
  final Rect? stableRect;
  final Rect? paintRect;
  final int stableFrames;
  final int requiredFrames;
  final bool measurementScheduled;
  final String? lastNoCutoutReason;

  /// Last textual reason for a stability reset (if any).
  final String? lastResetReason;

  /// How many measurement frames remain in the pending pump (0 when idle).
  final int pendingMeasureFrames;

  /// Number of times stability has been reset for the current step.
  final int resetCount;

  /// Last observed maximum rect delta between frames (for debugging jitter).
  final double? lastRectDelta;

  /// Number of consecutive measurement frames since we first saw a candidateRect
  /// for this step/target while no stableRect was locked.
  final int framesSinceFirstCandidate;
}

/// Central singleton-style diagnostics surface used by:
/// - GuidedOnboardingController (step transitions)
/// - GuidedOverlay (geometry + stability)
/// - MobileGuidedBottomSheet (button taps / callbacks)
/// - Settings → Build Information diagnostics panel (read-only view)
class OnboardingDebugLog {
  static const int _maxEntries = 200;

  static final List<OnboardingLogEntry> _entries = <OnboardingLogEntry>[];

  /// Latest high-level controller snapshot.
  static OnboardingControllerDebugState? controllerState;

  /// Latest overlay engine snapshot (cutout + barrier).
  static OnboardingOverlayDebugState? overlayState;

  /// Last known "no cutout" reason string.
  static String? lastNoCutoutReason;

  /// Last bottom sheet action pressed: "next", "previous", "skip".
  static String? lastBottomSheetAction;

  /// Whether the last-rendered bottom sheet had a null onContinue callback.
  static bool? lastOnContinueWasNull;

  /// Last recorded step transition, e.g. "taskIntro -> taskGuidance".
  static String? lastStepTransition;

  /// Last step number before a Previous/Skip action.
  static int? lastStepNumberBeforeAction;

  /// Last step number after a Previous/Skip/Next action.
  static int? lastStepNumberAfterAction;

  /// Append a new log entry into the ring buffer.
  static void log(String category, String message) {
    final entry = OnboardingLogEntry(
      timestamp: DateTime.now(),
      category: category,
      message: message,
    );
    _entries.add(entry);
    if (_entries.length > _maxEntries) {
      _entries.removeAt(0);
    }

    if (kDebugMode) {
      debugPrint('[ONBOARDING][$category] $message');
    }
  }

  /// Expose entries with newest first for display.
  static List<OnboardingLogEntry> get entries =>
      List<OnboardingLogEntry>.unmodifiable(_entries.reversed);

  /// Convenience helper for recording step transitions.
  static void recordStepTransition({
    required String from,
    required String to,
  }) {
    lastStepTransition = '$from -> $to';
    log('controller', 'step transition $from -> $to');
  }
}

