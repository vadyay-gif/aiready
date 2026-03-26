import 'package:flutter/material.dart';
import '../theme/app_colors.dart';

class TinyProgressBar extends StatelessWidget {
  final double value;
  const TinyProgressBar({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: LinearProgressIndicator(
        value: value.clamp(0, 1),
        minHeight: 6,
        backgroundColor: AppColors.divider,
        color: AppColors.success,
      ),
    );
  }
}
