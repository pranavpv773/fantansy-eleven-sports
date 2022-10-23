import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/progress_dialog.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  var emailController = TextEditingController();
  var securityPhraseController = TextEditingController();

  var emailText = "".obs;
  var securityPhraseText = "".obs;

  onChangedEmail(text) {
    emailText.value = text;
  }

  onSecurityPhraseText(text) {
    securityPhraseText.value = text;
  }

  isValid() {
    if (!GetUtils.isEmail(emailText.toString()) && securityPhraseText.isEmpty) {
      CommonFunction.failedSnackBar("enter_forgot_validation".tr);
    } else {
      forgotPasswordApi();
    }
  }

  forgotPasswordApi() {
    ProgressDialog progressDialog = ProgressDialog();
    progressDialog.show();
    Future.delayed(const Duration(seconds: 5), () async {
      progressDialog.dismiss();
      Get.offNamed(AppRoutes.resetPassword);
    });
  }
}
