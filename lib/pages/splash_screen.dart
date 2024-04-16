import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: Center(
        child: Container(
          child: Image.asset('assets/images/splash.png'),
          width: 375,
          height: 237.55,
        ),
      ),
    );
  }
}
