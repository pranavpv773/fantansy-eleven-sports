import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/progress_dialog.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get/get.dart' as getPrefix;

class ResetPasswordController extends GetxController {

  var progressDialog = ProgressDialog();


  getHomeScreen() {
    ProgressDialog progressDialog = ProgressDialog();
    progressDialog.show();
    Future.delayed(const Duration(seconds: 5), () async {
      progressDialog.dismiss();
      CommonFunction.successSnackBar("successful_reset_web".tr);
    });

  }
}
