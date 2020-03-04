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
        "${context.pixels},\n"
        "${context.width},\n"
        "${context.height},\n"
        "${context.diagonal},\n"
        "${context.pixels},\n"
        "${context.inches},\n"
        "${context.widthInches},\n"
        "${context.heightInches},\n"
        "${context.diagonalInches},\n"
        "${context.inches},\n"
        "${context.mq.padding},\n",
      )),
    );
  }
}
