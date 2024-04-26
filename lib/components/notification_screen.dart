// ********************
// created by - Prince Shah
// created at - 19/04
// ********************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List myList = [
    {
      'title': 'Donation has been sent to Social Project.',
      'subtitle':
          'Lorem ipsum dolor sit amet consectetur. Nunc imperdiet ornare aliquet enim.',
      'date': '5 Apr 2024'
    },
    {
      'title': 'Donation has been sent to Unicef.',
      'subtitle':
          'Lorem ipsum dolor sit amet consectetur. Nunc imperdiet ornare aliquet enim.',
      'date': '2 Apr 2024'
    },
    {
      'title': 'Donation has been sent to Social Project.',
      'subtitle':
          'Lorem ipsum dolor sit amet consectetur. Nunc imperdiet ornare aliquet enim.',
      'date': '2 Apr 2024'
    },
    {
      'title': 'Donation has been sent to Social Project.',
      'subtitle':
          'Lorem ipsum dolor sit amet consectetur. Nunc imperdiet ornare aliquet enim.',
      'date': '1 Apr 2024'
    },
  ];

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
      child: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (context, index) => Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom:
                        BorderSide(color: Color.fromARGB(255, 231, 226, 226)),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 30,
                      ),
                      Image.asset('assets/images/notification.png'),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 300,
                            height: 30,
                            child: Text(
                              myList[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              myList[index]['subtitle'],
                              style: const TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                              width: 300,
                              height: 30,
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                myList[index]['date'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 10),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              )
          // ],
          ),
    );
  }
}
