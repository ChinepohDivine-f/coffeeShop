import 'package:coffeshop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(
              fit: StackFit.loose,
              alignment: AlignmentDirectional.topStart,
              children: [
                Align(
                  alignment: FractionalOffset.topCenter,
                  child: ClipRRect(child: Image.asset("assets/images/img.jpg"))),
                Positioned.fill(
                    top: 290,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ClipPath(
                      clipper: WaveClipperOne(flip: true, reverse: true),
                      child: Container(
                        decoration: BoxDecoration(color: inactiveColor),
                        child: Column(
                          children: [],
                        ),
                      ),
                    ))
              ]),
        ],
      ),
    ));
  }
}
