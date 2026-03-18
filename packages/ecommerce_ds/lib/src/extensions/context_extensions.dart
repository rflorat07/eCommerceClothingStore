import 'package:flutter/material.dart';

/// Convenience extensions on [BuildContext] for quick access to theme and size.
extension DSContextExtension on BuildContext {
  /// The current [ThemeData].
  ThemeData get theme => Theme.of(this);

  /// The current [ColorScheme].
  ColorScheme get colorScheme => theme.colorScheme;

  /// The current [TextTheme].
  TextTheme get textTheme => theme.textTheme;

  /// The screen [Size].
  Size get screenSize => MediaQuery.of(this).size;

  /// The screen height.
  double get screenHeight => screenSize.height;

  /// The screen width.
  double get screenWidth => screenSize.width;

  /// Whether the current brightness is dark.
  bool get isDarkMode => theme.brightness == Brightness.dark;
}
