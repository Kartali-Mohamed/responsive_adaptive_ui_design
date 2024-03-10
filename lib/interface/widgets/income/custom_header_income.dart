import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

import '../all_expenses/custom_range_options.dart';

class CustomHeaderIncome extends StatelessWidget {
  const CustomHeaderIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Income", style: AppStyles.styleSemiBold20(context)),
        const CustomRangeOptions()
      ],
    );
  }
}
