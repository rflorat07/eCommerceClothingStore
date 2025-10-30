import 'package:flutter/material.dart';

class AppColors {
  // Neutral scale
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

  // Accents
  static const primary = neutral100;
  static const primaryContainer = neutral90;
  static const secondary = Color(0xFFFFC107);
  static const secondaryContainer = Color(0xFFFFE08A);
  static const tertiary = neutral60;
  static const tertiaryContainer = neutral60;

  static const error = Color(0xFFF13658);
  static const errorContainer = Color(0xFFF9DEDC);

  // Extra semantic (optional)
  static const success = Color(0xFF28C76F);
  static const info = Color(0xFF347EFB);

  // Surfaces
  static const backgroundLight = neutral0;
  static const surfaceLight = neutral0;
  static const surfaceVariantLight = neutral10;

  static const backgroundDark = neutral100;
  static const surfaceDark = neutral95;
  static const surfaceVariantDark = neutral90;

  // Outline
  static const outline = neutral50;
  static const divider = Color(0xFFF6F6F6);
  static const outlineVariant = neutral20;
}

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: AppColors.primary,
  onPrimary: Colors.white,
  primaryContainer: AppColors.primaryContainer,
  onPrimaryContainer: Colors.white,
  secondary: AppColors.secondary,
  onSecondary: AppColors.primary,
  secondaryContainer: AppColors.secondaryContainer,
  onSecondaryContainer: Color(0xFF3B2E00),
  tertiary: AppColors.tertiary,
  onTertiary: Colors.white,
  tertiaryContainer: AppColors.tertiaryContainer,
  onTertiaryContainer: Color(0xFF410002),
  error: AppColors.error,
  onError: Colors.white,
  errorContainer: AppColors.errorContainer,
  onErrorContainer: Color(0xFF410E0B),
  surface: AppColors.backgroundLight,
  onSurface: AppColors.primary,
  surfaceContainerHigh: AppColors.surfaceVariantLight,
  onSurfaceVariant: AppColors.neutral40,
  outline: AppColors.outline,
  outlineVariant: AppColors.outlineVariant,
  inverseSurface: AppColors.neutral90,
  onInverseSurface: AppColors.neutral10,
  inversePrimary: Color(0xFFEEEEEE),
  shadow: Colors.black,
  scrim: Colors.black,
);

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFE5E5E5),
  onPrimary: AppColors.primary,
  primaryContainer: AppColors.neutral80,
  onPrimaryContainer: AppColors.neutral10,
  secondary: AppColors.secondary,
  onSecondary: AppColors.primary,
  secondaryContainer: Color(0xFF5B4500),
  onSecondaryContainer: AppColors.secondaryContainer,
  tertiary: AppColors.tertiary,
  onTertiary: Colors.white,
  tertiaryContainer: Color(0xFF7E2B24),
  onTertiaryContainer: Color(0xFFFFDAD5),
  error: AppColors.error,
  onError: Colors.white,
  errorContainer: Color(0xFF8C1D18),
  onErrorContainer: Color(0xFFF9DEDC),
  surface: AppColors.surfaceDark,
  onSurface: AppColors.neutral10,
  surfaceContainerHighest: AppColors.surfaceVariantDark,
  onSurfaceVariant: AppColors.neutral40,
  outline: AppColors.neutral70,
  outlineVariant: AppColors.neutral80,
  inverseSurface: AppColors.neutral10,
  onInverseSurface: AppColors.neutral90,
  inversePrimary: AppColors.primary,
  shadow: Colors.black,
  scrim: Colors.black,
);

/* ThemeData buildLightTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.surface,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: AppColors.primary,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: AppColors.primary,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.primary,
      ),
      bodyLarge: TextStyle(fontSize: 16, color: AppColors.primary),
      bodyMedium: TextStyle(fontSize: 14, color: AppColors.neutral80),
      labelSmall: TextStyle(fontSize: 12, color: AppColors.neutral70),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: AppColors.surfaceLight,
      selectedColor: AppColors.primaryContainer,
      labelStyle: const TextStyle(color: AppColors.primary),
      //selectedLabelStyle: const TextStyle(color: Colors.white),
      side: const BorderSide(color: AppColors.outline, width: 1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.surfaceLight,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: const BorderSide(color: AppColors.primary, width: 1.2),
      ),
      hintStyle: const TextStyle(color: AppColors.neutral50),
      prefixIconColor: AppColors.neutral60,
    ),
    cardTheme: CardThemeData(
      color: AppColors.surfaceLight,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      margin: EdgeInsets.zero,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryContainer,
      selectedItemColor: Colors.white,
      unselectedItemColor: AppColors.neutral50,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
    ),
    iconTheme: const IconThemeData(color: AppColors.primary),
    badgeTheme: const BadgeThemeData(
      backgroundColor: AppColors.tertiary,
      textColor: Colors.white,
    ),
  );
}

ThemeData buildDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: darkColorScheme.surface,
  );
}
 */
