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
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // CustomAppBar1()
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset("assets/images/Latte2.jpg")),
                        const Positioned(
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: CustomAppBar1(),
                            )),
                        Positioned(
                            top: 280,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Container(
                              height: 90,
                              decoration: BoxDecoration(
                                  color: darkColor2,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                              fontSize: 13.61,
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
                            ))
                      ],
                    ),
                     const SizedBox(
                      height: 20,
                    ),
                    // DESCRPTION
                    Text(
                      "Description",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: inactiveColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      text: TextSpan(
                        text:
                            "A Cappuccino is the perfect balance of espresso, steamed milk and foam... ",
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.61,
                        ),
                        children: [TextSpan(text: 'Read More', style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12.61,
                          color: secondaryColor,
                          fontWeight: FontWeight.bold
                        ))]
                      ),
                      
                    ),
                     const SizedBox(
                      height: 20,
                    ),
                    // Size
                    Text(
                      "Size",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: inactiveColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      Wrap(
                        children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: secondaryColor),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:40.0, vertical: 5),
                            child: Text("S", style: TextStyle(color: secondaryColor, fontFamily: 'sF-Fourche', fontSize: 14, ),),
                          ),
                        )
                      ],)
                    ],)
                    // price
                  ],
                ))));
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
        IconButton.outlined(
          // highlightColor: darkColor2,
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        IconButton.outlined(
            onPressed: () {
              // to be continued...
            },
            icon: const Icon(
              Icons.bubble_chart,
            )),
      ],
    );
  }
}
