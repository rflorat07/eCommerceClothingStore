import 'package:flutter/material.dart';

/// A rectangular skeleton placeholder with a subtle shimmer-like background.
class DSSkeleton extends StatelessWidget {
  const DSSkeleton({
    super.key,
    this.height,
    this.width,
    this.radius = 4.0,
    this.defaultPadding = 16.0,
  });

  /// The height of the skeleton.
  final double? height;

  /// The width of the skeleton.
  final double? width;

  /// The border radius of the skeleton.
  final double radius;

  /// Internal padding.
  final double defaultPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.04),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
      ),
    );
  }
}

/// A circular skeleton placeholder.
class DSCircleSkeleton extends StatelessWidget {
  const DSCircleSkeleton({super.key, this.size = 24});

  /// The diameter of the circle.
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor.withValues(alpha: 0.04),
        shape: BoxShape.circle,
      ),
    );
  }
}
