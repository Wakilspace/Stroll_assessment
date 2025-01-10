import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String fontFamily = "Proxima Nova";

class StrollWeight {
  static FontWeight light = FontWeight.w300;
  static FontWeight regular = FontWeight.w400;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
}



TextStyle? _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle? getRegularStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? 14.sp, fontFamily, StrollWeight.regular, color);
}
// light text style

TextStyle? getLightStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? 14.sp, fontFamily, StrollWeight.light, color);
}
// bold text style

TextStyle? getBoldStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? 14.sp, fontFamily, StrollWeight.bold, color);
}

// semi bold text style

TextStyle? getSemiBoldStyle(
    {double? fontSize, required Color color}) {
  return _getTextStyle(
      fontSize ?? 14.sp, fontFamily, StrollWeight.semiBold, color);
}




