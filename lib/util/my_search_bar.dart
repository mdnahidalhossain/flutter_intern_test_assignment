import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 24, right: 24),
      child: SizedBox(
        width: double.infinity,
        child: SearchBar(
          backgroundColor: WidgetStateProperty.all<Color>(
            Colors.white, // your desired background color
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Icon(Icons.search),
          ),
          trailing: [
            Container(
              width: 1,
              height: 30,
              color: Color.fromRGBO(26, 66, 142, 1),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset('images/appbar-icons/settings-icon.png'),
              // iconSize: 50,
            ),
          ],
          elevation: WidgetStateProperty.all(0),
        ),
      ),
    );
  }
}
