import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class LessonBar extends StatelessWidget {
  final String title;
  final String? subtitle;
  final double? progress;
  final VoidCallback onTap;
  final IconData? icon;

  const LessonBar({
    super.key,
    required this.title,
    this.subtitle,
    this.progress,
    required this.onTap,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      color: AppColors.surface,
      shadowColor: Colors.black.withValues(alpha: 0.05),
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.border),
          ),
          constraints: const BoxConstraints(minHeight: 96),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Row(
            children: [
              Icon(icon ?? Icons.menu_book_outlined),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              if (progress != null) ...[
                const SizedBox(width: 12),
                SizedBox(
                  width: 22,
                  height: 22,
                  child: CircularProgressIndicator(value: progress),
                ),
              ],
              const SizedBox(width: 12),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
