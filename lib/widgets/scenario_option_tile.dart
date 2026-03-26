import 'package:flutter/material.dart';

class ScenarioOptionTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;
  final bool locked;

  const ScenarioOptionTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
    this.locked = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final surface = locked
        ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.22)
        : theme.colorScheme.surface;

    return Opacity(
      opacity: locked ? 0.55 : 1.0,
      child: Material(
        color: surface,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: locked
              ? () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                          'Complete the previous scenario to unlock this one.'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                }
              : onTap,
          child: Padding(
            // Extra vertical padding prevents off-by-1 pixel text overflow
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon, size: 26, color: theme.colorScheme.onSurfaceVariant),
                const SizedBox(width: 14),
                // Let text grow vertically; never constrain by fixed heights
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        locked ? 'Complete Scenario Above to Unlock' : subtitle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: locked
                              ? theme.colorScheme.onSurfaceVariant
                              : theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Icon(
                  locked ? Icons.lock_outline : Icons.chevron_right,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
