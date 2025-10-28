import 'package:flutter/material.dart';

import '../../domain/entities/entities.dart';

class PinterestGridItem extends StatelessWidget {
  const PinterestGridItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(product.thumbnail, fit: BoxFit.cover),
        ),

        Text(
          product.title,
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

        Text(
          product.categoryName,
          style: textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),

        Row(
          spacing: 24.0,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            Row(
              spacing: 4.0,
              children: [
                const Icon(Icons.star, size: 18.0, color: Colors.amber),
                Text(
                  product.rating.rate.toString(),
                  style: textTheme.labelMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
