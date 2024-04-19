import 'package:donation_app/components/searchCampaign_screen.dart';
import 'package:donation_app/components/header.dart';
import 'package:donation_app/components/searchedCampaigns_screen.dart';
import 'package:donation_app/components/secondarySearchBar.dart';
import 'package:donation_app/model/campaign_model.dart';
import 'package:donation_app/pages/home_page.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchCampaignPage extends StatefulWidget {
  const SearchCampaignPage({Key? key}) : super(key: key);

  @override
  State<SearchCampaignPage> createState() => _SearchCampaignPageState();
}

class _SearchCampaignPageState extends State<SearchCampaignPage> {
  void prevPageHandler() {
    Get.to(() => const HomePage());
  }

  List<Campaign> filteredCampaigns = [];
  bool isSearching = false;

  void searchLocationHandler(String searchText) {
    String text = searchText.trimLeft().toLowerCase();
    if (text.trimLeft().isEmpty) {
      setState(() {
        filteredCampaigns = [];
        isSearching = false;
      });
      return;
    }

    setState(() {
      isSearching = true;
      filteredCampaigns = campaigns
          .where((campaign) => campaign.title.toLowerCase().contains(text))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, top: 14),
      child: ListView(
        children: [
          Header(
            onTap: prevPageHandler,
            child: MySecondarySearchBar(
              onChange: (value) => searchLocationHandler(value),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          !isSearching
              ? const SearchCampaignScreen()
              : filteredCampaigns.isEmpty
                  ? const Center(
                      child: Text(
                      "No Campaign Found",
                      style: TextStyle(color: Colors.black38, fontSize: 18),
                    ))
                  : SearchedCampaignsScreen(
                      searchedData: filteredCampaigns,
                    )
        ],
      ),
    );
  }
}
