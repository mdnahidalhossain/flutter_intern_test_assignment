import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/constants/all_constants.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';
import 'package:flutter_intern_test_assignment/util/bottom_nav_bar.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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

        body: pageListForTablet[_selectedIndex],
      ),
    );
  }
}
