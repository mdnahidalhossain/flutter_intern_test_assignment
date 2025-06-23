import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/models/worker_profile_rating.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';
import 'package:flutter_intern_test_assignment/util/rating_box.dart';

class WorkerProfileTile extends StatelessWidget {
  WorkerProfileRating workerProfile;
  Function()? onTap;
  WorkerProfileTile({super.key, required this.workerProfile, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 16, right: 16, bottom: 16),
        child: Container(
          width: 140,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: borderColor),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(52, 64, 84, 0.08), // shadow color
                blurRadius: 2, // how blurry
                spreadRadius: 0, // how much it spreads
                offset: Offset(0, 1), // x and y offset
              ),
            ],
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset(workerProfile.imagePath, width: 64),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: RatingBox(
                      iconPath: workerProfile.iconPath,
                      rating: workerProfile.rating,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                workerProfile.name,
                style: TextStyle(
                  color: primaryTextColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                workerProfile.profession,
                style: TextStyle(
                  color: secondaryTextColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
