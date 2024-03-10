import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import '../../models/item_transaction_model.dart';

class CustomItemTransaction extends StatelessWidget {
  final ItemTransactionModel itemTransactionModel;
  const CustomItemTransaction({
    super.key,
    required this.itemTransactionModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          itemTransactionModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          itemTransactionModel.date,
          style: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          itemTransactionModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: itemTransactionModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A)),
        ),
      ),
    );
  }
}
