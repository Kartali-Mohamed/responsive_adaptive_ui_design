import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/drawer/custom_drawer.dart';

import '../widgets/adaptive_layout.dart';
import 'dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';
import 'dashboard_tablet_layout.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < 900
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu_rounded)),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 900 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
          mobileLayout: (context) => const DashboardMobileLayout(),
          tableLayout: (context) => const DashboardTabletLayout(),
          desktopLayout: (context) => const DashboardDesktopLayout()),
    );
  }
}
