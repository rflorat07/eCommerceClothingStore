import 'package:flutter/material.dart';

import '../tokens/tokens.dart';
import 'theme.dart';

/// Main theme provider for the Design System.
abstract final class DSTheme {
  /// Light theme data.
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: DSColorScheme.light,
    textTheme: DSTypography.lightTextTheme,
    fontFamily: DSTypography.fontFamily,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 1,
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DSRadii.large),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(
          horizontal: DSSpacing.lg,
          vertical: DSSpacing.sm + 4,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSRadii.medium),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(DSRadii.medium),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: DSSpacing.md,
        vertical: DSSpacing.sm + 4,
      ),
    ),
  );

  /// Dark theme data.
  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    colorScheme: DSColorScheme.dark,
    textTheme: DSTypography.darkTextTheme,
    fontFamily: DSTypography.fontFamily,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      elevation: 0,
      scrolledUnderElevation: 1,
    ),
    cardTheme: CardThemeData(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DSRadii.large),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        padding: const EdgeInsets.symmetric(
          horizontal: DSSpacing.lg,
          vertical: DSSpacing.sm + 4,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSRadii.medium),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(DSRadii.medium),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: DSSpacing.md,
        vertical: DSSpacing.sm + 4,
      ),
    ),
  );
}
