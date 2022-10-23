import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'splash_controller.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(builder: (controller) {
      return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        body: Container(
          decoration: const BoxDecoration(gradient: CommonFunction.themeGradient),
          child: Center(
            child: Image.asset(
              Res.ic_splash_logo,
              height: 180,
              width: 180,
            ),

          ),
        ),
      );
    });
  }
}
