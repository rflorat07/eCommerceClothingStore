// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependencies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fashionLocalDataSourceHash() =>
    r'34be4c62216fd61fcd28c7fbbd5338990766c4fc';

/// Provider for the local data source
///
/// This provider manages the local data source instance that
/// simulates fashion collections data
///
/// Copied from [fashionLocalDataSource].
@ProviderFor(fashionLocalDataSource)
final fashionLocalDataSourceProvider =
    AutoDisposeProvider<FashionStoreLocalDataSource>.internal(
      fashionLocalDataSource,
      name: r'fashionLocalDataSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fashionLocalDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FashionLocalDataSourceRef =
    AutoDisposeProviderRef<FashionStoreLocalDataSource>;
String _$fashionRepositoryHash() => r'2a502ac6bb255fbc6c23b92f7a4f682f78003a70';

/// Provider for the fashion repository
///
/// Implements the domain interface and depends on the data source
///
/// Copied from [fashionRepository].
@ProviderFor(fashionRepository)
final fashionRepositoryProvider =
    AutoDisposeProvider<FashionRepository>.internal(
      fashionRepository,
      name: r'fashionRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fashionRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FashionRepositoryRef = AutoDisposeProviderRef<FashionRepository>;
String _$getNewCollectionsHash() => r'3b5bec578b9fa7b867aaf1a025447e2c6fe62304';

/// Provider for the get new collections use case
///
/// Encapsulates the business logic to get collections
///
/// Copied from [getNewCollections].
@ProviderFor(getNewCollections)
final getNewCollectionsProvider =
    AutoDisposeProvider<GetNewCollectionsUseCase>.internal(
      getNewCollections,
      name: r'getNewCollectionsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getNewCollectionsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetNewCollectionsRef = AutoDisposeProviderRef<GetNewCollectionsUseCase>;
String _$getFashionCategoriesHash() =>
    r'e37ca92b94c83341601a83b27b4f61fd3781f41c';

/// Provider for the get fashion categories use case
///
/// Encapsulates the business logic to get fashion categories
///
/// Copied from [getFashionCategories].
@ProviderFor(getFashionCategories)
final getFashionCategoriesProvider =
    AutoDisposeProvider<GetFashionCategoriesUseCase>.internal(
      getFashionCategories,
      name: r'getFashionCategoriesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getFashionCategoriesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetFashionCategoriesRef =
    AutoDisposeProviderRef<GetFashionCategoriesUseCase>;
String _$getFashionCategoriesFiltersHash() =>
    r'e8bcb74b2c20d127a7849604f42f34c7bf6b1afd';

/// Provider for the get fashion categories filters use case
///
/// Encapsulates the business logic to get fashion categories filters
///
/// Copied from [getFashionCategoriesFilters].
@ProviderFor(getFashionCategoriesFilters)
final getFashionCategoriesFiltersProvider =
    AutoDisposeProvider<GetFashionCategoriesFiltersUseCase>.internal(
      getFashionCategoriesFilters,
      name: r'getFashionCategoriesFiltersProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getFashionCategoriesFiltersHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetFashionCategoriesFiltersRef =
    AutoDisposeProviderRef<GetFashionCategoriesFiltersUseCase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
