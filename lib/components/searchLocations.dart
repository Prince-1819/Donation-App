// ********************
// created by - Prajapati Chirag
// created at - 18/04
// ********************

import 'package:flutter/material.dart';

class SearchLocations extends StatefulWidget {
  const SearchLocations({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchLocations> createState() => _SearchLocationsState();
}

class _SearchLocationsState extends State<SearchLocations> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 15.0,
        mainAxisSpacing: 0,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return SizedBox(
          child: Image.asset(
            'assets/images/location-${index % 3 + 1}.png',
          ),
        );
      },
    );
  }
}
