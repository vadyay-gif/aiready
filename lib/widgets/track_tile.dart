import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class TrackTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback? onTap;
  final bool highlight;
  final Color? surfaceColor;
  final Color? borderColor;

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
    this.surfaceColor,
    this.borderColor,
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
      color: surfaceColor ?? AppColors.surface,
      borderRadius: BorderRadius.circular(16),
      elevation: 0,
      shadowColor: Colors.black.withValues(alpha: 0.06),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: highlight
                  ? AppColors.primary.withValues(alpha: 0.45)
                  : (borderColor ?? AppColors.border),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.04),
                blurRadius: 10,
                offset: const Offset(0, 2),
              ),
            ],
          ),
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
