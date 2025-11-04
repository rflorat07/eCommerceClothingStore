import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/widgets/icons/circular_icon.dart';
import '../../domain/entities/entities.dart';
import '../theme/fashion_app_color.dart';

class CategoryListItem extends StatelessWidget {
  const CategoryListItem({
    super.key,
    required this.index,
    required this.category,
  });

  final int index;
  final Category category;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      margin: EdgeInsets.only(left: index == 0 ? 24.0 : 0.0),
      child: Column(
        spacing: 4.0,
        children: [
          const CircularIcon(
            size: 30.0,
            width: 64.0,
            height: 64.0,
            icon: IconsaxPlusBold.shapes,
            iconColor: FashionAppColors.primary,
            backgroundColor: FashionAppColors.primaryContainer,
          ),

          Text(
            category.name,
            style: textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
