import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/models/service_card.dart';
import 'package:flutter_intern_test_assignment/models/service_categories.dart';
import 'package:flutter_intern_test_assignment/models/slider_item.dart';
import 'package:flutter_intern_test_assignment/models/worker_profile_rating.dart';
import 'package:flutter_intern_test_assignment/pages/home_page.dart';
import 'package:flutter_intern_test_assignment/pages/list_page.dart';
import 'package:flutter_intern_test_assignment/pages/message_page.dart';
import 'package:flutter_intern_test_assignment/pages/profile_page.dart';
import 'package:flutter_intern_test_assignment/pages/work_page.dart';
import 'package:flutter_intern_test_assignment/reponsive/tablet_home_page.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';
import 'package:flutter_intern_test_assignment/util/my_search_bar.dart';
import 'package:flutter_intern_test_assignment/util/my_service_card_tile.dart';
import 'package:flutter_intern_test_assignment/util/my_service_tile.dart';
import 'package:flutter_intern_test_assignment/util/slider_tile.dart';
import 'package:flutter_intern_test_assignment/util/work_profile_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List _pages = [
  HomePage(),
  ListPage(),
  MessagePage(),
  WorkPage(),
  ProfilePage(),
];

var pageList = _pages;

final List _pagesForTablet = [
  TabletHomePage(),
  ListPage(),
  MessagePage(),
  WorkPage(),
  ProfilePage(),
];

var pageListForTablet = _pagesForTablet;

var myAppBar = PreferredSize(
  preferredSize: Size.fromHeight(150),
  child: AppBar(
    backgroundColor: primaryColor,
    // leading: Image.asset('images/other-icons/home-add-icon.png'),
    title: Row(
      children: [
        Image.asset('images/appbar-icons/home-add-icon.png'),
        SizedBox(width: 9),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Home', style: TextStyle(color: Colors.white, fontSize: 14)),
            Row(
              children: [
                Text(
                  "264 Boncycle, FL 32328",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(width: 8),
                Image.asset('images/appbar-icons/drop-down-icon.png'),
              ],
            ),
          ],
        ),
      ],
    ),

    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/appbar-icons/notification.png'),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/appbar-icons/cart.png'),
            ),
          ],
        ),
      ),
    ],
    flexibleSpace: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [primaryColor, secondaryColor],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
            ),
          ),
        ),
        MySearchBar(),
      ],
    ),
  ),
);

List<ServiceCategories> getALLServices() {
  return ServiceCategories.services;
}

List<ServiceCard> getALLServiceCards() {
  return ServiceCard.serviceCard;
}

List<SliderItem> getAllSliderItem() {
  return SliderItem.sliderItem;
}

List<WorkerProfileRating> getAllWorkerProfiles() {
  return WorkerProfileRating.workerProfile;
}

var myServiceCatergoryListiewBuilder = ListView.builder(
  padding: EdgeInsets.only(left: 24),
  scrollDirection: Axis.horizontal,
  itemCount: ServiceCategories.services.length,
  itemBuilder: (context, index) {
    ServiceCategories serviceCategories = getALLServices()[index];
    return MyServiceTile(serviceCategories: serviceCategories);
  },
);

var myServiceCardListViewBuilder = ListView.builder(
  padding: EdgeInsets.only(left: 24),
  scrollDirection: Axis.horizontal,
  itemCount: ServiceCard.serviceCard.length,
  itemBuilder: (context, index) {
    ServiceCard serviceCards = getALLServiceCards()[index];
    return MyServiceCardTile(serviceCard: serviceCards);
  },
);

final PageController _controller = PageController(viewportFraction: 0.88);

var mySliderPageViewBuilder = PageView.builder(
  controller: _controller,
  itemCount: SliderItem.sliderItem.length,
  itemBuilder: (context, index) {
    SliderItem sliderItems = getAllSliderItem()[index];

    return Padding(
      padding: EdgeInsets.only(right: 24, top: 16, bottom: 16),
      child: SliderTile(sliderItem: sliderItems),
    );
  },
);

Widget mySliderPageViewBuilderForTablet() {
  final sliderItems = getAllSliderItem();

  return SizedBox(
    height: 204,
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: sliderItems.map((item) {
            return Padding(
              padding: const EdgeInsets.only(right: 24),
              child: SliderTile(sliderItem: item),
            );
          }).toList(),
        ),
      ),
    ),
  );
}

var myPageIndicator = SmoothPageIndicator(
  controller: _controller,
  count: SliderItem.sliderItem.length,
  effect: ExpandingDotsEffect(
    dotHeight: 8,
    dotWidth: 8,
    dotColor: Color.fromRGBO(226, 232, 240, 1),
    activeDotColor: primaryColor,
    expansionFactor: 2,
  ),
);

var workerProfileListViewBuilder = ListView.builder(
  padding: EdgeInsets.only(left: 24),
  scrollDirection: Axis.horizontal,
  itemCount: WorkerProfileRating.workerProfile.length,
  itemBuilder: (context, index) {
    WorkerProfileRating workerProfile = getAllWorkerProfiles()[index];
    return WorkerProfileTile(workerProfile: workerProfile);
  },
);
