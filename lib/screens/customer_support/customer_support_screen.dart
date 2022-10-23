import 'package:fantasy_gaming/screens/customer_support/customer_support_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomerSupportScreen extends GetView<CustomerSupportController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        appBar: PreferredSize(
          child: ScreenHeader(title: 'customer_support'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 130),
          Center(
            child: Image.asset(Res.ic_contact_background),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Text(
                "demo_text".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: CommonFunction.textThemeColor(),
                  fontSize: dimen12,
                  height: 1.5,
                  wordSpacing: 2,
                  fontFamily: AppConstants.appFontFamily,
                ),
              ),
            ),
          )
        ])));
  }
}
