import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../core/router/app_router.dart';
import '../../../../shared/widgets/widgets.dart';
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

    return InkWell(
      onTap: () {
        context.push(AppRoutes.clothingStoreDetail, extra: product);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(product.thumbnail, fit: BoxFit.cover),
              ),

              Positioned(
                top: 14.0,
                right: 14.0,
                child: CircularIcon(
                  size: 15.0,
                  width: 24.0,
                  height: 24.0,
                  icon: product.isFavorite
                      ? IconsaxPlusBold.heart
                      : IconsaxPlusLinear.heart,
                  backgroundColor: colorScheme.primary,
                  iconColor: Colors.white,
                ),
              ),
            ],
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
                  fontWeight: FontWeight.w700,
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
      ),
    );
  }
}
