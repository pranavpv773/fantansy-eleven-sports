import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:fantasy_gaming/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {

  var isLogin = false;
  var levelDetails = {};
  @override
  void onInit() {
    levelDetails={
    'initial_level':'Level up 5',
    'end_level_description':'To reach level 6, play:',
      'end_level_entry_amount_title':'Entry Amount',
      'end_level_entry_amount':'₹6',
    'end_level':'Level 6',
    'level_completion_description':'Level 10: ₹10 Cash Bonus awaits!'
    };
    super.onInit();
  }


logOut(){
  GetStorage().write(AppConstants.isLoggedIn, false);
  Get.offNamed(AppRoutes.login);


}

}
