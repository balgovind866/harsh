import 'package:flutter/material.dart';

/// A class representing a color palette.
class Palette {
  // E5EEF8
  /// A custom MaterialColor for a shade of dark color.
  static const MaterialColor kToDark = MaterialColor(
    0XFFFFFFFF, // Primary color value in hexadecimal format
    <int, Color>{
      50: Color(0xff0073e6), //50%
      100: Color(0xff0066cc), //100%
      200: Color(0xff005ab3), //200%
      300: Color(0xff004d99), //300%
      400: Color(0xff004080), //400%
      500: Color(0xff003366), //500%
      600: Color(0xff00264c), //600%
      700: Color(0xff001a33), //700%
      800: Color(0xff000d19), //800%
      900: Color(0xff000000), //900%
    },
  );
  /// A custom MaterialColor for a shade of dark color.
  static const MaterialColor kToLight = MaterialColor(
    0XFF0D0E0F, // Primary color value in hexadecimal format
    <int, Color>{
      50: Color(0xffffffff), //50%
      100: Color(0xffe6f2ff), //100%
      200: Color(0xffcce6ff), //200%
      300: Color(0xffb3d9ff), //300%
      400: Color(0xff99ccff), //400%
      500: Color(0xff80c0ff), //500%
      600: Color(0xff66b3ff), //600%
      700: Color(0xff4da6ff), //700%
      800: Color(0xff3399ff), //800%
      900: Color(0xff1a8dff), //900%
    },
  );
}
