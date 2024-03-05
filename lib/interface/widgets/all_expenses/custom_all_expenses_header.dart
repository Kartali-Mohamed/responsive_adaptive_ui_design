import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

import 'custom_range_options.dart';

class CustomAllExpensesHeader extends StatelessWidget {
  const CustomAllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("All Expenses", style: AppStyles.styleSemiBold20),
        CustomRangeOptions()
      ],
    );
  }
}
