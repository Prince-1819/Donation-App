import 'package:donation_app/components/button.dart';
import 'package:donation_app/components/layout.dart';
import 'package:donation_app/components/widgets/donation_reminder.dart';
import 'package:donation_app/components/widgets/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _selectedLanguage = 'English';
  String _selectedMode = 'Automatic';

  @override
  Widget build(BuildContext context) {
    return Layout(
        child: Column(
      children: [
        GestureDetector(
          child: const SettingsList(
            text: 'Language',
            widget: Icon(Icons.navigate_next),
          ),
          onTap: () {
            _showLanguageDialog();
          },
        ),
        GestureDetector(
          child: const SettingsList(
            text: 'Dark Mode',
            widget: Icon(Icons.navigate_next),
          ),
          onTap: () {
            _showModeDialog();
          },
        ),
        const SettingsList(
          text: 'Delete Account',
          widget: Icon(Icons.navigate_next),
        ),
        const SettingsList(
          text: 'Log Out',
          widget: Icon(Icons.logout),
        ),
      ],
    ));
  }

  // ********************************************* Functions *****************************************************

  void _showLanguageDialog() {
    Get.defaultDialog(
      title: 'Select Language',
      titleStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      titlePadding: const EdgeInsets.only(top: 20, right: 190),
      backgroundColor: Colors.white, // Set background color to white
      contentPadding: const EdgeInsets.all(10), // Add padding to content
      content: Container(
        width: Get.width * 0.8,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.end, // Align radio buttons to the right
          children: [
            RadioListTile<String>(
              title: const Text('Hindi'),
              value: 'Hindi',
              groupValue: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value!;
                });
                Get.back();
              },
              controlAffinity: ListTileControlAffinity
                  .trailing, // Align radio button to the right
            ),
            RadioListTile<String>(
              title: const Text('English'),
              value: 'English',
              groupValue: _selectedLanguage,
              onChanged: (value) {
                setState(() {
                  _selectedLanguage = value!;
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

  // Mode

  void _showModeDialog() {
    Get.defaultDialog(
      title: 'Select Display',
      titleStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
      titlePadding: const EdgeInsets.only(top: 20, right: 200),
      backgroundColor: Colors.white, // Set background color to white
      contentPadding: const EdgeInsets.all(10), // Add padding to content
      content: Container(
        width: Get.width * 0.8,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.end, // Align radio buttons to the right
          children: [
            RadioListTile<String>(
              title: const Text('Automatic'),
              value: 'Automatic',
              groupValue: _selectedMode,
              onChanged: (value) {
                setState(() {
                  _selectedMode = value!;
                });
                Get.back();
              },
              controlAffinity: ListTileControlAffinity
                  .trailing, // Align radio button to the right
            ),
            RadioListTile<String>(
              title: const Text('Switch on dark mode'),
              value: 'dark mode',
              groupValue: _selectedMode,
              onChanged: (value) {
                setState(() {
                  _selectedMode = value!;
                });
                Get.back();
              },
              controlAffinity: ListTileControlAffinity
                  .trailing, // Align radio button to the right
            ),
            RadioListTile<String>(
              title: const Text('Switch on light mode'),
              value: 'light mode',
              groupValue: _selectedMode,
              onChanged: (value) {
                setState(() {
                  _selectedMode = value!;
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
}
