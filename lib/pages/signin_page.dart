// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/auth/signin_screen.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 46),
              height: 40,
              child: Image.asset('assets/images/logo-2.png'),
            ),
            SigninScreen()
          ],
        ),
      ),
    );
  }
}
