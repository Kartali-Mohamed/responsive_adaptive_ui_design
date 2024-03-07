import 'package:flutter/material.dart';

import 'custom_dot_indecator.dart';

class CustomListDotIndecator extends StatelessWidget {
  final int currentIndex;
  const CustomListDotIndecator({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
          3,
          (index) => Padding(
                padding: const EdgeInsets.only(right: 6),
                child: CustomDotIndecator(isActive: index == currentIndex),
              )),
    );
  }
}
