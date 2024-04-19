// ********************
// created by - Prince Shah
// created at - 16/04
// *******************

/* 
This page redirect us to the country_screen component
*/

import 'package:donation_app/components/country_screen.dart';
import 'package:flutter/material.dart';

class CountryPage extends StatelessWidget {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CountryScreen(),
    );
  }
}
