import 'package:flutter/material.dart';

import '../app_constants.dart';
import 'app_colors.dart';

/// A list of styles used all over the application.
abstract class AppStyles {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    backgroundColor: AppColors.whiteColor,
    fontFamily: AppConstants.appFontFamily,
    primaryColor: AppColors.primaryColor,
    primarySwatch: const MaterialColor(
      AppColors.hGradientColor1,
      AppColors.primaryColorSwatch,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    hintColor: AppColors.hintColor,
  );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      backgroundColor: AppColors.blackColor,
      fontFamily: AppConstants.appFontFamily,
      primaryColor: AppColors.primaryColor,
      primarySwatch: const MaterialColor(
        AppColors.hGradientColor1,
        AppColors.primaryColorSwatch,
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      hintColor: AppColors.hintColor);
}
