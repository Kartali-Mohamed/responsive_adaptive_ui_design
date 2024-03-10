import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/my_card/custom_card_page_view.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

import 'custom_list_dot_indecator.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController _pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    _pageController = PageController();
    _pageController.addListener(() {
      currentPageIndex = _pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My card',
          style: AppStyles.styleSemiBold20(context),
        ),
        const SizedBox(height: 20),
        CustomCardPageView(controller: _pageController),
        const SizedBox(height: 19),
        CustomListDotIndecator(currentIndex: currentPageIndex)
      ],
    );
  }
}
