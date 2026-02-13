import 'package:flutter/material.dart';

class TrackTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback? onTap;
  final bool highlight;

  /// Optional key specifically for onboarding measurements.
  /// This is applied directly to the Material root so its RenderBox
  /// matches the visible/tappable tile bounds exactly.
  final GlobalKey? onboardingKey;

  const TrackTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
    this.highlight = false,
    this.onboardingKey,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context)
        .textTheme
        .titleMedium
        ?.copyWith(fontWeight: FontWeight.w700, height: 1.15);

    return Material(
      key: onboardingKey,
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      elevation: highlight ? 4 : 2,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                  height: 44,
                  child: FittedBox(fit: BoxFit.scaleDown, child: icon)),
              const SizedBox(height: 12),
              _buildTitle(title, titleStyle),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle(String title, TextStyle? titleStyle) {
    if (title.contains('\n')) {
      final parts = title.split('\n');
      if (parts.length >= 2) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              parts[0],
              style: titleStyle,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 2),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                parts[1],
                style: titleStyle,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.clip,
                softWrap: false,
              ),
            ),
          ],
        );
      }
    }
    return Text(
      title,
      style: titleStyle,
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
