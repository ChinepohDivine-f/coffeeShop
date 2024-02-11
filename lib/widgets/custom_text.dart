import 'dart:ui';
import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    required this.isSelected,
  });
  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Text(text,
          style: TextStyle(
              color: isSelected ? primaryColor : inactiveColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins")),
    );
  }
}
