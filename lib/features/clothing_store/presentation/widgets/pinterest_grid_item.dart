import 'package:flutter/material.dart';

class PinterestGridItem extends StatelessWidget {
  const PinterestGridItem({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

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
          child: Image.asset(imagePath, fit: BoxFit.cover),
        ),

        Text(
          'Modern Light Clothes',
          style: textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),

        Text(
          'T-Shirt',
          style: textTheme.labelSmall?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),

        Row(
          spacing: 24.0,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              '\$212.99',
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),

            Row(
              spacing: 4.0,
              children: [
                const Icon(Icons.star, size: 18.0, color: Colors.amber),
                Text(
                  '4.8',
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
