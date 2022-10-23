import 'package:fantasy_gaming/screens/base_home/home/home_controller.dart';
import 'package:fantasy_gaming/screens/base_home/more/more_controller.dart';
import 'package:get/get.dart';

import 'wallet_controller.dart';

class WalletBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<WalletController>(
          () => WalletController(),
    );
  }
}
