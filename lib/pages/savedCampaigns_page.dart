// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:donation_app/components/header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class SavedCampaignsPage extends StatefulWidget {
  const SavedCampaignsPage({super.key});

  @override
  _SavedCampaignsPage createState() => _SavedCampaignsPage();
}

class _SavedCampaignsPage extends State<SavedCampaignsPage> {
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 60, left: 24, right: 24, bottom: 16),
              child: Header(
                headerText: "Saved",
                onTap: () {
                  Get.back();
                },
              ),
            ),
            Expanded(
              child: SavedCampaignsPage(),
            ),
          ],
        ),
      ),
    );
  }
}
