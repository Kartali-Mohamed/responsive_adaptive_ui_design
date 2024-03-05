import 'package:flutter/material.dart';

import '../custom_background_container.dart';
import 'custom_all_expenses_header.dart';
import 'custom_all_expenses_list.dart';

class CustomAllExpenses extends StatelessWidget {
  const CustomAllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          CustomAllExpensesHeader(),
          SizedBox(height: 16),
          CustomAllExpensesList(),
        ],
      ),
    );
  }
}
