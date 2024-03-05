import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_styles.dart';
import '../../models/item_all_expenses_model.dart';

class CustomAllExpensesActiveItem extends StatelessWidget {
  const CustomAllExpensesActiveItem({
    super.key,
    required this.itemAllExpensesModel,
  });

  final ItemAllExpensesModel itemAllExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(14),
                decoration: ShapeDecoration(
                    color: Colors.white.withOpacity(0.10000000149011612),
                    shape: const OvalBorder()),
                child: SvgPicture.asset(itemAllExpensesModel.image,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn))),
            const Spacer(),
            Transform.rotate(
                angle: pi,
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white))
          ],
        ),
        const SizedBox(height: 34),
        Text(itemAllExpensesModel.title,
            style: AppStyles.styleMedium16.copyWith(color: Colors.white)),
        const SizedBox(height: 8),
        Text(itemAllExpensesModel.date,
            style: AppStyles.styleRegular14
                .copyWith(color: const Color(0xFFFAFAFA))),
        const SizedBox(height: 16),
        Text(itemAllExpensesModel.date,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
      ]),
    );
  }
}
