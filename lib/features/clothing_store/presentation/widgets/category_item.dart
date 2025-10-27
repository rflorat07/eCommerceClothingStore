import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../shared/widgets/widgets.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.name, required this.iconName});

  final String name;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return RoundedContainer(
      showBorder: true,
      height: 34.0,
      radius: 8.0,
      margin: EdgeInsets.only(left: iconName == 'category' ? 24.0 : 0.0),
      backgroundColor: iconName == 'category'
          ? colorScheme.primary
          : Colors.transparent,
      borderColor: iconName == 'category'
          ? Colors.transparent
          : colorScheme.outline,
      padding: const EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 8.0),
      child: Row(
        spacing: 4.0,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            IconsaxPlusLinear.category,
            size: 16.0,
            color: iconName == 'category' ? Colors.white : colorScheme.primary,
          ),
          Text(
            name,
            style: textTheme.labelMedium?.copyWith(
              color: iconName == 'category'
                  ? Colors.white
                  : colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
