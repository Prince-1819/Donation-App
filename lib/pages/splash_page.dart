// ********************
// created by - Prince Shah
// created at - 16/04
// Splash Screen
// *******************

// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: Center(
        child: SizedBox(
          child: Image.asset('assets/images/logo_1.png'),
          width: 375,
          height: 237.55,
        ),
      ),
    );
  }
}
