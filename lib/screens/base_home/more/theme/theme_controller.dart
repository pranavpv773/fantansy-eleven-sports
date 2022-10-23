import 'package:get/get.dart';

import '../../../../utils/routes/app_routes.dart';
import '../../../../utils/theme/theme_service.dart';

class ThemeController extends GetxController {
  var selectIndex = RxInt(-1);

  @override
  void onInit() {
    getAppTheme();
    super.onInit();
  }

  getAppTheme() {
    if (ThemeService().loadThemeFromBox()) {
      selectIndex.value = 1;
    } else {
      selectIndex.value = 0;
    }
  }

  changeAppTheme(index) {
    selectIndex.value = index;
    Future.delayed(Duration.zero, () {
      ThemeService().switchTheme();
    });
    Get.offAllNamed(AppRoutes.initialPage);
  }
}
