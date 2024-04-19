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
  final FormFieldValidator<String>? validator; // New validator parameter

  const Input({
    super.key,
    this.controller,
    this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.validator, // Added validator parameter
  });

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText ?? false,
      validator: widget.validator, // Assign the validator function
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.black26),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.black26), // Change border color to gray
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: Colors.black), // Maintain the same color when focused
          borderRadius: BorderRadius.circular(15.0),
        ),
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
