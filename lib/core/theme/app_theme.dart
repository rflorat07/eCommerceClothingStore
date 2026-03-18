/// Re-exports the Design System theme.
///
/// Provides [AppTheme] with `lightTheme` and `darkTheme` getters
/// that delegate to [DSTheme.light] and [DSTheme.dark].
library;

import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';

export 'package:ecommerce_ds/ecommerce_ds.dart' show DSTheme;

/// Backward-compatible wrapper around [DSTheme].
abstract final class AppTheme {
  /// Light theme data.
  static ThemeData get lightTheme => DSTheme.light;

  /// Dark theme data.
  static ThemeData get darkTheme => DSTheme.dark;
}
