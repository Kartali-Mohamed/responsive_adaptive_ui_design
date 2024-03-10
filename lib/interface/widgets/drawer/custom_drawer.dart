import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/custom_user_info_list_tile.dart';
import 'package:responsive_adaptive_ui_design/utils/app_images.dart';

import 'custom_bottom_drawer_column.dart';
import 'custom_items_drawer_listview.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: CustomUserInfoListTile(
                image: Assets.imagesAvatar3,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com"),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          CustomItemsDrawerListView(),
          SliverFillRemaining(
              hasScrollBody: false, child: CustomBottomDrawerColumn())
        ],
      ),
    );
  }
}
