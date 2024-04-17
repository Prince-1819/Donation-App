// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String buttonText;
  final VoidCallback? onTap;
  final String? iconUrl;

  const Button({super.key, required this.buttonText, this.iconUrl, this.onTap});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // setting width to 100%
      child: ElevatedButton(
        onPressed: widget.onTap, // onTap function will call parent function
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(14),
          backgroundColor: const Color(0xFFfebc12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.iconUrl != null) ...[
              Image.asset(widget.iconUrl ?? ""),
              const SizedBox(
                  width: 10), // adding space between the icon and text
            ],
            Text(
              widget.buttonText,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
