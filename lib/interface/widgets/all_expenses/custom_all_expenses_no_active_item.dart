import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_styles.dart';
import '../../models/item_all_expenses_model.dart';

class CustomAllExpensesNoActiveItem extends StatelessWidget {
  const CustomAllExpensesNoActiveItem({
    super.key,
    required this.itemAllExpensesModel,
  });

  final ItemAllExpensesModel itemAllExpensesModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1))),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints(minWidth: 60, maxHeight: 60),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                      decoration: const ShapeDecoration(
                          color: Color(0xFFFAFAFA), shape: OvalBorder()),
                      child: SvgPicture.asset(itemAllExpensesModel.image)),
                ),
              ),
            ),
            const Spacer(),
            Transform.rotate(
                angle: pi,
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Color(0xFF064061)))
          ],
        ),
        const SizedBox(height: 34),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(itemAllExpensesModel.title,
              style: AppStyles.styleMedium16(context)),
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(itemAllExpensesModel.date,
              style: AppStyles.styleRegular14(context)),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(itemAllExpensesModel.price,
              style: AppStyles.styleSemiBold24(context)),
        ),
      ]),
    );
  }
}
