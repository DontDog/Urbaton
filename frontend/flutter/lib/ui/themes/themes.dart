import 'package:flutter/material.dart';

const defaultPadding = 16.0;
const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);

const primaryDarkColor = Color(0xFF1F3F69);
const canvasDarkColor = Color(0xFF485E7A);
const scaffoldBackgroundDarkColor = Color(0xFF110D24);
const canvas1DarkColor = Color(0xFF252436);
const canvas2DarkColor = Color(0xFF383A60);
const canvas3DarkColor = Color(0xFF797CF2);
const canvas4DarkColor = Color(0xFF35374E);
// const accentCanvasDarkColor = Color(0xFF2A313F);
final actionDarkColor = const Color(0xFF2A313F).withOpacity(0.6);
const textDarkColor = Color.fromARGB(255, 241, 249, 255);
const dividerDark =
    Divider(color: Color.fromARGB(255, 241, 249, 255), height: 1);

final themeDataLight = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: canvasColor,
      iconColor: primaryColor,
      prefixIconColor: primaryColor,
      contentPadding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none,
      ),
    ));

final themeDataDark = ThemeData(
    primaryColor: primaryDarkColor,
    scaffoldBackgroundColor: scaffoldBackgroundDarkColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: textDarkColor,
        backgroundColor: primaryDarkColor,
        shape: const StadiumBorder(),
        maximumSize: const Size(double.infinity, 56),
        minimumSize: const Size(double.infinity, 56),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      hintStyle: TextStyle(color: textDarkColor),
      fillColor: canvasDarkColor,
      iconColor: textDarkColor,
      focusColor: textDarkColor,
      prefixIconColor: textDarkColor,
      contentPadding: EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none,
      ),
    ));

final themeData = themeDataDark;
