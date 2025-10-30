import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Typography configuration for the application using Encode Sans font
class AppTypography {
  /// Private constructor
  AppTypography._();

  /// Base text theme using Encode Sans
  static TextTheme get _baseTextTheme => GoogleFonts.encodeSansTextTheme();

  /// Light text theme
  static TextTheme get lightTextTheme => _baseTextTheme.copyWith(
    // Display styles
    displayLarge: GoogleFonts.encodeSans(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.12,
      color: const Color(0xFF121111),
    ),
    displayMedium: GoogleFonts.encodeSans(
      fontSize: 45,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.16,
      color: const Color(0xFF121111),
    ),
    displaySmall: GoogleFonts.encodeSans(
      fontSize: 36,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.22,
      color: const Color(0xFF121111),
    ),

    // Headline styles
    headlineLarge: GoogleFonts.encodeSans(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.25,
      color: const Color(0xFF121111),
    ),
    headlineMedium: GoogleFonts.encodeSans(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.29,
      color: const Color(0xFF121111),
    ),
    headlineSmall: GoogleFonts.encodeSans(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      letterSpacing: 0,
      height: 1.30,
      color: const Color(0xFF121111),
    ),

    // Title styles
    titleLarge: GoogleFonts.encodeSans(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.50,
      color: const Color(0xFF121111),
    ),
    titleMedium: GoogleFonts.encodeSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.50,
      color: const Color(0xFF121111),
    ),
    titleSmall: GoogleFonts.encodeSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.43,
      color: const Color(0xFF121111),
    ),

    // Label styles
    labelLarge: GoogleFonts.encodeSans(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.43,
      color: const Color(0xFF121111),
    ),
    labelMedium: GoogleFonts.encodeSans(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0,
      height: 1.5,
      color: const Color(0xFF121111),
    ),
    labelSmall: GoogleFonts.encodeSans(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.5,
      color: const Color(0xFF121111),
    ),

    // Body styles
    bodyLarge: GoogleFonts.encodeSans(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.50,
      color: const Color(0xFF121111),
    ),
    bodyMedium: GoogleFonts.encodeSans(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.43,
      color: const Color(0xFF121111),
    ),
    bodySmall: GoogleFonts.encodeSans(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      height: 1.33,
      color: const Color(0xFF121111),
    ),
  );

  /// Dark text theme
  static TextTheme get darkTextTheme => lightTextTheme.copyWith(
    // Display styles
    displayLarge: lightTextTheme.displayLarge?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    displayMedium: lightTextTheme.displayMedium?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    displaySmall: lightTextTheme.displaySmall?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),

    // Headline styles
    headlineLarge: lightTextTheme.headlineLarge?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    headlineMedium: lightTextTheme.headlineMedium?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    headlineSmall: lightTextTheme.headlineSmall?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),

    // Title styles
    titleLarge: lightTextTheme.titleLarge?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    titleMedium: lightTextTheme.titleMedium?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    titleSmall: lightTextTheme.titleSmall?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),

    // Label styles
    labelLarge: lightTextTheme.labelLarge?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    labelMedium: lightTextTheme.labelMedium?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    labelSmall: lightTextTheme.labelSmall?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),

    // Body styles
    bodyLarge: lightTextTheme.bodyLarge?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    bodyMedium: lightTextTheme.bodyMedium?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
    bodySmall: lightTextTheme.bodySmall?.copyWith(
      color: const Color(0xFFE6E1E5),
    ),
  );

  /// Custom text styles for specific use cases
  static TextStyle get cardTitle => GoogleFonts.encodeSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 0,
    height: 1.33,
  );

  static TextStyle get cardSubtitle => GoogleFonts.encodeSans(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.43,
  );

  static TextStyle get buttonText => GoogleFonts.encodeSans(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.0,
  );

  static TextStyle get chipText => GoogleFonts.encodeSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.0,
  );

  static TextStyle get navigationText => GoogleFonts.encodeSans(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    height: 1.33,
  );

  /// Font family name for consistent usage
  static String get fontFamily => GoogleFonts.encodeSans().fontFamily!;

  /// Font weights available for Encode Sans
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
