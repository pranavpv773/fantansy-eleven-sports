


import 'package:get/get.dart';

import 'theme_controller.dart';

class ThemeBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(
          () => ThemeController(),
    );
  }

}