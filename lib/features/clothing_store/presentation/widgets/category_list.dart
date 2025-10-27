import 'package:flutter/material.dart';

import 'widgets.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder categories
    final categories = [
      const CategoryItem(name: 'All Items', iconName: 'category'),
      const CategoryItem(name: 'Dress', iconName: 'dress'),
      const CategoryItem(name: 'T-Shirt', iconName: 'tshirt'),
      const CategoryItem(name: 'Jeans', iconName: 'jeans'),
    ];

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
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return categories[index];
            },
            separatorBuilder: (context, index) => const SizedBox(width: 16.0),
          ),
        ),
      ),
    );
  }
}
