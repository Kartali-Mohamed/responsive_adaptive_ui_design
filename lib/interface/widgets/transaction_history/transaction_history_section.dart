import "package:flutter/material.dart";
import "package:responsive_adaptive_ui_design/interface/widgets/transaction_history/custom_list_items_transaction.dart";
import "package:responsive_adaptive_ui_design/utils/app_styles.dart";

import "custom_header_transaction.dart";

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomHeaderTransaction(),
        const SizedBox(height: 20),
        Text("13 April 2022",
            style: AppStyles.styleMedium16
                .copyWith(color: const Color(0xFFAAAAAA))),
        const SizedBox(height: 16),
        const CustomListItemsTransaction(),
      ],
    );
  }
}
