import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/models/service_card.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';

class MyServiceCardTile extends StatelessWidget {
  ServiceCard serviceCard;
  Function()? onTap;
  MyServiceCardTile({super.key, required this.serviceCard, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 16, bottom: 16, right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(8),
                    child: Image.asset(serviceCard.imagePath, width: 188),
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    width: 32,
                    height: 32,
                    margin: EdgeInsets.only(left: 155, top: 16, right: 16),
                    // padding: EdgeInsets.only(),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Image.asset('images/other-icons/favourite-icon.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(serviceCard.iconPath),
                      SizedBox(width: 4),
                      Text(
                        serviceCard.rating,
                        style: TextStyle(
                          color: primaryTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        ' · ${serviceCard.serviceHour}',
                        style: TextStyle(color: secondaryTextColor),
                      ),
                      Text(
                        ' · ${serviceCard.serviceType}',
                        style: TextStyle(color: secondaryTextColor),
                      ),
                    ],
                  ),
                  SizedBox(height: 6),
                  Container(
                    width: 180,
                    child: Text(
                      serviceCard.cardTitle,
                      style: TextStyle(
                        color: primaryTextColor,
                        fontWeight: FontWeight.w500,
                      ),
                      softWrap: true,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        serviceCard.newPrice,
                        style: TextStyle(
                          color: primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        serviceCard.oldPrice,
                        style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 180,
                    height: 1,
                    color: borderColor,
                    margin: EdgeInsets.only(top: 8),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(serviceCard.userIcon),
                      SizedBox(width: 5),
                      Text(
                        serviceCard.userName,
                        style: TextStyle(
                          color: primaryTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
