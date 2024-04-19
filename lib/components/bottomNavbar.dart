// ********************
// created by - Prajapati Chirag
// created at - 17/04
// ********************

import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<int>? onChange;

  final int currentPage;

  const BottomNavBar({super.key, this.onChange, required this.currentPage});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentPage,
      onTap: onChange,
      selectedItemColor: Colors.blueAccent,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
