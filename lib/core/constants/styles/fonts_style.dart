import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle semiBold(
          {String? fontFamily,
          FontWeight? fontWeight,
          double? fontSize,
          Color? fontColor}) =>
      TextStyle(
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: fontSize ?? 18,
        color: fontColor ?? Colors.black,
      );

  static TextStyle medium(
          {String? fontFamily,
          FontWeight? fontWeight,
          double? fontSize,
          Color? fontColor}) =>
      TextStyle(
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: fontSize ?? 14,
        color: fontColor ?? Color(0xff010101),
      );

  static TextStyle bold(
          {String? fontFamily,
          FontWeight? fontWeight,
          double? fontSize,
          Color? fontColor}) =>
      TextStyle(
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: fontSize ?? 18,
        color: fontColor ?? Colors.white,
      );

  static TextStyle regular(
          {String? fontFamily,
          FontWeight? fontWeight,
          double? fontSize,
          Color? fontColor}) =>
      TextStyle(
        fontFamily: fontFamily ?? 'Inter',
        fontWeight: fontWeight ?? FontWeight.w400,
        fontSize: fontSize ?? 10,
        color: fontColor ?? Colors.grey,
      );
}
