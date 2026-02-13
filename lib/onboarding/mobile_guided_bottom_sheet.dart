/// Mobile Guided Bottom Sheet - DO NOT BREAK
///
/// This widget implements strict mutual exclusivity for UI-action hints.
/// **DO NOT** "simplify" or refactor these critical parts:
///
/// * Steps 4,5,6,11,15: Show UIActionHint **ONLY** (no Next button).
///   All other steps: Show Next button **ONLY** (no hint).
///   Never show both at the same time.
///
/// * UIActionHint comes from `GuidedOnboardingController.getUIActionHint()`
///   (single source of truth). **Do NOT** duplicate helper text elsewhere.
///
/// * Bottom sheet must be **LAST** in Stack to ensure it's always on top.
///   `SafeArea(bottom: true)` and minimum padding are enforced.

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'guided_onboarding_controller.dart';
import 'onboarding_debug_log.dart';

/// Debug toggle for onboarding logs and diagnostics.
/// Set to true for verification builds; false for release.
const bool kOnboardingDebug = true;
class MobileGuidedBottomSheet extends StatelessWidget {
  // Static variable for throttling debug logs (only log on step changes)
  static int? _lastLoggedStep;
  // Measured height of the rendered bottom sheet (in logical pixels).
  // Used by callers to compute the actual sheet top instead of relying
  // solely on estimates.
  static final ValueNotifier<double> measuredHeight =
      ValueNotifier<double>(0.0);
  const MobileGuidedBottomSheet({
    super.key,
    required this.text,
    required this.stepNumber,
    required this.showContinueButton,
    required this.showCompletionButton,
    required this.continueButtonText,
    required this.onContinue,
    required this.onComplete,
    required this.onPreviousStep,
    required this.onSkip,
    required this.showNavigationButtons,
  });

  final String text;
  final int? stepNumber;
  final bool showContinueButton;
  final bool showCompletionButton;
  final String continueButtonText;
  final VoidCallback? onContinue;
  final VoidCallback? onComplete;
  final VoidCallback? onPreviousStep;
  final VoidCallback? onSkip;
  final bool showNavigationButtons;
  
  /// Get helper text hint from controller (single source of truth)
  String? _getUIActionHint() {
    return GuidedOnboardingController.getUIActionHint(stepNumber);
  }

  /// Estimated height of the bottom sheet (for auto-scroll calculations).
  static double getEstimatedHeight(BuildContext context) {
    final safeAreaBottom = MediaQuery.of(context).padding.bottom;
    // Base height: padding + nav buttons + step number + text + primary button + spacing
    return 20 + // top padding
        50 + // nav buttons (if shown)
        12 + // spacing
        24 + // step number
        12 + // spacing
        60 + // text (approximate)
        16 + // spacing
        50 + // primary button
        20 + // bottom padding
        safeAreaBottom; // safe area
  }

  @override
  Widget build(BuildContext context) {
    final safeAreaInsets = MediaQuery.of(context).padding;
    final viewInsets = MediaQuery.of(context).viewInsets;
    // Enforce minimum bottom padding: max(safeAreaBottom, 12)
    final paddingBottom = safeAreaInsets.bottom > 12 ? safeAreaInsets.bottom : 12.0;
    // Account for keyboard/viewInsets to keep bottom sheet visible and tappable
    final keyboardHeight = viewInsets.bottom;

    // Determine which buttons are actually built
    final tapRequiredSteps = {4, 11, 13, 14, 16};
    final isTapRequired = stepNumber != null && tapRequiredSteps.contains(stepNumber);
    final builtButtons = <String>[];
    if (onSkip != null) builtButtons.add('skip');
    if (showContinueButton && !isTapRequired) builtButtons.add('continue');
    if (showCompletionButton) builtButtons.add('complete');
    var builtButtonsStr = builtButtons.isEmpty ? 'none' : builtButtons.join(',');
    if (isTapRequired && showContinueButton) {
      builtButtonsStr += ' (continue omitted - tap-required)';
    }
    
    // Calculate display flags for debug logging
    final bool showCounter = stepNumber != null && stepNumber! >= 4;
    final bool showInstructionText = (stepNumber == null || stepNumber! >= 4) && text.isNotEmpty;
    final bool hasText = text.isNotEmpty;
    
    // Throttle debug logs to only log on step changes (prevent spam)
    if (kOnboardingDebug && kDebugMode && stepNumber != _lastLoggedStep) {
      debugPrint(
        '[BOTTOM_SHEET] build step=$stepNumber '
        'showCounter=$showCounter '
        'showInstructionText=$showInstructionText '
        'hasText=$hasText '
        'showContinue=$showContinueButton '
        'onContinueNull=${onContinue == null} '
        'onSkipNull=${onSkip == null} '
        'builtButtons=$builtButtonsStr',
      );
      OnboardingDebugLog.log(
        'bottom_sheet',
        'build step=$stepNumber showCounter=$showCounter showInstructionText=$showInstructionText hasText=$hasText '
        'showContinue=$showContinueButton '
        'onContinueNull=${onContinue == null} '
        'onSkipNull=${onSkip == null} '
        'builtButtons=$builtButtonsStr',
      );
      _lastLoggedStep = stepNumber;
    }
    OnboardingDebugLog.lastOnContinueWasNull = onContinue == null;
    
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Material(
        elevation: 8, // Ensure bottom sheet is above other content
        color: Colors.transparent,
        child: AnimatedPadding(
          padding: EdgeInsets.only(
            bottom: paddingBottom + keyboardHeight, // Add keyboard height to keep sheet above keyboard
          ),
          duration: const Duration(milliseconds: 100), // Smooth animation when keyboard appears/disappears
          curve: Curves.easeOut,
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Defer measurement to end of frame so layout is complete.
              WidgetsBinding.instance.addPostFrameCallback((_) {
                final h = context.size?.height ?? 0.0;
                if (h > 0 &&
                    (h - measuredHeight.value).abs() > 0.5) {
                  measuredHeight.value = h;
                  if (kOnboardingDebug && kDebugMode) {
                    debugPrint(
                      '[BOTTOM_SHEET] measuredHeight updated -> $h',
                    );
                  }
                }
              });

              return SafeArea(
                top: false,
                bottom: true,
                child: IgnorePointer(
                  ignoring: false, // Bottom sheet must remain fully interactive
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.15),
                          blurRadius: 20,
                          offset: const Offset(0, -4),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Builder(
                          builder: (context) {
                            // Calculate display flags (must be outside widget tree)
                            final bool shouldShowText =
                                (stepNumber == null || stepNumber! >= 4) &&
                                    text.isNotEmpty;

                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                    // Navigation buttons (Skip Onboarding)
                    if (showNavigationButtons) ...[
                      if (onSkip != null)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (kOnboardingDebug && kDebugMode) {
                                  debugPrint('[BOTTOM_SHEET] SKIP pressed (step=$stepNumber)');
                                }
                                OnboardingDebugLog.lastBottomSheetAction = 'skip';
                                OnboardingDebugLog.log(
                                  'bottom_sheet',
                                  'SKIP pressed (step=$stepNumber)',
                                );
                                OnboardingDebugLog.log(
                                  'bottom_sheet',
                                  'bottom sheet received pointer event (Skip button)',
                                );
                                onSkip?.call();
                              },
                              style: OutlinedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                minimumSize: const Size(0, 40),
                                side: const BorderSide(color: Color(0xFF007AFF), width: 1.5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: const Text(
                                'Skip Onboarding',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF007AFF),
                                ),
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(height: 16),
                    ],
                    // Step progress (X/totalSteps) - displayed for steps 4-17 (not for intro steps 1-3 to match build G)
                    if (stepNumber != null && stepNumber! >= 4) ...[
                      Text(
                        '$stepNumber/${GuidedOnboardingController.totalSteps}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1C1C1E),
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                    // Instruction text - only build widget if text is non-empty (prevents reserved space for intro steps)
                    // For intro steps 1-3, text is empty string, so widget is not built at all
                    if (shouldShowText) ...[
                      Text(
                        text,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          height: 1.5,
                          color: Color(0xFF1C1C1E),
                        ),
                      ),
                      const SizedBox(height: 16),
                    ],
                    // Primary action button (Next for steps 4-17, Complete for final step)
                    // CRITICAL: Hide Next button for tap-required steps (4, 11, 16) - user taps highlighted widget
                    // Helper text comes from GuidedOnboardingController.getUIActionHint() (single source of truth)
                    Builder(
                      builder: (context) {
                        final uiActionHint = _getUIActionHint();
                        // Explicit list of tap-required steps that must NEVER show Next button
                        final tapRequiredSteps = {4, 11, 13, 14, 16};
                        final isTapRequired = stepNumber != null && tapRequiredSteps.contains(stepNumber);
                        
                        // CRITICAL: Tap-required steps show hint ONLY (no Next button)
                        // All other steps show Next button ONLY (no hint) if showContinueButton is true
                        // STRICT mutual exclusivity - never show both
                        if (isTapRequired) {
                          // Tap-required step: show hint if available, otherwise show nothing (no blank text)
                          if (uiActionHint != null) {
                            return Text(
                              uiActionHint,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14, // Smaller than button text (17px)
                                color: Colors.grey[600], // Secondary/onSurfaceVariant color
                                fontStyle: FontStyle.italic, // Subtle styling
                              ),
                            );
                          } else {
                            // No hint available for tap-required step - return empty widget
                            return const SizedBox.shrink();
                          }
                        } else if (uiActionHint != null) {
                          // Non-tap-required step with hint (shouldn't happen, but handle gracefully)
                          return Text(
                            uiActionHint,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                              fontStyle: FontStyle.italic,
                            ),
                          );
                        } else if (showContinueButton && !isTapRequired) {
                          // Only show Next button if explicitly requested AND not tap-required
                          return SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                if (kOnboardingDebug && kDebugMode) {
                                  debugPrint('[BOTTOM_SHEET] NEXT pressed (step=$stepNumber)');
                                }
                                OnboardingDebugLog.lastBottomSheetAction = 'next';
                                OnboardingDebugLog.lastOnContinueWasNull =
                                    onContinue == null;
                                OnboardingDebugLog.log(
                                  'bottom_sheet',
                                  'NEXT pressed (step=$stepNumber, onContinueNull=${onContinue == null})',
                                );
                                OnboardingDebugLog.log(
                                  'bottom_sheet',
                                  'bottom sheet received pointer event (Next button)',
                                );
                                try {
                                  onContinue?.call();
                                } catch (e, stackTrace) {
                                  OnboardingDebugLog.log(
                                    'bottom_sheet',
                                    'ERROR in onContinue callback: $e\n$stackTrace',
                                  );
                                  if (kOnboardingDebug && kDebugMode) {
                                    debugPrint('[BOTTOM_SHEET] ERROR in onContinue: $e');
                                    debugPrint('[BOTTOM_SHEET] Stack trace: $stackTrace');
                                  }
                                  rethrow;
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF007AFF),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                stepNumber == 17 && showContinueButton
                                    ? 'Complete Onboarding'
                                    : continueButtonText,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                    // Completion button (only for final step)
                    if (showCompletionButton) ...[
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: onComplete,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF007AFF),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            'Onboarding Complete',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                );
              },
            ),
          ),
        ),
      ),
    ),
    );
            },
          ),
        ),
      ),
    );
  }
}
