import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/datasources.dart';
import '../../data/repositories/repositories.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/get_new_collections_usecase.dart';

part 'dependencies_provider.g.dart';

/// Provider for the local data source
///
/// This provider manages the local data source instance that
/// simulates fashion collections data
@riverpod
FashionStoreLocalDataSource fashionLocalDataSource(Ref ref) {
  return FashionStoreLocalDataSource();
}

/// Provider for the fashion repository
///
/// Implements the domain interface and depends on the data source
@riverpod
FashionRepository fashionRepository(Ref ref) {
  final localDataSource = ref.watch(fashionLocalDataSourceProvider);
  return FashionRepositoryImpl(localDataSource);
}

/// Provider for the get new collections use case
///
/// Encapsulates the business logic to get collections
@riverpod
GetNewCollectionsUseCase getNewCollections(Ref ref) {
  final repository = ref.watch(fashionRepositoryProvider);
  return GetNewCollectionsUseCase(repository);
}
