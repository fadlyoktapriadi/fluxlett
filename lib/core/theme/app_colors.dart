import 'package:flutter/material.dart';

class AppColors {

  static final AppColors _instance = AppColors._internal();

  factory AppColors() => _instance;

  AppColors._internal();

//0xFF0A2947
  Color primary = const Color(0xFF4382DF);
  Color secondary = const Color(0xFF4BB8FA);
  Color danger = const Color(0xFFFF5B5B);
  Color softGrey = const Color(0xFFBDBDBD);
  Color softBlack = const Color(0xFF2D2D2D);
  Color white = const Color(0xFFFFFFFF);
  Color grey = const Color(0xFF7A8296);
  Color surface = const Color(0xFFF4F4F4);

}