// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Spotlight extends StatelessWidget {
  const Spotlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            "Spotlight",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        const SizedBox(height: 17),
        Container(
          height: 150,
          margin: const EdgeInsets.only(bottom: 22),
          child: ListView(
            padding: const EdgeInsets.only(left: 30, right: 30),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(
                'assets/images/banner-1.png',
              ),
              const SizedBox(
                width: 15,
              ),
              Image.asset(
                'assets/images/banner-1.png',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
            padding:
                const EdgeInsets.only(top: 20, left: 22, right: 22, bottom: 20),
            decoration: BoxDecoration(
                border:
                    Border.all(style: BorderStyle.solid, color: Colors.black12),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Donation balance:',
                      style: TextStyle(fontSize: 15, color: Colors.black45),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Rp. 200.000',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed('/donation_page1');
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/topup.png',
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Top up',
                            style:
                                TextStyle(fontSize: 11, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed('/transaction_history');
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/history.png',
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'History',
                            style:
                                TextStyle(fontSize: 11, color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
