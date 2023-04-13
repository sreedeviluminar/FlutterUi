import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String hinttext;

  const CustomInputField({super.key, required this.hinttext});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: const Color(0xff4f86dc),
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        hintText: hinttext,
        hintStyle: TextStyle(color: Colors.grey.shade300),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color(0xff4f86dc))),
      ),
    );
  }
}
