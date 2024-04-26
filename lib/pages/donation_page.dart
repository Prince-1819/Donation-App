// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/bottomNavbar.dart';
import 'package:donation_app/components/campaignsGrid.dart';
import 'package:donation_app/components/header.dart';
import 'package:donation_app/components/layout.dart';
import 'package:donation_app/components/secondarySearchBar.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  _DonationPage createState() => _DonationPage();
}

class _DonationPage extends State<DonationPage> {
  RxInt selectedIndex = 0.obs;

  void changePageHandler(int index) {
    selectedIndex.value = index;
  }

  void searchFocusedHandler() {
    Get.toNamed("/search_campaign_page");
  }

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
              padding: const EdgeInsets.only(
                  top: 60, left: 24, right: 24, bottom: 16),
              child: Header(
                headerText: "Donations",
                onTap: () {
                  Get.back();
                },
              ),
            ),
            Expanded(
              child: Layout(
                  child: Padding(
                padding: const EdgeInsets.only(top: 24, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: MySecondarySearchBar(
                        onFocus: searchFocusedHandler,
                      ),
                      trailing: Image.asset('assets/images/filter.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16, left: 15, right: 10),
                      child: Text(
                        textAlign: TextAlign.left,
                        "Latest fundraiser",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          children: [CampaignsGrid(campaigns: campaigns)],
                        ),
                      ),
                    )
                  ],
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
