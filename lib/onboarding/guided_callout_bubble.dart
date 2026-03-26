import 'package:flutter/material.dart';
import '../ui/adaptive/adaptive_insets.dart';
import 'guided_overlay_geometry.dart';

/// Callout bubble widget that displays onboarding instructions.
/// IMPORTANT: Steps 4-16 numbering must render ONLY here.
class GuidedCalloutBubble extends StatelessWidget {
  const GuidedCalloutBubble({
    super.key,
    required this.text,
    required this.stepNumber,
    required this.geometry,
    required this.screenSize,
    required this.safeAreaInsets,
    this.showContinueButton = false,
    this.showCompletionButton = false,
    this.continueButtonText = 'Continue',
    this.onContinue,
    this.onComplete,
    this.onPreviousStep,
    this.onSkip,
    this.showNavigationButtons = true,
  });

  final String text;
  final int? stepNumber; // Step number (4-16) - ONLY displayed here for walkthrough steps
  final GuidedOverlayGeometry geometry;
  final Size screenSize;
  final EdgeInsets safeAreaInsets;
  final bool showContinueButton;
  final bool showCompletionButton;
  final String continueButtonText;
  final VoidCallback? onContinue;
  final VoidCallback? onComplete;
  final VoidCallback? onPreviousStep;
  final VoidCallback? onSkip;

  final bool showNavigationButtons;

  @override
  Widget build(BuildContext context) {
    // Get the overlay Stack's position in global coordinates
    // The bubble is positioned relative to the Stack, so we need to account for Stack offset
    final overlayRenderBox = context.findAncestorRenderObjectOfType<RenderBox>();
    final overlayGlobalOffset = overlayRenderBox?.localToGlobal(Offset.zero) ?? Offset.zero;
    
    // Calculate position based on placement
    // Convert from global coordinates to local coordinates relative to the Stack
    double? top;
    double? bottom;
    double? left;
    double? right;
    
    final spacing = AdaptiveInsets.cardGap(context);
    
    switch (geometry.placement) {
      case CalloutPlacement.above:
        top = geometry.targetRect.top - overlayGlobalOffset.dy - _estimateBubbleHeight() - spacing;
        left = geometry.targetRect.left - overlayGlobalOffset.dx;
        right = screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx);
        break;
      case CalloutPlacement.below:
        top = geometry.targetRect.bottom - overlayGlobalOffset.dy + spacing;
        left = geometry.targetRect.left - overlayGlobalOffset.dx;
        right = screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx);
        break;
      case CalloutPlacement.left:
        top = geometry.targetRect.top - overlayGlobalOffset.dy;
        right = screenSize.width - (geometry.targetRect.left - overlayGlobalOffset.dx) + spacing;
        break;
      case CalloutPlacement.right:
        top = geometry.targetRect.top - overlayGlobalOffset.dy;
        left = geometry.targetRect.right - overlayGlobalOffset.dx + spacing;
        break;
    }

    // Ensure bubble doesn't go off-screen (top is set in all placement cases)
    final minTop = safeAreaInsets.top + spacing;
    final maxTop = screenSize.height - _estimateBubbleHeight() - safeAreaInsets.bottom - spacing;
    top = top.clamp(minTop, maxTop);

    return Positioned(
      top: top,
      bottom: bottom,
      left: left != null ? left + safeAreaInsets.left : null,
      right: right != null ? right + safeAreaInsets.right : null,
      child: IgnorePointer(
        ignoring: false, // Allow taps on bubble buttons
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: geometry.calloutMaxWidth),
          child: _BubbleContent(
            text: text,
            stepNumber: stepNumber, // Step number displayed ONLY here for steps 4-16
            showContinueButton: showContinueButton,
            showCompletionButton: showCompletionButton,
            continueButtonText: continueButtonText,
            onContinue: onContinue,
            onComplete: onComplete,
            onPreviousStep: onPreviousStep,
            onSkip: onSkip,
            showNavigationButtons: showNavigationButtons,
          ),
        ),
      ),
    );
  }

  double _estimateBubbleHeight() {
    // Rough estimate based on content
    double baseHeight = 100.0; // Text
    if (showNavigationButtons) baseHeight += 60.0; // Navigation buttons
    if (showContinueButton || showCompletionButton) baseHeight += 70.0; // CTA button
    if (stepNumber != null) baseHeight += 30.0; // Step number
    return baseHeight;
  }
}

class _BubbleContent extends StatelessWidget {
  const _BubbleContent({
    required this.text,
    this.stepNumber,
    required this.showContinueButton,
    required this.showCompletionButton,
    required this.continueButtonText,
    this.onContinue,
    this.onComplete,
    this.onPreviousStep,
    this.onSkip,
    this.showNavigationButtons = true,
  });

  final String text;
  final int? stepNumber; // Step number (4-16) - displayed ONLY here
  final bool showContinueButton;
  final bool showCompletionButton;
  final String continueButtonText;
  final VoidCallback? onContinue;
  final VoidCallback? onComplete;
  final VoidCallback? onPreviousStep;
  final VoidCallback? onSkip;
  final bool showNavigationButtons;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Navigation buttons (Previous Step and Skip)
        if (showNavigationButtons) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Previous Step button
              Expanded(
                child: OutlinedButton(
                  onPressed: onPreviousStep,
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 11),
                    minimumSize: const Size(0, 44),
                    side: BorderSide(
                      color: onPreviousStep != null
                          ? const Color(0xFF007AFF)
                          : const Color(0xFF007AFF).withValues(alpha: 0.3),
                      width: 1.5,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Previous Step',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: onPreviousStep != null
                          ? const Color(0xFF007AFF)
                          : const Color(0xFF007AFF).withValues(alpha: 0.3),
                    ),
                  ),
                ),
              ),
              if (onSkip != null) ...[
                const SizedBox(width: 16),
                // Skip Onboarding button
                Expanded(
                  child: OutlinedButton(
                    onPressed: onSkip,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 11),
                      minimumSize: const Size(0, 44),
                      side: const BorderSide(color: Color(0xFF007AFF), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Skip Onboarding',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF007AFF),
                      ),
                    ),
                  ),
                ),
              ],
            ],
          ),
          const SizedBox(height: 12),
        ],
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.12),
                blurRadius: 12,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Step number at the top (ONLY for steps 4-16, displayed here)
              if (stepNumber != null && stepNumber! >= 4) ...[
                Text(
                  '$stepNumber/16',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF1C1C1E),
                    letterSpacing: 0.2,
                  ),
                ),
                const SizedBox(height: 12),
              ],
              // Use SelectableText for better text wrapping and accessibility
              SelectableText(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color: Color(0xFF1C1C1E),
                  letterSpacing: -0.2,
                ),
              ),
            ],
          ),
        ),
        // Show Continue/Next button for steps 4-15
        // IMPORTANT: This button must always be visible and tappable for steps 4-15
        // The bubble is rendered above the barrier, so buttons remain interactive
        if (showContinueButton) ...[
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: onContinue, // Allow null for steps where user taps target instead
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
                  letterSpacing: -0.2,
                ),
              ),
            ),
          ),
        ] else if (showCompletionButton) ...[
          const SizedBox(height: 16),
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
                  letterSpacing: -0.2,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
