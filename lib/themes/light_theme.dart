import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);
const dangerColor = Color(0xFFFF0000);
const unselectedColor = Color.fromRGBO(0, 0, 0, 0.5);

ThemeData lightTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 38,
        fontWeight: FontWeight.w500,
      ),
      headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: unselectedColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    ),
    primaryColor: primaryColor,
    cardColor: lightColor,
    unselectedWidgetColor: unselectedColor,
    indicatorColor: Colors.black,
    focusColor: backgroundColor,
  );
}
