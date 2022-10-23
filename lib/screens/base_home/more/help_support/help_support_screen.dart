import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'help_support_controller.dart';

class HelpSupportScreen extends GetView<HelpSupportController> {
  const HelpSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        appBar: PreferredSize(
          child: ScreenHeader(title: 'help_and_support'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        backgroundColor: Get.theme.backgroundColor,
        body: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 20),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 3,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        controller.demoText();
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text("how_can_i_help_you".tr,
                                style: TextStyle(
                                    color: CommonFunction.textThemeColor(),
                                    fontSize: dimen13,
                                    fontFamily: AppConstants.appFontFamily,
                                    fontWeight: AppConstants.boldFont)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 24,
                              color: CommonFunction.textThemeColor(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(() => controller.text.value
                        ? Text("demo_discribe".tr,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: CommonFunction.textThemeColor(),
                                fontSize: dimen12,
                                height: 2,
                                wordSpacing: 3,
                                fontFamily: AppConstants.appFontFamily,
                                fontWeight: AppConstants.mediumFont))
                        : Container()),
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: CommonFunction.textThemeColor(),
              );
            },
          ),
        ));
  }
}
