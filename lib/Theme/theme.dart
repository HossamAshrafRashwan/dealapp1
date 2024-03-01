import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  // brightness: Brightness.light,
  // colorScheme: const ColorScheme.light(
  //   primary: Color(0xff0543C1),
  //   onTertiary: Colors.white,
  // ),
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    background: Colors.white,
    primary: Color(0xff0543C1),
    secondary: Color(0xffCDD9F3),
  ),

  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 24,
      color: Color(0xff161618),
    ),
    headlineLarge: TextStyle(
      fontSize: 18,
      color: Color(0xff161618),
    ),
    headlineMedium: TextStyle(
      fontSize: 16,
      color: Color(0xff161618),
    ),
    headlineSmall: TextStyle(
      fontSize: 16,
      color: Color(0xffB4B4B4),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
);
