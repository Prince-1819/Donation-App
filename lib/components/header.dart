import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  final VoidCallback? onTap;
  final String? iconUrl;
  final String? headerText;
  final Widget? child;

  Header({Key? key, this.iconUrl, this.onTap, this.headerText, this.child})
      : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: GestureDetector(
            onTap: widget.onTap,
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: (() {
            if (widget.iconUrl != null) {
              return Image.asset(widget.iconUrl ?? '');
            } else if (widget.headerText != null) {
              return Text(
                widget.headerText ?? "",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else if (widget.child != null) {
              return widget.child!;
            } else {
              return const SizedBox.shrink();
            }
          })(),
        ),
      ],
    );
  }
}
