// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:assignment_ui/LoginSignUpUi/screens/screen%20home.dart';
import 'package:flutter/material.dart';

import '../components/Reusable_Text_Field.dart';
import '../constants/constants.dart';
import 'sccreen_login.dart';

class ScreenSignUp extends StatefulWidget {
  const ScreenSignUp({super.key});

  @override
  State<ScreenSignUp> createState() => _ScreenSignUpState();
}

class _ScreenSignUpState extends State<ScreenSignUp> {
  final _formKey = GlobalKey<FormState>();
  var password;
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
                      'CREATE YOUR ACCOUNT',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          letterSpacing: .5,
                          color: Colors.white70,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .15),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: ReusableTextFormField(
                      hintText: 'Full Name',
                      prefixIcon: Icons.person_outline,
                      formValiodator: (name) {
                        if (name == null || name.isEmpty) {
                          return 'Enter your name';
                        }
                        return null;
                      },
                    )),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  child: ReusableTextFormField(
                    hintText: 'Enter Email',
                    prefixIcon: Icons.mail_outline,
                    formValiodator: (email) {
                      if (!email.contains('@') || email.isEmpty) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    child: ReusableTextFormField(
                      obscureText: true,
                      hintText: 'Password',
                      prefixIcon: Icons.lock_outline,
                      suffixIcon: Icons.remove_red_eye,
                      formValiodator: (pass) {
                        password = pass;
                        if (pass.length < 8 || pass.isEmpty) {
                          return 'Invalid password';
                        }
                        return null;
                      },
                    )),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.infinity,
                  child: ReusableTextFormField(
                    obscureText: true,
                    hintText: 'Confirm Password',
                    prefixIcon: Icons.lock_outline,
                    suffixIcon: Icons.remove_red_eye,
                    formValiodator: (cPass) {
                      if (cPass != password) {
                        return "Password Doesn't matcht";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 40),
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
                      'SIGN UP',
                      style: TextStyle(fontSize: 25, color: Colors.white70),
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * .05),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have account?',
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenLogin(),
                            )),
                        child: Text(
                          'Sign In',
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
