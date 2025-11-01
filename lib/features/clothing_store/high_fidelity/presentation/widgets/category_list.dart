import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/providers.dart';
import 'widgets.dart';

class CategoryList extends ConsumerWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoriesProvider);

    return SliverAppBar(
      pinned: true,
      floating: false,
      primary: false,
      toolbarHeight: 0,
      automaticallyImplyLeading: false,

      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(44.0),
        child: Container(
          height: 44.0,
          padding: const EdgeInsets.only(bottom: 8.0),
          color: Colors.white,
          child: ListView.separated(
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return CategoryItem(category: categories[index]);
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16.0),
          ),
        ),
      ),
    );
  }
}
