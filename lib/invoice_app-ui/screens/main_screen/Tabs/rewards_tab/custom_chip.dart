import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class CustomChip extends StatelessWidget {
  final String label;
  final Color? color;

  const CustomChip({super.key, required this.label, this.color = Colors.grey});
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      color: color!,
      strokeWidth: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          label,
          style: TextStyle(color: color),
        ),
      ),
    );
  }
}
