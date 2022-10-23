import 'package:get/get.dart';

import 'tournament_match_controller.dart';

class TournamentMatchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TournamentMatchController>(
          () => TournamentMatchController(),
    );
  }
}
