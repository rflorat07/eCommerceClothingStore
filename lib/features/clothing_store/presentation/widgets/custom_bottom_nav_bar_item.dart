import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/providers/providers.dart';
import '../../../../shared/widgets/widgets.dart';

class CustomBottomNavBarItem extends ConsumerWidget {
  const CustomBottomNavBarItem({
    super.key,
    required this.index,
    required this.icon,
    required this.selectedIcon,
    this.showNotificationDot = false,
  });

  final int index;
  final IconData icon;
  final IconData selectedIcon;
  final bool showNotificationDot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final currentIndex = ref.watch(navigationStateProvider);

    return SizedBox(
      child: InkWell(
        onTap: () {
          ref.read(navigationStateProvider.notifier).setPage(index);
        },
        child: Stack(
          children: [
            CircularIcon(
              width: 40.0,
              height: 40.0,
              iconColor: Colors.white,
              icon: currentIndex == index ? selectedIcon : icon,
              backgroundColor: Colors.white.withValues(alpha: 0.05),
            ),

            if (currentIndex == index)
              const Positioned(
                left: 18.0,
                right: 18.0,
                bottom: 3.0,
                child: CircularIcon(
                  width: 4.0,
                  height: 4.0,
                  backgroundColor: Colors.white,
                ),
              ),

            if (showNotificationDot)
              Positioned(
                top: 12.0,
                right: 10.0,
                child: CircularIcon(
                  width: 8.0,
                  height: 8.0,
                  backgroundColor: colorScheme.error,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
