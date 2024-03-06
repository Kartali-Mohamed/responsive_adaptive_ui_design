import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';
import 'custom_list_latest_transaction.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
        CustomListLatestTransaction()
      ],
    );
  }
}
