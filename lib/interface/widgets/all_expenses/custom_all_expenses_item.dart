import 'package:flutter/material.dart';

import '../../models/item_all_expenses_model.dart';
import 'custom_all_expenses_active_item.dart';
import 'custom_all_expenses_no_active_item.dart';

class CustomAllExpensesItem extends StatelessWidget {
  final ItemAllExpensesModel itemAllExpensesModel;
  final bool isSelected;
  const CustomAllExpensesItem(
      {super.key,
      required this.itemAllExpensesModel,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CustomAllExpensesActiveItem(
            itemAllExpensesModel: itemAllExpensesModel)
        : CustomAllExpensesNoActiveItem(
            itemAllExpensesModel: itemAllExpensesModel);
  }
}
