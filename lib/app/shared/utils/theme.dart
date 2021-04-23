import 'package:flutter/material.dart';

class ThemeApp {
  static final ThemeApp _singleton = ThemeApp._internal();

  factory ThemeApp() {
    return _singleton;
  }

  ThemeApp._internal();

  static final Color primaryColor = Color(0xFF05F0AA);
  static final Color accentColor = Color(0xFFF7F7F9);
  static final Color textColor = Color(0xFF494848);
  static final Color purple = Color(0xFFCF00F0);
  static final BorderSide borderSide =
      BorderSide(color: Color(0xffD2D2D2), width: 1);

  static ThemeData get getThemeData {
    return ThemeData(
      primaryColor: primaryColor,
      accentColor: accentColor,
      backgroundColor: Colors.white,
      hintColor: Color.fromRGBO(137, 157, 170, 0.3),
      disabledColor: Color(0xFFC4C4C4),
      errorColor: Color(0xFFFF5757),
      fontFamily: 'Material Icons',
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        bodyText1: TextStyle(
            color: accentColor, fontWeight: FontWeight.bold, fontSize: 20),
        bodyText2: TextStyle(color: accentColor, fontWeight: FontWeight.normal),
        headline1: TextStyle(
            color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
        headline2: TextStyle(
            color: accentColor, fontWeight: FontWeight.bold, fontSize: 16),
        headline3: TextStyle(
            color: primaryColor, fontWeight: FontWeight.bold, fontSize: 14),
        button: TextStyle(color: Colors.white),
        caption: TextStyle(color: Color(0xFF839DAA)),
      ),
      bottomAppBarTheme: BottomAppBarTheme(color: primaryColor),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: accentColor),
      ),
      buttonColor: primaryColor,
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: borderSide,
        ),
      ),
    );
  }
}
