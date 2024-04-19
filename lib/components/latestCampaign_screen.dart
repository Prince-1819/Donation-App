// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/campaign_card.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';

class LatestCampaign extends StatelessWidget {
  const LatestCampaign({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            "Latest Campaign",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 17),
        Container(
            height: 223,
            margin: const EdgeInsets.only(bottom: 22),
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 30, right: 15),
              scrollDirection: Axis.horizontal,
              itemCount: campaigns.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    CampaignCard(
                      imagePath: campaigns[index].imagePath,
                      title: campaigns[index].title,
                      description: campaigns[index].description,
                      collectedAmount: campaigns[index].collectedAmount,
                      progress: campaigns[index].progress,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                );
              },
            )),
      ],
    );
  }
}
