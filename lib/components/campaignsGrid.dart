// ********************
// created by - Prajapati Chirag
// created at - 18/04
// ********************

import 'package:donation_app/components/campaign_card.dart';
import 'package:donation_app/model/campaign_model.dart';
import 'package:flutter/material.dart';

class CampaignsGrid extends StatefulWidget {
  final List<Campaign> campaigns;

  const CampaignsGrid({super.key, required this.campaigns});

  @override
  State<CampaignsGrid> createState() => _CampaignsGridState();
}

class _CampaignsGridState extends State<CampaignsGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(0),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: .78),
      itemCount: widget.campaigns.length,
      itemBuilder: (context, index) {
        return CampaignCard(
          id: widget.campaigns[index].id,
          imagePath: widget.campaigns[index].imagePath,
          title: widget.campaigns[index].title,
          description: widget.campaigns[index].description,
          collectedAmount: widget.campaigns[index].collectedAmount,
          progress: widget.campaigns[index].progress,
        );
      },
    );
  }
}
