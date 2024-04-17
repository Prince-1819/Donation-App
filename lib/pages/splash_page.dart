import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Center(
        child: SizedBox(
          width: 375,
          height: 237.55,
          child: Image.asset('assets/images/logo_1.png'),
        ),
      ),
    );
  }
}
