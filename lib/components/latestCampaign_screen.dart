// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/campaign_card.dart';
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
          child: ListView(
            padding: const EdgeInsets.only(left: 30, right: 30),
            scrollDirection: Axis.horizontal,
            children: const [
              CampaignCard(
                  imagePath: "assets/images/campaign-1.png",
                  title: "Bantubarengan",
                  description: "Bantu muslim indonesia ke mekkah.",
                  collectedAmount: "24.000.000",
                  progress: 100),
              SizedBox(
                width: 15,
              ),
              CampaignCard(
                  imagePath: "assets/images/campaign-2.png",
                  title: "nosial project",
                  description: "antu warga pelosokntuk makan siang.",
                  collectedAmount: "50.000.000",
                  progress: 90),
              SizedBox(
                width: 15,
              ),
              CampaignCard(
                  imagePath: "assets/images/campaign-2.png",
                  title: "nosial project",
                  description: "antu warga pelosokntuk makan siang.",
                  collectedAmount: "50.000.000",
                  progress: 120),
            ],
          ),
        ),
      ],
    );
  }
}
