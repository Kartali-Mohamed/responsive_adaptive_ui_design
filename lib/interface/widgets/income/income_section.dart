import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/income/custom_chart_income.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/income/custom_details_income.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/income/custom_header_income.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          CustomHeaderIncome(),
          SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: CustomChartIncome()),
              SizedBox(width: 40),
              Expanded(flex: 2, child: CustomDetailsIncome())
            ],
          ),
        ],
      ),
    );
  }
}
