// ********************
// created by - Prince Shah
// created at - 18/04
// *******************

import 'package:donation_app/components/transaction_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TransactionHistoryPage extends StatefulWidget {
  const TransactionHistoryPage({super.key});

  @override
  State<TransactionHistoryPage> createState() => _TransactionHistoryPageState();
}

class _TransactionHistoryPageState extends State<TransactionHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFfedb7e),
              Color.fromARGB(255, 255, 153, 0),
            ], // Colors you want to blend
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.5], // Stops for each color
            tileMode: TileMode.clamp,
          ),
        ),
        child: Column(
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
                    width: 70,
                  ),
                  const Text(
                    "Transaction",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const Expanded(child: TransactionHistoryScreen()),
          ],
        ),
      ),
    );
  }
}
