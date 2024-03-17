import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {

  Locale? _currentLocale;

  static final LanguageProvider instance = LanguageProvider._internal();

  LanguageProvider._internal();

  Locale? get currentLocaleGet => _currentLocale;

  void changeLocale(String locale) {
    if(Locale(locale) == _currentLocale) return;
    _currentLocale = Locale(locale);
    saveLanguageToSp();
    notifyListeners();
  }

   Future<void> loadFromSP() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final sp = prefs.getString("language") ?? "";
    _currentLocale = sp.isEmpty ? null : Locale(sp);
  }

  Future<void> saveLanguageToSp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("language", _currentLocale.toString());
  }
}