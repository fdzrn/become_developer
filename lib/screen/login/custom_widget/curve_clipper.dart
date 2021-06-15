import 'package:flutter/material.dart';

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, size.height);
    Offset offsetPoint1 = Offset(0, size.height * 0.825);
    Offset centerPoint1 = Offset(size.width * 0.25, size.height * 0.825);
    path.quadraticBezierTo(offsetPoint1.dx, offsetPoint1.dy, centerPoint1.dx, centerPoint1.dy);

    path.lineTo(size.width * 0.75, size.height * 0.825);
    Offset offsetPoint2 = Offset(size.width, size.height * 0.825);
    Offset centerPoint2 = Offset(size.width, size.height * 0.650);
    path.quadraticBezierTo(offsetPoint2.dx, offsetPoint2.dy, centerPoint2.dx, centerPoint2.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
