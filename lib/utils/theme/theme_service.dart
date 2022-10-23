import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  /// Get isDarkMode info from local storage and return ThemeMode
  ThemeMode get theme => loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  /// Load isDArkMode from local storage and if it's empty, returns false (that means default theme is light)
  bool loadThemeFromBox() => _box.read(_key) ?? false;

  /// Save isDarkMode to local storage
  saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  /// Switch theme and save to local storage
  void switchTheme() {
    Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeToBox(!loadThemeFromBox());
  }
}