// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/auth/signup_screen.dart';
import 'package:donation_app/components/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Header(
                iconUrl: "assets/images/logo-2.png", onTap: () => {Get.back()}),
            const SignupScreen()
          ],
        ),
      ),
    );
  }
}
