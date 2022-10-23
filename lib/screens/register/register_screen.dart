import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/dimens.dart';
import 'register_controller.dart';

class RegisterScreen extends GetView<RegisterController> {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        child: ScreenHeader(
          title: 'register'.tr,
        ),
        preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(
                height: 138,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset(
                      Res.ic_auth_header,
                      fit: BoxFit.cover,
                    )),
              ),
              //form

              Obx(
                () => Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: controller.emailText.isNotEmpty
                      ? CommonFunction.activeBoxDecoration()
                      : CommonFunction.inactiveBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 12.0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: dimen16,
                              ),
                              Image.asset(
                                Res.ic_email,
                                width: dimen20,
                                height: dimen20,
                                color: controller.emailText.isNotEmpty
                                    ? CommonFunction.textThemeColor()
                                    : Get.theme.hintColor,
                              ),
                              SizedBox(
                                width: dimen16,
                              ),
                              Expanded(
                                child: TextField(
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    decoration: InputDecoration(
                                        hintText: 'email'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            color: AppColors.hintColor)),
                                    onChanged: (String text) {
                                      controller.onChangedEmail(text);
                                    }),
                              ),
                              GetUtils.isEmail(controller.emailText.value)
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        Res.ic_tick,
                                        width: dimen20,
                                        height: dimen20,
                                      ),
                                    )
                                  : Container(),
                            ],
                          ))),
                ),
              ),

              Obx(
                () => Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: controller.passwordText.isNotEmpty
                      ? CommonFunction.activeBoxDecoration()
                      : CommonFunction.inactiveBoxDecoration(),
                  child: Container(
                      decoration: CommonFunction.defaultBoxDecoration(
                          boarderRadius: 12.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: dimen16,
                          ),
                          Image.asset(
                            Res.ic_lock,
                            width: dimen20,
                            height: dimen20,
                            color: controller.passwordText.isNotEmpty
                                ? CommonFunction.textThemeColor()
                                : Get.theme.hintColor,
                          ),
                          SizedBox(
                            width: dimen16,
                          ),
                          Expanded(
                            child: TextField(
                                keyboardType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.next,
                                obscureText: controller.seePassword.value,
                                decoration: InputDecoration(
                                    hintText: 'password'.tr,
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: dimen12,
                                        fontFamily: AppConstants.appFontFamily,
                                        color: AppColors.hintColor)),
                                onChanged: (String text) {
                                  controller.onChangedPassword(text);
                                }),
                          ),
                          InkWell(
                              onTap: () {
                                controller.seePassword.value =
                                    !controller.seePassword.value;
                              },
                              child: controller.seePassword.value
                                  ? Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        Res.ic_unseen_pswd,
                                        width: dimen22,
                                        height: dimen22,
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(
                                        Res.ic_seen_password,
                                        width: dimen22,
                                        height: dimen22,
                                      ),
                                    )),
                          SizedBox(
                            width: dimen10,
                          ),
                        ],
                      )),
                ),
              ),

              Obx(
                () => Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: controller.confirmPasswordText.isNotEmpty
                      ? CommonFunction.activeBoxDecoration()
                      : CommonFunction.inactiveBoxDecoration(),
                  child: Container(
                      decoration: CommonFunction.defaultBoxDecoration(
                          boarderRadius: 12.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: dimen16,
                          ),
                          Image.asset(Res.ic_lock,
                              width: dimen20,
                              height: dimen20,
                              color: controller.confirmPasswordText.isNotEmpty
                                  ? CommonFunction.textThemeColor()
                                  : Get.theme.hintColor),
                          SizedBox(
                            width: dimen16,
                          ),
                          Expanded(
                            child: TextField(
                                textInputAction: TextInputAction.next,
                                obscureText:
                                    controller.seenConformPassword.value,
                                decoration: InputDecoration(
                                    hintText: 'confirm_password'.tr,
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: dimen12,
                                        fontFamily: AppConstants.appFontFamily,
                                        color: AppColors.hintColor)),
                                onChanged: (String text) {
                                  controller.onConfirmPassword(text);
                                }),
                          ),
                          InkWell(
                            onTap: () {
                              controller.seenConformPassword.value =
                                  !controller.seenConformPassword.value;
                            },
                            child: controller.seenConformPassword.value
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      Res.ic_unseen_pswd,
                                      width: dimen22,
                                      height: dimen22,
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      Res.ic_seen_password,
                                      width: dimen22,
                                      height: dimen22,
                                    ),
                                  ),
                          ),
                          SizedBox(
                            width: dimen10,
                          ),
                        ],
                      )),
                ),
              ),

              GestureDetector(
                onTap: () {
                  controller.isValid();
                },
                child: Container(
                    height: dimen42,
                    margin: const EdgeInsets.only(top: 50, bottom: 30),
                    decoration: CommonFunction.boxDecoration(),
                    child: Center(
                      child: Text('sign_up'.tr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: dimen14,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.boldFont)),
                    )),
              ),

              Center(
                child: Text("or".tr,
                    style: TextStyle(
                      color: CommonFunction.textThemeColor(),
                      fontSize: dimen12,
                      fontFamily: AppConstants.appFontFamily,
                    )),
              ),

              GestureDetector(
                onTap: () {
                  controller.registerWithGoogle();
                },
                child: Container(
                  height: dimen42,
                  margin: const EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    gradient: CommonFunction.themeGradient,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Container(
                      decoration: CommonFunction.defaultBoxDecoration(
                          boarderRadius: 30.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Image.asset(
                              Res.ic_google,
                              width: dimen20,
                              height: dimen20,
                            ),
                          ),
                          Text("signup_with_google".tr,
                              style: TextStyle(
                                  color: CommonFunction.textThemeColor(),
                                  fontSize: dimen12,
                                  fontFamily: AppConstants.appFontFamily,
                                  fontWeight: AppConstants.mediumFont))
                        ],
                      )),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: Center(
                    child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                              text: "already_have_an_account".tr,
                              style: TextStyle(
                                color: CommonFunction.textThemeColor(),
                                fontSize: dimen12,
                                fontFamily: AppConstants.appFontFamily,
                              )),
                          TextSpan(
                              text: "login_here".tr,
                              style: TextStyle(
                                color: AppColors.gradientColor1,
                                fontSize: dimen12,
                                fontFamily: AppConstants.appFontFamily,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  Get.offNamed(AppRoutes.login);
                                })
                        ]))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
