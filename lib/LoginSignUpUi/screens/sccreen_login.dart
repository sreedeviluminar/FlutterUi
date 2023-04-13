// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:assignment_ui/LoginSignUpUi/screens/screen%20home.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/screen_signUp.dart';
import 'package:flutter/material.dart';

import '../components/Reusable_Text_Field.dart';
import '../constants/constants.dart';

class ScreenLogin extends StatefulWidget {
  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/loginSignUpAssets/images/main.png',
                  ),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter)),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .3,
                  child: Center(
                    child: Text(
                      'HELLO SIGN IN',
                      textAlign: TextAlign.center,
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
                    child: ReusableTextFormField(
                      formValiodator: (email) {
                        if (!email.contains('@') || email.isEmpty) {
                          return 'Invalid Email';
                        }
                        return null;
                      },
                      hintText: 'Enter your email',
                      prefixIcon: Icons.mail_outline,
                    )),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  child: ReusableTextFormField(
                    obscureText: true,
                    formValiodator: (pass) {
                      if (pass.length < 8 || pass.isEmpty) {
                        return 'Invalid password';
                      }
                      return null;
                    },
                    hintText: 'Enter password',
                    prefixIcon: Icons.lock_outline,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: kTextThemeColor, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                        backgroundColor: MaterialStateProperty.all(kThemeColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(
                                        color: kThemeColor, width: 2)))),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenHome(),
                            ));
                      }
                    },
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .1),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenSignUp(),
                          ),
                        ),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: kTextThemeColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
