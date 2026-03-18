import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../tokens/tokens.dart';

/// Typography configuration for the Design System using Encode Sans.
abstract final class DSTypography {
  /// Base text theme using Encode Sans.
  static TextTheme get _baseTextTheme => GoogleFonts.encodeSansTextTheme();

  /// Light text theme.
  static TextTheme get lightTextTheme => _baseTextTheme.copyWith(
    // Display styles
    displayLarge: GoogleFonts.encodeSans(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.12,
      color: DSColors.lightText,
    ),
    displayMedium: GoogleFonts.encodeSans(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.16,
      color: DSColors.lightText,
    ),
    displaySmall: GoogleFonts.encodeSans(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
      color: DSColors.lightText,
    ),

    // Headline styles
    headlineLarge: GoogleFonts.encodeSans(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.25,
      color: DSColors.lightText,
    ),
    headlineMedium: GoogleFonts.encodeSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.29,
      color: DSColors.lightText,
    ),
    headlineSmall: GoogleFonts.encodeSans(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.30,
      color: DSColors.lightText,
    ),

    // Title styles
    titleLarge: GoogleFonts.encodeSans(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.50,
      color: DSColors.lightText,
    ),
    titleMedium: GoogleFonts.encodeSans(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.40,
      color: DSColors.lightText,
    ),
    titleSmall: GoogleFonts.encodeSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.40,
      color: DSColors.lightText,
    ),

    // Label styles
    labelLarge: GoogleFonts.encodeSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.43,
      color: DSColors.lightText,
    ),
    labelMedium: GoogleFonts.encodeSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.5,
      color: DSColors.lightText,
    ),
    labelSmall: GoogleFonts.encodeSans(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.5,
      color: DSColors.lightText,
    ),

    // Body styles
    bodyLarge: GoogleFonts.encodeSans(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.50,
      color: DSColors.lightText,
    ),
    bodyMedium: GoogleFonts.encodeSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.43,
      color: DSColors.lightText,
    ),
    bodySmall: GoogleFonts.encodeSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.33,
      color: DSColors.lightText,
    ),
  );

  /// Dark text theme.
  static TextTheme get darkTextTheme => lightTextTheme.copyWith(
    displayLarge: lightTextTheme.displayLarge?.copyWith(
      color: DSColors.darkText,
    ),
    displayMedium: lightTextTheme.displayMedium?.copyWith(
      color: DSColors.darkText,
    ),
    displaySmall: lightTextTheme.displaySmall?.copyWith(
      color: DSColors.darkText,
    ),
    headlineLarge: lightTextTheme.headlineLarge?.copyWith(
      color: DSColors.darkText,
    ),
    headlineMedium: lightTextTheme.headlineMedium?.copyWith(
      color: DSColors.darkText,
    ),
    headlineSmall: lightTextTheme.headlineSmall?.copyWith(
      color: DSColors.darkText,
    ),
    titleLarge: lightTextTheme.titleLarge?.copyWith(color: DSColors.darkText),
    titleMedium: lightTextTheme.titleMedium?.copyWith(color: DSColors.darkText),
    titleSmall: lightTextTheme.titleSmall?.copyWith(color: DSColors.darkText),
    labelLarge: lightTextTheme.labelLarge?.copyWith(color: DSColors.darkText),
    labelMedium: lightTextTheme.labelMedium?.copyWith(color: DSColors.darkText),
    labelSmall: lightTextTheme.labelSmall?.copyWith(color: DSColors.darkText),
    bodyLarge: lightTextTheme.bodyLarge?.copyWith(color: DSColors.darkText),
    bodyMedium: lightTextTheme.bodyMedium?.copyWith(color: DSColors.darkText),
    bodySmall: lightTextTheme.bodySmall?.copyWith(color: DSColors.darkText),
  );

  /// Custom text styles for specific use cases.
  static TextStyle get cardTitle => GoogleFonts.encodeSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.33,
  );

  /// Card subtitle text style.
  static TextStyle get cardSubtitle => GoogleFonts.encodeSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.43,
  );

  /// Button label text style.
  static TextStyle get buttonText => GoogleFonts.encodeSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.0,
  );

  /// Chip label text style.
  static TextStyle get chipText => GoogleFonts.encodeSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.0,
  );

  /// Navigation label text style.
  static TextStyle get navigationText => GoogleFonts.encodeSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.33,
  );

  /// Font family name for consistent usage.
  static String get fontFamily => GoogleFonts.encodeSans().fontFamily!;

  /// Named font weights for Encode Sans.
  static const FontWeight thin = FontWeight.w100;
  static const FontWeight extraLight = FontWeight.w200;
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}
