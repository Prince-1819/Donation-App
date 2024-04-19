// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';

class MySecondarySearchBar extends StatefulWidget {
  final Function(String)? onChange;

  const MySecondarySearchBar({super.key, this.onChange});

  @override
  State<MySecondarySearchBar> createState() => _MySecondarySearchBarState();
}

class _MySecondarySearchBarState extends State<MySecondarySearchBar> {
  TextEditingController txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.0),
        color: const Color(0xFFeceff3),
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.03),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.only(right: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            const Icon(Icons.search, color: Colors.grey),
            Expanded(
              child: TextField(
                controller: txtController,
                onChanged: (value) {
                  widget.onChange!(txtController.text);
                },
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    hintText: 'Search Campaign',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black26)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
