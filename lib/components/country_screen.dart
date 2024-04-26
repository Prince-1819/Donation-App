// ********************
// created by - Prince Shah
// created at - 16/04
// modified at - 18/04
// *******************

/*
In this page, user needs to select one country and after selecting the border color gets changed and
If user is not selecting any country then Next button can't be enable so if user select a country then only they can click on Next button
Next button redirect to fill profile page
*/

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/progressBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
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

  bool isNextButtonEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Image.asset('assets/images/back.png'),
                  onTap: () {
                    Get.back();
                  },
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: ProgressBar(
                      progress: 100,
                      height: 10,
                    ),
                  ),
                ),
              ],
            ),
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
                  isNextButtonEnabled = true;
                });
              },
              child: Card(
                elevation: 0,
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(
                    color: selectedCountry == myList[index]['name']
                        ? const Color(0xFFfebc12)
                        : Colors.black12,
                    width: 1,
                  ),
                ),
                child: SizedBox(
                  height: 60,
                  child: ListTile(
                    leading: Image.asset(myList[index]['flag']),
                    title: Text(myList[index]['name']),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 62),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Button(
              buttonText: 'Next',
              onTap: isNextButtonEnabled
                  ? () {
                      Get.toNamed('fill_profile');
                    }
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
