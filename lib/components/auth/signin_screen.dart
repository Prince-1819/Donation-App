// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:donation_app/model/user_model.dart';
import 'package:donation_app/pages/forgotPassword_page.dart';
import 'package:donation_app/pages/signup_page.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void siginUserHandler() {
    UserModel data = UserModel(
        email: emailController.text, password: passwordController.text);
    bool userExists = false;
    for (var user in usersData) {
      if (user.email == data.email && user.password == data.password) {
        userExists = true;
        break;
      }
    }
    if (userExists) {
      // from here we will redirect user to home page
    } else {
      // here show notification invalid credentials
    }
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
            controller: emailController,
            hintText: 'Email', // Placeholder text
            keyboardType: TextInputType.emailAddress, // Keyboard type
          ),
          const SizedBox(height: 16),
          Input(
            controller: passwordController,
            hintText: 'Password', // Placeholder text
            obscureText: true, // Hide the input
            keyboardType: TextInputType.visiblePassword, // Keyboard type
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              Get.to(
                  const ForgotPasswordPage()); // Navigate to SigninPage when tapped
            },
            child: Container(
              width: double.infinity,
              alignment: Alignment.bottomRight,
              child: const Text(
                "Forgot password?",
                style: TextStyle(color: Colors.amber),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Button(
            buttonText: "Sign in",
            onTap: () {
              siginUserHandler();
            },
          ),
          const SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Get.to(const SignupPage()); // Navigate to SigninPage when tapped
            },
            child: const Text(
              "Don't have an account? Signup",
              style: TextStyle(color: Colors.black54, fontSize: 16),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "By signing in you accept the Terms of Services and Privacy Policy.",
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
