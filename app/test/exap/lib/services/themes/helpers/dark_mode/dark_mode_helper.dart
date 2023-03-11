import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/themes/providers/font_provider.dart';
part 'dark_mode_helper.g.dart';

@riverpod
ThemeData darkTheme(DarkThemeRef ref) {
  final fontFamily = ref.watch(appFontServiceProvider);

  ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorSchemeSeed: Colors.indigo,
      fontFamily: fontFamily,
    );
  }

  return darkTheme();
}
