import 'dart:ui';

import 'package:coffeshop/utils/colors.dart';
import 'package:coffeshop/views/confirm_page.dart';
import 'package:coffeshop/widgets/coffee_cart.dart';
import 'package:coffeshop/widgets/custom_recommendation_box.dart';
import 'package:coffeshop/widgets/custom_text.dart';
import 'package:coffeshop/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

// final List<Coffee> [['latte', false]]

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            const CustomTextField(text: 'Find your favourite cofee...', icon: Icons.search_rounded, obsecure: false,),

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
                    // isSelected: true, ontap: () { 
                    //   setState(() {
                        
                    //   });
                    //  },
                  ),
                  // CustomText(
                  //   text: 'Expresso',
                  //   isSelected: false,
                  // ),
                  // CustomText(
                  //   text: 'Latte',
                  //   isSelected: false,
                  // ),
                  // CustomText(
                  //   text: 'Black',
                  //   isSelected: false,
                  // ),
                  // CustomText(
                  //   text: 'Hott',
                  //   isSelected: false,
                  // ),
                  // CustomText(
                  //   text: 'Creamy',
                  //   isSelected: false,
                  // ),
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
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: const [
                  CoffeeCart(),
                  CoffeeCart(),
                  CoffeeCart(),
                  CoffeeCart(),
                  CoffeeCart(),
                  CoffeeCart(),
                ],
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
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                CustomRecommendationBox(),
                CustomRecommendationBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
