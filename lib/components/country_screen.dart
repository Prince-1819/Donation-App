// ********************
// created by - Prince Shah
// created at - 16/04
// Select Country
// *******************

// ignore_for_file: library_private_types_in_public_api, use_super_parameters

import 'package:donation_app/components/button.dart';
import 'package:donation_app/pages/fillprofile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({Key? key}) : super(key: key);

  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  String? selectedCountry;
  List<Map<String, dynamic>> myList = [
    {'flag': 'assets/images/flag_1.png', 'name': 'Australia'},
    {'flag': 'assets/images/flag_2.png', 'name': 'China'},
    {'flag': 'assets/images/flag_3.png', 'name': 'Indonesia'},
    {'flag': 'assets/images/flag_4.png', 'name': 'Malaysia'},
    {'flag': 'assets/images/flag_5.png', 'name': 'Singapore'},
    {'flag': 'assets/images/flag_6.png', 'name': 'Spain'},
    {'flag': 'assets/images/flag_7.png', 'name': 'United Kingdom'},
    {'flag': 'assets/images/flag_8.png', 'name': 'United States'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Row(
            children: [
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.only(top: 40, left: 30),
                  child: Image.asset('assets/images/back.png'),
                ),
                onTap: () {
                  // Go back to previous screen
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Image.asset('assets/images/progress.png'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 35, bottom: 20),
            width: 360,
            child: const Text(
              "Select Your Country",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedCountry = myList[index]['name'];
                });
              },
              child: Card(
                  elevation: 1,
                  margin:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(
                      color: selectedCountry == myList[index]['name']
                          ? const Color(0xFFfebc12)
                          : const Color(0XFFECEFF3),
                      width: 1,
                    ),
                  ),
                  child: SizedBox(
                    height: 60,
                    child: ListTile(
                      leading: Image.asset(myList[index]['flag']),
                      title: Text(myList[index]['name']),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Button(
              buttonText: 'Next',
              onTap: () {
                Get.to(FillProfilePage());
              },
            ),
          ),
        ],
      ),
    );
  }
}
