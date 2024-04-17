// ********************
// created by - Name
// created at - Date
// ********************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:donation_app/pages/home_page.dart';
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
  // This widget is the root of application.
  final List<Widget> pages = const [
    HomePage(),
    SignupPage(),
    SigninPage(),
  ];

  final RxInt selectedIndex = 0.obs;

  void changePageHandler(int index) {
    selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          bottomNavigationBar: BootomNavbar(
            onChange: changePageHandler,
            currentPage: selectedIndex.value,
          ),
          body: Obx(() => pages[selectedIndex.value]),
        ));
  }
}
