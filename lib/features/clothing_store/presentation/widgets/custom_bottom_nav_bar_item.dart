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
  });

  final int index;
  final IconData icon;
  final IconData selectedIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationStateProvider);

    return InkWell(
      onTap: () {
        ref.read(navigationStateProvider.notifier).setPage(index);
      },
      child: Column(
        children: [
          CircularIcon(
            width: 40.0,
            height: 40.0,
            icon: currentIndex == index ? selectedIcon : icon,
            size: 24.0,
            backgroundColor: Colors.white.withValues(alpha: 0.05),
            iconColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
