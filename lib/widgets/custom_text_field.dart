import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Find your favourite coffee...",
        hintStyle: const TextStyle(fontSize: 13.61, fontFamily: 'Poppins'),
        prefixIcon: const Icon(Icons.search_rounded),
        // prefixIconColor: inactiveColor,
        enabled: true,
        enabledBorder: OutlineInputBorder(
            gapPadding: 5,
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(strokeAlign: 13, color: tertiarycolor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(strokeAlign: 13, color: primaryColor)),
      ),
    );
  }
}
