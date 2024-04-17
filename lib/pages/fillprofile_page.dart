// ********************
// created by - Prince Shah
// created at - 16/04
// *******************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:donation_app/pages/country_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FillProfilePage extends StatefulWidget {
  FillProfilePage({super.key});

  @override
  State<FillProfilePage> createState() => _FillProfilePageState();
}

class _FillProfilePageState extends State<FillProfilePage> {
  final List<String> genders = ['Male', 'Female', 'Other'];

  String? selectedGender = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Get.to(CountryPage());
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Image.asset('assets/images/progress.png'),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 30),
            width: 370,
            child: const Text(
              "Fill your profile",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            // height: 30,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 60),
                child: Image.asset('assets/images/profile.png'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Input(
                  controller: TextEditingController(),
                  hintText: 'Full Name', // Placeholder text
                  keyboardType: TextInputType.text, // Keyboard type
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Input(
                  controller: TextEditingController(),
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Input(
                  controller: TextEditingController(),
                  hintText: 'Phone Number', // Placeholder text
                  keyboardType: TextInputType.number, // Keyboard type
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFDFE1E7)),
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 60,
                child: DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Select Gender', // Placeholder text
                    border: InputBorder.none, // Hide the default border
                  ),
                  value: selectedGender,
                  onChanged: (String? newValue) {
                    selectedGender = newValue;
                  },
                  items: genders.map<DropdownMenuItem<String>>((String gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                ),
              ),
              const SizedBox(height: 100),
              Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Button(
                    buttonText: 'Complete',
                    onTap: () {},
                  )),
            ],
          )
        ],
      ),
    );
  }
}
