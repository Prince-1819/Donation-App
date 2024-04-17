// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final VoidCallback? onTap;
  final String? iconUrl;
  final String? headerText;

  const Header({super.key, this.iconUrl, this.onTap, this.headerText});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Image.asset("assets/images/back.png"),
        ),
        Expanded(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (widget.iconUrl != null) Image.asset(widget.iconUrl ?? ''),
                if (widget.headerText != null) ...[
                  const SizedBox(
                      width: 10), // adding space between the icon and text
                  Text(
                    widget.headerText ?? "",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(width: 50), // adding space at the right side
      ],
    );
  }
}
