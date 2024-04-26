import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget implements PreferredSizeWidget {
  final ValueChanged<int>? onChange;
  final int currentPage;

  const BottomNavBar({Key? key, this.onChange, required this.currentPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0,
      currentIndex: currentPage,
      onTap: onChange,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Color(0xFF818898),
            size: 30,
          ),
          activeIcon: Icon(
            Icons.home_filled,
            color: Colors.amber, // Or any color you prefer
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_border,
            color: Color(0xFF818898),
            size: 30,
          ),
          activeIcon: Icon(
            Icons.favorite,
            color: Colors.amber, // Or any color you prefer
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notifications_none,
            color: Color(0xFF818898),
            size: 30,
          ),
          activeIcon: Icon(
            Icons.notifications,
            color: Colors.amber, // Or any color you prefer
            size: 30,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person_outline,
            color: Color(0xFF818898),
            size: 30,
          ),
          activeIcon: Icon(
            Icons.person,
            color: Colors.amber, // Or any color you prefer
            size: 30,
          ),
          label: "",
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kBottomNavigationBarHeight);
}
