import 'package:ecommerce_ds/ecommerce_ds.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:widgetbook/widgetbook.dart';

import 'use_cases/use_cases.dart';

/// Widgetbook catalog app for the eCommerce Design System.
///
/// Run with: `flutter run -t widgetbook/widgetbook_app.dart`
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Prevent GoogleFonts from fetching at runtime in catalog.
    GoogleFonts.config.allowRuntimeFetching = false;

    return Widgetbook.material(
      appBuilder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: DSTheme.light,
          darkTheme: DSTheme.dark,
          home: child,
        );
      },
      directories: [tokensCatalog(), themeCatalog(), widgetsCatalog()],
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(name: 'Light', data: DSTheme.light),
            WidgetbookTheme(name: 'Dark', data: DSTheme.dark),
          ],
        ),
        ViewportAddon([
          IosViewports.iPhone13,
          IosViewports.iPadPro11Inches,
          AndroidViewports.samsungGalaxyS20,
        ]),
      ],
    );
  }
}

void main() => runApp(const WidgetbookApp());
