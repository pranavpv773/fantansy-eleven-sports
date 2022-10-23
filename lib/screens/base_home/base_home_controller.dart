import 'package:fantasy_gaming/screens/base_home/contest/contest_screen.dart';
import 'package:fantasy_gaming/screens/base_home/home/home_screen.dart';
import 'package:fantasy_gaming/screens/base_home/more/more_screen.dart';
import 'package:fantasy_gaming/screens/base_home/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseHomeController extends GetxController {
  var selectedIndex = 0.obs;

  var bottomChildren = <Widget>[].obs;

  @override
  void onInit() {
    bottomChildren.value = [
      const HomeScreen(),
      const ContestScreen(),
      const WalletScreen(),
      const MoreScreen(),
    ];
    super.onInit();
  }

  onSelectChild(index) {
    selectedIndex.value = index;
  }
}
