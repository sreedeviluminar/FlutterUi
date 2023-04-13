import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color kInputFillColor = Color(0xFF323444);
const Color kInputFocusBorderColor = Color(0xFF828492);
const Color kEnabledBorderColor = Color(0xFF323444);
const Color kHintTextColor = Color(0xFF828492);

OutlineInputBorder kfocusBorderStyle = OutlineInputBorder(
  borderSide: const BorderSide(
    color: kInputFocusBorderColor,
  ),
  borderRadius: BorderRadius.circular(50.0),
);

OutlineInputBorder kBorderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(50),
    ),
    borderSide: BorderSide(width: 0));

OutlineInputBorder kenabledBorderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
    borderSide: BorderSide(width: 0, color: kEnabledBorderColor));
OutlineInputBorder kErrorBorderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
    borderSide: BorderSide(width: 0, color: Color(0xFFe0717d)));
OutlineInputBorder kFocussedErrorBorderStyle = const OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(50.0)),
    borderSide: BorderSide(width: 0, color: Color(0xFFe0717d)));

TextStyle kErrorStyle = const TextStyle(color: Color(0xFFe0717d));

const kHintTextStyle = TextStyle(color: Color(0xFF828492));
