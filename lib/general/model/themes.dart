import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  ThemeData get lightTheme => _lightTheme;
  ThemeData get darkTheme => _darkTheme;
  ThemeData _lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.blueGrey[300],
      appBarTheme: AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
          titleTextStyle: TextStyle(color: Colors.black)),
      buttonTheme: ButtonThemeData(buttonColor: Colors.pink));
  ThemeData _darkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.blueGrey[800],
      appBarTheme: AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
          titleTextStyle: TextStyle(color: Colors.white)),
      buttonTheme: ButtonThemeData(buttonColor: Colors.green));
}
