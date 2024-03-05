import 'dart:math';

import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class CustomRangeOptions extends StatelessWidget {
  const CustomRangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(width: 1, color: Color(0xFFF1F1F1))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Monthly",
            style: AppStyles.styleMedium16,
          ),
          const SizedBox(width: 18),
          Transform.rotate(
              angle: pi * 1.5,
              child: const Icon(Icons.arrow_back_ios_new_rounded,
                  color: Color(0xFF064061)))
        ],
      ),
    );
  }
}
