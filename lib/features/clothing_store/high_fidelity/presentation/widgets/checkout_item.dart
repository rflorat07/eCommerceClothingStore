import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../core/theme/theme.dart';
import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';

class CheckoutItem extends StatelessWidget {
  const CheckoutItem({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      child: Column(
        spacing: 24.0,
        children: [
          Row(
            spacing: 15.0,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(14.0)),
                child: Image.asset(
                  product.thumbnail,
                  width: 70.0,
                  height: 70.0,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),

              Expanded(
                child: Column(
                  spacing: 4.0,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Icon(IconsaxPlusLinear.more, size: 24.0),
                      ],
                    ),
                    Text(
                      product.categoryName,
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

                        _buildAddProduct(colorScheme, textTheme),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Divider(color: AppColors.divider),
        ],
      ),
    );
  }

  Row _buildAddProduct(ColorScheme colorScheme, TextTheme textTheme) {
    return Row(
      spacing: 12.0,
      children: [
        CircularIcon(
          size: 16.0,
          width: 24.0,
          height: 24.0,
          showBorder: true,
          onPressed: () {},
          icon: IconsaxPlusLinear.minus,
          iconColor: colorScheme.primary,
          borderColor: colorScheme.outline,
        ),

        Text(
          '1',
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),

        CircularIcon(
          size: 16.0,
          width: 24.0,
          height: 24.0,
          showBorder: true,
          onPressed: () {},
          icon: IconsaxPlusLinear.add,
          iconColor: colorScheme.primary,
          borderColor: colorScheme.outline,
        ),
      ],
    );
  }
}
