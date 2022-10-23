import 'package:fantasy_gaming/screens/current_password/current_passwordcontroller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CurrentPasswordScreen extends GetView<CurrentPasswordController> {
  const CurrentPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        appBar: PreferredSize(
          child: ScreenHeader(title: 'current_password'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 33, left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Obx(
                () => Container(
                  // margin: const EdgeInsets.only(top: 10,),
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
                                    textInputAction: TextInputAction.next,
                                    obscureText:
                                        controller.seenConformPassword.value,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                    decoration: InputDecoration(
                                        hintText: 'enter_current_password'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen10,
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
              Expanded(child: Container()),
              Container(
                  height: dimen42,
                  margin: const EdgeInsets.only(top: 50, bottom: 30),
                  decoration: CommonFunction.boxDecoration(),
                  child: GestureDetector(
                      onTap: () {
                        controller.isValid();
                      },
                      child: Center(
                        child: Text('done'.tr,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: dimen14,
                                fontFamily: AppConstants.appFontFamily,
                                fontWeight: AppConstants.boldFont)),
                      ))),
            ])));
  }
}
