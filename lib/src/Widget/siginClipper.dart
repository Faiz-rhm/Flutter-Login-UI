import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

/// Clip widget in wave shape shape
class WaveClipperTwo extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis

  @override
  Path getClip(Size size) {
    Offset firstEndPoint = Offset(size.width * .0, size.height * .6);
    Offset firstControlPoint = Offset(size.width * 0.6, size.height * 1);
    Offset secondEndPoint = Offset(size.width * .7, size.height * .0);
    Offset secondControlPoint = Offset(size.width * 1.5, size.height - 450);

    final path = Path()
      ..lineTo(0.0, size.height)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dy, firstEndPoint.dy)..quadraticBezierTo(
          secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

/// Clip widget in wave shape shape
class WaveClipperThree extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis

  @override
  Path getClip(Size size) {
    Offset firstEndPoint = Offset(size.width * .0, size.height - 0);
    Offset firstControlPoint = Offset(size.width * 10, size.height - 0);
    Offset secondEndPoint = Offset(size.width, size.height - 250);
    Offset secondControlPoint = Offset(size.width * .70, size.height - 0);

    final path = Path()
      ..lineTo(0.0, size.height)
      ..quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
          firstEndPoint.dx, firstEndPoint.dy)..quadraticBezierTo(
          secondControlPoint.dx, secondControlPoint.dy,
          secondEndPoint.dx, secondEndPoint.dy)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}


class CustomSelfClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    BezierCurveSection section1 = BezierCurveSection(
      start: Offset(size.width - 0, size.height - 120),
      top: Offset(size.width - 30, size.height - 90),
      end: Offset(size.width  - 140, size.height - 230),
    );
    BezierCurveSection section2 = BezierCurveSection(
      start: Offset(size.width - 110, size.height * 1.3),
      top: Offset(size.width - 70, size.height - 130),
      end: Offset(size.width, size.height - 230),
    );
    BezierCurveDots dot1 = ProsteBezierCurve.calcCurveDots(section1);
    BezierCurveDots dot2 = ProsteBezierCurve.calcCurveDots(section2);

    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(dot1.x1, dot1.y1, dot1.x2, dot1.y2);
    path.lineTo(size.width - 100, size.height - 110);
    path.quadraticBezierTo(dot2.x1, dot2.y1, dot2.x2, dot2.y2);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}