import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';
import '../../models/item_drawer_model.dart';
import 'custom_item_drawer.dart';

class CustomItemsDrawerListView extends StatefulWidget {
  const CustomItemsDrawerListView({
    super.key,
  });

  @override
  State<CustomItemsDrawerListView> createState() =>
      _CustomItemsDrawerListViewState();
}

class _CustomItemsDrawerListViewState extends State<CustomItemsDrawerListView> {
  final List<ItemDrawerModel> items = [
    const ItemDrawerModel(title: "Dashboard", image: Assets.imagesDashboard),
    const ItemDrawerModel(
        title: "My Transaction", image: Assets.imagesTransaction),
    const ItemDrawerModel(title: "Statistics", image: Assets.imagesStatistic),
    const ItemDrawerModel(title: "Wallet Account", image: Assets.imagesWallet),
    const ItemDrawerModel(
        title: "My Investments", image: Assets.imagesInvestment)
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomItemDrawer(
                  itemDrawerModel: items[index],
                  isActive: activeIndex == index,
                ),
              ),
            ));
  }
}
