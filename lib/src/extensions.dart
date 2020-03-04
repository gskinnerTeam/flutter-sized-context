
import 'dart:math';

import 'package:flutter/material.dart';

extension SizedContext on BuildContext {

  MediaQueryData get mq => MediaQuery.of(this);

  bool get isLandscape => mq.orientation == Orientation.landscape;

  //PIXELS
  Size get sizePixels => mq.size;
  double get widthPixels => sizePixels.width;
  double get heightPixels => sizePixels.height;

  double get diagonalPixels {
    final Size s = sizePixels;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  //PIXELS
  Size get sizeInches {
    final Size pxSize = sizePixels;
    return Size(pxSize.width / 96, pxSize.height / 96);
  }

  double get widthInches => sizeInches.width;
  double get heightInches => sizeInches.height;
  double get diagonalInches => diagonalPixels / 96;
}