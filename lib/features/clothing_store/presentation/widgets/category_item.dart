import 'package:flutter/material.dart';

import '../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return RoundedContainer(
      showBorder: true,
      height: 34.0,
      radius: 8.0,
      margin: EdgeInsets.only(
        left: category.name == 'all' ? 24.0 : 0.0,
      ),
      backgroundColor: category.name == 'all'
          ? colorScheme.primary
          : Colors.transparent,
      borderColor: category.name == 'all'
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
            'assets/icons/${category.iconName}.png',
            width: 16.0,
            height: 16.0,
          ),
          Text(
            category.label,
            style: textTheme.labelMedium?.copyWith(
              color: category.name == 'all'
                  ? Colors.white
                  : colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
