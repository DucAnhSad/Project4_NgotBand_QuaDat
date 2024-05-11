import 'package:flutter/material.dart';

class MyColors{
  MyColors._();

  // App basic color
  static const Color primary = Color(0xff4460f5);
  static const Color secondary = Color(0xffd5c140);
  static const Color accent = Color(0xff8d95bb);

  // Gradient Colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0, 0),
      end: Alignment(0.7, -0.7),
      colors: [
        Color(0x9E2C707C),
        Color(0x9E4AD0C0),
        Color(0x9E56D572),
      ],
  );

  // Text color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = MyColors.light.withOpacity(0.1);

  // Button color
  static const Color buttonPrimary = Color(0xff3e53c2);
  static const Color buttonSecondary = Color(0xFF696E73);
  static const Color buttonDisable = Color(0xFFC4C4C4);

  // Border color
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xF14DAD1C);
  static const Color warning = Color(0xFFFF9934);
  static const Color info = Color(0xFF3268E0);

  // Neutral Shades
  static const Color black = Colors.black;
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Colors.white;
}