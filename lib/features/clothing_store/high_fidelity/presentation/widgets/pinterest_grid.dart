import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import 'widgets.dart';

class PinterestGrid extends StatelessWidget {
  const PinterestGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: _PinterestGridContent(),
    );
  }
}

class _PinterestGridContent extends ConsumerWidget {
  const _PinterestGridContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProducts = ref.watch(productsProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      child: switch (asyncProducts) {
        AsyncData(:final value) => _PinterestGridData(products: value),
        AsyncError(:final error) => _PinterestGridErrorSnackBar(
          error: error,
          ref: ref,
        ),
        _ => const _PinterestGridSkeleton(),
      },
    );
  }
}

class _PinterestGridData extends StatelessWidget {
  const _PinterestGridData({required this.products});

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 24,
      crossAxisSpacing: 16,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return PinterestGridItem(product: products[index]);
      },
    );
  }
}

class _PinterestGridErrorSnackBar extends StatelessWidget {
  const _PinterestGridErrorSnackBar({required this.error, required this.ref});

  final Object error;
  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    // Trigger SnackBar on build
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text(
            'We couldn\'t load products. Please try again.',
          ),
          duration: Duration(seconds: 5),
          behavior: SnackBarBehavior.floating,
        ),
      );
    });

    // Return skeleton while showing SnackBar
    return const _PinterestGridSkeleton();
  }
}

class _PinterestGridSkeleton extends StatelessWidget {
  const _PinterestGridSkeleton();

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
