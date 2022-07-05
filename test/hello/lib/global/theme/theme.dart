import 'package:flutter/material.dart';
import '../global.dart';

import 'dark_theme.dart';
import 'light_theme.dart';
import 'theme_helper_service.dart';

export 'custom_theme_data.dart';

final themeProvider = Provider<AppTheme>((ref) => AppTheme());
final themeModeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.system);

class AppTheme extends ThemeHelperService {
  ThemeData get lightTheme => LightTheme.lightTheme;
  ThemeData get darkTheme => DarkTheme.darkTheme;
}
