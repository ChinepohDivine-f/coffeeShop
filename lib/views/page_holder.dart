
import 'dart:ui';

import 'package:coffeshop/utils/colors.dart';
import 'package:coffeshop/views/favourites.dart';
import 'package:coffeshop/views/home.dart';
import 'package:coffeshop/views/notification.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    // Add your pages/widgets here
    PlaceholderWidget(const Home()),
    PlaceholderWidget(const Favourite()),
    PlaceholderWidget(const Notifications()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
              Row(
                children: [
                  Switch(
                    activeTrackColor: primaryColor,
                    inactiveThumbColor: inactiveColor,
                    activeColor: secondaryColor,
                    value: true, onChanged: (isSwitched){
                    setState(() {
                      // isSwitched ?
                    });
                  }),
                  IconButton(onPressed: () {}, icon: Icon(Icons.person_rounded)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: _pages[_currentIndex],
      // bottom nav bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: primaryColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}

// place holder widget
class PlaceholderWidget extends StatelessWidget {
  final child;

  PlaceholderWidget(this.child);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: child
    );
  }
}
