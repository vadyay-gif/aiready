import 'package:flutter/material.dart';

/// Reusable guided onboarding overlay widget that dims the screen
/// except for a highlighted element, and shows an instructional message.
class GuidedOverlay extends StatelessWidget {
  const GuidedOverlay({
    super.key,
    required this.text,
    this.highlightedKey,
    this.secondHighlightedKey,
    this.showCompletionButton = false,
    this.showContinueButton = false,
    this.continueButtonText = 'Continue',
    this.onComplete,
    this.onContinue,
    this.scrollController,
    this.showDimmedOverlay = true,
  });

  final String text;
  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final bool showCompletionButton;
  final bool showContinueButton;
  final String continueButtonText;
  final VoidCallback? onComplete;
  final VoidCallback? onContinue;
  final ScrollController? scrollController;
  final bool showDimmedOverlay;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Dimmed overlay with cutout for highlighted element (only if enabled)
        if (showDimmedOverlay)
          Positioned.fill(
            child: _DimmedOverlay(
              highlightedKey: highlightedKey,
              secondHighlightedKey: secondHighlightedKey,
              scrollController: scrollController,
            ),
          ),
        // Message bubble positioned above the highlighted element or at bottom
        _MessageBubble(
          text: text,
          showCompletionButton: showCompletionButton,
          showContinueButton: showContinueButton,
          continueButtonText: continueButtonText,
          highlightedKey: highlightedKey,
          onComplete: onComplete,
          onContinue: onContinue,
          scrollController: scrollController,
        ),
      ],
    );
  }
}

class _DimmedOverlay extends StatefulWidget {
  const _DimmedOverlay({
    this.highlightedKey,
    this.secondHighlightedKey,
    this.scrollController,
  });

  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final ScrollController? scrollController;

  @override
  State<_DimmedOverlay> createState() => _DimmedOverlayState();
}

class _DimmedOverlayState extends State<_DimmedOverlay> {
  final GlobalKey _overlayKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    // Listen to scroll changes to repaint overlay
    widget.scrollController?.addListener(_onScroll);
  }

  @override
  void didUpdateWidget(_DimmedOverlay oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.scrollController != widget.scrollController) {
      oldWidget.scrollController?.removeListener(_onScroll);
      widget.scrollController?.addListener(_onScroll);
    }
  }

  @override
  void dispose() {
    widget.scrollController?.removeListener(_onScroll);
    super.dispose();
  }

  void _onScroll() {
    // Repaint when scrolling to keep cutout aligned
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      key: _overlayKey,
      ignoring: true, // Let all taps pass through to underlying widgets
      child: LayoutBuilder(
        builder: (context, constraints) {
          return CustomPaint(
            size: Size(constraints.maxWidth, constraints.maxHeight),
            painter: _OverlayPainter(
              highlightedKey: widget.highlightedKey,
              secondHighlightedKey: widget.secondHighlightedKey,
              dimColor: Colors.black.withValues(alpha: 0.45),
              overlayKey: _overlayKey,
            ),
          );
        },
      ),
    );
  }
}

class _OverlayPainter extends CustomPainter {
  _OverlayPainter({
    required this.highlightedKey,
    this.secondHighlightedKey,
    required this.dimColor,
    this.overlayKey,
  });

  final GlobalKey? highlightedKey;
  final GlobalKey? secondHighlightedKey;
  final Color dimColor;
  final GlobalKey? overlayKey;

  @override
  void paint(Canvas canvas, Size size) {
    // Collect all highlighted rects
    final List<Rect> highlightedRects = [];
    
    // Get first highlighted rect
    if (highlightedKey?.currentContext != null) {
      final renderBox =
          highlightedKey!.currentContext!.findRenderObject() as RenderBox?;
      if (renderBox != null && renderBox.hasSize) {
        final globalPosition = renderBox.localToGlobal(Offset.zero);
        Offset localPosition = globalPosition;
        if (overlayKey?.currentContext != null) {
          final overlayRenderBox = overlayKey!.currentContext!.findRenderObject() as RenderBox?;
          if (overlayRenderBox != null) {
            localPosition = overlayRenderBox.globalToLocal(globalPosition);
          }
        }
        highlightedRects.add(Rect.fromLTWH(
          localPosition.dx,
          localPosition.dy,
          renderBox.size.width,
          renderBox.size.height,
        ));
      }
    }
    
    // Get second highlighted rect
    if (secondHighlightedKey?.currentContext != null) {
      final renderBox =
          secondHighlightedKey!.currentContext!.findRenderObject() as RenderBox?;
      if (renderBox != null && renderBox.hasSize) {
        final globalPosition = renderBox.localToGlobal(Offset.zero);
        Offset localPosition = globalPosition;
        if (overlayKey?.currentContext != null) {
          final overlayRenderBox = overlayKey!.currentContext!.findRenderObject() as RenderBox?;
          if (overlayRenderBox != null) {
            localPosition = overlayRenderBox.globalToLocal(globalPosition);
          }
        }
        highlightedRects.add(Rect.fromLTWH(
          localPosition.dx,
          localPosition.dy,
          renderBox.size.width,
          renderBox.size.height,
        ));
      }
    }
    
    if (highlightedRects.isEmpty) {
      // No highlights, dim everything
      final dimPaint = Paint()..color = dimColor;
      canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), dimPaint);
      return;
    }
    
    // Calculate combined bounding rect for all highlights
    double minLeft = size.width;
    double minTop = size.height;
    double maxRight = 0;
    double maxBottom = 0;
    
    for (final rect in highlightedRects) {
      if (rect.left < minLeft) minLeft = rect.left;
      if (rect.top < minTop) minTop = rect.top;
      if (rect.right > maxRight) maxRight = rect.right;
      if (rect.bottom > maxBottom) maxBottom = rect.bottom;
    }
    
    final combinedRect = Rect.fromLTRB(minLeft, minTop, maxRight, maxBottom);

    // Draw dimmed areas around the combined highlighted area
    final dimPaint = Paint()..color = dimColor;

    // Top area
    if (combinedRect.top > 0) {
      canvas.drawRect(
        Rect.fromLTWH(0, 0, size.width, combinedRect.top),
        dimPaint,
      );
    }

    // Left area
    if (combinedRect.left > 0) {
      canvas.drawRect(
        Rect.fromLTWH(
          0,
          combinedRect.top,
          combinedRect.left,
          combinedRect.height,
        ),
        dimPaint,
      );
    }

    // Right area
    if (combinedRect.right < size.width) {
      canvas.drawRect(
        Rect.fromLTWH(
          combinedRect.right,
          combinedRect.top,
          size.width - combinedRect.right,
          combinedRect.height,
        ),
        dimPaint,
      );
    }

    // Bottom area
    if (combinedRect.bottom < size.height) {
      canvas.drawRect(
        Rect.fromLTWH(
          0,
          combinedRect.bottom,
          size.width,
          size.height - combinedRect.bottom,
        ),
        dimPaint,
      );
    }
    
    // Draw dimmed areas between highlighted rects if they don't overlap
    for (int i = 0; i < highlightedRects.length; i++) {
      for (int j = i + 1; j < highlightedRects.length; j++) {
        final rect1 = highlightedRects[i];
        final rect2 = highlightedRects[j];
        
        // If rects don't overlap vertically, dim the space between them
        if (rect1.bottom < rect2.top) {
          canvas.drawRect(
            Rect.fromLTWH(
              0,
              rect1.bottom,
              size.width,
              rect2.top - rect1.bottom,
            ),
            dimPaint,
          );
        } else if (rect2.bottom < rect1.top) {
          canvas.drawRect(
            Rect.fromLTWH(
              0,
              rect2.bottom,
              size.width,
              rect1.top - rect2.bottom,
            ),
            dimPaint,
          );
        }
      }
    }
  }

  @override
  bool shouldRepaint(_OverlayPainter oldDelegate) {
    // Always repaint to keep cutout aligned during scroll
    return true;
  }
}

class _MessageBubble extends StatelessWidget {
  const _MessageBubble({
    required this.text,
    required this.showCompletionButton,
    required this.showContinueButton,
    required this.continueButtonText,
    this.highlightedKey,
    this.onComplete,
    this.onContinue,
    this.scrollController,
  });

  final String text;
  final bool showCompletionButton;
  final bool showContinueButton;
  final String continueButtonText;
  final GlobalKey? highlightedKey;
  final VoidCallback? onComplete;
  final VoidCallback? onContinue;
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    // Position message above highlighted element or at bottom
    if (highlightedKey?.currentContext != null) {
      final renderBox =
          highlightedKey!.currentContext!.findRenderObject() as RenderBox?;
      if (renderBox != null && renderBox.hasSize) {
        final position = renderBox.localToGlobal(Offset.zero);
        final screenHeight = MediaQuery.of(context).size.height;
        final messageHeight = (showCompletionButton || showContinueButton) ? 180.0 : 100.0;
        final spacing = 16.0;

        // Position above the highlighted element if there's room, otherwise below
        final isAbove = position.dy > messageHeight + spacing;
        final top = isAbove
            ? position.dy - messageHeight - spacing
            : position.dy + renderBox.size.height + spacing;

        return Positioned(
          left: 16,
          right: 16,
          top: top.clamp(16.0, screenHeight - messageHeight - 16),
          child: IgnorePointer(
            ignoring: false,
            child: _BubbleContent(
              text: text,
              showCompletionButton: showCompletionButton,
              showContinueButton: showContinueButton,
              continueButtonText: continueButtonText,
              onComplete: onComplete,
              onContinue: onContinue,
            ),
          ),
        );
      }
    }

    // Fallback: position at bottom
    return Positioned(
      left: 16,
      right: 16,
      bottom: 24 + MediaQuery.of(context).padding.bottom,
      child: IgnorePointer(
        ignoring: false,
        child: _BubbleContent(
          text: text,
          showCompletionButton: showCompletionButton,
          showContinueButton: showContinueButton,
          continueButtonText: continueButtonText,
          onComplete: onComplete,
          onContinue: onContinue,
        ),
      ),
    );
  }
}

class _BubbleContent extends StatelessWidget {
  const _BubbleContent({
    required this.text,
    required this.showCompletionButton,
    required this.showContinueButton,
    required this.continueButtonText,
    this.onComplete,
    this.onContinue,
  });

  final String text;
  final bool showCompletionButton;
  final bool showContinueButton;
  final String continueButtonText;
  final VoidCallback? onComplete;
  final VoidCallback? onContinue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              height: 1.4,
              color: Color(0xFF1C1C1E),
            ),
          ),
        ),
        if (showContinueButton && onContinue != null) ...[
          const SizedBox(height: 12),
          Material(
            color: Colors.transparent,
            child: SizedBox(
              height: 48,
              child: ElevatedButton(
                onPressed: () {
                  onContinue?.call();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF007AFF),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  continueButtonText,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ] else if (showCompletionButton) ...[
          const SizedBox(height: 12),
          SizedBox(
            height: 48,
            child: ElevatedButton(
              onPressed: onComplete,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF007AFF),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Onboarding Complete',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
