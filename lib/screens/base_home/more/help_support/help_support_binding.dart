import 'package:fantasy_gaming/screens/base_home/more/help_support/help_support_controller.dart';
import 'package:get/get.dart';

class HelpSupportBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpSupportController>(
      () => HelpSupportController(),
    );
  }
}
