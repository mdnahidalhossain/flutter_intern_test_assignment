import 'package:flutter/material.dart';
import 'package:flutter_intern_test_assignment/theme/color_theme.dart';

class PostJobTile extends StatelessWidget {
  const PostJobTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 292,
      decoration: BoxDecoration(color: Colors.white),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/other-icons/finding-icon.png'),
            SizedBox(height: 16),
            Text(
              'Post a Job',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Didn’t find what you’re looking for?',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: Text('Post a Job', style: TextStyle(color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                fixedSize: Size(327, 40),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10,
                  ), // optional corner radius
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
