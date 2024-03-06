import 'package:flutter/material.dart';

import 'custom_button_form_field.dart';
import 'custom_item_form_field.dart';
import 'custom_text_button_form_field.dart';

class FormFieldQuickInvoice extends StatelessWidget {
  const FormFieldQuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomItemFormField(
                  title: "Customer name", hint: "Type customer name"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomItemFormField(
                  title: "Customer email", hint: "Type customer email"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomItemFormField(
                  title: "Item name", hint: "Type customer name"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomItemFormField(title: "Item mount", hint: "USD"),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomTextButtonFormField(),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomButtonFormField(),
            ),
          ],
        ),
      ],
    );
  }
}
