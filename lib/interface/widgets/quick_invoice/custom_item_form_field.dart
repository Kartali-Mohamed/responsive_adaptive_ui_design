import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/quick_invoice/custom_text_field.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

class CustomItemFormField extends StatelessWidget {
  final String title, hint;
  const CustomItemFormField(
      {super.key, required this.title, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
