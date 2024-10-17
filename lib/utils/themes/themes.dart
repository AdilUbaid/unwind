import 'package:flutter/material.dart';
import 'package:unwind/utils/colors.dart';
import 'package:unwind/utils/themes/custom_themes/appbar_theme.dart';

class CustomTheme {
  CustomTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.purple,
    scaffoldBackgroundColor: purple100,
    appBarTheme: CustomAppbarTheme.customAppBarTheme,
  );
}
