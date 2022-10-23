import 'package:fantasy_gaming/utils/Log.dart';
import 'package:fantasy_gaming/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logging/logging.dart';
import 'package:sizer/sizer.dart';

import 'utils/lang/localization_service.dart';
import 'utils/routes/app_pages.dart';
import 'utils/routes/app_routes.dart';
import 'utils/theme/app_styles.dart';
import 'utils/theme/theme_service.dart';

Future<void> main() async {
  await GetStorage.init(); // add this
  _initLog();
  runApp(MyApp());
}

void _initLog() {
  Log.init();
  Log.setLevel(Level.ALL);
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        title: AppConstants.appName,
        debugShowCheckedModeBanner: false,
        themeMode: ThemeService().theme,
        theme: AppStyles.lightTheme,
        darkTheme: AppStyles.darkTheme,
        locale: LocalizationService.locale,
        fallbackLocale: LocalizationService.fallbackLocale,
        translations: LocalizationService(),
        getPages: AppPages.pages,
        initialRoute: AppRoutes.initialPage,
        enableLog: true,
      );
    });
  }
}
