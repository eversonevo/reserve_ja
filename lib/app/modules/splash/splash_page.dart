import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:reserve_ja/app/modules/home/home_page.dart';
import 'package:reserve_ja/app/modules/login/login_page.dart';
import './splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splash: Image.asset(
        'assets/images/splash.jpg',
      ),

      nextScreen: const LoginPage(),
      splashTransition: SplashTransition.fadeTransition,
      //pageTransitionType: PageTransitionType.scale,
      backgroundColor: Colors.blue,
    );
  }
}
