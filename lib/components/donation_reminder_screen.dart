import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/layout.dart';
import 'package:donation_app/components/widgets/donation_reminder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DonationReminderScreen extends StatefulWidget {
  const DonationReminderScreen({Key? key});

  @override
  State<DonationReminderScreen> createState() => _DonationReminderScreenState();
}

class _DonationReminderScreenState extends State<DonationReminderScreen> {
  String _selectedDate = '1';
  String _selectedFrequency = 'Month'; // Default selected frequency
  String _selectedTime = '';

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        children: [
          GestureDetector(
            onTap: _showFrequencyDialog,
            child: DonationReminderWidget(
              text: 'Frequency',
              trail: _selectedFrequency,
            ),
          ),
          GestureDetector(
            onTap: _showDateDialog,
            child: DonationReminderWidget(
              text: 'Date',
              trail: _selectedDate,
            ),
          ),
          const DonationReminderWidget(
            text: 'Time',
            trail: '5:20',
          ),
          const SizedBox(
            height: 430,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 24, right: 24),
            child: Button(
              buttonText: 'Save',
              onTap: () {
                Get.toNamed('/account_page');
              },
            ),
          ),
        ],
      ),
    );
  }

  // **************************************** FUNCTIONS ***********************************************

//frequency (month,week,day)

  void _showFrequencyDialog() {
    Get.defaultDialog(
      title: 'Select Frequency',
      titleStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      titlePadding: const EdgeInsets.only(top: 20, right: 170),
      backgroundColor:
          Color.fromARGB(255, 255, 255, 255), // Set background color to white
      contentPadding: const EdgeInsets.all(10), // Add padding to content
      content: Container(
        width: Get.width * 0.8,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.end, // Align radio buttons to the right
          children: [
            RadioListTile<String>(
              title: const Text('Day'),
              value: 'Day',
              groupValue: _selectedFrequency,
              onChanged: (value) {
                setState(() {
                  _selectedFrequency = value!;
                });
                Get.back();
              },
              controlAffinity: ListTileControlAffinity
                  .trailing, // Align radio button to the right
            ),
            RadioListTile<String>(
              title: const Text('Week'),
              value: 'Week',
              groupValue: _selectedFrequency,
              onChanged: (value) {
                setState(() {
                  _selectedFrequency = value!;
                });
                Get.back();
              },
              controlAffinity: ListTileControlAffinity
                  .trailing, // Align radio button to the right
            ),
            RadioListTile<String>(
              title: const Text('Month'),
              value: 'Month',
              groupValue: _selectedFrequency,
              onChanged: (value) {
                setState(() {
                  _selectedFrequency = value!;
                });
                Get.back();
              },
              controlAffinity: ListTileControlAffinity
                  .trailing, // Align radio button to the right
            ),
          ],
        ),
      ),
    );
  }

// date(1 to 31)

  void _showDateDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Date',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          content: Container(
            width: double.maxFinite,
            height: Get.height * 0.7,
            child: ListView.builder(
              itemCount: 31,
              itemBuilder: (context, index) {
                final day = index + 1;
                return ListTile(
                  title: Text('$day'),
                  trailing: Radio<String>(
                    value: '$day',
                    groupValue: _selectedDate,
                    onChanged: (value) {
                      setState(() {
                        _selectedDate = value!;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _selectedDate = '$day';
                    });
                    Navigator.pop(context);
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
