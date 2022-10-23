import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'profile_controller.dart';

class ProfileScreen extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
        backgroundColor: Get.theme.backgroundColor,
        appBar: PreferredSize(
          child: ScreenHeader(title: 'profile'.tr, onBack: () {}),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Stack(
                    children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 220,
                    //width: MediaQuery.of(context).size.width*0.7,
                    decoration: CommonFunction.cardDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: dimen48,
                        ),
                        Text("demo_name".tr,
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: dimen14,
                                fontFamily: AppConstants.appFontFamily,
                                )),
                        SizedBox(
                          height: dimen10,
                        ),
                        Text("Level 38",
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: dimen14,
                                fontFamily: AppConstants.appFontFamily,
                               )

                        ),
                        SizedBox(
                          height: dimen15,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:35, right: 8),
                              child: Image.asset(
                                Res.ic_email,
                                height: dimen14,
                                width: dimen14,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            Text("demo_email".tr,
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: dimen12,
                                    fontFamily: AppConstants.appFontFamily,
                                   )),
                          ],
                        ),
                        SizedBox(
                          height: dimen15,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:35, right: 8),
                              child: Image.asset(
                                Res.ic_phone,
                                height: dimen12,
                                width: dimen12,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            Text("demo_phone_number".tr,
                                style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: dimen12,
                                    fontFamily: AppConstants.appFontFamily,
                                    )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        child: CircleAvatar(
                          radius: 40.0,
                          backgroundColor: Colors.transparent,
                          child: CircleAvatar(
                            radius: 38.0,
                            backgroundImage:
                                AssetImage(Res.ic_profile_placeholder),
                          ),
                        ),
                      )),
                ]),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  decoration: CommonFunction.cardDecoration(),
                  child:Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15,right: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                        height: 100,
                                        width: 20,
                                        child: TimelineTile(
                                          axis: TimelineAxis.vertical,
                                          alignment: TimelineAlign.start,
                                          isFirst: true,
                                          indicatorStyle: IndicatorStyle(
                                              width: 15,
                                              indicatorXY: 0.2,
                                              indicator: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    color: AppColors.primaryColor,
                                                    border: Border.all(
                                                        color: AppColors.whiteColor
                                                    ),
                                                    shape: BoxShape.circle
                                                ),
                                              )
                                          ),
                                          beforeLineStyle: const LineStyle(
                                            color: AppColors.whiteColor,
                                            thickness: 8,
                                          ),
                                          afterLineStyle:const LineStyle(
                                            color: AppColors.whiteColor,
                                            thickness: 8,
                                          ),
                                        )
                                    ),
                                    SizedBox(
                                        height: 57,
                                        width: 20,
                                        child: TimelineTile(
                                          axis: TimelineAxis.vertical,
                                          alignment: TimelineAlign.start,
                                          //isFirst: true,
                                          indicatorStyle: IndicatorStyle(
                                              width: 15,
                                              color: Colors.purple,
                                              indicatorXY: 0.45,
                                              indicator: Container(
                                                height: 10,
                                                width: 10,
                                                decoration: BoxDecoration(
                                                    color: AppColors.primaryColor,
                                                    border: Border.all(
                                                        color: AppColors.whiteColor
                                                    ),
                                                    shape: BoxShape.circle
                                                ),
                                              )
                                          ),
                                          beforeLineStyle: const LineStyle(
                                            color: AppColors.blackColor,
                                            thickness: 8,
                                          ),
                                          afterLineStyle:const LineStyle(
                                            color: AppColors.gradientColor,
                                            thickness: 8,
                                          ),
                                        )
                                    ),
                                    SizedBox(
                                        height: 38,
                                        width: 30,
                                        child: TimelineTile(
                                          axis: TimelineAxis.vertical,
                                          isLast: true,
                                          lineXY: 0.30,
                                          indicatorStyle: IndicatorStyle(
                                            width: 28,
                                            height: 28,
                                            indicatorXY: 0.0,
                                            color: AppColors.gradientColor,
                                            indicator: SizedBox(
                                              height: 20,
                                              child: Image.asset(Res.ic_coin_round,
                                              ),
                                            ),
                                          ),
                                          /* beforeLineStyle: const LineStyle(
                                              color: AppColors.gradientColor,
                                              thickness: 8,
                                            ),*/
                                        )
                                    ),
                                  ],
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 15,top: 5),
                                            child: Text(controller.levelDetails['initial_level'],style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: dimen13,
                                                fontFamily: AppConstants.appFontFamily,
                                                fontWeight:
                                                AppConstants.semiBoldFont),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Image.asset(Res.ic_level_up,height: 22,width: 25,),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding:  const EdgeInsets.only(left: 12,top: 15),
                                        child: Text(controller.levelDetails['end_level_description'],style:TextStyle(
                                            color: AppColors.whiteColor.withOpacity(0.3),
                                            fontSize: dimen12,
                                            fontFamily: AppConstants.appFontFamily,
                                            fontWeight:
                                            AppConstants.semiBoldFont
                                        )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 5),
                                              child: Image.asset(Res.ic_entry_amount,height: 35,width: 30,),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10),
                                              child: Row(
                                                children:  [
                                                  Text(controller.levelDetails['end_level_entry_amount'],style: TextStyle(
                                                      color: AppColors.whiteColor,
                                                      fontSize: dimen10,
                                                      fontFamily: AppConstants.appFontFamily,
                                                      fontWeight:
                                                      AppConstants.semiBoldFont
                                                  ),),
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 3),
                                                    child: Text(controller.levelDetails['end_level_entry_amount_title'],style: TextStyle(
                                                        color: AppColors.whiteColor,
                                                        fontSize: dimen10,
                                                        fontFamily: AppConstants.appFontFamily,
                                                        fontWeight:
                                                        AppConstants.semiBoldFont
                                                    ),),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12,top: 15),
                                        child: Text(controller.levelDetails['end_level'],style: TextStyle(
                                            color: AppColors.whiteColor,
                                            fontSize: dimen13,
                                            fontFamily: AppConstants.appFontFamily,
                                            fontWeight:
                                            AppConstants.semiBoldFont
                                        ),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12,top: 20,bottom: 5,right: 15),
                                        child: Container(
                                          height: 30,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              color: AppColors.whiteColor,
                                              borderRadius: BorderRadius.circular(2)
                                          ),
                                          padding: const EdgeInsets.only(left: 10,top: 4,right: 15,bottom: 5),
                                          child: Text(controller.levelDetails['level_completion_description']!,style: TextStyle(
                                              color: AppColors.blackColor,
                                              fontSize: dimen8,
                                              fontFamily: AppConstants.appFontFamily,
                                              fontWeight:
                                              AppConstants.semiBoldFont
                                          ),),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Image.asset(Res.ic_forward,height: 13,width: 13,),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(Res.ic_playing_histroy,
                                      width: 20,
                                      height: 20,
                                      color: CommonFunction.textThemeColor()),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text("playing_history".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight:
                                          AppConstants.semiBoldFont)),
                                ],
                              ),
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
              Flexible(
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.myInfo);

                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                    decoration: CommonFunction.activeBoxDecoration(),
                    child: Padding(
                        padding: const EdgeInsets.all(1.9),
                        child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: CommonFunction.defaultBoxDecoration(
                                boarderRadius: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Image.asset(Res.ic_users,
                                        width: 20,
                                        height: 20,
                                        color: CommonFunction.textThemeColor()),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text("my_account".tr,
                                        style: TextStyle(
                                            color: CommonFunction.textThemeColor(),
                                            fontSize: dimen12,
                                            fontFamily: AppConstants.appFontFamily,
                                            fontWeight:
                                            AppConstants.semiBoldFont)),
                                  ],
                                ),
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
              ),
              Flexible(
                child: Container(
                  margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  decoration: CommonFunction.activeBoxDecoration(),
                  child: Padding(
                      padding: const EdgeInsets.all(1.9),
                      child: Container(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 10, left: 5, right: 5),
                          decoration: CommonFunction.defaultBoxDecoration(
                              boarderRadius: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Image.asset(Res.ic_orginamize_account,
                                      width: 20,
                                      height: 20,
                                      color: CommonFunction.textThemeColor()),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text("Organizer Account".tr,
                                      style: TextStyle(
                                          color: CommonFunction.textThemeColor(),
                                          fontSize: dimen12,
                                          fontFamily: AppConstants.appFontFamily,
                                          fontWeight:
                                          AppConstants.semiBoldFont)),
                                ],
                              ),
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
              Flexible(
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(AppRoutes.currentPassword);
                    },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                    decoration: CommonFunction.activeBoxDecoration(),
                    child: Padding(
                        padding: const EdgeInsets.all(1.9),
                        child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 10, left: 5, right: 5),
                            decoration: CommonFunction.defaultBoxDecoration(
                                boarderRadius: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Image.asset(Res.ic_security,
                                        width: 25,
                                        height: 25,
                                        color: CommonFunction.textThemeColor()),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Text("change_password".tr,
                                        style: TextStyle(
                                            color: CommonFunction.textThemeColor(),
                                            fontSize: dimen12,
                                            fontFamily: AppConstants.appFontFamily,
                                            fontWeight:
                                            AppConstants.semiBoldFont)),
                                  ],
                                ),
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
              ),
              Flexible(
                child: Container(
                    height: dimen42,
                    margin: const EdgeInsets.only(
                        top: 50, bottom: 30, left: 15, right: 15),
                    decoration: CommonFunction.boxDecoration(),
                    child: GestureDetector(
                        onTap: () {
                          controller.logOut();
                        },
                        child: Center(
                          child: Text('logout'.tr,
                              style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: dimen14,
                                  fontFamily: AppConstants.appFontFamily,
                                  fontWeight: AppConstants.boldFont)),
                        ))),
              ),
            ],
          ),
        ));
  }
}
