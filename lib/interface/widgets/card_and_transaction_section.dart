import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/my_card/my_card_section.dart';

import 'transaction_history/transaction_history_section.dart';

class CardAndTransactionSection extends StatelessWidget {
  const CardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardSection(),
          SizedBox(height: 20),
          Divider(color: Color(0xFFF1F1F1)),
          SizedBox(height: 20),
          TransactionHistorySection()
        ],
      ),
    );
  }
}
