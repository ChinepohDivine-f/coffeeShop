import "dart:async";

import "package:coffeshop/utils/colors.dart";
import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:coffeshop/utils/exports.dart";

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: 
          // (context) => Auth()
          (context) => MyHomePage()
          ));
    });

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                          color: inactiveColor,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: inactiveColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 5,
                                color: darkColor2,
                                offset: const Offset(30, 30),
                                blurRadius: 4),
                            const BoxShadow(
                                spreadRadius: 5,
                                color: Colors.white12,
                                offset: Offset(-30, -30),
                                blurRadius: 4)
                          ]),
                      child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(9),
                          child: Image.asset(
                              fit: BoxFit.contain, 'assets/images/logo.png'))),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Coffee Shop",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'sF-Fourche',
                          shadows: [
                            Shadow(
                                color: darkColor2,
                                offset: Offset(5, 5),
                                blurRadius: 2)
                          ])),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Container(
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Center(
                  // flex: 2,
                  child: CircularProgressIndicator(
                    backgroundColor: primaryColor,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
