import 'package:flutter/material.dart';

/// Design tokens: Color palette for the eCommerce Design System.
abstract final class DSColors {
  /// Neutral scale
  static const neutral0 = Color(0xFFFFFFFF);
  static const neutral5 = Color(0xFFF9FAFB);
  static const neutral10 = Color(0xFFF2F3F5);
  static const neutral20 = Color(0xFFFDFDFD);
  static const neutral30 = Color(0xFFD3D4D6);
  static const neutral40 = Color(0xFF787676);
  static const neutral50 = Color(0xFFDFDEDE);
  static const neutral60 = Color(0xFFCAC9C9);
  static const neutral70 = Color(0xFF5C5F63);
  static const neutral80 = Color(0xFF3D4043);
  static const neutral90 = Color(0xFF272727);
  static const neutral95 = Color(0xFF292526);
  static const neutral100 = Color(0xFF292526);

  /// Accents
  static const primary = neutral100;
  static const primaryContainer = neutral90;
  static const secondary = Color(0xFFFFC107);
  static const secondaryContainer = Color(0xFFFFE08A);
  static const tertiary = neutral60;
  static const tertiaryContainer = neutral60;

  /// Semantic
  static const error = Color(0xFFF13658);
  static const errorContainer = Color(0xFFF9DEDC);
  static const success = Color(0xFF28C76F);
  static const info = Color(0xFF347EFB);

  /// Surfaces - Light
  static const backgroundLight = neutral0;
  static const surfaceLight = neutral0;
  static const surfaceVariantLight = neutral10;

  /// Surfaces - Dark
  static const backgroundDark = neutral100;
  static const surfaceDark = neutral95;
  static const surfaceVariantDark = neutral90;

  /// Outline
  static const outline = neutral50;
  static const divider = Color(0xFFF6F6F6);
  static const outlineVariant = neutral20;

  /// Dark theme text color
  static const darkText = Color(0xFFE6E1E5);

  /// Light theme text color
  static const lightText = Color(0xFF121111);
}
