import 'package:fantasy_gaming/screens/base_home/contest/contest_controller.dart';
import 'package:fantasy_gaming/screens/base_home/home/home_controller.dart';
import 'package:fantasy_gaming/screens/base_home/more/more_controller.dart';
import 'package:get/get.dart';

import 'base_home_controller.dart';
import 'wallet/wallet_controller.dart';

class BaseHomeBinding extends Bindings{

  @override
  void dependencies() {
    Get.lazyPut<BaseHomeController>(
          () =>  BaseHomeController(),
    );
    Get.lazyPut<HomeScreenController>(
          () =>  HomeScreenController(),
    );
    Get.lazyPut<ContestController>(
          () =>  ContestController(),
    ); Get.lazyPut<WalletController>(
          () =>  WalletController(),
    );
    Get.lazyPut<MoreController>(
          () =>  MoreController(),
    );
  }

}