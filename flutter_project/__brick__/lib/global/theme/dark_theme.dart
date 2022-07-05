import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
  static ThemeData get darkTheme => _darkTheme();

  static _darkTheme() => ThemeData(
        brightness: Brightness.dark,
		useMaterial3:{{materialThree}},
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.{{darkThemeColor}}, 
        textTheme: GoogleFonts.ubuntuTextTheme(),
      );
}
