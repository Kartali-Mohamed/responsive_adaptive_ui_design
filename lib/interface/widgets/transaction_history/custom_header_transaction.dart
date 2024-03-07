import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class CustomHeaderTransaction extends StatelessWidget {
  const CustomHeaderTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text('Transaction History', style: AppStyles.styleSemiBold20),
        const SizedBox(width: 24),
        Text(
          'See all',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0xFF4EB7F2)),
        ),
      ],
    );
  }
}
