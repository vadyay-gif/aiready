import 'package:flutter/material.dart';
import '../theme/app_colors.dart';
import '../models/track.dart';
import 'clamp_text_scale.dart';

class TrackCard extends StatelessWidget {
  final Track track;
  final VoidCallback onTap;

  const TrackCard({super.key, required this.track, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Ink(
        decoration: BoxDecoration(
          color: AppColors.bg,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: ClampTextScale(
          max: 1.2, // only clamp on cards (not globally)
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: AspectRatio(
              aspectRatio: 1.15, // keeps tiles balanced in grid
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Centered image / emoji / icon at the top
                  SizedBox(
                    height: 48,
                    child: Center(
                      child: _buildTrackIcon(track),
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Title — clear, bold, centered, wraps to 2 lines max
                  Text(
                    track.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),

                  const SizedBox(height: 6),

                  // Subtitle — softer color, 2 lines max, centered
                  Text(
                    track.subtitle,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.color
                              ?.withValues(alpha: 0.70),
                        ),
                  ),

                  // Respect gesture bar / bottom insets if card row is near screen bottom
                  SizedBox(
                      height: MediaQuery.of(context).padding.bottom * 0.25),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper: show asset icon/emoji safely centered
  Widget _buildTrackIcon(Track track) {
    // Use the emoji field from the Track model
    if (track.emoji.isNotEmpty) {
      return Text(track.emoji, style: const TextStyle(fontSize: 32));
    }
    return const SizedBox.shrink();
  }
}
