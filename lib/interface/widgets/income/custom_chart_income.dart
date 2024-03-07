import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomChartIncome extends StatelessWidget {
  const CustomChartIncome({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(sectionsSpace: 0, sections: [
      PieChartSectionData(
          value: 40, color: const Color(0xFF208BC7), showTitle: false),
      PieChartSectionData(
          value: 25, color: const Color(0xFF4DB7F2), showTitle: false),
      PieChartSectionData(
          value: 20, color: const Color(0xFF064060), showTitle: false),
      PieChartSectionData(
          value: 22, color: const Color(0xFFE2DECD), showTitle: false),
    ]);
  }
}
