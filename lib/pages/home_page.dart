import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/constants/all_constants.dart';
import 'package:flutter_intern_test_assignment/models/service_card.dart';
import 'package:flutter_intern_test_assignment/models/service_categories.dart';
import 'package:flutter_intern_test_assignment/models/slider_item.dart';
import 'package:flutter_intern_test_assignment/models/worker_profile_rating.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';
import 'package:flutter_intern_test_assignment/util/my_service_card_tile.dart';
import 'package:flutter_intern_test_assignment/util/my_service_tile.dart';
import 'package:flutter_intern_test_assignment/util/post_job_tile.dart';
import 'package:flutter_intern_test_assignment/util/slider_tile.dart';
import 'package:flutter_intern_test_assignment/util/work_profile_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<ServiceCategories> serviceCategories = [];
  // List<ServiceCategories> getALLServices() {
  //   return ServiceCategories.services;
  // }

  // List<ServiceCard> getALLServiceCards() {
  //   return ServiceCard.serviceCard;
  // }

  // List<SliderItem> getAllSliderItem() {
  //   return SliderItem.sliderItem;
  // }

  // List<WorkerProfileRating> getAllWorkerProfiles() {
  //   return WorkerProfileRating.workerProfile;
  // }

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
