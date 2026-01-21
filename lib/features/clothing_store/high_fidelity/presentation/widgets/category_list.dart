import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import 'widgets.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      pinned: true,
      floating: false,
      primary: false,
      toolbarHeight: 0,
      automaticallyImplyLeading: false,

      bottom: PreferredSize(
        preferredSize: Size.fromHeight(44.0),
        child: _CategoryListContent(),
      ),
    );
  }
}

class _CategoryListContent extends ConsumerWidget {
  const _CategoryListContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncCategories = ref.watch(categoriesProvider);

    return Container(
      height: 44.0,
      padding: const EdgeInsets.only(bottom: 8.0),
      color: Colors.white,
      child: switch (asyncCategories) {
        AsyncData(:final value) => _CategoryList(categories: value),
        AsyncError() => const CustomErrorSnackBar(
          message: 'We couldn\'t load categories. Please try again.',
          widget: CategoryListSkeleton(),
        ),
        _ => const CategoryListSkeleton(),
      },
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CategoryItem(category: categories[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 16.0),
    );
  }
}

class CategoryListSkeleton extends StatelessWidget {
  const CategoryListSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 4,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => CategoryItemSkeleton(count: index),
      separatorBuilder: (context, index) => const SizedBox(width: 16.0),
    );
  }
}
