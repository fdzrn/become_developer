import 'package:become_developer/screen/home/custom_widget/app_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'custom_widget/course_list.dart';
import 'custom_widget/language_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int dummySelectedIcon = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[
            CustomAppBar(),
            LanguageList(),
            CourseList(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent ,
        index: dummySelectedIcon,
        buttonBackgroundColor: Colors.transparent,
        height: 48,
        color: Colors.deepPurpleAccent,
        onTap: (index) {
          setState(() {
            dummySelectedIcon = index;
          });
        },
        items: [
          Icon(
            Icons.play_arrow_outlined,
            size: 30,
            color: dummySelectedIcon == 0 ? Colors.black87 : Colors.white,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: dummySelectedIcon == 1 ? Colors.black87 : Colors.white,
          ),
          Icon(
            Icons.home_outlined,
            size: 30,
            color: dummySelectedIcon == 2 ? Colors.black87 : Colors.white,
          ),
          Icon(
            Icons.favorite_border_outlined,
            size: 30,
            color: dummySelectedIcon == 3 ? Colors.black87 : Colors.white,
          ),
          Icon(
            Icons.person_outlined,
            size: 30,
            color: dummySelectedIcon == 4 ? Colors.black87 : Colors.white,
          )
        ],
      ),
    );
  }
}
