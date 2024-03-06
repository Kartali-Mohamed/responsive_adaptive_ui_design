import 'package:flutter/material.dart';

import 'all_expenses/custom_all_expenses.dart';
import 'quick_invoice/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 40),
          CustomAllExpenses(),
          SizedBox(height: 24),
          QuickInvoice(),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
