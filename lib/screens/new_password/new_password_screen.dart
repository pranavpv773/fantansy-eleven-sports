import 'package:fantasy_gaming/screens/new_password/new_password_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NewPasswordScreen extends GetView<NewPasswordController> {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        child: ScreenHeader(
          title: 'new_password'.tr,
          onBack: () {},
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
                    borderRadius: BorderRadius.circular(13.0),
                    child: Image.asset(
                      Res.ic_new_password_header,
                      fit: BoxFit.cover,
                    )),
              ),
              Obx(
                () => Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: controller.newPasswordText.isNotEmpty
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
                                Res.ic_lock,
                                width: dimen20,
                                height: dimen20,
                                color: controller.newPasswordText.isNotEmpty
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
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                    decoration: InputDecoration(
                                        hintText: 'new_password'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
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
                          ))),
                ),
              ),
              Obx(
                () => Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                  ),
                  decoration: controller.conformPasswordText.isNotEmpty
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
                              Image.asset(Res.ic_lock,
                                  width: dimen20,
                                  height: dimen20,
                                  color:
                                      controller.conformPasswordText.isNotEmpty
                                          ? CommonFunction.textThemeColor()
                                          : Get.theme.hintColor),
                              SizedBox(
                                width: dimen16,
                              ),
                              Expanded(
                                child: TextField(
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText:
                                        controller.seenConformPassword.value,
                                    textInputAction: TextInputAction.next,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                    decoration: InputDecoration(
                                        hintText: 'confirm_password'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
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
                                          width: 24,
                                          height: 24,
                                        ),
                                      )
                                    : Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          Res.ic_seen_password,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                              ),
                              SizedBox(
                                width: dimen10,
                              ),
                            ],
                          ))),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                height: dimen42,
                margin: const EdgeInsets.only(top: 90, bottom: 20),
                decoration: CommonFunction.boxDecoration(),
                child: InkWell(
                  splashFactory: NoSplash.splashFactory,
                  onTap: () {
                    controller.isValid();
                  },
                  child: Center(
                    child: Text(
                      'next'.tr,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: dimen14,
                        fontFamily: AppConstants.appFontFamily,
                        fontWeight: AppConstants.boldFont,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
