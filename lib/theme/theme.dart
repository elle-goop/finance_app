import 'package:flutter/material.dart';

ThemeData AppTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: Palette.mainGrey,
  primaryColorBrightness: Brightness.light,
  accentColor: Colors.green[500],
  accentColorBrightness: Brightness.light,
  scaffoldBackgroundColor: Palette.white,
  iconTheme: IconThemeData(
    color: Palette.mainGrey,
    // size: 19.0,
  ),
  textTheme: TextTheme(
    body1: TextStyle(),
    body2: TextStyle(),
  ),
);

class Palette {
  static const Color white = Colors.white;
  static const Color whiteTransparent = Color.fromRGBO(255, 255, 255, 0.0);
  static const Color mainRed = Color.fromRGBO(234, 57, 40, 1);
  static const Color mainRedT = Color.fromRGBO(234, 57, 40, 0.35);
  static const Color mainBlue = Color.fromRGBO(102, 104, 238, 1);
  static const Color mainBlueT = Color.fromRGBO(102, 104, 238, 0.35);

  static const Color mainPurple = Color.fromRGBO(103, 101, 247, 1);
  static const Color mainPurple2 = Color.fromRGBO(124, 124, 248, 1);
  static const Color mainPurple2T = Color.fromRGBO(124, 124, 248, 0.5);
  static const Color mainGreen = Color.fromRGBO(69, 206, 119, 1);

  static const Color greyLight = Color.fromRGBO(216, 216, 216, 1);

  static const Color mainGrey = Color.fromRGBO(75, 88, 102, 1);
  static const Map<int, Color> grey = const <int,Color> {
    100: Color.fromRGBO(75, 88, 102, 0.12),
    200: Color.fromRGBO(75, 88, 102, 0.22),
    300: Color.fromRGBO(75, 88, 102, 0.32),
    400: Color.fromRGBO(75, 88, 102, 0.42),
    500: Color.fromRGBO(75, 88, 102, 0.52),
    700: Color.fromRGBO(75, 88, 102, 0.72),
    900: Color.fromRGBO(75, 88, 102, 0.9),
  };


  // static const Map<int, Color> yellow = const <int,Color> {
  //   50: const Color(/* some hex code */),
  //   100: const Color(/* some hex code */),
  //   200: const Color(/* some hex code */),
  //   300: const Color(/* some hex code */),
  //   400: const Color(/* some hex code */),
  //   500: const Color(/* some hex code */),
  //   600: const Color(/* some hex code */),
  //   700: const Color(/* some hex code */),
  //   800: const Color(/* some hex code */),
  //   900: const Color(/* some hex code */),
  // };


}


