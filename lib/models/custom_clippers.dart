import 'package:flutter/material.dart';

class FirstClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 414;
    final double yScaling = size.height / 700;
    path.lineTo(0 * xScaling,466.5 * yScaling);
    path.cubicTo(0 * xScaling,466.5 * yScaling,0 * xScaling,423.5 * yScaling,0 * xScaling,423.5 * yScaling,);
    path.cubicTo(26 * xScaling,440.5 * yScaling,83.1667 * xScaling,453.167 * yScaling,109 * xScaling,457 * yScaling,);
    path.cubicTo(115 * xScaling,462.5 * yScaling,135 * xScaling,471 * yScaling,144 * xScaling,475 * yScaling,);
    path.cubicTo(79.6 * xScaling,488.6 * yScaling,21.1667 * xScaling,475 * yScaling,0 * xScaling,466.5 * yScaling,);
    path.cubicTo(0 * xScaling,466.5 * yScaling,0 * xScaling,466.5 * yScaling,0 * xScaling,466.5 * yScaling,);
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


class SecondClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 414;
    final double yScaling = size.height / 700;
    path.lineTo(414 * xScaling,480 * yScaling);
    path.cubicTo(414 * xScaling,480 * yScaling,414 * xScaling,449.5 * yScaling,414 * xScaling,449.5 * yScaling,);
    path.cubicTo(290.5 * xScaling,504.5 * yScaling,161.5 * xScaling,478 * yScaling,112.5 * xScaling,460 * yScaling,);
    path.cubicTo(215.3 * xScaling,517.6 * yScaling,353 * xScaling,501 * yScaling,414 * xScaling,480 * yScaling,);
    path.cubicTo(414 * xScaling,480 * yScaling,414 * xScaling,480 * yScaling,414 * xScaling,480 * yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


class ThirdClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 414;
    final double yScaling = size.height / 700;
    path.lineTo(414 * xScaling,449.5 * yScaling);
    path.cubicTo(414 * xScaling,449.5 * yScaling,414 * xScaling,421 * yScaling,414 * xScaling,421 * yScaling,);
    path.cubicTo(296.4 * xScaling,474.2 * yScaling,157.5 * xScaling,464 * yScaling,103 * xScaling,456 * yScaling,);
    path.cubicTo(225 * xScaling,510 * yScaling,366.5 * xScaling,473.5 * yScaling,414 * xScaling,449.5 * yScaling,);
    path.cubicTo(414 * xScaling,449.5 * yScaling,414 * xScaling,449.5 * yScaling,414 * xScaling,449.5 * yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}


class FourthClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double xScaling = size.width / 414;
    final double yScaling = size.height / 700;
    path.lineTo(0 * xScaling, 423.5 * yScaling);
    path.cubicTo(
      0 * xScaling, 423.5 * yScaling, 0 * xScaling, 0 * yScaling, 0 * xScaling,
      0 * yScaling,);
    path.cubicTo(
      0 * xScaling, 0 * yScaling, 414 * xScaling, 0 * yScaling, 414 * xScaling,
      0 * yScaling,);
    path.cubicTo(414 * xScaling, 0 * yScaling, 414 * xScaling, 423 * yScaling,
      414 * xScaling, 423 * yScaling,);
    path.cubicTo(195.5 * xScaling, 513 * yScaling, 0 * xScaling, 431 * yScaling,
      0 * xScaling, 423.5 * yScaling,);
    path.cubicTo(0 * xScaling, 423.5 * yScaling, 0 * xScaling, 423.5 * yScaling,
      0 * xScaling, 423.5 * yScaling,);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

