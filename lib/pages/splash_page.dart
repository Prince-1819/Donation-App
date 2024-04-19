// ********************
// created by - Prince Shah
// created at - 16/04
// *******************

/* 
This is the splash screen - first screen when we open the app, it displays for 3 seconds and then redirect to onBoarding page.
*/

// ignore_for_file: sort_child_properties_last
import 'package:donation_app/pages/onbording_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3), // Adjust the duration as needed
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>
              const OnBoardingPage(), // Navigate to the main screen
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // backgroundColor: Colors.amber[400],
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFFfedb7e),
            Color.fromARGB(255, 255, 153, 0),
          ], // Colors you want to blend
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.5], // Stops for each color
          tileMode: TileMode.clamp,
        ),
      ),
      child: Center(
        child: SizedBox(
          child: Image.asset('assets/images/logo_1.png'),
          width: 375,
          height: 237.55,
        ),
      ),
    );
  }
}
