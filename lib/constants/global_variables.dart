import 'package:flutter/material.dart';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(colors: [
    Color.fromARGB(10, 10, 10, 192),
    Color.fromARGB(10, 10, 10, 216),
  ], stops: [
    0.5,
    1.0
  ]);

  static final mainGradientColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFF0A1D56).withOpacity(0.8),
        // Colors.deepPurple.shade800.withOpacity(0.8),
        const Color(0xFF474F7A).withOpacity(0.8),
        // Colors.deepPurple.shade200.withOpacity(0.8),
      ]);

  static final metadataGradientColor = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFF474F7A).withOpacity(0.8),
        const Color(0xFF0A1D56).withOpacity(0.8),
      ]);

  static const Color greyBackgroundColor = Color(0xff0A2647);
  static var musicPlayBackground = Colors.cyan[200]!;

  static const backgroundColor = Color(0xFF0A1D56);
  static const secondaryColor = Color(0xFF474F7A);
  static const mainTextColor = Colors.white;
  static const selectedNavbarColor = Colors.white;
  static const unselectedNavbarColor = Colors.white;
}
