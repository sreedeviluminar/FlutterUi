// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:assignment_ui/ContactBook_ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class ContactUiSplash extends StatefulWidget {
  static String id = 'Contact_UiSplash';
  @override
  State<ContactUiSplash> createState() => _ContactUiSplashState();
}

class _ContactUiSplashState extends State<ContactUiSplash> {
  void initState() {
    Timer(
      Duration(milliseconds: 1500),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenLogin(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF1e1e28),
                Color(0xFF232633),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/contacts splashscreen.png',
              scale: 2,
            ),
            SizedBox(
              height: 100,
            ),
            GradientText(
              'ContactBook',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              colors: [
                Color(0xFFbe5cab),
                Color(0xFFe0717d),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
