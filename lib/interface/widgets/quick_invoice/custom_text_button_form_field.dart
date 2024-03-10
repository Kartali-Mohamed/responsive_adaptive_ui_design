import 'package:flutter/material.dart';

import '../../../utils/app_styles.dart';

class CustomTextButtonFormField extends StatelessWidget {
  const CustomTextButtonFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 62,
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          // color: const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text('Add more details',
            style: AppStyles.styleSemiBold18(context)
                .copyWith(color: const Color(0xFF4EB7F2))));
  }
}
