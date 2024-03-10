import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class HeaderQuickInvoice extends StatelessWidget {
  const HeaderQuickInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(Icons.add, color: Color(0xFF4EB7F2)),
        )
      ],
    );
  }
}
