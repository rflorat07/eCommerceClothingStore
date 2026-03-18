import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSSpacing', () {
    test('spacing scale should be ascending', () {
      expect(DSSpacing.xs, lessThan(DSSpacing.sm));
      expect(DSSpacing.sm, lessThan(DSSpacing.md));
      expect(DSSpacing.md, lessThan(DSSpacing.lg));
      expect(DSSpacing.lg, lessThan(DSSpacing.xl));
      expect(DSSpacing.xl, lessThan(DSSpacing.xxl));
    });

    test('md should be 16.0 (base unit)', () {
      expect(DSSpacing.md, equals(16.0));
    });
  });

  group('DSRadii', () {
    test('radii scale should be ascending', () {
      expect(DSRadii.none, lessThan(DSRadii.small));
      expect(DSRadii.small, lessThan(DSRadii.medium));
      expect(DSRadii.medium, lessThan(DSRadii.large));
      expect(DSRadii.large, lessThan(DSRadii.extraLarge));
      expect(DSRadii.extraLarge, lessThan(DSRadii.circular));
    });

    test('circular should be 100.0', () {
      expect(DSRadii.circular, equals(100.0));
    });
  });

  group('DSDurations', () {
    test('durations should be ascending', () {
      expect(DSDurations.short, lessThan(DSDurations.medium));
      expect(DSDurations.medium, lessThan(DSDurations.long));
    });

    test('short should be 200ms', () {
      expect(DSDurations.short, equals(const Duration(milliseconds: 200)));
    });
  });
}
