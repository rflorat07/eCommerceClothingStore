import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../theme/fashion_app_color.dart';

class FashionSearchBar extends StatelessWidget {
  const FashionSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        spacing: 8.0,
        children: [
          Expanded(
            child: RoundedContainer(
              width: double.infinity,
              height: 44.0,
              showBorder: true,
              borderColor: FashionAppColors.outline,
              padding: const EdgeInsets.fromLTRB(12.0, 11.0, 12.0, 11.0),
              child: Row(
                spacing: 8.0,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    IconsaxPlusLinear.search_normal_1,
                    size: 18.0,
                    color: FashionAppColors.primary,
                  ),
                  Text(
                    'Search',
                    style: textTheme.bodyMedium?.copyWith(
                      color: FashionAppColors.tertiary,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const RoundedContainer(
            height: 44.0,
            width: 44.0,
            radius: 8.0,
            backgroundColor: FashionAppColors.primary,
            child: Icon(
              IconsaxPlusLinear.setting_4,
              size: 20.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
