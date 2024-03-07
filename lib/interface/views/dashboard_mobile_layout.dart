import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/all_expenses_and_quick_invoice_section.dart';

import '../widgets/card_and_transaction_section.dart';
import '../widgets/income/income_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          CardAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
