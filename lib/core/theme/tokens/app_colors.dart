import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color.fromARGB(255, 196, 226, 251);

  static const secondary = Color(0xFF6617A3);
  static const secondary2 = Color(0xFF10044F);

  //dark
  static const dark = Color(0xFF121212);
  static const darkLeve = Color(0xFF333333);

  //light
  static const light = Color(0xFFFAFAFA);
  static const lightLeve = Color(0xFFE0E0E0);

  //neutrals
  static const white = Colors.white;
  static const textColor = Colors.black;
  static final textColor2 = Colors.grey.shade700;

  //red
  static const red = Color(0xFFE53935);
  static const redLight = Color(0xFFFFEBEE);
  static const redDark = Color(0xFFB71C1C);

  //green
  static const green = Color(0xFF43A047);
  static const greenLight = Color(0xFFE8F5E9);
  static const greenDark = Color(0xFF2E7D32);

  //blue
  static const blue = Color(0xFF1E88E5);
  static const blueLight = Color(0xFFE3F2FD);
  static const blueDark = Color(0xFF1565C0);
}
