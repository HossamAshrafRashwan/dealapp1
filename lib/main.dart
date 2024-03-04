import 'package:dealapp1/Theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'view/splash_Screen/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deal',
      theme: lightMode,
      home: const SplashScreen(),
    );
  }
}
