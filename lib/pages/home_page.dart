// ********************
// created by - Prajapati Chirag
// created at - 17/04
// modified at - 19/04
// ********************

import 'package:donation_app/components/home_screen.dart';
import 'package:donation_app/components/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 60, left: 24, right: 24, bottom: 16),
          child: MYSearchBar(),
        ),
        Expanded(
          child: HomeScreen(),
        ),
      ],
    );
  }
}
