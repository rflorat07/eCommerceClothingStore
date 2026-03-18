import 'package:flutter/material.dart';

/// Design tokens: Spacing scale for the eCommerce Design System.
abstract final class DSSpacing {
  /// 4.0
  static const double xs = 4.0;

  /// 8.0
  static const double sm = 8.0;

  /// 16.0
  static const double md = 16.0;

  /// 24.0
  static const double lg = 24.0;

  /// 32.0
  static const double xl = 32.0;

  /// 48.0
  static const double xxl = 48.0;

  /// Pre-built gap widgets for convenience.
  static const Widget gapXs = SizedBox(height: xs, width: xs);
  static const Widget gapSm = SizedBox(height: sm, width: sm);
  static const Widget gapMd = SizedBox(height: md, width: md);
  static const Widget gapLg = SizedBox(height: lg, width: lg);
  static const Widget gapXl = SizedBox(height: xl, width: xl);
}
