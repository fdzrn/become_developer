import 'package:flutter/material.dart';

import 'custom_widget/background_image.dart';
import 'custom_widget/login_session.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackgroundImage(),
            LoginSession()
          ],
        ),
      ),
    );
  }
}
