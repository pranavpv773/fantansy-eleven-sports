import 'package:get/get.dart';

import 'change_username_controlller.dart';


class ChangeUsernameBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<ChangeUsernameController>(
          () =>ChangeUsernameController(),
    );
  }

}