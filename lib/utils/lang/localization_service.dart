import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


import 'en.dart';

class LocalizationService extends Translations {

  final _box = GetStorage();
  final _key = 'lang';

  // Default locale
  static const locale = Locale('en', 'US');
  //Get.deviceLocale

  // fallbackLocale saves the day when the locale gets in trouble
  static const fallbackLocale = Locale('en', 'US');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'en'
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    const Locale('en', 'US'),
  ];

  // Keys and their translations
  // Translations are separated maps in `lang` file
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': en_US,
  };

  // Gets locale from language, and updates the locale
  Future<void> changeLocale(String lang) async {
    final locale = _getLocaleFromLanguage(lang);
    saveLangToBox(lang);
    await Get.updateLocale(locale);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale!;
  }

  String loadLangFromBox() => _box.read(_key) ?? 'en';

  /// Save Lang to local storage
  saveLangToBox(String lang) => _box.write(_key, lang);


}