import 'dart:ui';
import 'package:flutter/material.dart';

class StaticStyle {
  static TextStyle style(double? fontSize, int color, FontWeight? fontWeight) {
    return TextStyle(
      fontSize: fontSize,
      color: Color(color),
      fontWeight: fontWeight,
    );
  }
}
