import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/constants/all_constants.dart';
import 'package:flutter_intern_test_assignment/util/post_job_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // final PageController _controller = PageController(viewportFraction: 0.88);

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 128,
              decoration: BoxDecoration(color: Colors.white),
              child: myServiceCatergoryListiewBuilder,
            ),
            SizedBox(height: 10),
            Container(
              height: 325,
              decoration: BoxDecoration(color: Colors.white),
              child: myServiceCardListViewBuilder,
            ),
            SizedBox(height: 10),
            Container(
              height: 204,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  SizedBox(height: 180, child: mySliderPageViewBuilder),
                  SizedBox(height: 1, child: myPageIndicator),
                ],
              ),
            ),

            SizedBox(height: 10),
            Container(
              height: 172,
              decoration: BoxDecoration(color: Colors.white),
              child: workerProfileListViewBuilder,
            ),
            SizedBox(height: 10),
            PostJobTile(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
