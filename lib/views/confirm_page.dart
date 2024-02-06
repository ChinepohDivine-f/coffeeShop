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
                  children: [
                    // CustomAppBar1()
                    Stack(children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset("assets/images/Latte2.jpg")
                      ),
                      Positioned(
                        left: 0, right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: CustomAppBar1(),
                        )),
                      Positioned(
                        top: 280,
                        left: 0, right: 0,
                        bottom: 0,
                        child: Container( 
                        height: 90,
                        decoration: BoxDecoration(color: darkColor2, borderRadius: BorderRadius.circular(30)),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                const Text("Cappucinno", style: TextStyle(fontFamily: 'Poppins', fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),),
                                Text("With oat milk", style: TextStyle(fontFamily: 'Poppins', fontSize: 13.61, color: inactiveColor),)
                              ],),
                              Column(children: [],),
                            ],
                          ),
                        ),
                       ))
                    ],
                    
                    )
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
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MyHomePage()));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        IconButton.outlined(
            onPressed: () {
             // to be continued...
            },
            icon: Icon(
              Icons.heart_broken,
            )),
      ],
    );
  }
}
