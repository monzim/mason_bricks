import 'package:flutter/material.dart';

import '../global.dart';

class ThemeHelperService {
  //Current theme
  static isDarkMode(BuildContext context) {
    switch (Theme.of(context).brightness) {
      case Brightness.dark:
        return true;
      default:
        return false;
    }
  }

  //Toggle theme mode
  void toggleTheme(WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);

    switch (themeMode) {
      case ThemeMode.light:
        ref.read(themeModeProvider.notifier).update((state) => ThemeMode.dark);
        break;
      default:
        ref.read(themeModeProvider.notifier).update((state) => ThemeMode.light);
    }
  }

  // Set theme mode to system
  void setSystemTheme(WidgetRef ref) {
    ref.read(themeModeProvider.notifier).update((state) => ThemeMode.system);
  }
}
