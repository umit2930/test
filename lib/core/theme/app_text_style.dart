import 'package:flutter/material.dart';
import 'package:untitled1/core/theme/app_colors.dart';

class AppTextStyle {
  static TextStyle setLineHeightInPixel(TextStyle style, double pixel) =>
      style.copyWith(height: pixel / style.fontSize!);

  static Color fontColor = AppColors.nature.shade900;

  static TextStyle title1 = setLineHeightInPixel(
      TextStyle(fontSize: 38, fontWeight: FontWeight.w800, color: fontColor),
      40);
  static TextStyle title2 = setLineHeightInPixel(
      TextStyle(fontSize: 20, fontWeight: FontWeight.w800, color: fontColor),
      40);
  static TextStyle title3 = setLineHeightInPixel(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: fontColor),
      32);
  static TextStyle title4 = setLineHeightInPixel(
      TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: fontColor),
      28);
  static TextStyle title5 = setLineHeightInPixel(
      TextStyle(fontSize: 12, fontWeight: FontWeight.w800, color: fontColor),
      24);

  static TextStyle subTitle1 = setLineHeightInPixel(
      TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: fontColor),
      48);
  static TextStyle subTitle2 = setLineHeightInPixel(
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: fontColor),
      40);
  static TextStyle subTitle3 = setLineHeightInPixel(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: fontColor),
      32);
  static TextStyle subTitle4 = setLineHeightInPixel(
      TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: fontColor),
      28);
  static TextStyle subTitle5 = setLineHeightInPixel(
      TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: fontColor),
      24);

  static TextStyle button1 = setLineHeightInPixel(
      TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: fontColor),
      48);
  static TextStyle button2 = setLineHeightInPixel(
      TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: fontColor),
      40);
  static TextStyle button3 = setLineHeightInPixel(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: fontColor),
      32);
  static TextStyle button4 = setLineHeightInPixel(
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: fontColor),
      28);
  static TextStyle button5 = setLineHeightInPixel(
      TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: fontColor),
      24);

  static TextStyle body1 = setLineHeightInPixel(
      TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: fontColor),
      48);
  static TextStyle body2 = setLineHeightInPixel(
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: fontColor),
      40);
  static TextStyle body3 = setLineHeightInPixel(
      TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: fontColor),
      32);
  static TextStyle body4 = setLineHeightInPixel(
      TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: fontColor),
      28);
  static TextStyle body5 = setLineHeightInPixel(
      TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: fontColor),
      24);
  static TextStyle body6 = setLineHeightInPixel(
      TextStyle(fontSize: 10, fontWeight: FontWeight.w400, color: fontColor),
      20);
}
