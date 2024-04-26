// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/donationLocation.dart';
import 'package:donation_app/components/latestCampaign_screen.dart';
import 'package:donation_app/components/layout.dart';
import 'package:donation_app/components/spotlight_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
        child: ListView(
      children: const [Spotlight(), LatestCampaign(), DonationLocation()],
    ));
  }
}
