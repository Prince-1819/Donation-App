// ********************
// created by - Name
// created at - Date
// ********************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:donation_app/pages/dbalance1_page.dart';
import 'package:donation_app/pages/home_page.dart';
import 'package:donation_app/pages/savedCampaigns_page.dart';
import 'package:donation_app/pages/searchCampaign_page.dart';
import 'package:donation_app/pages/signin_page.dart';
import 'package:donation_app/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SavedCampaignsPage(),
        ));
  }
}
