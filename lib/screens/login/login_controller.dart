import 'dart:io';

import 'package:fantasy_gaming/models/auth.dart';
import 'package:fantasy_gaming/network_provider/api_provider.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/progress_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:dio/dio.dart' as dio;
import '../../utils/progress_dialog.dart';

import '../../utils/routes/app_routes.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var emailText = "".obs;
  var passwordText = "".obs;
  var seePassword = true.obs;

  onChangedEmail(text) {
    emailText.value = text;
  }

  onChangedPassword(text) {
    passwordText.value = text;
  }

  ProgressDialog progressDialog = ProgressDialog();

  isValid() {
    if (!GetUtils.isEmail(emailText.toString())) {
      CommonFunction.failedSnackBar("enter_email".tr);
    } else if (passwordText.isEmpty) {
      CommonFunction.failedSnackBar("enter_password".tr);
    } else {
      loginApi();
    }
  }

  Future<void> loginApi()  async {
    try {
      progressDialog.show();
      dio.FormData params = dio.FormData.fromMap({
        "email":emailText.toString(),
        "password":passwordText.toString(),
      });
      Auth auth = await ApiProvider.base().loginUser(params);
      progressDialog.dismiss();
      if (!auth.error!) {
        GetStorage().write(AppConstants.isLoggedIn, true);
        GetStorage().write(AppConstants.user, auth.data![0].toJson().toString());
        Get.offAllNamed(AppRoutes.baseHome);
        CommonFunction.successSnackBar("Success: ${auth.message}");
      }else{
        CommonFunction.failedSnackBar(auth.message);
      }
    } on HttpException catch (exception) {
      progressDialog.dismiss();
      debugPrint(exception.message);

      CommonFunction.failedSnackBar("Error : ${exception.message}");
    } catch (exception) {
      progressDialog.dismiss();
      debugPrint("Exception occurred: $exception");
      CommonFunction.failedSnackBar("error_login".tr);
    }
  }


  loginWithGoogle() {
    ProgressDialog progressDialog = ProgressDialog();
    progressDialog.show();
    Future.delayed(const Duration(seconds: 5), () async {
      progressDialog.dismiss();
      CommonFunction.successSnackBar("successful_login".tr);
      Get.offAllNamed(AppRoutes.baseHome);
    });
  }

}
