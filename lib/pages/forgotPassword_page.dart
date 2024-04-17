// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:donation_app/components/auth/forgotPassword_screen.dart';
import 'package:donation_app/components/auth/newPassword_screen.dart';
import 'package:donation_app/components/auth/otp_screen.dart';
import 'package:donation_app/components/header.dart';
import 'package:donation_app/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  int _currentPage = 1;
  void nextPageHandler() {
    setState(() {
      _currentPage += 1;
    });
  }

  void prevPageHandler() {
    if (_currentPage > 1) {
      setState(() {
        _currentPage -= 1;
      });
    } else {
      Get.to(const SigninPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            Header(
              headerText: "Forgot Password?",
              onTap: prevPageHandler,
            ),
            _currentPage == 1
                ? ForgotPasswordScreen(
                    onNext: nextPageHandler,
                  )
                : _currentPage == 2
                    ? OtpScreen(onNext: nextPageHandler)
                    : const NewPasswordScreen()
          ],
        ),
      ),
    );
  }
}
