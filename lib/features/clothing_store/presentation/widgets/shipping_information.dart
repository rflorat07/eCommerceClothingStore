import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../shared/widgets/widgets.dart';
import 'widgets.dart';

class ShippingInformation extends StatelessWidget {
  const ShippingInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      spacing: 16.0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping Information',
          style: textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),

        _buildVisaInformation(textTheme),
        _buildTotalInformation(textTheme, colorScheme),
      ],
    );
  }

  Column _buildTotalInformation(TextTheme textTheme, ColorScheme colorScheme) {
    return const Column(
      spacing: 12.0,
      children: [
        ShippingInformationItem(
          label: 'Total (2 items)',
          value: '\$375.98',
        ),
        ShippingInformationItem(
          label: 'Shipping Fee)',
          value: '\$0.00',
        ),
        ShippingInformationItem(
          label: 'Discount',
          value: '\$0.00',
        ),

        Divider(color: AppColors.divider),

        ShippingInformationItem(
          label: 'Sub Total',
          value: '\$375.98',
        ),
      ],
    );
  }

  RoundedContainer _buildVisaInformation(TextTheme textTheme) {
    return RoundedContainer(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 16.0),
      backgroundColor: const Color(0xFFF2F2F2),
      child: Row(
        children: [
          Expanded(
            child: Row(
              spacing: 12.0,
              children: [
                Image.asset(
                  'assets/icons/visa-icon.png',
                  height: 30,
                ),

                Text(
                  '**** **** **** 2143',
                  style: textTheme.titleSmall,
                ),
              ],
            ),
          ),

          const Icon(
            IconsaxPlusLinear.arrow_down,
            size: 20.0,
          ),
        ],
      ),
    );
  }
}
