import 'package:fantasy_gaming/screens/upcoming_match/upcoming_match_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UpcomingMatchScreen extends GetView<UpcomingMatchController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        child: ScreenHeader(title: 'upcoming_matches'.tr, onBack: () {}),
        preferredSize: Size(MediaQuery
            .of(context)
            .size
            .width, 80.0),
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
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Obx(() {
                    return InkWell(
                      onTap: (){
                        controller.isSelected.value = index;
                      },
                      child: controller.getItemContainer(controller.isSelected.value == index));
                  });
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
