// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 66),
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
            hintText: 'Password', // Placeholder text
            obscureText: true, // Hide the input
            keyboardType: TextInputType.visiblePassword, // Keyboard type
          ),
          const SizedBox(height: 20),
          Input(
            controller: TextEditingController(),
            hintText: 'Confirm password', // Placeholder text
            obscureText: true, // Hide the input
            keyboardType: TextInputType.visiblePassword, // Keyboard type
          ),
          const SizedBox(height: 146),
          Button(
            buttonText: "Send",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
