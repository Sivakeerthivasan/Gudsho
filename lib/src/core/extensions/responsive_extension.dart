import 'package:flutter/material.dart';

extension ResponsiveSize on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;

  double w(double px) {
    return screenWidth * (px / screenWidth);
  }

  double h(double px) {
    return screenHeight * (px / screenHeight);
  }
}
