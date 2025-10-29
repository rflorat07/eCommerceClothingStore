import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../shared/providers/providers.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;

    final currentIndex = ref.watch(navigationStateProvider);

    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: currentIndex,
        children: const [
          ClothingStoreHomePage(),
          Center(child: Text('Shopping Bag Page')),
          Center(child: Text('Favorites Page')),
          Center(child: Text('Profile Page')),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 60,
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: colorScheme.primary,
            borderRadius: BorderRadius.circular(44.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomBottomNavBarItem(
                index: 0,
                icon: IconsaxPlusLinear.home_1,
                selectedIcon: IconsaxPlusBold.home_1,
              ),
              CustomBottomNavBarItem(
                index: 1,
                showNotificationDot: true,
                icon: IconsaxPlusLinear.shopping_bag,
                selectedIcon: IconsaxPlusBold.shopping_bag,
              ),
              CustomBottomNavBarItem(
                index: 2,
                icon: IconsaxPlusLinear.heart,
                selectedIcon: IconsaxPlusBold.heart,
              ),
              CustomBottomNavBarItem(
                index: 3,
                icon: IconsaxPlusLinear.profile,
                selectedIcon: IconsaxPlusBold.profile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
