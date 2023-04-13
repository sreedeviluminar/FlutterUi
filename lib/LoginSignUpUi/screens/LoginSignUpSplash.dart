// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:assignment_ui/LoginSignUpUi/constants/constants.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/LoginSignUpScreen.dart';
import 'package:flutter/material.dart';

class LoginSignUpSplash extends StatefulWidget {
  static String id = 'LoginSignUpSplash';
  const LoginSignUpSplash({super.key});

  @override
  State<LoginSignUpSplash> createState() => _LoginSignUpSplashState();
}

class _LoginSignUpSplashState extends State<LoginSignUpSplash> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => ScreenFirst(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        animationDuration: Duration(seconds: 2),
        splashIconSize: double.infinity,
        splash: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/loginSignUpAssets/images/logo.png'),
            Text(
              'My App',
              style: TextStyle(
                  color: kThemeColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        nextScreen: ScreenFirst(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}
