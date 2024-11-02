import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  static const String themeStatus = 'THEME_STATUS';
  bool _isDarkMode = false;
  bool get getIsDarkMode => _isDarkMode;

  ThemeController() {
    getTheme();
  }

  Future<void> setDarkMode({required bool isDarkMode}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(themeStatus, isDarkMode);
    _isDarkMode = isDarkMode;
    notifyListeners();
  }

  Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool(themeStatus) ?? false;
    notifyListeners();
    return _isDarkMode;
  }
}
