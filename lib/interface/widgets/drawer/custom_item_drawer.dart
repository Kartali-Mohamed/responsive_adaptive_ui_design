import 'package:flutter/material.dart';

import '../../models/item_drawer_model.dart';
import 'custom_active_item_drawer.dart';
import 'custom_in_active_item_drawer.dart';

class CustomItemDrawer extends StatelessWidget {
  final ItemDrawerModel itemDrawerModel;
  final bool isActive;
  const CustomItemDrawer(
      {super.key, required this.itemDrawerModel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? CustomActiveItemDrawer(itemDrawerModel: itemDrawerModel)
        : CustomInActiveItemDrawer(itemDrawerModel: itemDrawerModel);
  }
}
