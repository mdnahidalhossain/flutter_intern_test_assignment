import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/constants/all_constants.dart';
import 'package:flutter_intern_test_assignment/util/post_job_tile.dart';

class TabletHomePage extends StatefulWidget {
  const TabletHomePage({super.key});

  @override
  State<TabletHomePage> createState() => _TabletHomePageState();
}

class _TabletHomePageState extends State<TabletHomePage> {
  final PageController _controller = PageController(viewportFraction: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 445,
                  height: 125,
                  decoration: BoxDecoration(color: Colors.white),
                  child: myServiceCatergoryListiewBuilder,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 480,
                  height: 325,
                  decoration: BoxDecoration(color: Colors.white),
                  child: myServiceCardListViewBuilder,
                ),
              ),
            ),

            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  decoration: BoxDecoration(color: Colors.white),
                  child: mySliderPageViewBuilderForTablet(),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 520,
                  height: 180,
                  decoration: BoxDecoration(color: Colors.white),
                  child: workerProfileListViewBuilder,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 520,
                  // height: 180,
                  decoration: BoxDecoration(color: Colors.white),
                  child: PostJobTile(),
                ),
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
