import 'package:flutter/material.dart';
import 'package:flutter_application_3/feature/feed/feed_write_screen.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xff999999),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Icon(Icons.add),
              onTap: () {
                showCupertinoModalBottomSheet(
                    context: context, builder: (context) => FeedWriteScreen());
              },
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ]);
  }
}
