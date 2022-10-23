import 'package:fantasy_gaming/screens/forgot_password/forgot_password_controller.dart';
import 'package:get/get.dart';


class ForgotPasswordBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ForgotPasswordController>(
          () => ForgotPasswordController(),
    );
  }

}