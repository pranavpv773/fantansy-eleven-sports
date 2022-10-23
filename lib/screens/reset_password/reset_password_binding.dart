import 'package:fantasy_gaming/screens/login/login_controller.dart';
import 'package:get/get.dart';

import 'reset_password_controller.dart';


class ResetPasswordBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ResetPasswordController>(
          () => ResetPasswordController(),
    );
  }

}