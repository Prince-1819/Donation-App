// ********************
// created by - Prince Shah
// created at - 16/04
// Select Country
// *******************

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:donation_app/components/country_screen.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatelessWidget {
  CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CountryScreen(),
    );
  }
}
