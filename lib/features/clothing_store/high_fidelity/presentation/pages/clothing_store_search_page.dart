import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/clothing_store_providers.dart';
import '../widgets/widgets.dart';

class ClothingStoreSearchPage extends StatelessWidget {
  const ClothingStoreSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TCustomAppBar(title: 'Search', showBackButton: true),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          spacing: 16.0,
          children: [
            _SearchBar(),
            _ClothingStoreSearchContent(),
          ],
        ),
      ),
    );
  }
}

class _ClothingStoreSearchContent extends ConsumerWidget {
  const _ClothingStoreSearchContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsSearchProvider);

    return Expanded(
      child: switch (asyncProducts) {
        AsyncData(:final value) => _PinterestGridData(products: value),
        AsyncError() => const CustomErrorSnackBar(
          message: 'We couldn\'t load products. Please try again.',
          widget: PinterestGridSkeleton(),
        ),
        _ => const PinterestGridSkeleton(),
      },
    );
  }
}

class _SearchBar extends ConsumerWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SearchBar(
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
        ref.read(productsSearchProvider.notifier).search(value),
      },
    );
  }
}

class _PinterestGridData extends StatelessWidget {
  const _PinterestGridData({required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return products.isEmpty
        ? const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16.0,
            children: [
              Icon(
                IconsaxPlusLinear.search_normal_1,
                size: 50.0,
                color: Colors.grey,
              ),
              Text(
                'No products found',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
              SizedBox(
                height: 60,
              ),
            ],
          )
        : MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 24,
            crossAxisSpacing: 16,
            itemCount: products.length,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemBuilder: (context, index) {
              return PinterestGridItem(product: products[index]);
            },
          );
  }
}
