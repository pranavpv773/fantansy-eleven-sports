import 'package:get/get.dart';

class NotificationController extends GetxController {
  var  showNotification = false.obs;
  var  allowNotification = false.obs;
  var  msgNotification = false.obs;



  void toggleshowNotification() => showNotification.value = showNotification.value ? false : true;
  void toggleallowNotification() => allowNotification.value = allowNotification.value ? false : true;
  void togglemsgNotification() => msgNotification.value = msgNotification.value ? false : true;



}
