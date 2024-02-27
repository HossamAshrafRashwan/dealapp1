import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Color(0xff0543C1),
    onTertiary: Colors.white,
  ),
);

ThemeData darkMode = ThemeData(
  useMaterial3: true,
);
