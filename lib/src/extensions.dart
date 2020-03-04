
import 'dart:math';

import 'package:flutter/material.dart';

extension SizedContext on BuildContext {

  MediaQueryData get mq => MediaQuery.of(this);

  bool get isLandscape => mq.orientation == Orientation.landscape;

  //PIXELS
  Size get sizePx => mq.size;
  double get widthPx => sizePx.width;
  double get heightPx => sizePx.height;

  double get diagonalPx {
    final Size s = sizePx;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  //PIXELS
  Size get sizeInches {
    final Size pxSize = sizePx;
    return Size(pxSize.width / 96, pxSize.height / 96);
  }

  double get widthInches => sizeInches.width;
  double get heightInches => sizeInches.height;
  double get diagonalInches => diagonalPx / 96;
}