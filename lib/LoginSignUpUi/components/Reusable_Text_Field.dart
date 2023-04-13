// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ReusableTextFormField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final FormFieldValidator? formValiodator;
  final bool obscureText;

  const ReusableTextFormField(
      {required this.hintText,
      required this.prefixIcon,
      this.suffixIcon,
      this.formValiodator,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      validator: formValiodator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(prefixIcon),
        suffixIcon: Icon(suffixIcon),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: kTextThemeColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kTextThemeColor, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: kTextThemeColor, width: 2),
        ),
      ),
    );
  }
}
