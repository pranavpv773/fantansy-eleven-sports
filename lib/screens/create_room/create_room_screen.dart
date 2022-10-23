import 'package:fantasy_gaming/screens/create_room/create_room_controller.dart';
import 'package:fantasy_gaming/utils/common_function.dart';
import 'package:fantasy_gaming/utils/screen_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreateRoomScreen extends GetView<CreateRoomController> {
  @override
  Widget build(BuildContext context) {
    CommonFunction().statusBarColor();
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      appBar: PreferredSize(
        child: ScreenHeader(title: 'create_room'.tr, onBack: () {}),
        preferredSize: Size(MediaQuery.of(context).size.width, 80.0),
      ),
      body: Container(
        child: Text("CR"),
      ),
    );
  }
}
