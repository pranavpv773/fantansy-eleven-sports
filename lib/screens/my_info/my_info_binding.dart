import 'package:get/get.dart';

import 'my_info_controller.dart';


class MyInfoBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<MyInfoController>(
          () =>MyInfoController(),
    );
  }

}