import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/pages/initial_nav_page.dart';
import 'package:flutter_intern_test_assignment/reponsive/responsive_layout_scaffold.dart';
import 'package:flutter_intern_test_assignment/reponsive/tablet_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter_test_assigment',
      home: ResponsiveLayoutScaffold(
        mobileScaffold: InitialNavPage(),
        tabletScaffold: TabletScaffold(),
      ),
    );
  }
}
