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
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 1, color: Color(0xFF4EB7F2))),
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
                      decoration: ShapeDecoration(
                          color: Colors.white.withOpacity(0.10000000149011612),
                          shape: const OvalBorder()),
                      child: Center(
                        child: SvgPicture.asset(itemAllExpensesModel.image,
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn)),
                      )),
                ),
              ),
            ),
            const Spacer(),
            Transform.rotate(
                angle: pi,
                child: const Icon(Icons.arrow_back_ios_new_rounded,
                    color: Colors.white))
          ],
        ),
        const SizedBox(height: 34),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(itemAllExpensesModel.title,
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: Colors.white)),
        ),
        const SizedBox(height: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(itemAllExpensesModel.date,
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: const Color(0xFFFAFAFA))),
        ),
        const SizedBox(height: 16),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(itemAllExpensesModel.price,
              style: AppStyles.styleSemiBold24(context)
                  .copyWith(color: Colors.white)),
        ),
      ]),
    );
  }
}
