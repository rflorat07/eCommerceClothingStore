import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DSRoundedContainer', () {
    testWidgets('renders child widget', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: DSRoundedContainer(child: Text('Hello'))),
        ),
      );
      expect(find.text('Hello'), findsOneWidget);
    });

    testWidgets('calls onTap when tapped', (tester) async {
      var tapped = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: DSRoundedContainer(
              onTap: () => tapped = true,
              child: const Text('Tap me'),
            ),
          ),
        ),
      );
      await tester.tap(find.text('Tap me'));
      expect(tapped, isTrue);
    });
  });

  group('DSCircularIcon', () {
    testWidgets('renders icon', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: DSCircularIcon(icon: Icons.favorite)),
        ),
      );
      expect(find.byIcon(Icons.favorite), findsOneWidget);
    });
  });

  group('DSRoundedImage', () {
    test('widget properties are correctly assigned', () {
      const widget = DSRoundedImage(
        imageUrl: 'test.png',
        isNetworkImage: false,
        borderRadius: 12.0,
      );
      expect(widget.imageUrl, equals('test.png'));
      expect(widget.isNetworkImage, isFalse);
      expect(widget.borderRadius, equals(12.0));
    });
  });

  group('DSSkeleton', () {
    testWidgets('renders with given dimensions', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: DSSkeleton(width: 100, height: 20)),
        ),
      );
      expect(find.byType(DSSkeleton), findsOneWidget);
    });
  });

  group('DSCircleSkeleton', () {
    testWidgets('renders with default size', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(home: Scaffold(body: DSCircleSkeleton())),
      );
      expect(find.byType(DSCircleSkeleton), findsOneWidget);
    });
  });
}
