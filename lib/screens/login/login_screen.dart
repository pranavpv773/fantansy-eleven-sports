import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/theme/app_colors.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        appBar: PreferredSize(
          child: ScreenHeader(
            title: 'login'.tr,
          ),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: SingleChildScrollView(
            child: Container(
          margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            SizedBox(
              height: 138,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(13.0),
                  child: Image.asset(
                    Res.ic_auth_header,
                    fit: BoxFit.cover,
                  )),
            ),
            //form

            Obx(
              () => Container(
                margin: const EdgeInsets.only(
                  top: 30,
                ),
                decoration: controller.emailText.isNotEmpty
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
                        Image.asset(Res.ic_email,
                            width: dimen20,
                            height: dimen20,
                            color: controller.emailText.isNotEmpty
                                ? CommonFunction.textThemeColor()
                                : Get.theme.hintColor),
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
                                      fontFamily: AppConstants.appFontFamily,
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
                    )),
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
                        Image.asset(Res.ic_lock,
                            width: dimen20,
                            height: dimen20,
                            color: controller.passwordText.isNotEmpty
                                ? CommonFunction.textThemeColor()
                                : Get.theme.hintColor),
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

            InkWell(
              onTap: () {
                Get.toNamed(AppRoutes.forgot);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: Text("forgot_password?".tr,
                    style: TextStyle(
                        color: CommonFunction.textThemeColor(),
                        fontSize: dimen12,
                        fontFamily: AppConstants.appFontFamily,
                        fontWeight: AppConstants.mediumFont)),
              ),
            ),

            const SizedBox(height: 80),
            //login
            Container(
                height: dimen42,
                margin: const EdgeInsets.only(top: 50, bottom: 30),
                decoration: CommonFunction.boxDecoration(),
                child: InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: () {
                      controller.isValid();
                    },
                    child: Center(
                      child: Text('login'.tr,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: dimen14,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.boldFont)),
                    ))),

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
                controller.loginWithGoogle();
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
                        Text("login_with_google".tr,
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
                            text: "don’t_have_account".tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen12,
                              fontFamily: AppConstants.appFontFamily,
                            )),
                        TextSpan(
                            text: "  " + "sign_up".tr,
                            style: TextStyle(
                              color: AppColors.gradientColor1,
                              fontSize: dimen12,
                              fontFamily: AppConstants.appFontFamily,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                Get.offNamed(AppRoutes.register);
                              })
                      ]))),
            )
          ]),
        )));
  }
}
