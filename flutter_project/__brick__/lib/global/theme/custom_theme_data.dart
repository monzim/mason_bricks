import 'package:flutter/material.dart';

extension CustomThemeOption on ThemeData {
  CustomThemeData get customOption =>
      brightness == Brightness.dark ? _customDarkTheme : _customLightTheme;
}

final _customLightTheme = CustomThemeData(
  kSpace: 10,
  themeIcon: Icons.light_mode,
);

final _customDarkTheme = CustomThemeData(
  kSpace: 10,
  themeIcon: Icons.dark_mode,
  isDarkMode: true,
);

class CustomThemeData {
  final double kSpace;
  final IconData themeIcon;
  final bool isDarkMode;

  CustomThemeData({
    this.kSpace = 10,
    required this.themeIcon,
    this.isDarkMode = false,
  });
}
