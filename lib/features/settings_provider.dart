import 'package:flutter/material.dart';
import 'package:to_do_app/features/settings/pages/settings_view.dart';
import 'package:to_do_app/features/tasks/pages/task_view.dart';

class SettingsProvider extends ChangeNotifier {
  List<Widget> screens = [
    TaskView(),
    SettingsView(),
  ];
  int currentIndex = 0;
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = "en";

  changeLanguage(String newLanguage) {
    if (currentLanguage == newLanguage) return;
    currentLanguage = newLanguage;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  bool isDark() {
    return currentTheme == ThemeMode.dark;
  }
}
