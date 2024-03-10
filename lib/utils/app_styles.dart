import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui_design/utils/get_responsive_font_size.dart';

abstract class AppStyles {
  // static const TextStyle styleRegular12 = TextStyle(
  //     color: Color(0xFFAAAAAA),
  //     fontSize: 12,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w400);

  // static const TextStyle styleRegular14 = TextStyle(
  //     color: Color(0xFFAAAAAA),
  //     fontSize: 14,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w400);

  // static const TextStyle styleRegular16 = TextStyle(
  //     color: Color(0xFF064060),
  //     fontSize: 16,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w400);

  // static const TextStyle styleMedium16 = TextStyle(
  //     color: Color(0xFF064061),
  //     fontSize: 16,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w500);

  // static const TextStyle styleSemiBold16 = TextStyle(
  //     color: Color(0xFF064061),
  //     fontSize: 16,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w600);

  // static const TextStyle styleBold16 = TextStyle(
  //     color: Color(0xFF4EB7F2),
  //     fontSize: 16,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w700);

  // static const TextStyle styleSemiBold18 = TextStyle(
  //     color: Color(0xFFFFFFFF),
  //     fontSize: 18,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w600);

  // static const TextStyle styleMedium20 = TextStyle(
  //     color: Color(0xFFFFFFFF),
  //     fontSize: 20,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w500);

  // static const TextStyle styleSemiBold20 = TextStyle(
  //     color: Color(0xFF064061),
  //     fontSize: 20,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w600);

  // static const TextStyle styleSemiBold24 = TextStyle(
  //     color: Color(0xFF4EB7F2),
  //     fontSize: 24,
  //     fontFamily: 'Montserrat',
  //     fontWeight: FontWeight.w600);

  static TextStyle styleRegular12(context) => TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);

  static TextStyle styleRegular14(context) => TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);

  static TextStyle styleRegular16(context) => TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400);

  static TextStyle styleMedium16(context) => TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);

  static TextStyle styleSemiBold16(context) => TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static TextStyle styleBold16(context) => TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700);

  static TextStyle styleSemiBold18(context) => TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static TextStyle styleMedium20(context) => TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500);

  static TextStyle styleSemiBold20(context) => TextStyle(
      color: const Color(0xFF064061),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);

  static TextStyle styleSemiBold24(context) => TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600);
}
