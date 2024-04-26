// ********************
// created by - Prince Shah
// created at - 20/04
// ********************

import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/input.dart';
import 'package:donation_app/components/progressBar.dart';
import 'package:donation_app/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FillProfilePage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GetBuilder<ProfileController>(
        builder: (_) => Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.always,
          child: ListView(
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
                      child: ProgressBar(
                        progress: 200,
                        height: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30),
                width: 370,
                child: const Text(
                  "Fill your profile",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                ),
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
                      controller: _profileController.fullNameController,
                      hintText: 'Full Name',
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Input(
                      controller: _profileController.emailController,
                      hintText: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email address';
                        }
                        if (!GetUtils.isEmail(value)) {
                          return 'Please enter a valid email address';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Input(
                      controller: _profileController.phoneNumberController,
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 60,
                    child: Center(
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          hintText: 'Select Gender',
                          border: InputBorder.none,
                        ),
                        value: _profileController.selectedGender,
                        onChanged: _profileController.updateGender,
                        items: _profileController.genders
                            .map<DropdownMenuItem<String>>((String gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(
                              gender,
                              style: TextStyle(
                                color: gender == "--Select-Gender--"
                                    ? Colors.black26
                                    : Colors.black,
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 120),
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Button(
                      buttonText: 'Complete',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print(
                              'Full Name: ${_profileController.fullNameController.text}');
                          print(
                              'Email: ${_profileController.emailController.text}');
                          print(
                              'Phone Number: ${_profileController.phoneNumberController.text}');
                          print('Gender: ${_profileController.selectedGender}');
                          Get.toNamed('home_page');
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
