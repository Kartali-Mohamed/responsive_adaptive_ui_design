import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_styles.dart';
import '../../models/item_drawer_model.dart';

class CustomActiveItemDrawer extends StatelessWidget {
  const CustomActiveItemDrawer({
    super.key,
    required this.itemDrawerModel,
  });

  final ItemDrawerModel itemDrawerModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(itemDrawerModel.image),
      title: Text(itemDrawerModel.title,
          style: AppStyles.styleBold16(context),
          maxLines: 1,
          overflow: TextOverflow.ellipsis),
      trailing: Container(
        width: 3.27,
        decoration: const BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
