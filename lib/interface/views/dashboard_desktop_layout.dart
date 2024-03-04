import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/all_expenses/all_expenses.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/income/income.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/my_card/my_card.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/quick_invoice/quick_invoice.dart';

import '../widgets/drawer/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 2, child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              SizedBox(height: 40),
              Expanded(child: AllExpenses()),
              SizedBox(height: 24),
              Expanded(child: QuickInvoice()),
              SizedBox(height: 32),
            ],
          ),
        ),
        SizedBox(width: 24),
        Expanded(
            flex: 3,
            child: Column(
              children: [
                SizedBox(height: 40),
                Expanded(flex: 3, child: MyCard()),
                SizedBox(height: 24),
                Expanded(flex: 1, child: Income()),
              ],
            )),
        SizedBox(width: 32),
      ],
    );
  }
}
