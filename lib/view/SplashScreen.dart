import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'HomePage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Expanded(
            child: Center(
              child: LottieBuilder.asset("assets/lottie/Animation.json"),
            ),
          )
        ],
      ),
      nextScreen: const HomePage(),
      splashIconSize: 400,
      backgroundColor: Color.fromRGBO(92, 155, 235, 100),
    );
  }
}
