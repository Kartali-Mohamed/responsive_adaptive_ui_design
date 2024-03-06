import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/interface/widgets/custom_user_info_list_tile.dart';
import 'package:responsive_adaptive_ui_design/utils/app_images.dart';

class CustomListLatestTransaction extends StatelessWidget {
  const CustomListLatestTransaction({super.key});

  static const List<Widget> users = [
    CustomUserInfoListTile(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
    CustomUserInfoListTile(
        image: Assets.imagesAvatar2,
        title: "Josua Nunito",
        subtitle: "JosuaNunito2@gmail"),
    CustomUserInfoListTile(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: users.map((e) => IntrinsicWidth(child: e)).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //       scrollDirection: Axis.horizontal,
    //       shrinkWrap: true,
    //       itemCount: users.length,
    //       itemBuilder: (context, index) => IntrinsicWidth(child: users[index])),
    // );
  }
}
