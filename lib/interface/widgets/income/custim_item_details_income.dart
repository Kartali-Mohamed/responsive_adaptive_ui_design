import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

import '../../models/item_detail_income.dart';

class CustomItemDetailsIncome extends StatelessWidget {
  final ItemDetailIncome itemDetailIncome;
  const CustomItemDetailsIncome({super.key, required this.itemDetailIncome});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: Color(itemDetailIncome.color),
            shape: const OvalBorder(),
          )),
      title: Text(itemDetailIncome.title,
          style: AppStyles.styleRegular16(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis),
      trailing: Text("${itemDetailIncome.value}%",
          style: AppStyles.styleMedium16(context)
              .copyWith(color: const Color(0xFF208CC8))),
    );
  }
}
