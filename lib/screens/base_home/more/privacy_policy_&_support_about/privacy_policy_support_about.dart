// ignore_for_file: avoid_unnecessary_containers

import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'privacy_policy_support_about_controller.dart';

class PrivacyPolicyAboutScreen extends GetView<PrivacyPolicyAboutController> {
  const PrivacyPolicyAboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        appBar: PreferredSize(
          child: Obx(
              () => ScreenHeader(title: controller.title.value, onBack: () {})),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        backgroundColor: Get.theme.backgroundColor,
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Obx(() => controller.title.value == "about".tr
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text("about_fanWelt_app".tr,
                          style: TextStyle(
                            color: CommonFunction.textThemeColor(),
                            fontSize: dimen15,
                            height: 2,
                            wordSpacing: 3,
                            fontFamily: AppConstants.appFontFamily,
                          )),
                    )
                  : Container()),
              Obx(
                () => Container(
                    child: Text(controller.subTitle.value,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: CommonFunction.textThemeColor(),
                          fontSize: dimen12,
                          height: 2,
                          wordSpacing: 3,
                          fontFamily: AppConstants.appFontFamily,
                        ))),
              )
            ],
          ),
        )));
  }
}
