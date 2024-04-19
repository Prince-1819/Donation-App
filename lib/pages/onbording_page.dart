// ********************
// created by - Prince Shah
// created at - 16/04
// *******************

/* 
There is a one button on the bottom of the page that redirect on the Sign In page.
*/

import 'package:donation_app/components/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Image.asset('assets/images/logo_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Image.asset('assets/images/children.png'),
          ),
          Container(
            width: 380,
            margin: const EdgeInsets.only(left: 30, top: 40),
            child: const ListTile(
              title: Text(
                "Donation Made Easy",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Ajuda is a platform for philanthropists to make donations to various social programmes and charities around the world.",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 240),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 140),
              child: Button(
                buttonText: 'Start donating',
                onTap: () {
                  Get.toNamed('/sign_in');
                },
              )),
        ],
      ),
    );
  }
}
