// ********************
// created by - Prajapati Chirag
// created at - 19/04
// ********************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:donation_app/variables/index.dart';

class NavManagerPage extends StatefulWidget {
  const NavManagerPage({super.key});

  @override
  _NavManagerPageState createState() => _NavManagerPageState();
}

class _NavManagerPageState extends State<NavManagerPage> {
  RxInt selectedIndex = 0.obs;

  void changePageHandler(int index) {
    selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(() => BottomNavBar(
            onChange: changePageHandler,
            currentPage: selectedIndex.value,
          )),
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
        child: Obx(() => pages[selectedIndex.value]),
      ),
    );
  }
}
