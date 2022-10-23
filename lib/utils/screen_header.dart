import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'app_constants.dart';
import 'common_function.dart';
import 'dimens.dart';
import 'res.dart';
import 'theme/app_colors.dart';

class ScreenHeader extends StatelessWidget {
  String title;
  Function? onBack;

  ScreenHeader({required this.title, this.onBack});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65.sp,
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Visibility(
                visible: onBack == null ? false : true,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    Res.ic_back,
                    width: dimen13,
                    height: dimen13,
                  ),
                )),
            Flexible(
              child: Center(
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: dimen16,
                      fontFamily: AppConstants.appFontFamily,
                      fontWeight: AppConstants.boldFont,
                      color: AppColors.whiteColor),
                ),
              ),
            ),
          ],
        ),
        decoration: CommonFunction.headerDecoration());
  }
}
