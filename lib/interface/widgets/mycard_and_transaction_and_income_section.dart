import 'package:flutter/material.dart';

import 'card_and_transaction_section.dart';
import 'income/income_section.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 40),
        CardAndTransactionSection(),
        SizedBox(height: 24),
        IncomeSection(),
      ],
    );
  }
}
