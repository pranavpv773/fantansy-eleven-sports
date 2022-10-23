import 'package:fantasy_gaming/screens/tournament_matches/tournament_match_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TournamentMatchScreen extends GetView<TournamentMatchController> {
  const TournamentMatchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        child: ScreenHeader(title: 'tournament_matches'.tr, onBack: () {}),
        preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: CommonFunction.selectedCardDecoration(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                          color: AppColors.whiteColor,
                                          fontFamily:
                                              AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '54 Matches',
                                        style: TextStyle(
                                          color: AppColors.whiteColor,
                                          fontFamily:
                                              AppConstants.appFontFamily,
                                          fontWeight: AppConstants.regularFont,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'T-20',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontFamily: AppConstants.appFontFamily,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Flexible(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                    child: Column(
                      children: [
                        Container(
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
                                        'Match #2',
                                        style: TextStyle(
                                          color:
                                              CommonFunction.textThemeColor(),
                                          fontSize: dimen11,
                                          fontFamily:
                                              AppConstants.appFontFamily,
                                          fontWeight: AppConstants.semiBoldFont,
                                        ),
                                      ),
                                      Image.asset(
                                        Res.ic_notification,
                                        width: 20,
                                        height: 20,
                                        color: CommonFunction.textThemeColor(),
                                      ),
                                    ],
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(vertical: 10),
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
                                                padding: const EdgeInsets.only(
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
                                                  fontWeight:
                                                      AppConstants.semiBoldFont,
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
                                          fontWeight: AppConstants.semiBoldFont,
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
                                                  fontWeight:
                                                      AppConstants.semiBoldFont,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
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
                                              gradient:
                                                  CommonFunction.themeGradient,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            child: Text(
                                              'PRICE',
                                              style: TextStyle(
                                                color: AppColors.whiteColor,
                                                fontSize: dimen8,
                                                fontFamily:
                                                    AppConstants.appFontFamily,
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
                        ),
                      ],
                    ),
                  );
                },
              ),
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
