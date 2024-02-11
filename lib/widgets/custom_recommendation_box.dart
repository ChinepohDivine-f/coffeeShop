import 'dart:ui';
import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomRecommendationBox extends StatelessWidget {
  const CustomRecommendationBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        // width: 90,
        height: 130,

        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            color: Colors.brown,
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  tertiarycolor,
                  darkColor,
                ])),
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12.31),
            decoration: BoxDecoration(
                color: darkColor2, borderRadius: BorderRadius.circular(30)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("assets/images/Latte.jpg")),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                    child: IntrinsicWidth(
                        child: Text("Five Coffee Beans You Must try!",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14.61,
                                color: Colors.white)))),
              ],
            )),
      ),
    );
  }
}
