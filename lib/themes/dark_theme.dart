import 'package:flutter/material.dart';

const brightness = Brightness.dark;
const primaryColor = Color(0xFF00C569);
const lightColor = Color(0xFFFFFFFF);
const backgroundColor = Color(0xFFF5F5F5);

ThemeData darkTheme() {
  return ThemeData(
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 38,
          fontWeight: FontWeight.w500,
          color: backgroundColor,
        ),
        headlineLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w500,
          color: backgroundColor,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: backgroundColor,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
      ),
      brightness: brightness,
      primaryColor: primaryColor,
      cardColor: Colors.black12,
      indicatorColor: backgroundColor,
      focusColor: backgroundColor);
}
