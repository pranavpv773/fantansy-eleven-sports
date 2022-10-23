import 'package:fantasy_gaming/screens/change_password/change_password_controller.dart';
import 'package:get/get.dart';


class ChangePasswordBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(
          () =>ChangePasswordController(),
    );
  }

}