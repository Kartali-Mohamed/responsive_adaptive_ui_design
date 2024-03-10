import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  const CustomTextField({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          hintText: hint,
          hintStyle: AppStyles.styleRegular16(context)
              .copyWith(color: const Color(0xFFAAAAAA)),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Color(0xFFFAFAFA)));
  }
}
