import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class AppChip extends StatelessWidget {
  final String label;
  final IconData? icon;
  const AppChip(this.label, {super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    return Chip(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(999)),
      side: const BorderSide(color: AppColors.divider),
      backgroundColor: Colors.white,
      label: Text(label, style: Theme.of(context).textTheme.bodyMedium),
      avatar:
          icon == null ? null : Icon(icon, size: 18, color: AppColors.primary),
    );
  }
}
