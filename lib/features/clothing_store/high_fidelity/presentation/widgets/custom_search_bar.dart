import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/widgets/widgets.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 32.0),
        child: Row(
          spacing: 16.0,
          children: [
            Expanded(
              child: RoundedContainer(
                height: 48.0,
                radius: 8.0,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                borderColor: colorScheme.outline,
                showBorder: true,
                child: Row(
                  spacing: 8.0,
                  children: [
                    Icon(
                      IconsaxPlusLinear.search_normal_1,
                      size: 20.0,
                      color: colorScheme.tertiary,
                    ),
                    Text(
                      'Search clothes. . . ',
                      style: textTheme.labelLarge?.copyWith(
                        color: colorScheme.tertiary,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            RoundedContainer(
              height: 48.0,
              width: 48.0,
              radius: 8.0,
              backgroundColor: colorScheme.primary,
              child: const Icon(
                IconsaxPlusLinear.setting_4,
                size: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
