# coffeshop

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

PROJECT STRUCTURE

LIb ----- models(use to store the models of the system)[not yet in use] 
    ----- utils ( colors and exports of other files are stored here) 
    ----- views ( stores the various screens of the app) 
          ----- auth ( views for authentication[login/signup])
          * other views are stroed outside
          * page_holder.dart holds the home page, notification and favorite pages
          the different pages can be switch using the bottom navigation bar

    ----- widgets ( this stores useful widget so as to reduce the number of lines of code and increase reusability)


* the splash.dart is the first screen to be seen before anything in the program



Project FLow: 
splash -> auth -> login -> MyHomePage.dart -> ....


If you have any questions please get to me... let's work together
thank you
