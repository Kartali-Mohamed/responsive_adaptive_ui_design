import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_adaptive_ui_design/utils/app_styles.dart';

class CustomUserInfoListTile extends StatelessWidget {
  final String image, title, subtitle;
  const CustomUserInfoListTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 15),
      child: Card(
        color: const Color(0xFFFAFAFA),
        elevation: 0,
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: Text(title, style: AppStyles.styleSemiBold16),
          subtitle: Text(subtitle, style: AppStyles.styleRegular12),
        ),
      ),
    );
  }
}
