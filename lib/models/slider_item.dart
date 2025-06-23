import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';

class SliderItem {
  final String imagePath;
  final String title;
  final String text;
  Widget button;

  SliderItem({
    required this.imagePath,
    required this.title,
    required this.text,
    required this.button,
  });

  static List<SliderItem> sliderItem = [
    SliderItem(
      imagePath: 'images/card-images/Image-1.png',
      title: 'Get your roofs cleaned',
      text: 'Don’t let your mind stick to the ugly roofs.',
      button: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(255, 230, 0, 1),
          fixedSize: Size(130, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // optional corner radius
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
    SliderItem(
      imagePath: 'images/card-images/Image-1.png',
      title: 'Get your roofs cleaned',
      text: 'Don’t let your mind stick to the ugly roofs.',
      button: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(255, 230, 0, 1),
          fixedSize: Size(130, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // optional corner radius
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),

    SliderItem(
      imagePath: 'images/card-images/Image-1.png',
      title: 'Get your roofs cleaned',
      text: 'Don’t let your mind stick to the ugly roofs.',
      button: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromRGBO(255, 230, 0, 1),
          fixedSize: Size(130, 32),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100), // optional corner radius
          ),
        ),
        child: Text(
          'Get Started',
          style: TextStyle(
            color: primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    ),
  ];
}
