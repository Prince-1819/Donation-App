// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/campaign_card.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';

class LatestCampaign extends StatefulWidget {
  const LatestCampaign({super.key});

  @override
  State<LatestCampaign> createState() => _LatestCampaignState();
}

class _LatestCampaignState extends State<LatestCampaign> {
  saveCampaignHandler(int id) {
    for (int i = 0; i < campaigns.length; i++) {
      if (campaigns[i].id == id) {
        campaigns[i].isSaved = !campaigns[i].isSaved;
        String message =
            campaigns[i].isSaved ? 'Campaign saved!' : 'Campaign unsaved!';
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Campaign Status'),
              content: Text(message),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('OK'),
                ),
              ],
            );
          },
        );
        break; // Once updated, it will breaked
      }
    }
  }

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
                      id: campaigns[index].id,
                      imagePath: campaigns[index].imagePath,
                      title: campaigns[index].title,
                      description: campaigns[index].description,
                      collectedAmount: campaigns[index].collectedAmount,
                      progress: campaigns[index].progress,
                      onLongPress: (id) => saveCampaignHandler(id),
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
