import 'package:flutter/material.dart';

import '../../../utils/app_images.dart';
import '../../models/item_drawer_model.dart';
import 'custom_in_active_item_drawer.dart';

class CustomBottomDrawerColumn extends StatelessWidget {
  const CustomBottomDrawerColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      Expanded(child: SizedBox(height: 48)),
      CustomInActiveItemDrawer(
          itemDrawerModel: ItemDrawerModel(
              title: "Setting system", image: Assets.imagesSetting)),
      CustomInActiveItemDrawer(
          itemDrawerModel: ItemDrawerModel(
              title: "Logout account", image: Assets.imagesLogout)),
      SizedBox(height: 48),
    ]);
  }
}
