// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'dart:math';

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:donation_app/model/user_model.dart';
import 'package:donation_app/pages/home_page.dart';
import 'package:donation_app/pages/signin_page.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isChecked = false;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void addUserHandler() {
    UserModel data = UserModel(
        id: Random().nextInt(10000),
        name: nameController.text,
        email: emailController.text,
        password: passwordController.text);
    usersData.add(data);
    nameController.text = "";
    emailController.text = "";
    passwordController.text = "";
    Get.to(const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 111),
      width: 375,
      child: Column(
        children: [
          Button(
            buttonText: "Sign in with google",
            iconUrl: "assets/images/google_logo.png",
            onTap: () {},
          ),
          const SizedBox(height: 24),
          const Text(
            "Or",
            style: TextStyle(color: Colors.black45),
          ),
          const SizedBox(height: 24),
          Input(
            controller: nameController,
            hintText: 'Name', // Placeholder text
            keyboardType: TextInputType.text, // Keyboard type
          ),
          const SizedBox(height: 16),
          Input(
            controller: emailController,
            hintText: 'Email', // Placeholder text
            keyboardType: TextInputType.emailAddress, // Keyboard type
          ),
          const SizedBox(height: 16),
          Input(
            controller: passwordController,
            hintText: 'Password', // Placeholder text
            obscureText: true, // Hide the input
            keyboardType: TextInputType.visiblePassword, // Keyboard type;
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value!;
                  });
                },
              ),
              const SizedBox(
                height: 20,
                child: Text(
                  "I agree to Terms and Privacy Policy",
                  style: TextStyle(color: Colors.amber),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Button(
            buttonText: "Sign up",
            onTap: () {
              addUserHandler();
            },
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Get.to(const SigninPage()); // Navigate to SigninPage when tapped
            },
            child: const Text(
              "Already have an account? Signin",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
