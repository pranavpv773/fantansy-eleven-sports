import 'dart:async';

import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get.dart' as getPrefix;
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  var isLogin = false;

  @override
  void onInit() {
    goForward();
    super.onInit();
  }

  goForward() async {
    return Timer(const Duration(seconds: 3), () {
      isLogin = GetStorage().read(AppConstants.isLoggedIn) ?? false;
      if (isLogin) {
        Get.offNamed(AppRoutes.baseHome);
      } else {
        Get.offNamed(AppRoutes.register);
      }
    });
  }
}
