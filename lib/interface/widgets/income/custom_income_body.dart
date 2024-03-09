import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/size_config.dart';

import 'custom_chart_income.dart';
import 'custom_details_income.dart';

class CustomIncomeBody extends StatelessWidget {
  const CustomIncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return context.screenWidth >= SizeConfig.desktop &&
            context.screenWidth < 1640
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: CustomChartIncome()),
              SizedBox(width: 20),
              Expanded(flex: 2, child: CustomDetailsIncome())
            ],
          );
  }
}
