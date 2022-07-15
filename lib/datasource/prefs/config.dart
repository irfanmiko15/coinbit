import 'package:flutter/foundation.dart';


import 'prefs.dart';

class ConfigPref extends BasePref {
  ConfigPref._() : super('config');
  static ConfigPref instance = ConfigPref._();

  //KEY
  static const String LOCALE = "locale";


  //ACCESSOR
  String? get locale => getString(LOCALE);

  Future<void> setLocale(String locale) => setString(LOCALE, locale);

  
}
