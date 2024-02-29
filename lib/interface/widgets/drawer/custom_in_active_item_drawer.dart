import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_styles.dart';
import '../../models/item_drawer_model.dart';

class CustomInActiveItemDrawer extends StatelessWidget {
  const CustomInActiveItemDrawer({
    super.key,
    required this.itemDrawerModel,
  });

  final ItemDrawerModel itemDrawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemDrawerModel.image),
      title: Text(itemDrawerModel.title, style: AppStyles.styleMedium16),
    );
  }
}
