import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangeUsernameController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  var userNameText = "".obs;
  var validation = false.obs;
  var sameName = false.obs;
  @override
  void onInit() {
    userNameController.text = Get.arguments;

    super.onInit();
  }

  onChangedName(text) {
    userNameText.value = text;
    validation.value = true;
    sameName.value = false;
  }

  isVaild() {
    if (userNameController.text == Get.arguments ||
        userNameText.value == Get.arguments) {
      sameName.value = true;
      CommonFunction.userAlertText();
    } else {
      Get.back();
    }
  }
}
