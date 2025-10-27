import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'widgets.dart';

class PinterestGrid extends StatelessWidget {
  const PinterestGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      // Add image URLs or asset paths here
      'assets/images/product_1.png',
      'assets/images/product_2.png',
      'assets/images/product_3.png',
      'assets/images/product_4.png',
      // Add more images as needed
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: MasonryGridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 24,
        crossAxisSpacing: 16,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return PinterestGridItem(imagePath: images[index]);
        },
      ),
    );
  }
}
