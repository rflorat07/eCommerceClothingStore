import 'package:flutter/material.dart';

import '../../../../shared/widgets/widgets.dart';

class CustomerInfo extends StatelessWidget {
  const CustomerInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          spacing: 4.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Welcome 👋',
              style: textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.w400,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            Text(
              'Albert Stevano',
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        CircularImage(
          width: 32.0,
          height: 32.0,
          backgroundColor: colorScheme.primaryContainer,
          image: 'assets/images/profile.png',
        ),
      ],
    );
  }
}
