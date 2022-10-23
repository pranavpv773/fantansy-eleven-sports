import 'package:get/get.dart';

import 'privacy_policy_support_about_controller.dart';

class PrivacyPolicyAboutBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<PrivacyPolicyAboutController>(
          () => PrivacyPolicyAboutController(),
    );
  }

}