import 'package:get/get.dart';

import 'tournament_controller.dart';

class TournamentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TournamentController>(
      () => TournamentController(),
    );
  }
}
