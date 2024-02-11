import 'dart:ui';
import 'package:coffeshop/utils/colors.dart';
import 'package:coffeshop/views/confirm_page.dart';
import 'package:flutter/material.dart';

class CoffeeCart extends StatelessWidget {
  const CoffeeCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
        onTap: () { 
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ConfirmPage()));
         },
        child: Container(
          // padding: EdgeInsets.all(12.31),
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: secondaryColor,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [secondaryColor, tertiarycolor, darkColor])),
          child: Container(
            padding: EdgeInsets.all(12.31),
            decoration: BoxDecoration(
                backgroundBlendMode: BlendMode.overlay,
                borderRadius: BorderRadius.circular(30),
                color: darkColor2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              "assets/images/Latte.jpg",
                            ),
                          ),
                          Positioned(
                              left: 90,
                              right: 0,
                              // bottom: 0,
                              top: 0,
                              child: SizedBox(
                                height: 20,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: darkColor2,
                                      borderRadius: const BorderRadius.only(
                                          bottomLeft: Radius.elliptical(120, 100),
                                          topRight: Radius.circular(90))),
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 10,),
                                      Icon(
                                        Icons.star_rounded,
                                        color: primaryColor,
                                        size: 12.61,
                                      ),
                                      const Text(
                                        "4.5",
                                        style: TextStyle(
                                            fontFamily: 'sf-Fourche',
                                            color: Colors.white,
                                            fontSize: 10.61,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Latte",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Colors.white),
                      ),
                      Text("With free milk",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10.61,
                              color: inactiveColor))
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 5.61),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12),
                                children: const [
                              TextSpan(
                                  text: '4.99',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'sf-Fourche',
                                      fontSize: 12))
                            ])),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(child: Icon(Icons.add)),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
