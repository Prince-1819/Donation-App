// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OtpScreen extends StatelessWidget {
  var onNext;

  OtpScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 152),
      width: 375,
      child: Column(
        children: [
          Image.asset('assets/images/card.png'),
          const SizedBox(height: 35),
          const Text(
            "Enter 4 digits code that you received on your email.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 70,
                child: Input(
                  controller: TextEditingController(),
                  obscureText: true, // Hide the input
                  keyboardType: TextInputType.number, // Keyboard type
                ),
              ),
              SizedBox(
                width: 70,
                child: Input(
                  controller: TextEditingController(),
                  obscureText: true, // Hide the input
                  keyboardType: TextInputType.number, // Keyboard type
                ),
              ),
              SizedBox(
                width: 70,
                child: Input(
                  controller: TextEditingController(),
                  obscureText: true, // Hide the input
                  keyboardType: TextInputType.number, // Keyboard type
                ),
              ),
              SizedBox(
                width: 70,
                child: Input(
                  controller: TextEditingController(),
                  obscureText: true, // Hide the input
                  keyboardType: TextInputType.number, // Keyboard type
                ),
              ),
            ],
          ),
          const SizedBox(height: 146),
          Button(
            buttonText: "Confirm",
            onTap: () {
              onNext();
            },
          ),
        ],
      ),
    );
  }
}
