// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  double progress;

  ProgressBar({super.key, required this.progress});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      height: 6.5,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            color: Colors.amber[100],
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.amber,
            ),
            width: widget.progress,
          )
        ],
      ),
    );
  }
}
