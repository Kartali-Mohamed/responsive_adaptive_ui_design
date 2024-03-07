import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/my_card/custom_card.dart';

class CustomCardPageView extends StatelessWidget {
  final PageController controller;
  const CustomCardPageView({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        controller: controller,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) => const CustomCard());
  }
}
