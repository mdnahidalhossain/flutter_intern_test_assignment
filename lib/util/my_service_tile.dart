import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/models/service_categories.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';

class MyServiceTile extends StatelessWidget {
  ServiceCategories serviceCategories;
  Function()? onTap;
  MyServiceTile({super.key, required this.serviceCategories, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 20, right: 20),
        child: Column(
          children: [
            Container(
              width: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: borderColor),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(52, 64, 84, 0.08), // shadow color
                    blurRadius: 2, // how blurry
                    spreadRadius: 0, // how much it spreads
                    offset: Offset(0, 1), // x and y offset
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset(serviceCategories.imagePath, width: 36),
              ),
            ),
            SizedBox(height: 10),
            Text(serviceCategories.title),
          ],
        ),
      ),
    );
  }
}
