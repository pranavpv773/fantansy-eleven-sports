import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/dimens.dart';
import 'reset_password_controller.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ResetPasswordScreen extends GetView<ResetPasswordController> {
  const ResetPasswordScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return WillPopScope(
      onWillPop: _willPopCallback,
      child: Scaffold(
        //resizeToAvoidBottomInset: false,
        backgroundColor: Get.theme.backgroundColor,
        appBar: PreferredSize(
          child: ScreenHeader(
            title: 'reset_password'.tr,
            onBack: () {
              Get.offNamed(AppRoutes.login);
            },
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 30.0, left: 15, right: 15),
            //height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  height: 138,
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(13.0),
                      child: Image.asset(
                        Res.ic_reset_header,
                        fit: BoxFit.cover,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    "code_to_reset_your_password".tr,
                    style: TextStyle(
                        fontSize: dimen10,
                        fontFamily: AppConstants.appFontFamily,
                        color: AppColors.hintColor),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    "demo_email".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: dimen13,
                        fontFamily: AppConstants.appFontFamily,
                        fontWeight: AppConstants.mediumFont),
                  )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'enter_room_key'.tr,
                      style: TextStyle(
                        color: CommonFunction.textThemeColor(),
                        fontFamily: AppConstants.appFontFamily,
                        fontWeight: AppConstants.boldFont,
                      ),
                    ),
                    Container(
                      width: 200,
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: PinCodeTextField(
                        length: 4,
                        obscureText: true,
                        obscuringWidget: Icon(
                          Icons.circle,
                          size: dimen8,
                        ),
                        animationType: AnimationType.fade,
                        keyboardType: const TextInputType.numberWithOptions(),
                        pinTheme: PinTheme(
                          selectedColor: AppColors.blackColor,
                          activeColor: AppColors.gradientColor,
                          inactiveColor: AppColors.blackColor,
                          errorBorderColor: AppColors.gradientColor1,
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 40,
                          activeFillColor: Colors.white,
                        ),
                        textStyle: TextStyle(
                          color: CommonFunction.textThemeColor(),
                          fontFamily: AppConstants.appFontFamily,
                          fontSize: dimen12,
                          fontWeight: AppConstants.regularFont,
                        ),
                        animationDuration: const Duration(milliseconds: 300),
                        //backgroundColor: Colors.blue.shade50,
                        //controller: textEditingController,
                        onCompleted: (v) {
                          debugPrint("Completed");
                          Get.offNamed(AppRoutes.newPassword);
                        },
                        onChanged: (value) {
                          /*setState(() {
                            currentText = value;
                          });*/
                        },
                        beforeTextPaste: (text) {
                          return true;
                        },
                        appContext: context,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Center(
                      child: Text(
                    "didn't_receive_code?".tr,
                    style: TextStyle(
                        fontSize: dimen10,
                        fontFamily: AppConstants.appFontFamily,
                        color: AppColors.hintColor),
                  )),
                ),
                InkWell(
                  onTap: () {
                    controller.getHomeScreen();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                        child: Text(
                      "resend_email".tr,
                      style: TextStyle(
                          fontSize: dimen12,
                          fontFamily: AppConstants.appFontFamily,
                          decoration: TextDecoration.underline,
                          fontWeight: AppConstants.boldFont,
                          color: AppColors.gradientColor),
                    )),
                  ),
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Center(
                      child: Text(
                    "resend_demo".tr,
                    style: TextStyle(
                        fontSize: dimen10,
                        fontFamily: AppConstants.appFontFamily,
                        color: AppColors.hintColor),
                  )),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Center(
                          child: Text(
                        "still_no_email".tr,
                        style: TextStyle(
                            fontSize: dimen10,
                            fontFamily: AppConstants.appFontFamily,
                            color: AppColors.hintColor),
                      )),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.customerSupport);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Center(
                            child: Text(
                          "contact_us".tr,
                          style: TextStyle(
                              fontSize: dimen10,
                              decoration: TextDecoration.underline,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.boldFont,
                              color: CommonFunction.textThemeColor()),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _willPopCallback() async {
    Get.offNamed(AppRoutes.login);

    return true;
  }
}
