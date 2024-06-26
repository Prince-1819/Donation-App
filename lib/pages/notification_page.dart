// ********************
// created by - Prince Shah
// created at - 19/04
// *******************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:donation_app/components/notification_screen.dart';
import 'package:donation_app/components/transaction_history_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        child: const Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Row(
                // later will replace with header component
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 20,
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     ; // Navigate to SigninPage when tapped
                  //   },
                  //   child: Image.asset('assets/images/back.png'),
                  // ),
                  SizedBox(
                    width: 140,
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            Expanded(child: NotificationScreen()),
          ],
        ),
      ),
    );
  }
}
