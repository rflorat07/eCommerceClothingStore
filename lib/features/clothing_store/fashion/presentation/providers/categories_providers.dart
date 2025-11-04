import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/entities.dart';
import 'providers.dart';

part 'categories_providers.g.dart';

@riverpod
class FashionCategories extends _$FashionCategories {
  @override
  Future<List<Category>> build() async {
    return _fethCategories();
  }

  Future<List<Category>> _fethCategories() async {
    final getFashionCategories = ref.read(getFashionCategoriesProvider);
    final result = await getFashionCategories.call();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (categories) => categories,
    );
  }
}
