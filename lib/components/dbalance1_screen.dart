// ********************
// created by - Prince Shah
// created at - 17/04
// *******************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:donation_app/pages/dbalance2_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationBalanceScreen1 extends StatelessWidget {
  const DonationBalanceScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfebc12),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              // later will replace with header component
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.back(); // Navigate to SigninPage when tapped
                  },
                  child: Image.asset('assets/images/back.png'),
                ),
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  "Topup",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Container(
            height: 800,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Colors.white,
            ),
            child: Container(
              margin: const EdgeInsets.only(left: 30),
              child: ListView(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Add",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, right: 40),
                    child: Input(
                      controller: TextEditingController(),
                      hintText: 'RP', // Placeholder text
                      keyboardType: TextInputType.text, // Keyboard type
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 10,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 10,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 10,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 150,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 150,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 150,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 455),
                  Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Button(
                        buttonText: 'Next',
                        onTap: () {
                          Get.to(const DonationBalancePage2());
                        },
                      )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
