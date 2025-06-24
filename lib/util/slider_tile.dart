import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/models/slider_item.dart';

class SliderTile extends StatelessWidget {
  SliderItem sliderItem;
  SliderTile({super.key, required this.sliderItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 307,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        // gradient: LinearGradient(colors: [primaryColor, secondaryColor]),
      ),
      child: Stack(
        children: [
          Stack(
            children: [
              Image.asset(sliderItem.imagePath),
              Container(
                margin: EdgeInsets.only(left: 141),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromRGBO(53, 146, 252, 0.8),
                      Color.fromRGBO(23, 92, 222, 1),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 150, top: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 176,
                  child: Text(
                    sliderItem.title,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  child: Text(
                    sliderItem.text,
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                sliderItem.button,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
