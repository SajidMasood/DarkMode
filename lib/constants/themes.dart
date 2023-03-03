import 'package:flutter/material.dart';

// colors ...
const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFFF4667);
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);
const Color primaryClr = bluishClr;
const Color lightModeScaffoldBgCle = Color(0xFFEEEEF1);
const Color darkModeScaffoldBgClr = Color(0xFF060609);
const Color blackClr = darkModeScaffoldBgClr;

//
class MyThemes {
  // this is for light theme.
  static final lightTheme = ThemeData(
    primarySwatch: Colors.grey,
    brightness: Brightness.light,
    scaffoldBackgroundColor: lightModeScaffoldBgCle,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );

  // this is for dark theme.
  static final darkTheme = ThemeData(
    primarySwatch: Colors.grey,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkModeScaffoldBgClr,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
