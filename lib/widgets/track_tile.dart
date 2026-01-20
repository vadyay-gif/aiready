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
              Text(title,
                  style: titleStyle,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
