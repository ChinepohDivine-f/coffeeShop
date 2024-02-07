import 'dart:ui';

import 'package:coffeshop/utils/colors.dart';
import 'package:coffeshop/views/home.dart';
import 'package:coffeshop/views/page_holder.dart';
import 'package:flutter/material.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // CustomAppBar1()
              Container(
                decoration: BoxDecoration(
                    color: darkColor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset("assets/images/Latte.jpg")),
                        const Positioned(
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomAppBar1(),
                            )),
                      ],
                    ),
                    CoffeeSummary()
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // DESCRPTION
              Text(
                "Description",
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 12, color: inactiveColor),
              ),
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                    text:
                        "A Cappuccino is the perfect balance of espresso, steamed milk and... ",
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.61,
                      color: Colors.white
                    ),
                    children: [
                      TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12.61,
                              color: secondaryColor,
                               fontWeight: FontWeight.bold))
                    ]),
              ),
              const SizedBox(
                height: 25,
              ),
              // Size
              Text(
                "Size",
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 12, color: inactiveColor),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizeOutlined(
                      text: 'S',
                    ),
                    SizeFilled(text: 'M'),
                    SizeFilled(text: 'L')
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // price
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 45,
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              
                              "Price",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: inactiveColor),
                            ),
                            RichText(
                                text: TextSpan(
                                    text: '\$ ',
                                    style: TextStyle(
                                        fontFamily: 'sF-Fourche',
                                        fontSize: 16,
                                        color: primaryColor),
                                    children: const [
                                      
                                  TextSpan(
                                      text: '4.20 ',
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 14,
                                          color: Colors.white
                                          ))
                                ]))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text("Buy Now",
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              )
            ],
          )),
    )));
  }
}

class CoffeeSummary extends StatelessWidget {
  const CoffeeSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // key: UniqueKey(),
      height: 90,
      decoration: BoxDecoration(
          color: darkColor2, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cappucinno",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "With oat milk",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12.61,
                      color: inactiveColor),
                )
              ],
            ),
            const Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}

class SizeOutlined extends StatelessWidget {
  const SizeOutlined({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: secondaryColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "S",
            style: TextStyle(
              color: secondaryColor,
              fontFamily: 'sF-Fourche',
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class SizeFilled extends StatelessWidget {
  const SizeFilled({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        // color: darkColor2,
        width: double.maxFinite,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: darkColor2,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: darkColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            text,
            style: TextStyle(
              color: inactiveColor,
              fontFamily: 'sF-Fourche',
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomAppBar1 extends StatelessWidget {
  const CustomAppBar1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton.filled(
          // highlightColor: darkColor2,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        IconButton.filled(
            onPressed: () {
              // to be continued...
            },
            icon: const Icon(
              Icons.favorite,
            )),
      ],
    );
  }
}
