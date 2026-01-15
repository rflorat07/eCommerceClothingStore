import 'package:flutter/material.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../data/models/category_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return RoundedContainer(
      showBorder: true,
      height: 34.0,
      radius: 8.0,
      margin: EdgeInsets.only(
        left: category.slug == 'all' ? 24.0 : 0.0,
      ),
      backgroundColor: category.slug == 'all'
          ? colorScheme.primary
          : Colors.transparent,
      borderColor: category.slug == 'all'
          ? Colors.transparent
          : colorScheme.outline,
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      child: Row(
        spacing: 4.0,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icono dinámico según la categoría
          Image.asset(
            'assets/icons/${category.icon ?? 'jeans'}.png',
            width: 16.0,
            height: 16.0,
          ),
          Text(
            category.name,
            style: textTheme.labelMedium?.copyWith(
              color: category.slug == 'all'
                  ? Colors.white
                  : colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItemSkeleton extends StatelessWidget {
  const CategoryItemSkeleton({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      height: 34.0,
      radius: 8.0,
      margin: EdgeInsets.only(
        left: count == 0 ? 24.0 : 0.0,
      ),
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      child: const Row(
        spacing: 4.0,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Skeleton(width: 16.0, height: 16.0),
          Skeleton(width: 48.0, height: 7.0),
        ],
      ),
    );
  }
}
