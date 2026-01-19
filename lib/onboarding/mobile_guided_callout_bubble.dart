import 'package:flutter/material.dart';
import '../ui/adaptive/adaptive_dimensions.dart';
import '../ui/adaptive/adaptive_insets.dart';
import 'guided_overlay_geometry.dart';

/// Mobile-optimized callout bubble for onboarding.
/// 
/// Features:
/// - Bottom-anchored bubbles (touch-first)
/// - Tighter spacing
/// - Mobile-friendly tap targets
class MobileGuidedCalloutBubble extends StatelessWidget {
  const MobileGuidedCalloutBubble({
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
  final int? stepNumber;
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

  double _estimateBubbleHeight() {
    // Estimate based on content: step number, text, buttons
    double height = 20; // padding
    if (stepNumber != null) height += 24; // step number
    height += 60; // text (approximate)
    if (showContinueButton || showCompletionButton) height += 66; // button + spacing
    if (showNavigationButtons) height += 50; // nav buttons
    return height;
  }

  @override
  Widget build(BuildContext context) {
    final overlayRenderBox = context.findAncestorRenderObjectOfType<RenderBox>();
    final overlayGlobalOffset = overlayRenderBox?.localToGlobal(Offset.zero) ?? Offset.zero;
    
    // Mobile: Deterministic placement with hard constraints
    const bubblePaddingFromEdges = 16.0;
    final bubbleMaxWidth = (screenSize.width - (bubblePaddingFromEdges * 2)).clamp(0.0, 360.0);
    final bubbleMaxHeight = (screenSize.height * 0.33).clamp(0.0, 220.0);
    final bubbleHeight = _estimateBubbleHeight().clamp(0.0, bubbleMaxHeight);
    
    // Calculate available space
    final targetTop = geometry.targetRect.top - overlayGlobalOffset.dy;
    final targetBottom = geometry.targetRect.bottom - overlayGlobalOffset.dy;
    final availableTop = targetTop - safeAreaInsets.top - bubblePaddingFromEdges;
    final availableBottom = screenSize.height - targetBottom - safeAreaInsets.bottom - bubblePaddingFromEdges;
    
    // Reserve space for system nav (bottom) - ensure bubble never overlaps
    final bottomNavReserve = safeAreaInsets.bottom + bubblePaddingFromEdges + 60; // 60 for potential CTA buttons
    
    double? top;
    double? bottom;
    double? left;
    double? right;
    
    // Deterministic placement: prefer BELOW, then ABOVE, then bottom-sheet style
    if (availableBottom >= bubbleHeight + bubblePaddingFromEdges && 
        targetBottom + bubbleHeight + bubblePaddingFromEdges <= screenSize.height - bottomNavReserve) {
      // Place BELOW target - mobile preferred
      top = targetBottom + bubblePaddingFromEdges;
      left = bubblePaddingFromEdges;
      right = bubblePaddingFromEdges;
    } else if (availableTop >= bubbleHeight + bubblePaddingFromEdges) {
      // Place ABOVE target
      bottom = screenSize.height - targetTop + bubblePaddingFromEdges;
      left = bubblePaddingFromEdges;
      right = bubblePaddingFromEdges;
    } else {
      // Fallback: bottom-sheet style (pin to bottom, keep cutout visible)
      // Ensure bubble doesn't cover the highlighted target
      final targetCenterY = (targetTop + targetBottom) / 2;
      final bubbleCenterY = screenSize.height - safeAreaInsets.bottom - bubblePaddingFromEdges - (bubbleHeight / 2);
      
      // If bubble would cover target, place it above target center
      if (bubbleCenterY - bubbleHeight / 2 < targetBottom + bubblePaddingFromEdges) {
        // Place above target, but ensure it's not off-screen
        final preferredTop = targetBottom + bubblePaddingFromEdges;
        final minTop = safeAreaInsets.top + bubblePaddingFromEdges;
        final maxTop = screenSize.height - bubbleHeight - bottomNavReserve;
        top = preferredTop.clamp(minTop, maxTop);
      } else {
        // Safe to place at bottom
        bottom = safeAreaInsets.bottom + bubblePaddingFromEdges;
      }
      left = bubblePaddingFromEdges;
      right = bubblePaddingFromEdges;
    }

    // Final safety check: ensure bubble stays within bounds
    if (top != null) {
      final minTop = safeAreaInsets.top + bubblePaddingFromEdges;
      final maxTop = screenSize.height - bubbleHeight - bottomNavReserve;
      top = top.clamp(minTop, maxTop);
    }

    return Positioned(
      top: top,
      bottom: bottom,
      left: left != null ? left + safeAreaInsets.left : null,
      right: right != null ? right + safeAreaInsets.right : null,
      child: IgnorePointer(
        ignoring: false, // Bubble buttons must remain tappable
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: bubbleMaxWidth,
            maxHeight: bubbleMaxHeight,
          ),
          child: SingleChildScrollView(
            child: _BubbleContent(
              text: text,
              stepNumber: stepNumber,
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
      ),
    );
  }
}

// Shared bubble content widget
class _BubbleContent extends StatelessWidget {
  const _BubbleContent({
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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (showNavigationButtons) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (onPreviousStep != null)
                  OutlinedButton(
                    onPressed: onPreviousStep,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      minimumSize: const Size(0, 36),
                    ),
                    child: const Text('Previous Step', style: TextStyle(fontSize: 14)),
                  )
                else
                  const SizedBox.shrink(),
                if (onSkip != null)
                  OutlinedButton(
                    onPressed: onSkip,
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      minimumSize: const Size(0, 36),
                    ),
                    child: const Text('Skip Onboarding', style: TextStyle(fontSize: 14)),
                  )
                else
                  const SizedBox.shrink(),
              ],
            ),
            const SizedBox(height: 12),
          ],
          if (stepNumber != null) ...[
            Text(
              '$stepNumber/16',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 12),
          ],
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, height: 1.5),
          ),
          // CRITICAL: Always show Next button for steps 4-15 (even if showContinueButton is false)
          // This ensures users can always progress, even if the highlighted element is hard to tap
          if (showContinueButton || (stepNumber != null && stepNumber! >= 4 && stepNumber! <= 15)) ...[
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: onContinue ?? () {
                  // Fallback: if onContinue is null, try to advance to next step
                  // This should rarely happen, but provides a safety net
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
                  continueButtonText,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
          if (showCompletionButton) ...[
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
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
