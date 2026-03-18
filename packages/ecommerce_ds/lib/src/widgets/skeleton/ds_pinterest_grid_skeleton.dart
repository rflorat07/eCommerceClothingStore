import 'package:flutter/material.dart';

import '../widgets.dart';

/// A grid skeleton placeholder that mimics a Pinterest-style masonry layout.
///
/// Requires `flutter_staggered_grid_view` to render the masonry layout.
/// This widget provides just the individual item skeleton.
class DSPinterestGridItemSkeleton extends StatelessWidget {
  const DSPinterestGridItemSkeleton({super.key, required this.index});

  /// The item index used to alternate heights.
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        DSSkeleton(
          width: double.infinity,
          height: index % 2 == 0 ? 217.0 : 251.0,
          radius: 16.0,
        ),
        const DSSkeleton(width: double.infinity, height: 8, radius: 8.0),
        const DSSkeleton(width: 100.0, height: 8.0, radius: 6.0),
        const Row(
          spacing: 24.0,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DSSkeleton(width: 50.0, height: 8.0, radius: 8.0),
            Row(
              spacing: 4.0,
              children: [
                Icon(Icons.star, size: 18.0, color: Colors.amber),
                DSSkeleton(width: 25.0, height: 8.0, radius: 8.0),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
