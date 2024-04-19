// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:donation_app/model/user_model.dart';
import 'package:donation_app/pages/forgotPassword_page.dart';
import 'package:donation_app/pages/signup_page.dart';
import 'package:donation_app/variables/index.dart';

class SigninScreen extends StatefulWidget {
  SigninScreen({Key? key}) : super(key: key);

  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void siginUserHandler() {
    if (_formKey.currentState!.validate()) {
      UserModel data = UserModel(
        email: emailController.text,
        password: passwordController.text,
      );
      bool userExists = UsersData.any(
          (user) => user.email == data.email && user.password == data.password);
      if (userExists) {
        Get.toNamed('/home_page');
      } else {
        Get.snackbar("Error!", "Invalid Credentials");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 111),
      width: 375,
      child: Form(
        key: _formKey,
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
              hintText: 'Email',
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email address';
                }
                if (!GetUtils.isEmail(value)) {
                  return 'Please enter a valid email address';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            Input(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your password';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Get.toNamed('/forget_password');
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
                Get.toNamed('/sign_up');
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
            ),
          ],
        ),
      ),
    );
  }
}
