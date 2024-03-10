import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

class CustomChartIncomeDetail extends StatefulWidget {
  const CustomChartIncomeDetail({super.key});

  @override
  State<CustomChartIncomeDetail> createState() =>
      _CustomChartIncomeDetailState();
}

class _CustomChartIncomeDetailState extends State<CustomChartIncomeDetail> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pietouchResponse) {
            activeIndex =
                pietouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
            title: activeIndex == 0 ? "Design service" : "40%",
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 0 ? null : Colors.white),
            radius: activeIndex == 0 ? 40 : 30,
            value: 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 2.5 : null,
            title: activeIndex == 1 ? "Design product" : "25%",
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 1 ? null : Colors.white),
            radius: activeIndex == 1 ? 40 : 30,
            value: 25,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
            title: activeIndex == 2 ? "Product royalti" : "20%",
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 2 ? null : Colors.white),
            radius: activeIndex == 2 ? 40 : 30,
            value: 20,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
            title: activeIndex == 3 ? "Other" : "22%",
            titleStyle: AppStyles.styleMedium16
                .copyWith(color: activeIndex == 3 ? null : Colors.white),
            radius: activeIndex == 3 ? 40 : 30,
            value: 22,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
