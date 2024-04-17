// ********************
// created by - Prince Shah
// created at - 17/04
// *******************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/popup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationBalanceScreen2 extends StatefulWidget {
  const DonationBalanceScreen2({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DonationBalanceScreen2State createState() => _DonationBalanceScreen2State();
}

class _DonationBalanceScreen2State extends State<DonationBalanceScreen2> {
  String _selectedPaymentMethod = "";

  List<Map<String, String>> myList = [
    {'logo': 'assets/images/payment1.png', 'name': 'Google Pay'},
    {'logo': 'assets/images/payment2.png', 'name': 'Paypal'},
    {'logo': 'assets/images/payment3.png', 'name': 'Amazon Pay'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFfebc12),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
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
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Select Payment Method",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: myList.length,
                        itemBuilder: (context, index) => Card(
                          color: Colors.white,
                          child: RadioListTile<String>(
                            title: Text(myList[index]['name']!),
                            value: myList[index]['name']!,
                            groupValue: _selectedPaymentMethod,
                            onChanged: (value) {
                              setState(() {
                                _selectedPaymentMethod = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.trailing,
                            secondary: Image.asset(myList[index]['logo']!),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Button(
                        buttonText: 'Topup Now',
                        onTap: () {
                          Get.bottomSheet(PopUp(
                            payment_method: _selectedPaymentMethod,
                          ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
