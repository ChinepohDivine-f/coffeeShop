import 'dart:ui';
import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  

  const CustomText({
    super.key,
    required this.text,
    // required this.isSelected, required this.ontap,
  });
  final String text;
  final bool _isSelected = false;
  // final Function()? ontap;

  @override
  State<CustomText> createState() => _CustomTextState();
}



class _CustomTextState extends State<CustomText> {


  
  @override
  
  Widget build(BuildContext context) {
    // bool isSelected;
    // bool isSelected;
    return GestureDetector(
      onTap: _changeColor,
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 5, bottom: 5),
        child: Text(widget.text,
            style: TextStyle(
                color: widget._isSelected ? primaryColor : inactiveColor,
                fontSize: 14,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins")),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      // _isSelected = !_isSelected;
    });
  }
}
