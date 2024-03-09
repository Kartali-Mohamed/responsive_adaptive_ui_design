import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tableLayout, desktopLayout;
  const AdaptiveLayout(
      {super.key,
      required this.mobileLayout,
      required this.tableLayout,
      required this.desktopLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < SizeConfig.tablet) {
        return mobileLayout(context);
      } else if (constraints.maxWidth < SizeConfig.desktop) {
        return tableLayout(context);
      } else {
        return desktopLayout(context);
      }
    });
  }
}
