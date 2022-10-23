import 'package:fantasy_gaming/screens/change_username/change_username_controlller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeUsernameScreen extends GetView<ChangeUsernameController> {
  const ChangeUsernameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          child: ScreenHeader(title: 'change_username'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: Container(
            margin: const EdgeInsets.only(top: 33, left: 20, right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Obx(() => Container(
                    // margin: const EdgeInsets.only(top: 10),
                    decoration: controller.userNameText.isNotEmpty
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
                                Image.asset(Res.ic_user_edit,
                                    width: dimen18,
                                    height: dimen18,
                                    color: controller.userNameText.isNotEmpty
                                        ? CommonFunction.textThemeColor()
                                        : Get.theme.hintColor),
                                SizedBox(
                                  width: dimen16,
                                ),
                                Expanded(
                                  child: TextField(
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,

                                      // readOnly: true,
                                      controller: controller.userNameController,
                                      decoration: InputDecoration(
                                          hintText: 'enter_username'.tr,
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: dimen12,
                                              fontFamily:
                                                  AppConstants.appFontFamily,
                                              color: AppColors.hintColor)),
                                      onChanged: (String text) {
                                        controller.onChangedName(text);
                                      }),
                                ),
                                controller.sameName.value
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          Res.ic_tick,
                                          width: dimen18,
                                          height: dimen18,
                                        ),
                                      )
                                    : Container(),
                                SizedBox(
                                  width: dimen10,
                                ),
                              ],
                            ))),
                  )),
              Obx(() => controller.sameName.value
                  // ignore: avoid_unnecessary_containers
                  ? Container(
                      child: Text('username_validation'.tr,
                          style: TextStyle(
                              fontSize: dimen12,
                              fontFamily: AppConstants.appFontFamily,
                              color: AppColors.blackColor)))
                  : Container()),
              Expanded(child: Container()),
              Container(
                  height: dimen42,
                  margin: const EdgeInsets.only(
                      top: 50, bottom: 30, left: 15, right: 15),
                  decoration: CommonFunction.boxDecoration(),
                  child: GestureDetector(
                      onTap: () {
                        controller.isVaild();
                      },
                      child: Center(
                        child: Text('done'.tr,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: dimen14,
                                fontFamily: AppConstants.appFontFamily,
                                fontWeight: AppConstants.boldFont)),
                      ))),
            ])));
  }
}
