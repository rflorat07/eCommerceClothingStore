import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/widgets/appbar/tcustom_app_bar.dart';

class ClothingStoreSearchPage extends StatelessWidget {
  const ClothingStoreSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TCustomAppBar(title: 'Search', showBackButton: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SearchBar(
              hintText: 'Search',
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 12.0),
              ),
              leading: const Icon(
                IconsaxPlusLinear.search_normal_1,
                size: 20.0,
              ),
              elevation: WidgetStateProperty.all(0.0),
              constraints: const BoxConstraints(minHeight: 44.0),
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              side: WidgetStateProperty.all(
                BorderSide(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              onChanged: (value) => {
                // Implement search logic here
                print(
                  'Searching for: $value',
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
