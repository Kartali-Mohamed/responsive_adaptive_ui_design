import 'package:flutter/material.dart';

import '../widgets/all_expenses_and_quick_invoice_section.dart';
import '../widgets/card_and_transaction_section.dart';
import '../widgets/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: AllExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(child: CardAndTransactionSection())
      ],
    );
  }
}
