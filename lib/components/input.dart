// ********************
// created by - Prajapati Chirag
// created at - 16/04
// ********************

import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;
  final TextInputType? keyboardType;
  final bool? obscureText;

  const Input({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText ?? false,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(15.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
