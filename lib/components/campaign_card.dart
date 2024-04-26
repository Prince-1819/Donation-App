import 'package:donation_app/components/progressBar.dart';
import 'package:flutter/material.dart';

typedef CallbackAction = void Function(int id);

class CampaignCard extends StatefulWidget {
  final int id;
  final String imagePath;
  final String title;
  final String description;
  final String collectedAmount;
  final double progress;
  final CallbackAction? onLongPress;

  const CampaignCard({
    Key? key,
    required this.id,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.collectedAmount,
    required this.progress,
    this.onLongPress,
  }) : super(key: key);

  @override
  State<CampaignCard> createState() => _CampaignCardState();
}

class _CampaignCardState extends State<CampaignCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        if (widget.onLongPress != null) {
          widget.onLongPress!(widget.id);
        }
      },
      child: Container(
        width: 170,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.solid, color: Colors.black12),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          children: [
            Image.asset(widget.imagePath),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                alignment: Alignment.topLeft,
                height: 100,
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(fontSize: 11),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      widget.description,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 7),
                    ProgressBar(
                      progress: widget.progress,
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Text(
                          "Collected",
                          style: TextStyle(fontSize: 11),
                        ),
                        const SizedBox(width: 7),
                        Text(
                          widget.collectedAmount,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
