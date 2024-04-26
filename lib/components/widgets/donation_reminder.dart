import 'package:flutter/material.dart';

class DonationReminderWidget extends StatelessWidget {
  final String text;
  final String trail;

  const DonationReminderWidget({
    super.key,
    required this.text,
    required this.trail,
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
            trailing: Text(
              trail,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
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
