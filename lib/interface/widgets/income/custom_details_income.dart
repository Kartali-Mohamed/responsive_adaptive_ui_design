import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/models/item_detail_income.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/income/custim_item_details_income.dart';

class CustomDetailsIncome extends StatelessWidget {
  const CustomDetailsIncome({super.key});

  static const List<ItemDetailIncome> items = [
    ItemDetailIncome(color: 0xFF208BC7, title: "Design service", value: "40"),
    ItemDetailIncome(color: 0xFF4DB7F2, title: "Design product", value: "25"),
    ItemDetailIncome(color: 0xFF064060, title: "Product royalti", value: "20"),
    ItemDetailIncome(color: 0xFFE2DECD, title: "Other", value: "22"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => CustomItemDetailsIncome(itemDetailIncome: e))
          .toList(),
    );
  }
}
