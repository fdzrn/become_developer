import 'package:flutter/material.dart';

import 'curve_clipper.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: _size.height * 0.55,
        color: Colors.deepPurpleAccent.withOpacity(0.8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Center(
            child: Image(
              image: AssetImage('assets/images/login-image.png'),
            ),
          ),
        ),
      ),
    );
  }
}
