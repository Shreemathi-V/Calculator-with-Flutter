import 'package:flutter/material.dart';

import './MyHomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    await Future.delayed(
      const Duration(seconds: 3),
    );
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const MyHomePage(title: "Calculator"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image(
            image: const AssetImage('assets/images/calci_logo.jpeg'),

            // step 1: create assets folder
            // step 2: create logo.png in assets folder
            // step 3: add image to splash_screen.dart
            // step 4: update the assets folder access pubspec.yaml

            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.33,
          ),
          const SizedBox(
            height: 40,
          ), // create empty spaces
          const Text(
            "Calculator",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      );
    });
  }
}
