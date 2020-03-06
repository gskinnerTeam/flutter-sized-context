import 'dart:math';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

extension SizedContext on BuildContext {

  double get pixelsPerInch => UniversalPlatform.isAndroid || UniversalPlatform.isIOS? 150 : 96;

  /// The MediaQueryData object for this context
  MediaQueryData get mq => MediaQuery.of(this);

  /// Whether current aspect ratio is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  //PIXELS
  /// Screen size, in logical pixels
  Size get sizePx => mq.size;

  /// Screen width, in logical pixels
  double get widthPx => sizePx.width;

  /// Screen height, in logical pixels
  double get heightPx => sizePx.height;

  /// Diagonal screen length, in logical pixels
  double get diagonalPx {
    final Size s = sizePx;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  //PIXELS
  /// Screen Size(), in inches
  Size get sizeInches {
    final Size pxSize = sizePx;
    return Size(pxSize.width / pixelsPerInch, pxSize.height / pixelsPerInch);
  }

  /// Screen width, in inches
  double get widthInches => sizeInches.width;

  /// Screen height, in inches
  double get heightInches => sizeInches.height;

  /// Diagonal screen length, in inches
  double get diagonalInches => diagonalPx / pixelsPerInch;
}
