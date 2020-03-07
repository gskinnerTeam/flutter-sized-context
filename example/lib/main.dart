import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sized_context/sized_context.dart';

void main() => runApp(MaterialApp(home: Demo()));

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(window.physicalSize);

    return Material(
      child: Center(
          child: Text(
        "${context.isLandscape}, \n"
        "${context.sizePx},\n"
        "${context.widthPx},\n"
        "${context.heightPx},\n"
        "${context.diagonalPx},\n"
        "${context.sizeInches},\n"
        "${context.widthInches},\n"
        "${context.heightInches},\n"
        "${context.diagonalInches},\n"
        "${context.widthPct(.1)},\n"
        "${context.heightPct(.1)},\n"
        "${context.sizeInches},\n"
        "${context.mq.padding},\n",
      )),
    );
  }
}
