// ********************
// created by - Prince Shah
// created at - 17/04
// modified at - 18/04
// *******************

/*
In this page, user needs to add an amount or can select amount from below
without entering any amount in the field if user clicked on next then a alert dialog will be shown
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';

class DonationBalanceScreen1 extends StatefulWidget {
  const DonationBalanceScreen1({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DonationBalanceScreen1State createState() => _DonationBalanceScreen1State();
}

class _DonationBalanceScreen1State extends State<DonationBalanceScreen1> {
  TextEditingController rpController = TextEditingController();

  void updateTextField(String value) {
    String numericValue = value.replaceAll(
        RegExp(r'[^0-9]'), ''); // Remove non-numeric characters
    rpController.text = numericValue; // Update the text field
  }

  void showEmptyFieldDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Error"),
          content: const Text("Please enter an amount!"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Center(child: Text("OK")),
            ),
          ],
        );
      },
    );
  }

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
                      controller: rpController,
                      hintText: 'RP', // Placeholder text
                      keyboardType: TextInputType.number, // Keyboard type
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
                              onPressed: () {
                                updateTextField('Rp 10,000');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 10,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                updateTextField('Rp 50,000');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 50,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                updateTextField('Rp 100,000');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 100,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            OutlinedButton(
                              onPressed: () {
                                updateTextField('Rp 150,000');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 150,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                updateTextField('Rp 200,000');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 200,000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                updateTextField('Rp 250,000');
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                              ),
                              child: const Text(
                                'Rp 250,000',
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
                        String rpValue = rpController.text.trim();
                        if (rpValue.isEmpty) {
                          showEmptyFieldDialog();
                        } else {
                          Get.toNamed('/donation_page2');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
