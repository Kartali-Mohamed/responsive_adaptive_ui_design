import 'package:flutter/material.dart';

class CustomBackgroundContainer extends StatelessWidget {
  final Widget child;
  final double padding;
  const CustomBackgroundContainer({
    super.key,
    required this.child,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: child,
    );
  }
}
