import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../shared/widgets/widgets.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import 'widgets.dart';

class FashionCategoryList extends ConsumerWidget {
  const FashionCategoryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(fashionCategoriesProvider);

    return SizedBox(
      height: 88.0,
      width: double.infinity,
      child: asyncValue.when(
        data: (categories) => _buildCategoryList(categories),
        loading: () => _buildShimmerLoading(),
        error: (error, _) =>
            Center(child: Text('Error loading categories: $error')),
      ),
    );
  }

  /// Builds the category list
  ListView _buildCategoryList(List<Category> categories) {
    return ListView.separated(
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      itemBuilder: (context, index) {
        return CategoryListItem(index: index, category: categories[index]);
      },
      separatorBuilder: (context, index) => const SizedBox(width: 16.0),
    );
  }

  /// Builds the loading widget with shimmer
  Widget _buildShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.separated(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _buildShimmerItem(index);
        },
        separatorBuilder: (context, index) => const SizedBox(width: 24.0),
      ),
    );
  }

  /// Builds a shimmer item for loading state
  Container _buildShimmerItem(int index) {
    return Container(
      margin: EdgeInsets.only(left: index == 0 ? 24.0 : 0.0),
      child: Column(
        spacing: 4.0,
        children: [
          const CircularIcon(
            size: 30.0,
            width: 64.0,
            height: 64.0,
          ),
          Container(
            height: 12.0,
            width: 64.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
        ],
      ),
    );
  }
}
