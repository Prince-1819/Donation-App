// ********************
// created by - Prince Shah
// created at - 23/04
// *******************

import 'package:donation_app/components/account_screen.dart';
import 'package:donation_app/components/donation_reminder_screen.dart';
import 'package:donation_app/components/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                      Get.back();
                    },
                    child: Image.asset('assets/images/back.png'),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    "Settings",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const Expanded(child: SettingsScreen())
          ],
        ),
      ),
    );
  }
}
