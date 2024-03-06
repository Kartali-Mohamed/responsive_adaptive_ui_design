import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/custom_background_container.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/quick_invoice/form_field_quick_invoice.dart';

import 'latest_transaction.dart';
import 'header_quick_invoice.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderQuickInvoice(),
          SizedBox(height: 24),
          LatestTransaction(),
          SizedBox(height: 24),
          Divider(color: Color(0xFFF1F1F1)),
          SizedBox(height: 24),
          FormFieldQuickInvoice()
        ],
      ),
    );
  }
}
