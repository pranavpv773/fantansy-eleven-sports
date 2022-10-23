import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get.dart' as getPrefix;
import 'package:get_storage/get_storage.dart';

class NewPasswordController extends GetxController{

  var newPasswordText = "".obs;
  var conformPasswordText = "".obs;

  var seePassword = true.obs;
  var seenConformPassword = true.obs;

  onChangedPassword(text) {
    newPasswordText.value = text;
  }

  onConfirmPassword(text) {
    conformPasswordText.value = text;
  }

  isValid(){

    if(newPasswordText.isEmpty){
      CommonFunction.failedSnackBar("enter_password".tr);

    }else if(conformPasswordText.isEmpty){
      CommonFunction.failedSnackBar("enter_conf_password".tr);

    }else{
      GetStorage().write(AppConstants.isLoggedIn, true);
      getPrefix.Get.offAllNamed(AppRoutes.baseHome);
    }

  }
}
