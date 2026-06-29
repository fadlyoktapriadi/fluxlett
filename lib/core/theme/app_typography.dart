import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTypography {

  static final AppTypography _instance = AppTypography._internal();

  factory AppTypography() => _instance;

  AppTypography._internal();

  TextStyle get light => TextStyle(
    fontFamily: 'SF-Pro',
    fontSize: 16.sp,
    fontWeight: FontWeight.w300,
    color: Colors.black,
  );

  TextStyle get regular => TextStyle(
    fontFamily: 'SF-Pro',
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

   TextStyle get medium => TextStyle(
    fontFamily: 'SF-Pro',
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  TextStyle get semiBold => TextStyle(
    fontFamily: 'SF-Pro',
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  TextStyle get bold => TextStyle(
    fontFamily: 'SF-Pro',
    fontSize: 16.sp,
    fontWeight: FontWeight.w800,
    color: Colors.black,
  );

}