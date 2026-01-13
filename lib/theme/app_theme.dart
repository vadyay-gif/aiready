import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData buildAppTheme() {
  final base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.bg,
    colorScheme: base.colorScheme.copyWith(
      primary: AppColors.primary,
      surface: AppColors.surface,
      onPrimary: Colors.white,
    ),

    // Typography tuned for readability
    textTheme: base.textTheme.copyWith(
      headlineMedium: const TextStyle(
          fontSize: 28, fontWeight: FontWeight.w800, color: AppColors.text),
      titleLarge: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: AppColors.text),
      titleMedium: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.text),
      titleSmall: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.text),
      bodyLarge: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.text),
      bodyMedium: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.subtext),
      bodySmall: const TextStyle(
          fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.subtext),
      labelLarge: const TextStyle(
          fontSize: 14, fontWeight: FontWeight.w700, color: Colors.white),
    ),

    // Cards everywhere: rounded, light elevation
    cardTheme: CardThemeData(
      color: AppColors.surface,
      elevation: 2,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),

    // Buttons unified
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary),
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    ),

    // Inputs consistent
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(14)),
          borderSide: BorderSide.none),
      contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      hintStyle: TextStyle(color: AppColors.subtext),
    ),

    // AppBar clean, low-chrome
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 18, fontWeight: FontWeight.w700, color: AppColors.text),
      iconTheme: IconThemeData(color: AppColors.text),
    ),

    // Dividers / list tiles
    dividerColor: AppColors.divider,
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      iconColor: AppColors.primary,
      textColor: AppColors.text,
      dense: false,
    ),

    // Progress indicators
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: AppColors.success,
      linearMinHeight: 6,
    ),
  );
}
