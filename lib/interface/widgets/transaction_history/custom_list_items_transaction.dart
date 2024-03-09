import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/models/item_transaction_model.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/transaction_history/custom_item_transaction.dart';

class CustomListItemsTransaction extends StatelessWidget {
  const CustomListItemsTransaction({super.key});

  static const List<ItemTransactionModel> items = [
    ItemTransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: r"$20,129",
        isWithdrawal: true),
    ItemTransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: r"$2,000",
        isWithdrawal: false),
    ItemTransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: r"$20,129",
        isWithdrawal: false)
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        children: items
            .map((e) => CustomItemTransaction(itemTransactionModel: e))
            .toList());
  }
}
