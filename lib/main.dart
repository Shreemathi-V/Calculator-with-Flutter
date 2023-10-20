import 'package:flutter/material.dart';

import './screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      // home: const MyHomePage(title: "Calculator"),
      home: const SplashScreen(),
    ); // MaterialApp
  }
}
