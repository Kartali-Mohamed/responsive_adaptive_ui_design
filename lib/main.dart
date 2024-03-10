import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'interface/views/dashboard_view.dart';

void main() {
  runApp(DevicePreview(
      enabled: true, builder: (context) => const ResponsiveDashboard()));
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
