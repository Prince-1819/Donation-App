// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:donation_app/components/progressBar.dart';
import 'package:flutter/material.dart';

class CampaignCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;
  final String collectedAmount;
  final double progress;

  const CampaignCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.collectedAmount,
    required this.progress,
  });

  @override
  State<CampaignCard> createState() => _CampaignCardState();
}

class _CampaignCardState extends State<CampaignCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 170,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid, color: Colors.black12),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Image.asset(
              widget.imagePath,
            ),
            Container(
              padding: const EdgeInsets.all(7),
              child: Container(
                alignment: Alignment.topLeft,
                height: 100,
                child: ListView(
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(fontSize: 11),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      widget.description,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    ProgressBar(
                      progress: widget.progress,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Collected",
                          style: TextStyle(fontSize: 11),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          widget.collectedAmount,
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.amber),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
