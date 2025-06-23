import 'package:flutter/material.dart';

class RatingBox extends StatelessWidget {
  String iconPath;
  String rating;
  RatingBox({super.key, required this.iconPath, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 20,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(255, 247, 237, 1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(iconPath), Text(rating)],
      ),
    );
  }
}
