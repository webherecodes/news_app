import 'package:flutter/material.dart';

import 'dark.dart';
import 'light.dart';

class ThemeManager extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ThemeData get lightTheme => LightTheme.theme;
  ThemeData get darkTheme => DarkTheme.theme;
}
