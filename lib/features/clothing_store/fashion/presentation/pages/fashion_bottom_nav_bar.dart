import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/providers/providers.dart';
import '../../../../../shared/widgets/widgets.dart';
import '../widgets/widgets.dart';
import 'pages.dart';

class FashionBottomNavBar extends ConsumerWidget {
  const FashionBottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(navigationStateProvider);
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          FashionHomePage(),
          Center(child: Text('Shopping Bag Page')),
          Center(child: Text('Favorites Page')),
          Center(child: Text('Messages Page')),
          Center(child: Text('Profile Page')),
        ],
      ),
      bottomNavigationBar: const SafeArea(
        child: RoundedContainer(
          width: double.infinity,
          height: 72.0,
          radius: 44.0,
          isBorderRadiusCircular: true,
          padding: EdgeInsets.all(6.0),
          margin: EdgeInsets.symmetric(horizontal: 24.0),
          backgroundColor: Color(0xFF1F2029),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FashionBottomNavBarItem(
                index: 0,
                icon: IconsaxPlusLinear.home_1,
                selectedIcon: IconsaxPlusBold.home_1,
              ),
              FashionBottomNavBarItem(
                index: 1,
                icon: IconsaxPlusLinear.bag_2,
                selectedIcon: IconsaxPlusBold.bag_2,
              ),
              FashionBottomNavBarItem(
                index: 2,
                icon: IconsaxPlusLinear.heart,
                selectedIcon: IconsaxPlusBold.heart,
              ),
              FashionBottomNavBarItem(
                index: 3,
                icon: IconsaxPlusLinear.message,
                selectedIcon: IconsaxPlusBold.message,
              ),
              FashionBottomNavBarItem(
                index: 4,
                icon: IconsaxPlusLinear.profile_circle,
                selectedIcon: IconsaxPlusBold.profile_circle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
