// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';

class MYSearchBar extends StatelessWidget {
  const MYSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 8,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.08),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 10, right: 10),
                          hintText: 'Help others..',
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.black26)),
                    ),
                  ),
                  Icon(Icons.search, color: Colors.grey),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: IconButton(
            iconSize: 35,
            icon: const Icon(
              Icons.bookmark_rounded,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
