import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:fantasy_gaming/utils/theme/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CommonFunction {
  static const themeGradient = LinearGradient(
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(1.1, 0.0),
      stops: [0.2, 0.8],
      tileMode: TileMode.clamp,
      colors: [
        AppColors.gradientColor,
        AppColors.gradientColor1,
      ]);

  static const themeSolidGradient = LinearGradient(
      begin: FractionalOffset(0.0, 0.0),
      end: FractionalOffset(1.1, 0.0),
      stops: [0.2, 0.8],
      tileMode: TileMode.clamp,
      colors: [
        AppColors.gradientColor1,
        AppColors.gradientColor1,
      ]);

  static const verticalThemeGradient = LinearGradient(
      begin: FractionalOffset(1.1, 0.0),
      end: FractionalOffset(1.1, 1.1),
      stops: [0.2, 0.8],
      tileMode: TileMode.clamp,
      colors: [
        AppColors.gradientColor,
        AppColors.gradientColor1,
      ]);

  static const themeHeaderShadow = BoxShadow(
      color: AppColors.gradientColor1, blurRadius: 30.0, offset: Offset(0, 10));

  static const themeInactiveSwitch = BoxShadow(
      color: AppColors.hintColor, blurRadius: 60.0, offset: Offset(10, 10));

  static BoxShadow themeOtherShadow = BoxShadow(
      color: AppColors.gradientColor1.withOpacity(0.4),
      blurRadius: 30.0,
      offset: const Offset(0, 10));

  // header decoration
  static headerDecoration() {
    return const BoxDecoration(
        gradient: themeGradient, boxShadow: [themeHeaderShadow]);
  }

  static textThemeColor() {
    return ThemeService().loadThemeFromBox()
        ? AppColors.whiteColor
        : AppColors.blackColor;
  }

  static selectedTextThemeColor() {
    return AppColors.whiteColor;
  }

  static fillThemeColor() {
    return ThemeService().loadThemeFromBox()
        ? AppColors.blackColor
        : AppColors.whiteColor;
  }

  static inactiveBoxDecoration() {
    return BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(12),
    );
  }

  static activeBoxDecoration() {
    return BoxDecoration(
      gradient: const LinearGradient(
        colors: [
          AppColors.gradientColor,
          AppColors.gradientColor1,
        ],
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }

  static defaultBoxDecoration({boarderRadius}) {
    return BoxDecoration(
      color: fillThemeColor(),
      boxShadow: [themeOtherShadow],
      borderRadius: BorderRadius.circular(boarderRadius),
    );
  }

  // button decoration
  static boxDecoration() {
    return BoxDecoration(
        gradient: themeGradient,
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          themeHeaderShadow,
        ]);
  }

  //card box decoration
  static cardDecoration() {
    return BoxDecoration(
      gradient: verticalThemeGradient,
      borderRadius: BorderRadius.circular(12),
    );
  }

  // snackbar

  static defaultSnackBar(title, msg, color) {
    Get.snackbar(
      title,
      msg,
      snackPosition: SnackPosition.BOTTOM,
      //backgroundGradient: themeGradient,
      backgroundColor: color,
      duration: const Duration(seconds: 1),
      colorText: AppColors.whiteColor,
      margin: const EdgeInsets.all(20),
      isDismissible: false,
      snackStyle: SnackStyle.FLOATING,
    );
  }

  static userAlertText() {
    Text("username_validation".tr,
        style: TextStyle(
            fontSize: dimen12,
            fontFamily: AppConstants.appFontFamily,
            color: AppColors.blackColor));
  }

  static successSnackBar(msg) {
    defaultSnackBar('success'.tr, msg, Colors.green);
  }

  static failedSnackBar(msg) {
    defaultSnackBar('failed'.tr, msg, Colors.red);
  }

  statusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light));
  }

  //selected card box decoration
  static selectedCardDecoration() {
    return BoxDecoration(
      gradient: verticalThemeGradient,
      borderRadius: BorderRadius.circular(12),
    );
  }

  //Unselected card box decoration
  static unSelectedCardDecoration() {
    return BoxDecoration(
      color: fillThemeColor(),
      boxShadow: [themeOtherShadow],
      borderRadius: BorderRadius.circular(12),
    );
  }
}
