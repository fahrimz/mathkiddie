import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color primary = Color(0xFF88A3F4);
  static const Color error = Color(0xFFF5222D);
  static const Color background = Color(0xFFF0F1F4);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF262626);
}

class AppTextStyle {
  AppTextStyle._();

  static const title = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    letterSpacing: 2,
    color: AppColor.black,
  );

  static const question = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.04,
    color: AppColor.black,
  );

  static const button = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.white,
  );

  static const helper = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.04,
    color: AppColor.primary,
  );

  static const helper2 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColor.black,
  );

  static const error = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColor.error,
  );
}
