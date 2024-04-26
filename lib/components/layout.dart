// ********************
// created by - Prajapati Chirag
// created at - 19/04
// ********************

import 'package:donation_app/model/campaign_model.dart';
import 'package:donation_app/variables/index.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  final Widget child;

  const Layout({super.key, required this.child});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  final List<Campaign> savedCampaigns =
      campaigns.where((campaign) => campaign.isSaved).toList();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: widget.child);
  }
}
