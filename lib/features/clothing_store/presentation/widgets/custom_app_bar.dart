import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../shared/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularIcon(
              width: 40.0,
              height: 40.0,
              size: 24.0,
              showBorder: true,
              borderColor: colorScheme.outline,
              iconColor: colorScheme.primary,
              icon: IconsaxPlusLinear.arrow_left_1,
              onPressed: () {
                context.canPop()
                    ? context.pop()
                    : Navigator.of(context).maybePop();
              },
            ),
            // ...existing code...
            Text(
              'Checkout',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            CircularIcon(
              width: 40.0,
              height: 40.0,
              size: 24.0,
              showBorder: true,
              borderColor: colorScheme.outline,
              iconColor: colorScheme.primary,
              icon: IconsaxPlusLinear.menu,
              onPressed: () {
                // Acción al presionar el ícono de la bolsa de compras
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(72.0);
}
