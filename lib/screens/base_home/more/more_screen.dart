import 'package:fantasy_gaming/screens/base_home/more/more_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/app_content_enum.dart';

class MoreScreen extends GetView<MoreController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20,top: 33, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(height: 20),
              InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.notification);
                  },
                child: Container(
                  // margin: const EdgeInsets.only(top: 30),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset(Res.ic_notification,
                                  width: 20,
                                  height: 20,
                                  color: CommonFunction.textThemeColor()),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Text("notification".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(Res.ic_back_right,
                                    width: dimen10,
                                    height: dimen10,
                                    color: CommonFunction.textThemeColor()),
                              )
                            ],
                          ))),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.theme);

                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset(Res.ic_theme,
                                  width: 20,
                                  height: 20,
                                  color: CommonFunction.textThemeColor()),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Text("theme".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(Res.ic_back_right,
                                    width: dimen10,
                                    height: dimen10,
                                    color: CommonFunction.textThemeColor()),
                              )
                            ],
                          ))),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.privacyAbout,arguments: AppContentEnum.PrivacyPolicy);

                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30,),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset(Res.ic_privacy,
                                  width: 20,
                                  height: 20,
                                  color: CommonFunction.textThemeColor()),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Text("privacy_policy_&_security".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(Res.ic_back_right,
                                    width: dimen10,
                                    height: dimen10,
                                    color: CommonFunction.textThemeColor()),
                              )
                            ],
                          ))),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.helpAndSupport);

                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset(Res.ic_help,
                                  width: 20,
                                  height: 20,
                                  color: CommonFunction.textThemeColor()),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Text("help_and_support".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(Res.ic_back_right,
                                    width: dimen10,
                                    height: dimen10,
                                    color: CommonFunction.textThemeColor()),
                              )
                            ],
                          ))),
                ),
              ),
              InkWell(
                onTap: (){
                  Get.toNamed(AppRoutes.privacyAbout,arguments: AppContentEnum.About);

                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 16,
                              ),
                              Image.asset(Res.ic_about,
                                  width: 20,
                                  height: 20,
                                  color: CommonFunction.textThemeColor()),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                  child: Text("about".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont))),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(Res.ic_back_right,
                                    width: dimen10,
                                    height: dimen10,
                                    color: CommonFunction.textThemeColor()),
                              )
                            ],
                          ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
