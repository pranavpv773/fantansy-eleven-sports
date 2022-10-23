


import 'package:fantasy_gaming/screens/base_home/more/notifiaction/notification_controller.dart';
import 'package:get/get.dart';

class NotificationBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<NotificationController>(
          () => NotificationController(),
    );
  }

}