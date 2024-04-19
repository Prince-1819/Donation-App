import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: ListView(
        children: [
          ListTile(
            leading: Image.asset('assets/images/notification.png'),
            title: Text("Donation has been sent to Social Project."),
            subtitle: Text(
                "Lorem ipsum dolor sit amet consectetur. Nunc imperdiet ornare aliquet enim."),
          )
        ],
      ),
    );
  }
}
