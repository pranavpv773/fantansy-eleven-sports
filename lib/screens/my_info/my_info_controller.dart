import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyInfoController extends GetxController {
  TextEditingController nameController = new TextEditingController();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController emailNameController = new TextEditingController();
  TextEditingController mobileNumberController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  var seePassword = true.obs;



  @override
  void onInit() {
    nameController.text='demo_name'.tr;
    userNameController.text='demo_username'.tr;
    emailNameController.text='demo_email'.tr;
    mobileNumberController.text='demo_phone_number'.tr;
    passwordController.text='123456';

    super.onInit();

  }
}
