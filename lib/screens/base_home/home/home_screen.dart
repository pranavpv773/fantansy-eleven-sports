import 'package:fantasy_gaming/screens/base_home/home/home_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      decoration: CommonFunction.boxDecoration(),
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Image.asset(
                            Res.ic_ball,
                            width: 40,
                            height: 40,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cricket',
                            style: TextStyle(
                              color: AppColors.whiteColor,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.mediumFont,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        Res.ic_football_2,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 30, left: 15, right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'my_matches'.tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen13,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.boldFont,
                            ),
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                'view_all'.tr,
                                style: TextStyle(
                                  color: CommonFunction.textThemeColor(),
                                  fontSize: dimen12,
                                  fontFamily: AppConstants.appFontFamily,
                                  fontWeight: AppConstants.mediumFont,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: CommonFunction.textThemeColor(),
                                size: 14,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //card
                    SizedBox(
                      height: 180,
                      child: PageView.builder(
                        controller: controller.controller,
                        physics: const AlwaysScrollableScrollPhysics(),
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.offNamed(AppRoutes.createRoom);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              decoration:
                                  CommonFunction.selectedCardDecoration(),
                              child: Padding(
                                padding: const EdgeInsets.all(1.9),
                                child: Container(
                                  padding: const EdgeInsets.only(
                                      top: 10, left: 15, right: 15),
                                  decoration:
                                      CommonFunction.selectedCardDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'OPPO IPL',
                                            style: TextStyle(
                                              color: CommonFunction
                                                  .selectedTextThemeColor(),
                                              fontSize: dimen13,
                                              fontFamily:
                                                  AppConstants.appFontFamily,
                                              fontWeight:
                                                  AppConstants.semiBoldFont,
                                            ),
                                          ),
                                          Text(
                                            'Public',
                                            style: TextStyle(
                                              color: CommonFunction
                                                  .selectedTextThemeColor(),
                                              fontSize: dimen12,
                                              fontFamily:
                                                  AppConstants.appFontFamily,
                                              fontWeight:
                                                  AppConstants.semiBoldFont,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 10),
                                        child: Divider(
                                          color: AppColors.gradientColor1,
                                          thickness: 0.3,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mumbai Indians',
                                                style: TextStyle(
                                                  color: CommonFunction
                                                      .selectedTextThemeColor(),
                                                  fontSize: dimen10,
                                                  fontFamily: AppConstants
                                                      .appFontFamily,
                                                  fontWeight:
                                                      AppConstants.regularFont,
                                                ),
                                              ),
                                              Wrap(
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10,
                                                            bottom: 10,
                                                            right: 10),
                                                    child: Image.asset(
                                                      Res.ic_mi_logo,
                                                      width: 40,
                                                      height: 30,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                  Text(
                                                    'MI',
                                                    style: TextStyle(
                                                      color: CommonFunction
                                                          .selectedTextThemeColor(),
                                                      fontFamily: AppConstants
                                                          .appFontFamily,
                                                      fontWeight: AppConstants
                                                          .semiBoldFont,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '3 hrs',
                                            style: TextStyle(
                                              color: CommonFunction
                                                  .selectedTextThemeColor(),
                                              fontSize: dimen11,
                                              fontFamily:
                                                  AppConstants.appFontFamily,
                                              fontWeight:
                                                  AppConstants.regularFont,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Delhi Capitals',
                                                style: TextStyle(
                                                  color: CommonFunction
                                                      .selectedTextThemeColor(),
                                                  fontSize: dimen10,
                                                  fontFamily: AppConstants
                                                      .appFontFamily,
                                                  fontWeight:
                                                      AppConstants.regularFont,
                                                ),
                                              ),
                                              Wrap(
                                                crossAxisAlignment:
                                                    WrapCrossAlignment.center,
                                                children: [
                                                  Text(
                                                    'DC',
                                                    style: TextStyle(
                                                      color: CommonFunction
                                                          .selectedTextThemeColor(),
                                                      fontFamily: AppConstants
                                                          .appFontFamily,
                                                      fontWeight: AppConstants
                                                          .semiBoldFont,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 10,
                                                            bottom: 10,
                                                            left: 10),
                                                    child: Image.asset(
                                                      Res.ic_dc_logo,
                                                      width: 40,
                                                      height: 30,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Wrap(
                                            crossAxisAlignment:
                                                WrapCrossAlignment.center,
                                            spacing: 8,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  gradient: CommonFunction
                                                      .themeSolidGradient,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 5),
                                                child: Text(
                                                  'PRICE',
                                                  style: TextStyle(
                                                    color: AppColors.whiteColor,
                                                    fontSize: dimen8,
                                                    fontFamily: AppConstants
                                                        .appFontFamily,
                                                    fontWeight: AppConstants
                                                        .semiBoldFont,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                '8 Crore',
                                                style: TextStyle(
                                                  color: CommonFunction
                                                      .selectedTextThemeColor(),
                                                  fontSize: dimen10,
                                                  fontFamily: AppConstants
                                                      .appFontFamily,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Wrap(
                                            crossAxisAlignment:
                                                WrapCrossAlignment.center,
                                            spacing: 5,
                                            children: [
                                              Text(
                                                '4:2',
                                                style: TextStyle(
                                                  color: CommonFunction
                                                      .selectedTextThemeColor(),
                                                  fontSize: dimen10,
                                                  fontFamily: AppConstants
                                                      .appFontFamily,
                                                ),
                                              ),
                                              Text(
                                                'WD',
                                                style: TextStyle(
                                                  color: CommonFunction
                                                      .selectedTextThemeColor(),
                                                  fontSize: dimen10,
                                                  fontFamily: AppConstants
                                                      .appFontFamily,
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SmoothPageIndicator(
                      controller: controller.controller,
                      count: 3,
                      effect: WormEffect(
                        dotHeight: 10,
                        dotWidth: 10,
                        activeDotColor: AppColors.gradientColor1,
                        dotColor: Colors.grey.withOpacity(0.5),
                        // strokeWidth: 5,
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'upcoming'.tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen13,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.boldFont,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.upcomingMatch);
                            },
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  'view_all'.tr,
                                  style: TextStyle(
                                    color: CommonFunction.textThemeColor(),
                                    fontSize: dimen12,
                                    fontFamily: AppConstants.appFontFamily,
                                    fontWeight: AppConstants.mediumFont,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: CommonFunction.textThemeColor(),
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: CommonFunction.selectedCardDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(1.9),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration:
                                    CommonFunction.unSelectedCardDecoration(),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'OPPO IPL',
                                          style: TextStyle(
                                            color:
                                                CommonFunction.textThemeColor(),
                                            fontSize: dimen13,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            fontWeight:
                                                AppConstants.semiBoldFont,
                                          ),
                                        ),
                                        Image.asset(
                                          Res.ic_notification,
                                          width: 20,
                                          height: 20,
                                          color:
                                              CommonFunction.textThemeColor(),
                                        ),
                                      ],
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Divider(
                                        color: AppColors.blackColor,
                                        thickness: 0.2,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Rajasthan Royals',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontSize: dimen10,
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                                fontWeight:
                                                    AppConstants.regularFont,
                                              ),
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          bottom: 10,
                                                          right: 10),
                                                  child: Image.asset(
                                                    Res.ic_mi_logo,
                                                    width: 40,
                                                    height: 30,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Text(
                                                  'RR',
                                                  style: TextStyle(
                                                    color: CommonFunction
                                                        .textThemeColor(),
                                                    fontFamily: AppConstants
                                                        .appFontFamily,
                                                    fontWeight: AppConstants
                                                        .semiBoldFont,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '7 hrs',
                                          style: TextStyle(
                                            color:
                                                CommonFunction.textThemeColor(),
                                            fontSize: dimen11,
                                            fontFamily:
                                                AppConstants.appFontFamily,
                                            fontWeight:
                                                AppConstants.semiBoldFont,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Chennai Super Kings',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontSize: dimen10,
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                                fontWeight:
                                                    AppConstants.regularFont,
                                              ),
                                            ),
                                            Wrap(
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.center,
                                              children: [
                                                Text(
                                                  'CSK',
                                                  style: TextStyle(
                                                    color: CommonFunction
                                                        .textThemeColor(),
                                                    fontFamily: AppConstants
                                                        .appFontFamily,
                                                    fontWeight: AppConstants
                                                        .semiBoldFont,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 10,
                                                          bottom: 10,
                                                          left: 10),
                                                  child: Image.asset(
                                                    Res.ic_dc_logo,
                                                    width: 40,
                                                    height: 30,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Wrap(
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          spacing: 8,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                gradient: CommonFunction
                                                    .themeGradient,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              child: Text(
                                                'PRICE',
                                                style: TextStyle(
                                                  color: AppColors.whiteColor,
                                                  fontSize: dimen8,
                                                  fontFamily: AppConstants
                                                      .appFontFamily,
                                                  fontWeight:
                                                      AppConstants.semiBoldFont,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '10 Crore',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontSize: dimen10,
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Wrap(
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          spacing: 5,
                                          children: [
                                            Text(
                                              '4:1',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontSize: dimen10,
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                              ),
                                            ),
                                            Text(
                                              'WD',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontSize: dimen10,
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'tournament'.tr,
                            style: TextStyle(
                              color: CommonFunction.textThemeColor(),
                              fontSize: dimen13,
                              fontFamily: AppConstants.appFontFamily,
                              fontWeight: AppConstants.boldFont,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(AppRoutes.tournaments);
                            },
                            child: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text(
                                  'view_all'.tr,
                                  style: TextStyle(
                                    color: CommonFunction.textThemeColor(),
                                    fontSize: dimen12,
                                    fontFamily: AppConstants.appFontFamily,
                                    fontWeight: AppConstants.mediumFont,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: CommonFunction.textThemeColor(),
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: CommonFunction.selectedCardDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(1.9),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration:
                                    CommonFunction.unSelectedCardDecoration(),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          Res.ic_profile_placeholder,
                                          width: 50,
                                          height: 50,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Indian Premier League',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                                fontWeight:
                                                    AppConstants.semiBoldFont,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              '54 Matches',
                                              style: TextStyle(
                                                color: CommonFunction
                                                    .textThemeColor(),
                                                fontFamily:
                                                    AppConstants.appFontFamily,
                                                fontWeight:
                                                    AppConstants.regularFont,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'T-20',
                                      style: TextStyle(
                                        color: CommonFunction.textThemeColor(),
                                        fontFamily: AppConstants.appFontFamily,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }
}
