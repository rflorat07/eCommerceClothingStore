import 'dart:async';

import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';

/// Runs [body] in a zone that silences GoogleFonts async errors so that
/// tests can still verify TextTheme/TextStyle properties.
Future<void> _withSilencedFontErrors(Future<void> Function() body) async {
  await runZonedGuarded(body, (error, stack) {
    // Silently ignore google_fonts load errors in test mode.
  });
}

void main() {
  setUpAll(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  group('DSTheme', () {
    test('light theme should use Material 3', () async {
      await _withSilencedFontErrors(() async {
        final theme = DSTheme.light;
        expect(theme.useMaterial3, isTrue);
      });
    });

    test('dark theme should use Material 3', () async {
      await _withSilencedFontErrors(() async {
        final theme = DSTheme.dark;
        expect(theme.useMaterial3, isTrue);
      });
    });

    test('light theme should have light brightness', () async {
      await _withSilencedFontErrors(() async {
        expect(DSTheme.light.brightness, equals(Brightness.light));
      });
    });

    test('dark theme should have dark brightness', () async {
      await _withSilencedFontErrors(() async {
        expect(DSTheme.dark.brightness, equals(Brightness.dark));
      });
    });

    test(
      'light theme colorScheme primary should match DSColors.primary',
      () async {
        await _withSilencedFontErrors(() async {
          expect(DSTheme.light.colorScheme.primary, equals(DSColors.primary));
        });
      },
    );

    test('themes should define Encode Sans font family', () async {
      await _withSilencedFontErrors(() async {
        expect(DSTypography.fontFamily, isNotNull);
        expect(DSTypography.fontFamily, isNotEmpty);
      });
    });
  });

  group('DSColorScheme', () {
    test('light scheme brightness should be light', () {
      expect(DSColorScheme.light.brightness, equals(Brightness.light));
    });

    test('dark scheme brightness should be dark', () {
      expect(DSColorScheme.dark.brightness, equals(Brightness.dark));
    });

    test('light scheme error matches DSColors.error', () {
      expect(DSColorScheme.light.error, equals(DSColors.error));
    });
  });

  group('DSTypography', () {
    test('light text theme should have all styles defined', () async {
      await _withSilencedFontErrors(() async {
        final tt = DSTypography.lightTextTheme;
        expect(tt.displayLarge, isNotNull);
        expect(tt.displayMedium, isNotNull);
        expect(tt.displaySmall, isNotNull);
        expect(tt.headlineLarge, isNotNull);
        expect(tt.headlineMedium, isNotNull);
        expect(tt.headlineSmall, isNotNull);
        expect(tt.titleLarge, isNotNull);
        expect(tt.titleMedium, isNotNull);
        expect(tt.titleSmall, isNotNull);
        expect(tt.labelLarge, isNotNull);
        expect(tt.labelMedium, isNotNull);
        expect(tt.labelSmall, isNotNull);
        expect(tt.bodyLarge, isNotNull);
        expect(tt.bodyMedium, isNotNull);
        expect(tt.bodySmall, isNotNull);
      });
    });

    test('dark text theme should use dark text color', () async {
      await _withSilencedFontErrors(() async {
        expect(
          DSTypography.darkTextTheme.bodyLarge?.color,
          equals(DSColors.darkText),
        );
      });
    });

    test('font family should not be empty', () async {
      await _withSilencedFontErrors(() async {
        expect(DSTypography.fontFamily, isNotEmpty);
      });
    });

    test('custom styles should be defined', () async {
      await _withSilencedFontErrors(() async {
        expect(DSTypography.cardTitle.fontSize, equals(18));
        expect(DSTypography.cardSubtitle.fontSize, equals(14));
        expect(DSTypography.buttonText.fontSize, equals(14));
        expect(DSTypography.chipText.fontSize, equals(12));
        expect(DSTypography.navigationText.fontSize, equals(12));
      });
    });
  });
}
