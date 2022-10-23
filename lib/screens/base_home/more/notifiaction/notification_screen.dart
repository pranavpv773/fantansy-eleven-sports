import 'package:fantasy_gaming/screens/base_home/more/notifiaction/notification_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/custom_switch.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationScreen extends GetView<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
      appBar: PreferredSize(
        child: ScreenHeader(title: 'notification'.tr, onBack: () {}),
        preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Obx(() => Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('show_notifications'.tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen12,
                              fontFamily: AppConstants.appFontFamily,
                            )),
                      ),
                      CustomSwitch(
                        activeColor: Colors.pinkAccent,
                        value: controller.showNotification.value,
                        onChanged: (value) => controller.showNotification(),
                      ),
                    ],
                  ))),
              const SizedBox(height: 10),
              Obx(() => Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('allow'.tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen12,
                              fontFamily: AppConstants.appFontFamily,
                            )),
                      ),
                      CustomSwitch(
                        activeColor: Colors.pinkAccent,
                        value: controller.allowNotification.value,
                        onChanged: (value) =>
                            controller.toggleallowNotification(),
                      ),
                    ],
                  ))),
              const SizedBox(height: 10),
              Obx(() => Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('message'.tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen12,
                              fontFamily: AppConstants.appFontFamily,
                            )),
                      ),
                      CustomSwitch(
                        activeColor: Colors.pinkAccent,
                        value: controller.msgNotification.value,
                        onChanged: (value) =>
                            controller.togglemsgNotification(),
                      ),
                    ],
                  ))),
            ],
          ),
        ),
      ),
    );
  }
}
