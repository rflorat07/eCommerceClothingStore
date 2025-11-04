import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/entities.dart';
import 'providers.dart';

part 'categories_filters.g.dart';

@riverpod
class FashionCategoriesFilters extends _$FashionCategoriesFilters {
  @override
  Future<List<Category>> build() async {
    return _fetchCategoriesFilters();
  }

  Future<List<Category>> _fetchCategoriesFilters() async {
    final getFashionCategories = ref.read(getFashionCategoriesFiltersProvider);
    final result = await getFashionCategories.call();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (categories) => categories,
    );
  }
}
