import 'package:fantasy_gaming/screens/current_password/current_passwordcontroller.dart';
import 'package:get/get.dart';


class CurrentPasswordBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<CurrentPasswordController>(
          () =>CurrentPasswordController(),
    );
  }

}