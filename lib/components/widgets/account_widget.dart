//Here is the small components that are used in many pages

import 'package:flutter/material.dart';

// for Options in AccountPage, ex, Settings

class OptionsList extends StatelessWidget {
  final Widget widget;
  final String text;

  const OptionsList({
    super.key,
    required this.widget,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget,
      title: Text(text),
      trailing: const Icon(Icons.navigate_next),
    );
  }
}

//for card used in Account Page, Edit Profile and Top Up

class AccountContainerWidget extends StatelessWidget {
  final Widget widget;
  final String text;
  const AccountContainerWidget({
    super.key,
    required this.widget,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          widget,
          Text(
            text,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
