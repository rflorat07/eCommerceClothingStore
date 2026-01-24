import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../../shared/widgets/widgets.dart'
    hide PinterestGridItemSkeleton;
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

class ClothingStoreFavoritesPage extends StatelessWidget {
  const ClothingStoreFavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: TCustomAppBar(title: 'Favorites'),
      body: Column(
        spacing: 16.0,
        children: [
          Text('Clothing Store Categories'),
          _ClothingStoreFavoritesContent(),
        ],
      ),
    );
  }
}

class _ClothingStoreFavoritesContent extends ConsumerWidget {
  const _ClothingStoreFavoritesContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsProvider);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: switch (asyncProducts) {
          AsyncData(:final value) => _ClothingStoreFavoritesData(
            products: value,
          ),
          AsyncError() => const CustomErrorSnackBar(
            message: 'We couldn\'t load products. Please try again.',
            widget: _ClothingStoreFavoritesSkeleton(),
          ),
          _ => const _ClothingStoreFavoritesSkeleton(),
        },
      ),
    );
  }
}

class _ClothingStoreFavoritesData extends StatelessWidget {
  const _ClothingStoreFavoritesData({required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 24,
      crossAxisSpacing: 16,
      itemCount: products.length,
      padding: const EdgeInsets.only(bottom: 24.0),
      itemBuilder: (context, index) {
        return PinterestGridItem(product: products[index]);
      },
    );
  }
}

class _ClothingStoreFavoritesSkeleton extends StatelessWidget {
  const _ClothingStoreFavoritesSkeleton();

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 24.0,
      crossAxisSpacing: 16.0,
      itemCount: 6,
      itemBuilder: (_, index) => PinterestGridItemSkeleton(index: index),
    );
  }
}
