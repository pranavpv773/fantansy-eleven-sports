import 'package:fantasy_gaming/screens/upcoming_match/upcoming_match_controller.dart';
import 'package:get/get.dart';

class UpcomingMatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpcomingMatchController>(
      () => UpcomingMatchController(),
    );
  }
}
