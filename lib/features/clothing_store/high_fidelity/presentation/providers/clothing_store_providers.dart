import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

part 'clothing_store_providers.g.dart';

@riverpod
ClothingStoreLocalDataSource clothingStoreLocalDataSource(Ref ref) {
  return ClothingStoreLocalDataSource();
}

@riverpod
ClothingStoreRepository clothingStoreRepository(Ref ref) {
  final localDataSource = ref.watch(clothingStoreLocalDataSourceProvider);
  return ClothingStoreRepositoryImpl(localDataSource);
}

@riverpod
GetUserUseCase getUserUseCase(Ref ref) {
  final repository = ref.watch(clothingStoreRepositoryProvider);
  return GetUserUseCase(repository);
}

@riverpod
GetCategoriesUseCase getCategoriesUseCase(Ref ref) {
  final repository = ref.watch(clothingStoreRepositoryProvider);
  return GetCategoriesUseCase(repository);
}

@riverpod
GetProductsUseCase getProductsUseCase(Ref ref) {
  final repository = ref.watch(clothingStoreRepositoryProvider);
  return GetProductsUseCase(repository);
}

@riverpod
SearchProductsUseCase searchProductsUseCase(Ref ref) {
  final repository = ref.watch(clothingStoreRepositoryProvider);
  return SearchProductsUseCase(repository);
}

@riverpod
class Profile extends _$Profile {
  @override
  Future<User> build() async {
    final getUser = ref.watch(getUserUseCaseProvider);
    return await getUser.call();
  }
}

@riverpod
class Categories extends _$Categories {
  @override
  Future<List<Category>> build() async {
    final getCategories = ref.watch(getCategoriesUseCaseProvider);
    return getCategories.call();
  }
}

@riverpod
class Products extends _$Products {
  @override
  Future<List<Product>> build() {
    final getProducts = ref.watch(getProductsUseCaseProvider);
    return getProducts.call();
  }
}

@riverpod
class ProductsSearch extends _$ProductsSearch {
  @override
  Future<List<Product>> build() async {
    return [];
  }

  Future<void> search(String query) async {
    if (query.isEmpty) {
      state = const AsyncData([]);
      return;
    }
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchProducts(query));
  }

  Future<List<Product>> _fetchProducts(String query) async {
    final searchProducts = ref.read(searchProductsUseCaseProvider);
    return await searchProducts.call(query);
  }
}
