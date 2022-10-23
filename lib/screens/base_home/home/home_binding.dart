import 'package:fantasy_gaming/screens/base_home/home/home_controller.dart';
import 'package:get/get.dart';

class HomeScreenBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeScreenController>(
          () => HomeScreenController(),
    );
  }
}
