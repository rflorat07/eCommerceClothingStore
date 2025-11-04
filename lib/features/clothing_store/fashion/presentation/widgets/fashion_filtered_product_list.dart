import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../shared/widgets/containers/rounded_container.dart';
import '../../domain/entities/entities.dart';
import '../providers/providers.dart';
import '../theme/theme.dart';

class FashionFilteredProductList extends ConsumerWidget {
  const FashionFilteredProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final asyncValue = ref.watch(fashionCategoriesFiltersProvider);

    return SizedBox(
      height: 40.0,
      child: asyncValue.when(
        data: (categories) => _buildCategoryList(categories, textTheme),
        loading: () => _buildShimmerLoading(),
        error: (error, _) =>
            Center(child: Text('Error loading categories: $error')),
      ),
    );
  }

  _buildCategoryList(List<Category> categories, TextTheme textTheme) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      itemCount: categories.length,
      separatorBuilder: (context, index) => const SizedBox(width: 8.0),
      itemBuilder: (context, index) => RoundedContainer(
        radius: 18.0,
        showBorder: true,
        isBorderRadiusCircular: true,
        backgroundColor: index == 1
            ? FashionAppColors.primary
            : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: Text(
            categories[index].name,
            style: textTheme.bodySmall?.copyWith(
              color: index == 1 ? Colors.white : FashionAppColors.secondary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  _buildShimmerLoading() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        itemCount: 4,
        separatorBuilder: (context, index) => const SizedBox(width: 8.0),
        itemBuilder: (context, index) => RoundedContainer(
          width: 80.0,
          height: 36.0,
          radius: 18.0,
          isBorderRadiusCircular: true,
          backgroundColor: Colors.grey.shade300,
        ),
      ),
    );
  }
}
