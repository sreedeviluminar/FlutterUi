// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_ui/LoginSignUpUi/constants/constants.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/sccreen_login.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/screen_signUp.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenFirst extends StatelessWidget {
  const ScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/loginSignUpAssets/images/main.png',
                ),
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter)),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .3,
              child: Center(
                child: Text(
                  'WELCOME',
                  style: TextStyle(
                      letterSpacing: .5,
                      color: Colors.white70,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .2),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: kThemeColor, width: 2)))),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenSignUp(),
                    )),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(color: kThemeColor, fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                    backgroundColor: MaterialStateProperty.all(kThemeColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                            side: BorderSide(color: kThemeColor, width: 2)))),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenLogin(),
                    )),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .2),
            Container(
              child: Text(
                'Login with Social Media',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width * .35,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FaIcon(
                    FontAwesomeIcons.instagram,
                    color: kThemeColor,
                  ),
                  FaIcon(
                    FontAwesomeIcons.twitter,
                    color: kThemeColor,
                  ),
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: kThemeColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
