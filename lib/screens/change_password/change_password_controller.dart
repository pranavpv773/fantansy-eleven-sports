import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  var newPasswordText = "".obs;
  var conformNewPasswordText = "".obs;
  var seenNewPassword = true.obs;
  var seenConfirmPassword = true.obs;

  onNewPassword(text) {
    newPasswordText.value = text;
  }

  onConfirmPassword(text) {
    conformNewPasswordText.value = text;
  }

  isValid() {
    if (newPasswordText.isEmpty) {
      CommonFunction.failedSnackBar("enter_new_password".tr);
    } else if (conformNewPasswordText.isEmpty) {
      CommonFunction.failedSnackBar("enter_confim_password".tr);
    } else {
      Get.offNamed(AppRoutes.profile);
    }
  }
}
