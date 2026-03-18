import 'dart:ui';

import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSStringExtensions', () {
    test('capitalize first letter', () {
      expect('hello'.capitalize, equals('Hello'));
    });

    test('capitalize on empty string returns empty', () {
      expect(''.capitalize, equals(''));
    });

    test('titleCase capitalizes every word', () {
      expect('hello world'.titleCase, equals('Hello World'));
    });

    test('truncate shortens long strings', () {
      expect('abcdefghij'.truncate(5), equals('abcde...'));
    });

    test('truncate with short string returns original', () {
      expect('abc'.truncate(5), equals('abc'));
    });

    test('isValidEmail matches valid emails', () {
      expect('test@example.com'.isValidEmail, isTrue);
      expect('invalid-email'.isValidEmail, isFalse);
    });

    test('isValidUrl matches http/https urls', () {
      expect('https://flutter.dev'.isValidUrl, isTrue);
      expect('not-a-url'.isValidUrl, isFalse);
    });

    test('toColor parses hex string', () {
      expect('#FF5733'.toColor, equals(const Color(0xFFFF5733)));
    });
  });

  group('DSDateTimeExtensions', () {
    test('isToday returns true for today', () {
      expect(DateTime.now().isToday, isTrue);
    });

    test('isToday returns false for yesterday', () {
      final yesterday = DateTime.now().subtract(const Duration(days: 1));
      expect(yesterday.isToday, isFalse);
    });

    test('isYesterday returns true for yesterday', () {
      final yesterday = DateTime.now().subtract(const Duration(days: 1));
      expect(yesterday.isYesterday, isTrue);
    });

    test('formattedDate produces dd/MM/yyyy format', () {
      final date = DateTime(2026, 3, 18);
      expect(date.formattedDate, equals('18/03/2026'));
    });
  });

  group('DSListExtensions', () {
    test('chunk splits list correctly', () {
      final chunks = [1, 2, 3, 4, 5].chunk(2);
      expect(
        chunks,
        equals([
          [1, 2],
          [3, 4],
          [5],
        ]),
      );
    });

    test('randomElement returns null for empty list', () {
      expect(<int>[].randomElement, isNull);
    });

    test('randomElement returns a value for non-empty list', () {
      expect([1, 2, 3].randomElement, isNotNull);
    });
  });
}
