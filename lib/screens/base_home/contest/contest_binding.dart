import 'package:fantasy_gaming/screens/base_home/contest/contest_controller.dart';
import 'package:fantasy_gaming/screens/base_home/home/home_controller.dart';
import 'package:fantasy_gaming/screens/base_home/more/more_controller.dart';
import 'package:get/get.dart';

class ContestBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ContestController>(
          () => ContestController(),
    );
  }
}
