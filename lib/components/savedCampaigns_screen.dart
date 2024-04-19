// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/donationLocation.dart';
import 'package:donation_app/components/latestCampaign_screen.dart';
import 'package:donation_app/components/spotlight_screen.dart';
import 'package:flutter/material.dart';

class SavedCampaignsScreen extends StatelessWidget {
  const SavedCampaignsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: ListView(
          children: const [Spotlight(), LatestCampaign(), DonationLocation()],
        ));
  }
}
