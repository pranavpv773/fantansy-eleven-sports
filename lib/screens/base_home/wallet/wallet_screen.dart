import 'package:fantasy_gaming/screens/base_home/wallet/wallet_controller.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/dimens.dart';
import 'package:fantasy_gaming/utils/no_data_screen.dart';
import 'package:fantasy_gaming/utils/res.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletScreen extends GetView<WalletController> {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: NoDataScreen(
                  'data_not_found'.tr, Res.ic_splash_logo, dimen60, dimen60))
        ],
      ),
    );
  }
}
