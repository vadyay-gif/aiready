import 'package:flutter/material.dart';
import '../ui/adaptive/adaptive_insets.dart';
import 'guided_overlay_geometry.dart';

/// Web/desktop-optimized callout bubble for onboarding.
/// 
/// Features:
/// - Side-positioned bubbles (mouse-friendly)
/// - Larger maxWidth
/// - Desktop-friendly spacing
class WebGuidedCalloutBubble extends StatelessWidget {
  const WebGuidedCalloutBubble({
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
    double height = 20;
    if (stepNumber != null) height += 24;
    height += 60;
    if (showContinueButton || showCompletionButton) height += 66;
    if (showNavigationButtons) height += 50;
    return height;
  }

  @override
  Widget build(BuildContext context) {
    final overlayRenderBox = context.findAncestorRenderObjectOfType<RenderBox>();
    final overlayGlobalOffset = overlayRenderBox?.localToGlobal(Offset.zero) ?? Offset.zero;
    
    // Web: Prefer side placement (left/right), fallback to above/below
    final spacing = AdaptiveInsets.cardGap(context) * 1.5; // Larger spacing for web
    final bubbleHeight = _estimateBubbleHeight();
    final bubbleWidth = geometry.calloutMaxWidth;
    
    double? top;
    double? left;
    double? right;
    
    // Check available space on each side
    final spaceLeft = (geometry.targetRect.left - overlayGlobalOffset.dx) - safeAreaInsets.left;
    final spaceRight = screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx) - safeAreaInsets.right;
    final spaceAbove = (geometry.targetRect.top - overlayGlobalOffset.dy) - safeAreaInsets.top;
    final spaceBelow = screenSize.height - (geometry.targetRect.bottom - overlayGlobalOffset.dy) - safeAreaInsets.bottom;
    
    // For steps 9/16 and 10/16, prefer side placement to avoid covering content
    // Prefer right side (most common for web)
    if (spaceRight >= bubbleWidth + spacing) {
      top = geometry.targetRect.top - overlayGlobalOffset.dy;
      left = geometry.targetRect.right - overlayGlobalOffset.dx + spacing;
    } else if (spaceLeft >= bubbleWidth + spacing) {
      top = geometry.targetRect.top - overlayGlobalOffset.dy;
      right = screenSize.width - (geometry.targetRect.left - overlayGlobalOffset.dx) + spacing;
    } else if (spaceBelow >= bubbleHeight + spacing * 2) {
      // Fallback to below, but with extra spacing to avoid covering content
      top = geometry.targetRect.bottom - overlayGlobalOffset.dy + spacing * 2;
      left = geometry.targetRect.left - overlayGlobalOffset.dx;
      right = screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx);
    } else if (spaceAbove >= bubbleHeight + spacing * 2) {
      // Fallback to above, but with extra spacing
      top = geometry.targetRect.top - overlayGlobalOffset.dy - bubbleHeight - spacing * 2;
      left = geometry.targetRect.left - overlayGlobalOffset.dx;
      right = screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx);
    } else {
      // Center if nothing fits, but try to position to side
      top = (geometry.targetRect.top - overlayGlobalOffset.dy + geometry.targetRect.bottom - overlayGlobalOffset.dy) / 2 - bubbleHeight / 2;
      // Try to position to the right side if possible
      if (screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx) >= bubbleWidth) {
        left = geometry.targetRect.right - overlayGlobalOffset.dx + spacing;
      } else {
        left = geometry.targetRect.left - overlayGlobalOffset.dx;
        right = screenSize.width - (geometry.targetRect.right - overlayGlobalOffset.dx);
      }
    }

    // Ensure bubble doesn't go off-screen (top is set in all branches above)
    final minTop = safeAreaInsets.top + spacing;
    final maxTop = screenSize.height - bubbleHeight - safeAreaInsets.bottom - spacing;
    top = top.clamp(minTop, maxTop);

    return Positioned(
      top: top,
      left: left != null ? left + safeAreaInsets.left : null,
      right: right != null ? right + safeAreaInsets.right : null,
      child: IgnorePointer(
        ignoring: false,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: geometry.calloutMaxWidth,
            maxHeight: screenSize.height * 0.8, // Prevent bubble from being too tall
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

// Shared bubble content widget (same as mobile)
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
      padding: const EdgeInsets.all(24), // Slightly more padding for web
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
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: OutlinedButton(
                        onPressed: onPreviousStep,
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          minimumSize: const Size(0, 40),
                        ),
                        child: const Text('Previous Step', 
                          style: TextStyle(fontSize: 13),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  )
                else
                  const SizedBox.shrink(),
                if (onSkip != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: OutlinedButton(
                        onPressed: onSkip,
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          minimumSize: const Size(0, 40),
                        ),
                        child: const Text('Skip Onboarding', 
                          style: TextStyle(fontSize: 13),
                          overflow: TextOverflow.ellipsis,
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
            const SizedBox(height: 16),
          ],
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, height: 1.6), // Slightly more line height for web
          ),
          // CRITICAL: Always show Next button for steps 4-15 (even if showContinueButton is false)
          // This ensures users can always progress, even if the highlighted element is hard to tap
          if (showContinueButton || (stepNumber != null && stepNumber! >= 4 && stepNumber! <= 15)) ...[
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
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
