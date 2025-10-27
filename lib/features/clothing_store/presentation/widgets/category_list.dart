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

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      height: 34.0,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return categories[index];
        },
        separatorBuilder: (context, index) => const SizedBox(width: 16.0),
      ),
    );
  }
}
