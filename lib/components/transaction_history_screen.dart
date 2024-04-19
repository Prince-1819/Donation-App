// ********************
// created by - Prince Shah
// created at - 18/04
// *******************

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionHistoryScreen extends StatelessWidget {
  TransactionHistoryScreen({Key? key}) : super(key: key);

  final List<Map<String, String>> thisMonthList = [
    {
      'logo': 'assets/images/plus.png',
      'title': 'Top up balance',
      'subTitle': '5 Apr 2024',
      'amount': '+Rp 50,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bencana Alama Aceh',
      'subTitle': '4 Apr 2024',
      'amount': '-Rp 25,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bangun Masjid',
      'subTitle': '4 Apr 2024',
      'amount': '-Rp 25,000'
    },
    {
      'logo': 'assets/images/plus.png',
      'title': 'Top up balance',
      'subTitle': '3 Apr 2024',
      'amount': '+Rp 50,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bangun Masjid',
      'subTitle': '1 Apr 2024',
      'amount': '-Rp 10,000'
    },
  ];

  final List<Map<String, String>> lastMonthList = [
    {
      'logo': 'assets/images/minus.png',
      'title': 'Banjir Demak',
      'subTitle': '29 Mar 2024',
      'amount': '-Rp 50,000'
    },
    {
      'logo': 'assets/images/minus.png',
      'title': 'Bantuan Sosial',
      'subTitle': '39 Mar 2024',
      'amount': '-Rp 50,000'
    },
    {
      'logo': 'assets/images/plus.png',
      'title': 'Top up balance',
      'subTitle': '25 Mar 2024',
      'amount': '+Rp 110,000'
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
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            ListTile(
              title: const Text("SearchBar goes here"),
              trailing: Image.asset('assets/images/filter.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                "This month",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: 350,
                    child: Column(
                      children: thisMonthList.map((item) {
                        return ListTile(
                          leading: Image.asset(item['logo']!),
                          title: Text(item['title']!),
                          subtitle: Text(item['subTitle']!),
                          trailing: Text(
                            item['amount']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    height: 350,
                    child: Column(
                      children: thisMonthList.map((item) {
                        return ListTile(
                          leading: Image.asset(item['logo']!),
                          title: Text(item['title']!),
                          subtitle: Text(item['subTitle']!),
                          trailing: Text(
                            item['amount']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
