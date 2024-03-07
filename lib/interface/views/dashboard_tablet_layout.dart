import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/views/dashboard_mobile_layout.dart';

import '../widgets/drawer/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(top: 40),
              child: DashboardMobileLayout(),
            )),
        SizedBox(width: 24),
      ],
    );
  }
}
