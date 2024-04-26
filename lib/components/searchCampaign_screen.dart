// ********************
// created by - Prajapati Chirag
// created at - 18/04
// ********************

import 'package:donation_app/components/searchLocations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchCampaignScreen extends StatefulWidget {
  const SearchCampaignScreen({super.key});

  @override
  State<SearchCampaignScreen> createState() => _SearchCampaignScreenState();
}

class _SearchCampaignScreenState extends State<SearchCampaignScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          child: ListView(
            children: const [
              Text(
                "Popular search",
                style: TextStyle(color: Colors.black38, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Bencana banjir"),
              Text("Berbagi Makan Gratis"),
              Text("Bangun Masjid Nusantara"),
              Text("Bangun Sekolah Pelosok"),
              Text("Bangun Puskesmas Desa")
            ],
          ),
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search location",
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            SearchLocations()
          ],
        ),
      ],
    );
  }
}
