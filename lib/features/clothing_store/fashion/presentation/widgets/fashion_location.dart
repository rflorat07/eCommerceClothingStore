import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../theme/theme.dart';

class FashionLocation extends StatelessWidget {
  const FashionLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildLocation(textTheme),
          _buildNotification(),
        ],
      ),
    );
  }

  Stack _buildNotification() {
    return const Stack(
      children: [
        CircularIcon(
          size: 24.0,
          width: 38.0,
          height: 38.0,
          icon: IconsaxPlusBold.notification_bing,
          iconColor: FashionAppColors.secondary,
          backgroundColor: FashionAppColors.brightGray,
        ),
        Positioned(
          top: 8.0,
          right: 8.0,
          child: RoundedContainer(
            width: 8.0,
            height: 8.0,
            radius: 6.0,
            showBorder: true,
            borderColor: Colors.white,
            backgroundColor: FashionAppColors.error,
          ),
        ),
      ],
    );
  }

  Column _buildLocation(TextTheme textTheme) {
    return Column(
      spacing: 10.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: textTheme.bodyMedium?.copyWith(
            color: FashionAppColors.tertiary,
          ),
        ),
        Row(
          spacing: 4.0,
          children: [
            const Icon(
              IconsaxPlusBold.location,
              color: FashionAppColors.primary,
              size: 20,
            ),
            Text(
              'New York, USA',
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: FashionAppColors.secondary,
              ),
            ),
            const Icon(
              IconsaxPlusLinear.arrow_down,
              fontWeight: FontWeight.bold,
              color: FashionAppColors.secondary,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}
