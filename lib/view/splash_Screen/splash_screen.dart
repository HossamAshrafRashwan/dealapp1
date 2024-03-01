import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dealapp1/view/onBoarding/onBoarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          SvgPicture.asset(
            'assets/images/splash logo.svg',
            width: 130,
          ),
          const Text(
            'Deal App',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
      // backgroundColor: Colors.blue,
      nextScreen: const OnBoardingScreen(),
      duration: 5000,
      splashIconSize: 250, centered: true,
      animationDuration: const Duration(seconds: 1),
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
    );
  }
}
