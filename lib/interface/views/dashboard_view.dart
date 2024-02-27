import 'package:flutter/material.dart';

import '../widgets/adaptive_layout.dart';
import 'dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';
import 'dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tableLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
