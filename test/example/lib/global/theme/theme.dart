import 'package:flutter/material.dart';
import '../global.dart';

import 'dark_theme.dart';
import 'light_theme.dart';
import 'theme_service.dart';

export 'custom_theme_data.dart';

final themeProvider = Provider<AppTheme>((ref) => AppTheme(ref));
final themeModeProvider =
    StateProvider.autoDispose<ThemeMode>((ref) => ThemeMode.light);

class AppTheme extends ThemeService {
  AppTheme(super.read);

  ThemeData get lightTheme => LightTheme.lightTheme;
  ThemeData get darkTheme => DarkTheme.darkTheme;
}
