import 'package:fantasy_gaming/screens/base_home/base_home_controller.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:fantasy_gaming/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/dimens.dart';

class BaseHomeScreen extends GetView<BaseHomeController> {
  const BaseHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();

    return Scaffold(
        appBar: PreferredSize(
          child: Container(
              height: dimen60,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(AppRoutes.profile);
                      },
                      child: Image.asset(
                        Res.ic_profile_placeholder,
                        width: dimen28,
                        height: dimen28,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Text(
                        AppConstants.appName,
                        style: TextStyle(
                            fontSize: dimen16,
                            fontFamily: AppConstants.appFontFamily,
                            fontWeight: AppConstants.boldFont,
                            color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      Res.ic_winner,
                      width: dimen18,
                      height: dimen18,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      Res.ic_msg,
                      width: dimen18,
                      height: dimen18,
                    ),
                  ),
                ],
              ),
              decoration: CommonFunction.headerDecoration()),
          preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
        ),
        backgroundColor: Get.theme.backgroundColor,
        body: Obx(
            () => controller.bottomChildren[controller.selectedIndex.value]),
        bottomNavigationBar: Obx(() => Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26, blurRadius: 15.0, spreadRadius: 1)
                ],
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true,
                showSelectedLabels: true,

                unselectedItemColor: AppColors.hintColor,
                selectedItemColor: CommonFunction.textThemeColor(),
                backgroundColor: Get.theme.backgroundColor,
                selectedLabelStyle: TextStyle(
                    color: CommonFunction.textThemeColor(), fontSize: dimen12),
                unselectedLabelStyle: TextStyle(
                    color: AppColors.hintColor,
                    fontSize: dimen12,
                    fontFamily: AppConstants.appFontFamily),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Container(
                      decoration: BoxDecoration(
                        boxShadow: [CommonFunction.themeOtherShadow],
                      ),
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Image.asset(
                          controller.selectedIndex.value == 0
                              ? Res.ic_home_selected
                              : Res.ic_home_unselect,
                          height: dimen55,
                          width: dimen55),
                    ),
                    label: "home".tr,
                    tooltip: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      decoration: BoxDecoration(
                        boxShadow: [CommonFunction.themeOtherShadow],
                      ),
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Image.asset(
                          controller.selectedIndex.value == 1
                              ? Res.ic_contest_select
                              : Res.ic_contest_unselect,
                          height: dimen55,
                          width: dimen55),
                    ),
                    label: "my_contest".tr,
                    tooltip: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      decoration: BoxDecoration(
                        boxShadow: [CommonFunction.themeOtherShadow],
                      ),
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Image.asset(
                          controller.selectedIndex.value == 2
                              ? Res.ic_wallet_select
                              : Res.ic_wallet_unselect,
                          height: dimen55,
                          width: dimen55),
                    ),
                    label: "wallet".tr,
                    tooltip: "",
                  ),
                  BottomNavigationBarItem(
                    icon: Container(
                      decoration: BoxDecoration(
                        boxShadow: [CommonFunction.themeOtherShadow],
                      ),
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Image.asset(
                          controller.selectedIndex.value == 3
                              ? Res.ic_more_select
                              : Res.ic_more_unselect,
                          height: dimen55,
                          width: dimen55),
                    ),
                    label: "more".tr,
                    tooltip: "",
                  ),
                ],
                currentIndex: controller.selectedIndex.value,
                // selectedItemColor: AppColors.primaryColor,
                onTap: (index) {
                  controller.onSelectChild(index);
                },
              ),
            )));
  }
}
