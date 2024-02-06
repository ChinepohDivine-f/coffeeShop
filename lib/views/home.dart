import 'dart:ui';

import 'package:coffeshop/utils/colors.dart';
import 'package:coffeshop/views/confirm_page.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize:MainAxisSize.,
          children: [
            // SliverAppBar(
            //   toolbarHeight: 100,
            //   expandedHeight: 200,
            // ),
            const SizedBox(
              height: 10,
            ),
            // find the best for you
            const SizedBox(
              child: IntrinsicWidth(
                child: Text(
                  "Find the best coffee for you",
                  style: TextStyle(
                      fontSize: 36.28,
                      fontWeight: FontWeight.w500,
                      fontFamily: "sf-Fourche"),
                ),
              ),
            ),

            // text field
            const SizedBox(
              height: 30,
            ),
            CustomTextField(),

            // horizontal list view
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 40,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(right: 20),
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomText(
                    text: 'Cappuccino',
                    isSelected: true,
                  ),
                  CustomText(
                    text: 'Expresso',
                    isSelected: false,
                  ),
                  CustomText(
                    text: 'Latte',
                    isSelected: false,
                  ),
                  CustomText(
                    text: 'Black',
                    isSelected: false,
                  ),
                  CustomText(
                    text: 'Hott',
                    isSelected: false,
                  ),
                  CustomText(
                    text: 'Creamy',
                    isSelected: false,
                  ),
                ],
              ),
            ),

            // coffee cards list view horizontal
            // const SizedBox(
            //   height: 20,
            // ),

            SizedBox(
              // height: 300,
              height: 280,
              child: Expanded(
                // height: 210,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CoffeeCart(),
                    CoffeeCart(),
                    CoffeeCart(),
                  ],
                ),
              ),
            ),
            // special for you
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                SizedBox(
                    child: IntrinsicWidth(
                        child: Text(
                  "Special for you",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ))),
              ],
            ),
            // small recommendation
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Flexible(
                fit: FlexFit.tight,
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    CustomRecommendationBox(),
                    CustomRecommendationBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
        height: 150,

        decoration: BoxDecoration(
            backgroundBlendMode: BlendMode.darken,
            color: Colors.brown,
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  secondaryColor,
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
                SizedBox(
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
            borderSide: BorderSide(strokeAlign: 13, color: secondaryColor)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(strokeAlign: 13, color: primaryColor)),
      ),
    );
  }
}

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
