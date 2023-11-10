import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:quiz_mobile_a_124200038_trisnaadisti/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ); // Material App
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.grey,
      splash: Column(
        children: [
          Image.asset(
            "assets/images/calculator.png",
            height: 150,
            width: 150,
          ),
          SizedBox(height: 40),
          Text(
            "Kuis",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            "Trisna Adisti",
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          Text(
            "(124200038)",
            style: TextStyle(fontSize: 15, color: Colors.black),
          )
        ],
      ),
      nextScreen: const Home(),
      splashIconSize: 250,
      duration: 1000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
    );
  }
}
