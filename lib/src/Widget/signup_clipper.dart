import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

/// Clip widget in wave shape shape
class WaveClipperOne extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis

  @override
  Path getClip(Size size) {
    Offset firstEndPoint = Offset(size.width * .5, size.height - 90);
    Offset firstControlPoint = Offset(size.width * .20, size.height - 100);
    Offset secondEndPoint = Offset(size.width, size.height - 180);
    Offset secondControlPoint = Offset(size.width * .80, size.height - 90);

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

/// Clip widget in wave shape shape
class WaveClipperTwo extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {
    Offset firstEndPoint = Offset(size.width * .4, size.height - 0);
    Offset firstControlPoint = Offset(size.width * .0, size.height - 0);
    Offset secondEndPoint = Offset(size.width, size.height - 210);
    Offset secondControlPoint = Offset(size.width * .70, size.height - 10);

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
