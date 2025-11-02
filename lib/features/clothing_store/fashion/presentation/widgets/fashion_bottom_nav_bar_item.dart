import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/providers/providers.dart';
import '../../../../../shared/widgets/widgets.dart';

class FashionBottomNavBarItem extends ConsumerWidget {
  const FashionBottomNavBarItem({
    super.key,
    this.size = 24.0,
    required this.index,
    required this.icon,
    required this.selectedIcon,
    this.showNotificationDot = false,
  });

  final int index;
  final double? size;
  final IconData icon;
  final IconData selectedIcon;
  final bool showNotificationDot;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final currentIndex = ref.watch(navigationStateProvider);

    return SizedBox(
      child: Stack(
        children: [
          CircularIcon(
            size: size,
            width: 60.0,
            height: 60.0,
            iconColor: currentIndex == index
                ? const Color(0xFF704F38)
                : Colors.grey,
            icon: currentIndex == index ? selectedIcon : icon,
            backgroundColor: currentIndex == index
                ? Colors.white
                : Colors.transparent,
            onPressed: () {
              ref.read(navigationStateProvider.notifier).setPage(index);
            },
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
    );
  }
}
