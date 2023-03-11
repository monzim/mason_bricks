import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/themes/providers/font_provider.dart';
part 'light_mode_helper.g.dart';

@riverpod
ThemeData lightTheme(LightThemeRef ref) {
  final fontFamily = ref.watch(appFontServiceProvider);

  ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      colorSchemeSeed: Colors.indigo,
      fontFamily: fontFamily,
    );
  }

  return lightTheme();
}
