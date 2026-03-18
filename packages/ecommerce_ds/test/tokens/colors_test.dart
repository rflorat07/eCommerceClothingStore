import 'dart:ui';

import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSColors', () {
    test('primary should equal neutral100', () {
      expect(DSColors.primary, equals(DSColors.neutral100));
    });

    test('neutral0 should be white', () {
      expect(DSColors.neutral0, equals(const Color(0xFFFFFFFF)));
    });

    test('neutral100 should be dark', () {
      expect(DSColors.neutral100, equals(const Color(0xFF292526)));
    });

    test('error should be red tone', () {
      expect(DSColors.error, equals(const Color(0xFFF13658)));
    });

    test('success should be green tone', () {
      expect(DSColors.success, equals(const Color(0xFF28C76F)));
    });

    test('secondary should be amber tone', () {
      expect(DSColors.secondary, equals(const Color(0xFFFFC107)));
    });

    test('light surfaces should use neutral0', () {
      expect(DSColors.backgroundLight, equals(DSColors.neutral0));
      expect(DSColors.surfaceLight, equals(DSColors.neutral0));
    });

    test('dark surfaces should use dark neutrals', () {
      expect(DSColors.backgroundDark, equals(DSColors.neutral100));
      expect(DSColors.surfaceDark, equals(DSColors.neutral95));
    });
  });
}
