import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  late TextEditingController fullNameController;
  late TextEditingController emailController;
  late TextEditingController phoneNumberController;

  final List<String> genders = ['--Select-Gender--', 'Male', 'Female', 'Other'];
  String? selectedGender = "--Select-Gender--";

  @override
  void onInit() {
    fullNameController = TextEditingController();
    emailController = TextEditingController();
    phoneNumberController = TextEditingController();
    super.onInit();
  }

  void updateFullName(String value) {
    fullNameController.text = value;
  }

  void updateEmail(String value) {
    emailController.text = value;
  }

  void updatePhoneNumber(String value) {
    phoneNumberController.text = value;
  }

  void updateGender(String? value) {
    selectedGender = value;
    update();
  }

  // Method to update all profile data
  void updateProfile({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String selectedGender,
  }) {
    fullNameController.text = fullName;
    emailController.text = email;
    phoneNumberController.text = phoneNumber;
    this.selectedGender = selectedGender;
    update();
  }

  @override
  void onClose() {
    fullNameController.dispose();
    emailController.dispose();
    phoneNumberController.dispose();
    super.onClose();
  }
}
