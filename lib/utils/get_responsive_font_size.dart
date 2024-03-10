import 'dart:ui';

import 'package:flutter/material.dart';

import 'size_config.dart';

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  if (context.screenWidth < SizeConfig.tablet) {
    return context.screenWidth /
        600; // This Point is Changeable Depends on Project
  } else if (context.screenWidth < SizeConfig.desktop) {
    return context.screenWidth /
        1050; // This Point is Changeable Depends on Project
  } else {
    return context.screenWidth /
        1920; // This Point is Changeable Depends on Project
  }
}

// ******************************************
// If I Create Project For Mobile & Tablet
// Use These Steps To Get Screen Width
// Without Using Context Because It Rebuild
// Page In Each Second
// ******************************************
double getScaleFactorWithoutContext() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;

  if (width < SizeConfig.tablet) {
    return width / 600; // This Point is Changeable Depends on Project
  } else if (width < SizeConfig.desktop) {
    return width / 1050; // This Point is Changeable Depends on Project
  } else {
    return width / 1920; // This Point is Changeable Depends on Project
  }
}
