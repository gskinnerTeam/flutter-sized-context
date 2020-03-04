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
        "${context.sizePixels},\n"
        "${context.widthPixels},\n"
        "${context.heightPixels},\n"
        "${context.diagonalPixels},\n"
        "${context.sizeInches},\n"
        "${context.widthInches},\n"
        "${context.heightInches},\n"
        "${context.diagonalInches},\n"
        "${context.sizeInches},\n"
        "${context.mq.padding},\n",
      )),
    );
  }
}
