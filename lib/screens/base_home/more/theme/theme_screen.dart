import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme_controller.dart';

class ThemeScreen extends GetView<ThemeController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        appBar: PreferredSize(
          child: ScreenHeader(title: 'theme'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        backgroundColor: Get.theme.backgroundColor,
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text('choose_your_default_app_mode'.tr,
                  style: TextStyle(
                      color: CommonFunction.textThemeColor(),
                      fontSize: dimen12,
                      fontFamily: AppConstants.appFontFamily,
                      fontWeight: AppConstants.semiBoldFont)),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    "light".tr,
                    style: TextStyle(
                        color: CommonFunction.textThemeColor(),
                        fontSize: dimen12,
                        fontFamily: AppConstants.appFontFamily,
                        fontWeight: AppConstants.mediumFont),
                  )),
                  Obx(() => InkWell(
                      onTap: () {
                        controller.changeAppTheme(0);
                      },
                      child: controller.selectIndex.value == 0
                          ? Image.asset(
                              Res.ic_circle_selected,
                              height: 20,
                              width: 20,
                            )
                          : Image.asset(
                              Res.ic_circle_unselected,
                              height: 20,
                              width: 20,
                            ))),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text(
                    "dark".tr,
                    style: TextStyle(
                        color: CommonFunction.textThemeColor(),
                        fontSize: dimen12,
                        fontFamily: AppConstants.appFontFamily,
                        fontWeight: AppConstants.mediumFont),
                  )),
                  Obx(() => InkWell(
                      onTap: () {
                        controller.changeAppTheme(1);
                      },
                      child: controller.selectIndex.value == 1
                          ? Image.asset(
                              Res.ic_circle_selected,
                              height: 20,
                              width: 20,
                            )
                          : Image.asset(
                              Res.ic_circle_unselected,
                              height: 20,
                              width: 20,
                            ))),
                ],
              ),
            ),
          ]),
        )));
  }
}
