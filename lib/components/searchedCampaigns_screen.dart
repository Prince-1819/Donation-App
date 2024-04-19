import 'package:donation_app/components/campaign_card.dart';
import 'package:donation_app/model/campaign_model.dart';
import 'package:flutter/material.dart';

class SearchedCampaignsScreen extends StatefulWidget {
  final List<Campaign> searchedData;

  const SearchedCampaignsScreen({super.key, required this.searchedData});

  @override
  State<SearchedCampaignsScreen> createState() =>
      _SearchedCampaignsScreenState();
}

class _SearchedCampaignsScreenState extends State<SearchedCampaignsScreen> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: .78),
      itemCount: widget.searchedData.length,
      itemBuilder: (context, index) {
        return CampaignCard(
          imagePath: widget.searchedData[index].imagePath,
          title: widget.searchedData[index].title,
          description: widget.searchedData[index].description,
          collectedAmount: widget.searchedData[index].collectedAmount,
          progress: widget.searchedData[index].progress,
        );
      },
    );
  }
}
