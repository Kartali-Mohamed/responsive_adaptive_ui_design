import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class CustomButtonFormField extends StatelessWidget {
  const CustomButtonFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text('Send Money', style: AppStyles.styleSemiBold18(context)));
  }
}
