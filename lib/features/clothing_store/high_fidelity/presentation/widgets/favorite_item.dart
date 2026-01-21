import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/theme/theme.dart';
import '../../domain/entities/entities.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      child: Column(
        spacing: 4.0,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(14.0)),
            child: CachedNetworkImage(
              // Replace Image.asset with CachedNetworkImage
              imageUrl: product.thumbnail, // Use the URL
              fit: BoxFit.cover,
              width: 70.0,
              height: 70.0,
              placeholder: (context, url) =>
                  const CircularProgressIndicator(), // Loading indicator
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error), // Error fallback
            ),
          ),

          Text(
            product.title,
            style: textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            product.category,
            style: textTheme.labelSmall?.copyWith(
              color: AppColors.neutral40,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price}',
                style: textTheme.titleMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
