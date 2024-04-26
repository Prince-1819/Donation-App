import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  final String text;
  final Widget widget;

  const SettingsList({
    super.key,
    required this.text,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: ListTile(
            title: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            trailing: widget,
          ),
        ),
        Container(
          decoration: const BoxDecoration(
              border: BorderDirectional(
                  bottom: BorderSide(color: Colors.grey, width: 0))),
        )
      ],
    );
  }
}
