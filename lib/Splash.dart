import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Screens/Onboarding/Onboarding1.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image(
        image: AssetImage('Assets/splash.PNG'),
        height: 300,
        width: 200,
      ),
      logoWidth: 200,
      showLoader: false,

      navigator: OnboardingScreen1(),
      durationInSeconds: 4,
    );
  }
}