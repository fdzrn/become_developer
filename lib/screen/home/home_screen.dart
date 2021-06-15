import 'package:become_developer/screen/home/custom_widget/app_bar.dart';
import 'package:flutter/material.dart';

import 'custom_widget/course_list.dart';
import 'custom_widget/language_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Column(
          children: <Widget>[CustomAppBar(), LanguageList(), CourseList()],
        ),
      ),
    );
  }
}
