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
GetCategoriesUsecase getCategoriesUsecase(Ref ref) {
  final repository = ref.watch(clothingStoreRepositoryProvider);
  return GetCategoriesUsecase(repository);
}

@riverpod
class Profile extends _$Profile {
  @override
  User build() {
    final getUser = ref.watch(getUserUseCaseProvider);
    // El usecase es sincrónico y retorna un User directamente
    return getUser.call();
  }
}

@riverpod
class Categories extends _$Categories {
  @override
  List<Category> build() {
    final getCategories = ref.watch(getCategoriesUsecaseProvider);
    return getCategories.call();
  }
}
