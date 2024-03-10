import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop =
      1200; // This Point is Changeable Depends on Project
  static const double tablet =
      900; // This Point is Changeable Depends on Project
}

extension SizeExtension on BuildContext {
  double get screenHeight => MediaQuery.sizeOf(this).height;
  double get screenWidth => MediaQuery.sizeOf(this).width;
}
