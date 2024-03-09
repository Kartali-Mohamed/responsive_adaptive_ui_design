import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/income/custom_header_income.dart';

import 'custom_income_body.dart';

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
          CustomIncomeBody(),
        ],
      ),
    );
  }
}
