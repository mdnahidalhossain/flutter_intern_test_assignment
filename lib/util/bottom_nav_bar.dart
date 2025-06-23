import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  Function(int)? onTabChange;
  final selectedIndex;
  BottomNavBar({super.key, this.onTabChange, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        backgroundColor: Colors.white,
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        tabBackgroundColor: primaryColor,
        tabMargin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
        tabBorderRadius: 50,
        gap: 5,
        onTabChange: onTabChange,
        tabs: [
          GButton(
            icon: Icons.square,
            leading: Image.asset(
              'images/nav-icons/home-icon.png',
              height: 20,
              width: 20,
              color: selectedIndex == 0 ? activeIconColor : inactiveIconColor,
            ),
            text: 'HOME',
          ),
          GButton(
            icon: Icons.square,
            leading: Image.asset(
              'images/nav-icons/list-icon.png',
              height: 20,
              width: 20,
              color: selectedIndex == 1 ? activeIconColor : inactiveIconColor,
            ),
            text: 'LIST',
          ),
          GButton(
            icon: Icons.square,
            leading: Image.asset(
              'images/nav-icons/message-icon.png',
              height: 20,
              width: 20,
              color: selectedIndex == 2 ? activeIconColor : inactiveIconColor,
            ),
            text: 'MESSAGE',
          ),
          GButton(
            icon: Icons.square,
            leading: Image.asset(
              'images/nav-icons/work-icon.png',
              height: 20,
              width: 20,
              color: selectedIndex == 3 ? activeIconColor : inactiveIconColor,
            ),
            text: 'WORK',
          ),
          GButton(
            icon: Icons.square,
            leading: Image.asset(
              'images/nav-icons/profile-icon.png',
              height: 20,
              width: 20,
              color: selectedIndex == 4 ? activeIconColor : inactiveIconColor,
            ),
            text: 'PROFILE',
          ),
        ],
      ),
    );
  }
}
