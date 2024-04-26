// ********************
// created by - Prajapati Chirag
// created at - 19/04
// modified at - 19/04
// ********************

import 'package:donation_app/components/campaignsGrid.dart';
import 'package:donation_app/components/layout.dart';
import 'package:donation_app/model/campaign_model.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';

class SavedCampaignsScreen extends StatelessWidget {
  SavedCampaignsScreen({super.key});
  final List<Campaign> savedCampaigns =
      campaigns.where((campaign) => campaign.isSaved).toList();

  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: ListView(
        children: [
          savedCampaigns.isNotEmpty
              ? CampaignsGrid(campaigns: savedCampaigns)
              : const Center(
                  child: Text(
                    "No Items Saved",
                    style: TextStyle(fontSize: 20, color: Colors.black38),
                  ),
                )
        ],
      ),
    ));
  }
}
