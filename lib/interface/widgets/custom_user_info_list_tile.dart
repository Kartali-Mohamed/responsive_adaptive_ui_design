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
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(image),
          title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(title, style: AppStyles.styleSemiBold16(context))),
          subtitle: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: AlignmentDirectional.centerStart,
              child: Text(subtitle, style: AppStyles.styleRegular12(context))),
        ),
      ),
    );
  }
}
