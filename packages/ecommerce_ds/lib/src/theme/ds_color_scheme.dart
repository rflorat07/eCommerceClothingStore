import 'package:flutter/material.dart';

import '../tokens/tokens.dart';

/// Light and dark [ColorScheme] definitions for the Design System.
abstract final class DSColorScheme {
  /// Light color scheme.
  static const light = ColorScheme(
    brightness: Brightness.light,
    primary: DSColors.primary,
    onPrimary: Colors.white,
    primaryContainer: DSColors.primaryContainer,
    onPrimaryContainer: Colors.white,
    secondary: DSColors.secondary,
    onSecondary: DSColors.primary,
    secondaryContainer: DSColors.secondaryContainer,
    onSecondaryContainer: Color(0xFF3B2E00),
    tertiary: DSColors.tertiary,
    onTertiary: Colors.white,
    tertiaryContainer: DSColors.tertiaryContainer,
    onTertiaryContainer: Color(0xFF410002),
    error: DSColors.error,
    onError: Colors.white,
    errorContainer: DSColors.errorContainer,
    onErrorContainer: Color(0xFF410E0B),
    surface: DSColors.backgroundLight,
    onSurface: DSColors.primary,
    surfaceContainerHigh: DSColors.surfaceVariantLight,
    onSurfaceVariant: DSColors.neutral40,
    outline: DSColors.outline,
    outlineVariant: DSColors.outlineVariant,
    inverseSurface: DSColors.neutral90,
    onInverseSurface: DSColors.neutral10,
    inversePrimary: Color(0xFFEEEEEE),
    shadow: Colors.black,
    scrim: Colors.black,
  );

  /// Dark color scheme.
  static const dark = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFE5E5E5),
    onPrimary: DSColors.primary,
    primaryContainer: DSColors.neutral80,
    onPrimaryContainer: DSColors.neutral10,
    secondary: DSColors.secondary,
    onSecondary: DSColors.primary,
    secondaryContainer: Color(0xFF5B4500),
    onSecondaryContainer: DSColors.secondaryContainer,
    tertiary: DSColors.tertiary,
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFF7E2B24),
    onTertiaryContainer: Color(0xFFFFDAD5),
    error: DSColors.error,
    onError: Colors.white,
    errorContainer: Color(0xFF8C1D18),
    onErrorContainer: Color(0xFFF9DEDC),
    surface: DSColors.surfaceDark,
    onSurface: DSColors.neutral10,
    surfaceContainerHighest: DSColors.surfaceVariantDark,
    onSurfaceVariant: DSColors.neutral40,
    outline: DSColors.neutral70,
    outlineVariant: DSColors.neutral80,
    inverseSurface: DSColors.neutral10,
    onInverseSurface: DSColors.neutral90,
    inversePrimary: DSColors.primary,
    shadow: Colors.black,
    scrim: Colors.black,
  );
}
