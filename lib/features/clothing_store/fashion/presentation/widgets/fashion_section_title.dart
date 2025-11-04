import 'package:flutter/material.dart';

import '../theme/fashion_app_color.dart';

class FashionSectionTitle extends StatelessWidget {
  const FashionSectionTitle({
    super.key,
    required this.title,
    this.seeAllText,
  });

  final String title;
  final String? seeAllText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        spacing: 8.0,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              seeAllText ?? 'See All',
              style: textTheme.bodyMedium?.copyWith(
                color: FashionAppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
