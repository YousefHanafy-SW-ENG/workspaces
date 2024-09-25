import 'package:flutter/material.dart';
import 'package:workspace/core/theming/app_bar_theme.dart';
import 'package:workspace/core/theming/app_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      fontFamily: FontFamilies.poppins,
      splashColor: Colors.transparent,
      useMaterial3: false,
      appBarTheme: CustomAppBarTheme.appBarTheme);
}
