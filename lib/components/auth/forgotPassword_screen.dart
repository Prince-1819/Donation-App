// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final VoidCallback onNext;

  const ForgotPasswordScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 152),
      width: 375,
      child: Column(
        children: [
          Image.asset('assets/images/lock.png'),
          const SizedBox(height: 35),
          const Text(
            "Enter your email for the verification process, we will send 4 digits code to your email.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 35),
          Input(
            controller: TextEditingController(),
            hintText: 'Email', // Placeholder text
            obscureText: true, // Hide the input
            keyboardType: TextInputType.emailAddress, // Keyboard type
          ),
          const SizedBox(height: 146),
          Button(buttonText: "Send", onTap: onNext),
        ],
      ),
    );
  }
}
