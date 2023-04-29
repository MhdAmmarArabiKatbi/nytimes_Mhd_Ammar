import 'package:flutter/material.dart';

class WidgetSize {

  final double targetHeightSize = 812;

  final double targetWidthSize = 375;

  double getHeight(double targetWidgetHeight, BuildContext context) {
    var e = MediaQuery.of(context).size.height;
    return (e * targetWidgetHeight) / targetHeightSize;
  }

  double getWidth(double targetWidgetWidth, BuildContext context) =>
      (MediaQuery.of(context).size.width * targetWidgetWidth) /
      targetWidthSize;
}

final widgetSize = WidgetSize();
