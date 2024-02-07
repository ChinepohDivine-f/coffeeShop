import 'package:coffeshop/utils/colors.dart';
import 'package:coffeshop/views/page_holder.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
      // brightness: Brightness.dark, 
      useMaterial3: true, 
      visualDensity: VisualDensity.comfortable,
      primarySwatch: Colors.orange,
      primaryColor: primaryColor,
      secondaryHeaderColor: Colors.brown,
      colorScheme: ColorScheme.dark(
        onBackground: darkColor2,
        primary: tertiarycolor,
        onPrimary: inactiveColor
      )
      )
      
    );
  }
}