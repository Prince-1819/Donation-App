// ********************
// created by - Prajapati Chirag
// created at - 24/04
// ********************

import 'package:donation_app/controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:donation_app/components/layout.dart';
import 'package:donation_app/components/widgets/account_widget.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final ProfileController _profileController = Get.put(ProfileController());
  // Find the ProfileController

  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Container(
        margin: const EdgeInsets.only(left: 30, top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/Profile Picture.png",
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      _profileController.fullNameController
                          .text, // Access full name from ProfileController
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    Text(_profileController.emailController
                        .text), // Access email from ProfileController
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                            child: const AccountContainerWidget(
                              widget: Icon(
                                Icons.person,
                                color: Color(0xFF818898),
                              ),
                              text: "Edit Profile",
                            ),
                            onTap: () {
                              Get.toNamed('/edit_profile1');
                            }),
                        const SizedBox(
                          width: 10,
                        ),
                        const AccountContainerWidget(
                          widget: Icon(
                            Icons.wallet,
                            color: Color(0xFF818898),
                          ),
                          text: "Top Up",
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const OptionsList(
              widget: Icon(
                Icons.favorite_border,
                size: 25,
              ),
              text: "My Donation",
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: const OptionsList(
                widget: Icon(
                  Icons.notifications_active_outlined,
                  size: 25,
                ),
                text: "Donation Reminder",
              ),
              onTap: () {
                Get.toNamed('/donation_reminder');
              },
            ),
            const SizedBox(
              height: 20,
            ),
            const OptionsList(
              widget: Icon(
                Icons.key,
                size: 25,
              ),
              text: "Change Password",
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: const OptionsList(
                widget: Icon(
                  Icons.settings,
                  size: 25,
                ),
                text: "Settings",
              ),
              onTap: () {
                Get.toNamed('/settings');
              },
            ),
          ],
        ),
      ),
    );
  }
}
