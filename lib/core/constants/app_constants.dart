/// App-wide constants
class AppConstants {
  /// App name
  static const String appName = 'Prototype Viewer';

  /// App version
  static const String appVersion = '1.0.0';

  /// Database name
  static const String databaseName = 'prototype_viewer.db';

  /// Database version
  static const int databaseVersion = 1;

  /// Animation durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 200);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 300);
  static const Duration longAnimationDuration = Duration(milliseconds: 500);

  /// UI Constants
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;

  static const double defaultBorderRadius = 8.0;
  static const double smallBorderRadius = 4.0;
  static const double largeBorderRadius = 16.0;

  /// Private constructor
  AppConstants._();
}
