import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:coffeshop/utils/exports.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Align(
            alignment: FractionalOffset.topCenter,
            child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: ClipRRect(
                    // borderRadius: BorderRadius.only(
                    //     bottomLeft: Radius.elliptical(100, 120)),
                    child: Image.asset('assets/images/holding_coffee.jpg'))),
          ),
          Positioned(
              top: 360,
              bottom: 0,
              right: 0,
              left: 0,
              child: ClipPath(
                clipBehavior: Clip.antiAlias,
                // clipper: RRect.fromLTRBR(left, top, right, bottom, radius)
                clipper: WaveClipperTwo(reverse: true, flip: true),
                child: Container(
                    decoration: BoxDecoration(
                      color: inactiveColor,
                      // borderRadius: BorderRadius.only(topRight: Radius.circular(70))
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 40, 30, 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Text("Welcome to Coffee Shop",
                              style: TextStyle(
                                  fontFamily: 'sF-Fourche',
                                  fontSize: 21,
                                  color: darkColor,
                                  fontWeight: FontWeight.bold)),
                          const SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: Text(

                                "Get wide range of speciality coffee, tea and bevrages",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Colors.white)),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          GestureDetector(
                            
                              onTap: () {
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));

                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: secondaryColor,
                                  boxShadow: [
                                    BoxShadow(color: darkColor, offset: Offset(2, 2), blurRadius: 5), 
                                    BoxShadow(color: darkColor2, offset: Offset(-5, 5), blurRadius: 10)
                                  ]
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 15),
                                    child: Text("Sign In",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color: Colors.white)),
                                  )))
                        ],
                      ),
                    )),
              ))
        ]),
      ),
    );
  }
}
