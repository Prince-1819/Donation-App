// ********************
// created by - Prince Shah
// created at - 17/04
// *******************

import 'package:donation_app/components/button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopUp extends StatelessWidget {
  String payment_method;

  PopUp({super.key, required this.payment_method});

  Map<String, Map<String, dynamic>> method = {
    'Google Pay': {'title': 'Google Pay', 'img': 'assets/images/payment1.png'},
    'Paypal': {'title': 'Paypal', 'img': 'assets/images/payment2.png'},
    'Amazon Pay': {'title': 'Amazon Pay', 'img': 'assets/images/payment3.png'},
  };
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? data = method[payment_method];
    return Scaffold(
      body: SizedBox(
        height: 500,
        // color: Colors.lightBlue,
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom:
                      BorderSide(color: Colors.grey), // Define bottom border
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: ListTile(
                  leading: Image.asset(data!['img']),
                  title: Text(data['title']),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom:
                      BorderSide(color: Colors.grey), // Define bottom border
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ListTile(
                  leading: Image.asset('assets/images/profile1.png'),
                  title: const Text("James Gates"),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  bottom:
                      BorderSide(color: Colors.grey), // Define bottom border
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ListTile(
                  leading: Image.asset('assets/images/visa.png'),
                  title: const Text("Visa ***** 1234"),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Button(
                buttonText: 'Confirm',
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
