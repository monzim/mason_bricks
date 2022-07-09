import 'package:flutter/material.dart';

import '../global.dart';

class ThemeService {
  final Reader read;
  ThemeService(this.read);

  bool get isDarkMode => _isDarkMode();

  //Get Current theme status with Provider
  bool _isDarkMode() {
    final mode = read(themeModeProvider);
    switch (mode) {
      case ThemeMode.dark:
        return true;
      default:
        return false;
    }
  }

  //Get Current theme status with contetext
  static isDarkModeContext(BuildContext context) {
    switch (Theme.of(context).brightness) {
      case Brightness.dark:
        return true;
      default:
        return false;
    }
  }

  //Toggle theme mode
  void toggleTheme() {
    final themeMode = read(themeModeProvider);

    switch (themeMode) {
      case ThemeMode.light:
        read(themeModeProvider.notifier).update((state) => ThemeMode.dark);
        break;
      default:
        read(themeModeProvider.notifier).update((state) => ThemeMode.light);
    }
  }

  // Set theme mode to system
  void setSystemTheme() {
    read(themeModeProvider.notifier).update((state) => ThemeMode.system);
  }
}
