import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DarkTheme {
  static ThemeData get darkTheme => _darkTheme();

  static _darkTheme() => ThemeData(
        brightness: Brightness.dark,
		useMaterial3:true,
        scaffoldBackgroundColor: Colors.black,
        primarySwatch: Colors.blue, 
        textTheme: GoogleFonts.ubuntuTextTheme(),
      );
}
