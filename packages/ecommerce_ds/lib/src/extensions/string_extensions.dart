import 'package:flutter/material.dart';

/// Extension methods on [String] for common transformations and validations.
extension DSStringExtensions on String {
  /// Whether the string is empty.
  bool get isNullOrEmpty => isEmpty;

  /// Whether the string is not empty.
  bool get isNotNullOrEmpty => isNotEmpty;

  /// Capitalizes the first letter and lowercases the rest.
  String get capitalize {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Capitalizes the first letter of every word.
  String get titleCase {
    if (isEmpty) return this;
    return split(' ').map((word) => word.capitalize).join(' ');
  }

  /// Truncates to [maxLength] and appends [suffix].
  String truncate(int maxLength, {String suffix = '...'}) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}$suffix';
  }

  /// Collapses multiple whitespace characters into a single space.
  String get removeExtraSpaces {
    return replaceAll(RegExp(r'\s+'), ' ').trim();
  }

  /// Whether the string is a valid email address.
  bool get isValidEmail {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(this);
  }

  /// Whether the string starts with `http://` or `https://`.
  bool get isValidUrl {
    return RegExp(r'^https?:\/\/.+').hasMatch(this);
  }

  /// Parses a hex color string (e.g. `#FF5733`) into a [Color].
  Color get toColor {
    String hex = replaceAll('#', '');
    if (hex.length == 6) {
      hex = 'FF$hex';
    }
    return Color(int.parse(hex, radix: 16));
  }
}
