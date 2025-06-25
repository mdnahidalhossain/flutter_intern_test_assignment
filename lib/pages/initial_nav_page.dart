import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/constants/all_constants.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';
import 'package:flutter_intern_test_assignment/util/bottom_nav_bar.dart';

class InitialNavPage extends StatefulWidget {
  const InitialNavPage({super.key});

  @override
  State<InitialNavPage> createState() => _InitialNavPageState();
}

class _InitialNavPageState extends State<InitialNavPage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: myAppBar,
        bottomNavigationBar: BottomNavBar(
          onTabChange: (index) => navigateBottomBar(index),
          selectedIndex: _selectedIndex,
        ),

        body: pageList[_selectedIndex],
      ),
    );
  }
}
