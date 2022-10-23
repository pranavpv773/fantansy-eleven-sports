import 'package:fantasy_gaming/screens/tournaments/tournament_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TournamentScreen extends GetView<TournamentController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        child: ScreenHeader(title: 'tournaments'.tr, onBack: () {}),
        preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
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
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
            Flexible(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Get.toNamed(AppRoutes.tournamentMatch);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Column(
                        children: [
                          Container(
                            decoration: CommonFunction.selectedCardDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(1.9),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                decoration: CommonFunction.unSelectedCardDecoration(),
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
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Ashes',
                                              style: TextStyle(
                                                color: CommonFunction.textThemeColor(),
                                                fontFamily: AppConstants.appFontFamily,
                                                fontWeight: AppConstants.semiBoldFont,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text(
                                              '54 Matches',
                                              style: TextStyle(
                                                color: CommonFunction.textThemeColor(),
                                                fontFamily: AppConstants.appFontFamily,
                                                fontWeight: AppConstants.regularFont,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Test Cricket',
                                      style: TextStyle(
                                        color: CommonFunction.textThemeColor(),
                                        fontFamily: AppConstants.appFontFamily,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
