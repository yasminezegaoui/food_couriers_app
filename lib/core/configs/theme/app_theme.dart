import 'package:flutter/material.dart';
import 'package:food_couriers_app/core/configs/theme/app_colors.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,
    brightness: Brightness.light,
  );
}