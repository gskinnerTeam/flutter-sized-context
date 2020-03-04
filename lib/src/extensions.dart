
import 'dart:math';

import 'package:flutter/material.dart';

extension SizedContext on BuildContext {

  MediaQueryData get mq => MediaQuery.of(this);

  bool get isLandscape => mq.orientation == Orientation.landscape;

  //PIXELS
  Size get pixels => mq.size;
  double get width => pixels.width;
  double get height => pixels.height;

  double get diagonal {
    final Size s = pixels;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  //PIXELS
  Size get inches {
    final Size pxSize = pixels;
    return Size(pxSize.width / 96, pxSize.height / 96);
  }

  double get widthInches => inches.width;
  double get heightInches => inches.height;
  double get diagonalInches => diagonal / 96;
}