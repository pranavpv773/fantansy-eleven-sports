import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:get/get.dart';

class CurrentPasswordController extends GetxController {
  var conformPasswordText = "".obs;
  var seenConformPassword = true.obs;

  onConfirmPassword(text) {
    conformPasswordText.value = text;
  }

  isValid() {
    if (conformPasswordText.isEmpty) {
      CommonFunction.failedSnackBar("enter_current_password".tr);
    } else {
      Get.offNamed(AppRoutes.changePassword);
    }
  }
}
