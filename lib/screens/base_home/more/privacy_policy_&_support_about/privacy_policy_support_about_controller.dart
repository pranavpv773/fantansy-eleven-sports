import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/app_content_enum.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacyPolicyAboutController extends GetxController {
  var title = "".obs;
  var subTitle = "".obs;
  var firstTime = true.obs;

  @override
  void onInit() {
    Future.delayed(Duration.zero, () {
      getAppTitle();
    });
    super.onInit();
  }

  getAppTitle() {
    switch (Get.arguments) {
      case AppContentEnum.PrivacyPolicy:
        {
          title.value = "privacy_policy_&_security".tr;
          getAppContent(title.value);
          update();
          break;
        }

      case AppContentEnum.About:
        {
          title.value = "about".tr;
          getAppContent(title.value);
          break;
        }
    }
  }

  getAppContent(title) {
    subTitle.value = "demo_discribe".tr;
  }
}
