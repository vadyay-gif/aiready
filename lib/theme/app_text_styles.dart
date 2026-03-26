import 'package:flutter/material.dart';
import 'app_colors.dart';

extension AppTextStyles on BuildContext {
  TextStyle get sectionHeaderStyle {
    return Theme.of(this).textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.w600,
          color: AppColors.primaryPressed,
        );
  }
}
