import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../widgets.dart';

class PinterestGridSkeleton extends StatelessWidget {
  const PinterestGridSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 24.0,
      crossAxisSpacing: 16.0,
      itemCount: 6,
      itemBuilder: (_, index) => PinterestGridItemSkeleton(index: index),
    );
  }
}

class PinterestGridItemSkeleton extends StatelessWidget {
  const PinterestGridItemSkeleton({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        Stack(
          children: [
            Skeleton(
              width: double.infinity,
              height: index % 2 == 0 ? 217.0 : 251.0,
              radius: 16.0,
            ),

            const Positioned(
              top: 14.0,
              right: 14.0,
              child: CircularIcon(
                size: 15.0,
                width: 24.0,
                height: 24.0,
                icon: IconsaxPlusLinear.heart,
                backgroundColor: Colors.black,
                iconColor: Colors.white,
              ),
            ),
          ],
        ),

        const Skeleton(
          width: double.infinity,
          height: 8,
          radius: 8.0,
        ),

        const Skeleton(
          width: 100.0,
          height: 8.0,
          radius: 6.0,
        ),

        const Row(
          spacing: 24.0,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Skeleton(
              width: 50.0,
              height: 8.0,
              radius: 8.0,
            ),

            Row(
              spacing: 4.0,
              children: [
                Icon(Icons.star, size: 18.0, color: Colors.amber),
                Skeleton(
                  width: 25.0,
                  height: 8.0,
                  radius: 8.0,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
