import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:glass/glass.dart';

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
                  darkColor,
                  darkColor2,
                  tertiarycolor,
                ])),
        child: BlurryContainer(
          // width: double.infinity,
          padding: EdgeInsets.all(12.31),
          // color: darkColor,
          // decoration: BoxDecoration(
          //     // color: darkColor,
          //      borderRadius: BorderRadius.circular(30)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset("assets/images/beans.jpg")),
              SizedBox(
                width: 25,
              ),
              Flexible(
                child: Text("Five Coffee Beans You Must try!",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14.61,
                        color: Colors.white)),
              ),
            ],
          ),
        ),
      ).asGlass(clipBorderRadius: BorderRadius.circular(30)),
    );
  }
}
