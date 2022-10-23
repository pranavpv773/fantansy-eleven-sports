import 'package:fantasy_gaming/screens/my_info/my_info_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyInfoScreen extends GetView<MyInfoController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        appBar: PreferredSize(
          child: ScreenHeader(title: 'my_account'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 33, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: Image.asset(
                            Res.ic_profile_placeholder,
                            fit: BoxFit.cover,
                            width: dimen60,
                            height: dimen60,
                            // child: InkWell(onTap: (){}),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Image.asset(Res.ic_camera_edit,
                              height: dimen24, width: dimen24)),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Text("name".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: dimen14,
                        fontFamily: AppConstants.appFontFamily,
                        )),


                      Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    decoration: CommonFunction.inactiveBoxDecoration(),
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
                                    color: CommonFunction.textThemeColor()),
                                SizedBox(
                                  width: dimen16,
                                ),
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    controller: controller.nameController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        hintText: 'enter_name'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            color: AppColors.hintColor)),
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Level 5",
                                      style: TextStyle(
                                          fontSize: dimen12,
                                          fontFamily:
                                              AppConstants.appFontFamily,
                                          color: AppColors.hintColor),
                                    )),
                                SizedBox(
                                  width: dimen10,
                                ),
                              ],
                            ))),
                  ),
                SizedBox(height: 30),
                Text("username".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: dimen14,
                        fontFamily: AppConstants.appFontFamily,
                        )),

                      InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.changeUsername,arguments:controller.userNameController.text);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 10,
                      ),
                      decoration: CommonFunction.inactiveBoxDecoration(),
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
                                      color: CommonFunction.textThemeColor()),
                                  SizedBox(
                                    width: dimen16,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.name,
                                      textInputAction: TextInputAction.next,
                                      controller: controller.userNameController,
                                      readOnly: true,
                                      decoration: InputDecoration(
                                          hintText: 'enter_username'.tr,
                                          border: InputBorder.none,
                                          hintStyle: TextStyle(
                                              fontSize: dimen12,
                                              fontFamily:
                                                  AppConstants.appFontFamily,
                                              color: AppColors.hintColor)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      Res.ic_edit,
                                      width: dimen18,
                                      height: dimen18,
                                    ),
                                  ),
                                  SizedBox(
                                    width: dimen10,
                                  ),
                                ],
                              ))),
                    ),
                  ),




                SizedBox(height: 30),
                Text("email".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: dimen14,
                        fontFamily: AppConstants.appFontFamily,
                        )),

                      Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    decoration: CommonFunction.inactiveBoxDecoration(),
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
                                Image.asset(Res.ic_email,
                                    width: dimen18,
                                    height: dimen18,
                                    color: CommonFunction.textThemeColor()),
                                SizedBox(
                                  width: dimen16,
                                ),
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    controller: controller.emailNameController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        hintText: 'enter_email'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            color: AppColors.hintColor)),
                                  ),
                                ),
                                SizedBox(
                                  width: dimen10,
                                ),
                              ],
                            ))),
                  ),
                SizedBox(height: 30),
                Text("mobile_number".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: dimen14,
                        fontFamily: AppConstants.appFontFamily,
                        )),
                   Container(
                    margin: const EdgeInsets.only(
                      top: 10,
                    ),
                    decoration: CommonFunction.inactiveBoxDecoration(),
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
                                Image.asset(Res.ic_phone,
                                    width: dimen12,
                                    height: dimen12,
                                    color: CommonFunction.textThemeColor()),
                                SizedBox(
                                  width: dimen16,
                                ),
                                Expanded(
                                  child: TextField(
                                    keyboardType: TextInputType.name,
                                    textInputAction: TextInputAction.next,
                                    controller: controller.mobileNumberController,
                                    readOnly: true,
                                    decoration: InputDecoration(
                                        hintText: 'enter_mobile'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            color: AppColors.hintColor)),
                                  ),
                                ),
                              ],
                            ))),
                  ),

                SizedBox(height: 30),
                Text("password".tr,
                    style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: dimen14,
                        fontFamily: AppConstants.appFontFamily,
                        )),

                      Container(
                    margin: const EdgeInsets.only(top: 10),
                    decoration: CommonFunction.inactiveBoxDecoration(),
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
                                    color: CommonFunction.textThemeColor()),
                                SizedBox(
                                  width: dimen16,
                                ),
                                Expanded(
                                  child: TextField(
                                    readOnly: true,
                                    keyboardType: TextInputType.visiblePassword,
                                    textInputAction: TextInputAction.next,
                                    obscureText: controller.seePassword.value,
                                    controller: controller.passwordController,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                    decoration: InputDecoration(
                                        hintText: 'password'.tr,
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            fontSize: dimen12,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            color: AppColors.hintColor)),
                                  ),
                                ),
                                SizedBox(
                                  width: dimen10,
                                ),
                              ],
                            ))),
                  ),
                SizedBox(height: 20),
                Container(
                    height: dimen42,
                    margin: const EdgeInsets.only(top: 50, bottom: 30),
                    decoration: CommonFunction.boxDecoration(),
                    child: InkWell(
                        splashFactory: NoSplash.splashFactory,
                        onTap: () {},
                        child: Center(
                          child: Text('update_profile'.tr,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: dimen14,
                                  fontFamily: AppConstants.appFontFamily,
                                  fontWeight: AppConstants.boldFont)),
                        ))),
              ],
            ),
          ),
        ));
  }
}
