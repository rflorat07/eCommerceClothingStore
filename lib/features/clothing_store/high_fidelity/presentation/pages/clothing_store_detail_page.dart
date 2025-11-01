import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../core/router/app_router.dart';
import '../../../../../core/theme/theme.dart';
import '../../../../../shared/extensions/extensions.dart';
import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';

class ClothingStoreDetailPage extends StatelessWidget {
  const ClothingStoreDetailPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      bottomNavigationBar: _buildBottomNavigationBar(textTheme, context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            24.0,
            kToolbarHeight + 24.0,
            24.0,
            24.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16.0,
            children: [
              Stack(
                children: [
                  _buildHeaderImage(context),
                  _buildBackButton(colorScheme, context),
                ],
              ),

              _buildDetail(textTheme, colorScheme, context),
              _buildDescription(textTheme, colorScheme),

              const Divider(color: AppColors.divider),

              _buildChoose(textTheme, colorScheme),
            ],
          ),
        ),
      ),
    );
  }

  SafeArea _buildBottomNavigationBar(
    TextTheme textTheme,
    BuildContext context,
  ) {
    return SafeArea(
      child: Container(
        height: 60.0,
        margin: const EdgeInsets.symmetric(horizontal: 24.0),
        child: FilledButton(
          onPressed: () {
            context.push(AppRoutes.clothingStoreCheckout);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4.0,
            children: [
              const Icon(IconsaxPlusLinear.shopping_cart, size: 24.0),
              const SizedBox(width: 4.0),
              Text(
                'Add to Cart | \$${product.price}',
                style: textTheme.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '\$${product.discountPercentage}',
                style: textTheme.labelSmall?.copyWith(
                  color: Colors.white,
                  decorationThickness: 2.0,
                  decorationColor: Colors.white,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildChoose(TextTheme textTheme, ColorScheme colorScheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildChooseSize(textTheme, colorScheme),
        _buildChooseColor(textTheme, colorScheme),
      ],
    );
  }

  Column _buildChooseSize(TextTheme textTheme, ColorScheme colorScheme) {
    return Column(
      spacing: 8.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Choose Size',
          style: textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),

        Row(
          children: [
            ...List.generate(
              product.availableSizes.length,
              (
                index,
              ) {
                final size = product.availableSizes[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: RoundedContainer(
                    radius: 13.0,
                    width: 26.0,
                    height: 26.0,
                    showBorder: true,
                    borderColor: colorScheme.outline,
                    child: Center(
                      child: Text(
                        size,
                        style: textTheme.labelMedium,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Column _buildChooseColor(TextTheme textTheme, ColorScheme colorScheme) {
    return Column(
      spacing: 8.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Color',
          style: textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),

        Row(
          children: [
            ...List.generate(
              product.availableColors.length,
              (
                index,
              ) {
                final color = product.availableColors[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: RoundedContainer(
                    radius: 13.0,
                    width: 26.0,
                    height: 26.0,
                    backgroundColor: color.hexCode.toColor,
                  ),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Text _buildDescription(TextTheme textTheme, ColorScheme colorScheme) {
    return Text(
      product.description,
      style: textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
        height: 1.5,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  Container _buildDetail(
    TextTheme textTheme,
    ColorScheme colorScheme,
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Row(
        spacing: 2.0,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 2.0,
              children: [
                Text(product.title, style: textTheme.headlineSmall),

                Row(
                  spacing: 8.0,
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 20.0,
                    ),

                    Row(
                      spacing: 4.0,
                      children: [
                        Text(
                          '${product.rating.rate}',
                          style: textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),

                        Text(
                          '(${product.rating.count} reviews)',
                          style: textTheme.bodySmall?.copyWith(
                            color: AppColors.info,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          _buildAddProduct(colorScheme, textTheme),
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
          width: 32.0,
          height: 32.0,
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
          width: 32.0,
          height: 32.0,
          showBorder: true,
          onPressed: () {},
          icon: IconsaxPlusLinear.add,
          iconColor: colorScheme.primary,
          borderColor: colorScheme.outline,
        ),
      ],
    );
  }

  ClipRRect _buildHeaderImage(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.asset(
        product.images.first,
        width: double.infinity,
        height: size.height * 0.48,
        fit: BoxFit.cover,
      ),
    );
  }

  Positioned _buildBackButton(ColorScheme colorScheme, BuildContext context) {
    return Positioned(
      top: 16.0,
      left: 16.0,
      right: 16.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircularIcon(
            width: 40.0,
            height: 40.0,
            size: 24.0,
            iconColor: colorScheme.primary,
            icon: IconsaxPlusLinear.arrow_left_1,
            backgroundColor: colorScheme.outlineVariant,
            boxShadow: BoxShadow(
              blurRadius: 12,
              offset: const Offset(0, 4),
              color: colorScheme.primary.withValues(alpha: 0.1),
            ),
            onPressed: () {
              context.canPop()
                  ? context.pop()
                  : Navigator.of(context).maybePop();
            },
          ),

          CircularIcon(
            width: 40.0,
            height: 40.0,
            size: 24.0,
            iconColor: colorScheme.primary,
            icon: product.isFavorite
                ? IconsaxPlusBold.heart
                : IconsaxPlusLinear.heart,
            backgroundColor: colorScheme.outlineVariant,
            boxShadow: BoxShadow(
              blurRadius: 12,
              offset: const Offset(0, 4),
              color: colorScheme.primary.withValues(alpha: 0.1),
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
