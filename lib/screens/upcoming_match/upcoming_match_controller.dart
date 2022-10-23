import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingMatchController extends GetxController {

  var isSelected = 0.obs;


  Widget getItemContainer(bool isSelected){
    return Container(
      margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        children: [
          Container(
            decoration:  CommonFunction.selectedCardDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(1.9),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: isSelected ? CommonFunction.selectedCardDecoration():CommonFunction.unSelectedCardDecoration(),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'OPPO IPL',
                          style: TextStyle(
                            color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                            fontSize: dimen13,
                            fontFamily: AppConstants.appFontFamily,
                            fontWeight: AppConstants.semiBoldFont,
                          ),
                        ),
                        Image.asset(
                          Res.ic_notification,
                          width: 20,
                          height: 20,
                          color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rajasthan Royals',
                              style: TextStyle(
                                color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                fontSize: dimen10,
                                fontFamily: AppConstants.appFontFamily,
                                fontWeight: AppConstants.regularFont,
                              ),
                            ),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
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
                                    color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                    fontFamily: AppConstants.appFontFamily,
                                    fontWeight: AppConstants.semiBoldFont,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '7 hrs',
                          style: TextStyle(
                            color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                            fontSize: dimen11,
                            fontFamily: AppConstants.appFontFamily,
                            fontWeight: AppConstants.semiBoldFont,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Chennai Super Kings',
                                style: TextStyle(
                                  color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                  fontSize: dimen10,
                                  fontFamily: AppConstants.appFontFamily,
                                  fontWeight: AppConstants.regularFont,
                                ),
                              ),
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Text(
                                    'CSK',
                                    style: TextStyle(
                                      color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                      fontFamily: AppConstants.appFontFamily,
                                      fontWeight: AppConstants.semiBoldFont,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
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
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 8,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: isSelected ? CommonFunction.themeSolidGradient: CommonFunction.themeGradient,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child: Text(
                                'PRICE',
                                style: TextStyle(
                                  color: AppColors.whiteColor,
                                  fontSize: dimen8,
                                  fontFamily: AppConstants.appFontFamily,
                                  fontWeight: AppConstants.semiBoldFont,
                                ),
                              ),
                            ),
                            Text(
                              '10 Crore',
                              style: TextStyle(
                                color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                fontSize: dimen10,
                                fontFamily: AppConstants.appFontFamily,
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          spacing: 5,
                          children: [
                            Text(
                              '4:1',
                              style: TextStyle(
                                color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                fontSize: dimen10,
                                fontFamily: AppConstants.appFontFamily,
                              ),
                            ),
                            Text(
                              'WD',
                              style: TextStyle(
                                color: isSelected ?CommonFunction.selectedTextThemeColor():CommonFunction.textThemeColor(),
                                fontSize: dimen10,
                                fontFamily: AppConstants.appFontFamily,
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
  }

}
