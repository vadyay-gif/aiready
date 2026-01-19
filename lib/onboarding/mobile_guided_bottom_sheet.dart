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
import 'guided_onboarding_controller.dart';
class MobileGuidedBottomSheet extends StatelessWidget {
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
    
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Material(
        key: key, // Key on outermost Material for stable measurement
        elevation: 8, // Ensure bottom sheet is above other content
        color: Colors.transparent,
        child: AnimatedPadding(
          padding: EdgeInsets.only(
            bottom: paddingBottom + keyboardHeight, // Add keyboard height to keep sheet above keyboard
          ),
          duration: const Duration(milliseconds: 100), // Smooth animation when keyboard appears/disappears
          curve: Curves.easeOut,
          child: SafeArea(
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    // Navigation buttons (Previous Step / Skip Onboarding)
                    if (showNavigationButtons) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (onPreviousStep != null)
                            Expanded(
                              child: OutlinedButton(
                                onPressed: onPreviousStep,
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                                  minimumSize: const Size(0, 40),
                                  side: const BorderSide(color: Color(0xFF007AFF), width: 1.5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: const Text(
                                  'Previous Step',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF007AFF),
                                  ),
                                ),
                              ),
                            )
                          else
                            const SizedBox.shrink(),
                          if (onPreviousStep != null && onSkip != null)
                            const SizedBox(width: 12),
                          if (onSkip != null)
                            Expanded(
                              child: OutlinedButton(
                                onPressed: onSkip,
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
                            )
                          else
                            const SizedBox.shrink(),
                        ],
                      ),
                      const SizedBox(height: 16),
                    ],
                    // Step progress (X/16) - ONLY displayed here for steps 4-16
                    if (stepNumber != null && stepNumber! >= 4) ...[
                      Text(
                        '$stepNumber/16',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF1C1C1E),
                        ),
                      ),
                      const SizedBox(height: 12),
                    ],
                    // Instruction text
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
                    // Primary action button (Next for steps 4-15, Complete for final step)
                    // CRITICAL: Hide Next button for steps 4, 5, 6, 11, 15 - user taps highlighted widget
                    // Helper text comes from GuidedOnboardingController.getUIActionHint() (single source of truth)
                    Builder(
                      builder: (context) {
                        final uiActionHint = _getUIActionHint();
                        // CRITICAL: Steps 4,5,6,11,15 show hint ONLY (no Next button)
                        // All other steps show Next button ONLY (no hint)
                        // STRICT mutual exclusivity - never show both
                        if (uiActionHint != null) {
                          // Hint is present - show it ONLY, hide Next button completely
                          return Text(
                            uiActionHint,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14, // Smaller than button text (17px)
                              color: Colors.grey[600], // Secondary/onSurfaceVariant color
                              fontStyle: FontStyle.italic, // Subtle styling
                            ),
                          );
                        } else if (showContinueButton || (stepNumber != null && stepNumber! >= 4 && stepNumber! <= 15)) {
                          // No hint - show Next button ONLY (hint is null for this step)
                          return SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: onContinue,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF007AFF),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                continueButtonText,
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
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
