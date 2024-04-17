// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';

class DonationLocation extends StatelessWidget {
  const DonationLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Donation Location",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 17),
        Container(
          height: 80,
          margin: const EdgeInsets.only(bottom: 22),
          child: ListView(
            padding: const EdgeInsets.only(left: 30, right: 30),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(
                'assets/images/location-1.png',
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/images/location-2.png',
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/images/location-3.png',
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/images/location-1.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
