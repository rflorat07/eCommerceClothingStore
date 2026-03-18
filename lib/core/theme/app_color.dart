/// Re-exports the Design System color tokens and color schemes.
///
/// [AppColors] is a backward-compatible alias for [DSColors].
/// [lightColorScheme] and [darkColorScheme] are shortcuts to
/// [DSColorScheme.light] and [DSColorScheme.dark].
library;

import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';

export 'package:ecommerce_ds/ecommerce_ds.dart' show DSColors, DSColorScheme;

/// Backward-compatible alias for [DSColors].
typedef AppColors = DSColors;

/// Light [ColorScheme] — delegates to the Design System.
const ColorScheme lightColorScheme = DSColorScheme.light;

/// Dark [ColorScheme] — delegates to the Design System.
const ColorScheme darkColorScheme = DSColorScheme.dark;
