
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
  
  double wp(percentage) => percentage / 100 * widthPx;
  double hp(percentage) => percentage / 100 * heightPx;
  double get textSizeMultiplier => heightPx / 100.0;
  double get imageSizeMultiplier => widthPx / 100.0;
  double get heightMultiplier => heightPx / 100.0;
  double get widgthMultiplier => widthPx / 100.0;

  ScreenType get deviceType {
    double deviceWidth = 0;
    if (mq.orientation == Orientation.landscape)
      deviceWidth = heightPx;
    else
      deviceWidth = widthPx;
    if (deviceWidth > 950) return ScreenType.Desktop;
    if (deviceWidth > 600) return ScreenType.Tablet;
    return ScreenType.Mobile;
  }
}

enum ScreenType { Mobile, Tablet, Desktop }
