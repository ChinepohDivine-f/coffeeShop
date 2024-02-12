import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.text, required this.icon, required this.obsecure,
  });
final String text; 
final IconData icon;
final bool obsecure;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:5.0),
      child: TextField(
        obscureText: obsecure,
        decoration: InputDecoration(
          // hintText: "Find your favourite coffee...",
          
          hintText: text,
          hintStyle: const TextStyle(fontSize: 13.61, fontFamily: 'Poppins'),
          // prefixIcon: const Icon(Icons.search_rounded),
          prefixIcon:  Icon(icon),
          // prefixIconColor: inactiveColor,
          enabled: true,
          enabledBorder: OutlineInputBorder(
              gapPadding: 5,
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(strokeAlign: 13, color: inactiveColor, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(strokeAlign: 13, color: primaryColor, width: 2)),
        ),
      ),
    );
  }
}
