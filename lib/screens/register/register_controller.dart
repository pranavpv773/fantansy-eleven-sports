import 'dart:io';
import 'package:fantasy_gaming/models/auth.dart';
import 'package:fantasy_gaming/network_provider/api_provider.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart' as dio;
import '../../utils/progress_dialog.dart';

class RegisterController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var securityPhraseController = TextEditingController();

  var emailValid = false.obs;

  var emailText = "".obs;
  var passwordText = "".obs;
  var confirmPasswordText = "".obs;
  var securityPhraseText = "".obs;

  var seenConformPassword = true.obs;
  var seePassword = true.obs;

  String stringDeviceType = Platform.operatingSystem;

  ProgressDialog progressDialog = ProgressDialog();

  onChangedEmail(text) {
    emailText.value = text;
  }

  onChangedPassword(text) {
    passwordText.value = text;
  }

  onConfirmPassword(text) {
    confirmPasswordText.value = text;
  }

  onSecurityPhraseText(text) {
    securityPhraseText.value = text;
  }

  isValid() {
    if (!GetUtils.isEmail(emailText.toString())) {
      CommonFunction.failedSnackBar("enter_email".tr);
    } else if (passwordText.isEmpty) {
      CommonFunction.failedSnackBar("enter_password".tr);
    } else if (confirmPasswordText.isEmpty) {
      CommonFunction.failedSnackBar("enter_conf_password".tr);
    } else if (securityPhraseText.isEmpty) {
      CommonFunction.failedSnackBar("enter_security_phrase".tr);
    } else if (passwordText.toString().length < 8) {
      CommonFunction.failedSnackBar("error_pass_length".tr);
    } else if (passwordText.toString() != confirmPasswordText.toString()) {
      CommonFunction.failedSnackBar("error_confirm_pass".tr);
    } else {
      registerApi();
    }
  }

  Future<void> registerApi() async {
    try {
      progressDialog.show();
      dio.FormData params = dio.FormData.fromMap({
        "email": emailText.toString(),
        "password": passwordText.toString(),
        "password_confirmation": confirmPasswordText.toString(),
        "security_phrase": securityPhraseText.toString(),
        "device_type": stringDeviceType.toString(),
        "device_token": ""
      });
      Auth auth = await ApiProvider.base().registerUser(params);
      progressDialog.dismiss();
      if (!auth.error!) {
        GetStorage().write(AppConstants.isLoggedIn, true);
        GetStorage()
            .write(AppConstants.user, auth.data![0].toJson().toString());
        Get.offAllNamed(AppRoutes.baseHome);
        CommonFunction.successSnackBar("Success: ${auth.message}");
      } else {
        CommonFunction.failedSnackBar(auth.message);
      }
    } on HttpException catch (exception) {
      progressDialog.dismiss();
      debugPrint(exception.message);
      CommonFunction.failedSnackBar("Error : ${exception.message}");
    } catch (exception) {
      progressDialog.dismiss();
      debugPrint("Exception occurred: $exception");
      CommonFunction.failedSnackBar("error_signup".tr);
    }
  }

  registerWithGoogle() {
    ProgressDialog progressDialog = ProgressDialog();
    progressDialog.show();
    Future.delayed(const Duration(seconds: 5), () async {
      progressDialog.dismiss();
      CommonFunction.successSnackBar("successful_login".tr);
      Get.offAllNamed(AppRoutes.baseHome);
    });
  }
}
