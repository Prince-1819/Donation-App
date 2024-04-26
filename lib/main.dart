// ********************
// created by - Name
// created at - Date
// ********************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:donation_app/pages/country_page.dart';
import 'package:donation_app/pages/dbalance1_page.dart';
import 'package:donation_app/pages/home_page.dart';
import 'package:donation_app/pages/onbording_page.dart';
import 'package:donation_app/pages/signin_page.dart';
import 'package:donation_app/pages/signup_page.dart';
import 'package:donation_app/pages/splash_page.dart';
import 'package:donation_app/pages/transaction_history_page.dart';
import 'package:donation_app/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:donation_app/routes/routes.dart';

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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash_screen',
      getPages: appRoutes(),
    );
  }
}
