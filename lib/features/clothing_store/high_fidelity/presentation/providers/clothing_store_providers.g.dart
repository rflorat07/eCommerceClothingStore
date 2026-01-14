// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothing_store_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clothingStoreLocalDataSourceHash() =>
    r'a0454126c896411617da51d4abef8aa8b77fbd6a';

/// See also [clothingStoreLocalDataSource].
@ProviderFor(clothingStoreLocalDataSource)
final clothingStoreLocalDataSourceProvider =
    AutoDisposeProvider<ClothingStoreLocalDataSource>.internal(
      clothingStoreLocalDataSource,
      name: r'clothingStoreLocalDataSourceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$clothingStoreLocalDataSourceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ClothingStoreLocalDataSourceRef =
    AutoDisposeProviderRef<ClothingStoreLocalDataSource>;
String _$clothingStoreRepositoryHash() =>
    r'8cc3965a6726124d04003b8f81c0560223551031';

/// See also [clothingStoreRepository].
@ProviderFor(clothingStoreRepository)
final clothingStoreRepositoryProvider =
    AutoDisposeProvider<ClothingStoreRepository>.internal(
      clothingStoreRepository,
      name: r'clothingStoreRepositoryProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$clothingStoreRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ClothingStoreRepositoryRef =
    AutoDisposeProviderRef<ClothingStoreRepository>;
String _$getUserUseCaseHash() => r'021d97d780b85c53e56fdee79c59b306d4020539';

/// See also [getUserUseCase].
@ProviderFor(getUserUseCase)
final getUserUseCaseProvider = AutoDisposeProvider<GetUserUseCase>.internal(
  getUserUseCase,
  name: r'getUserUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getUserUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetUserUseCaseRef = AutoDisposeProviderRef<GetUserUseCase>;
String _$getCategoriesUseCaseHash() =>
    r'a1ea9a758dbb8aacba1506a10449841f296ac466';

/// See also [getCategoriesUseCase].
@ProviderFor(getCategoriesUseCase)
final getCategoriesUseCaseProvider =
    AutoDisposeProvider<GetCategoriesUseCase>.internal(
      getCategoriesUseCase,
      name: r'getCategoriesUseCaseProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getCategoriesUseCaseHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCategoriesUseCaseRef = AutoDisposeProviderRef<GetCategoriesUseCase>;
String _$getProductsUseCaseHash() =>
    r'2681c09817f12d13a0ac61fa96d50d305505bd12';

/// See also [getProductsUseCase].
@ProviderFor(getProductsUseCase)
final getProductsUseCaseProvider =
    AutoDisposeProvider<GetProductsUseCase>.internal(
      getProductsUseCase,
      name: r'getProductsUseCaseProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$getProductsUseCaseHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetProductsUseCaseRef = AutoDisposeProviderRef<GetProductsUseCase>;
String _$profileHash() => r'a24af4c7652aadb4544c108fd3a8b98330548980';

/// See also [Profile].
@ProviderFor(Profile)
final profileProvider =
    AutoDisposeAsyncNotifierProvider<Profile, UserModel>.internal(
      Profile.new,
      name: r'profileProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$profileHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Profile = AutoDisposeAsyncNotifier<UserModel>;
String _$categoriesHash() => r'3bf045ea8df1a62904ef89e0d7b3b89c6f68848f';

/// See also [Categories].
@ProviderFor(Categories)
final categoriesProvider =
    AutoDisposeNotifierProvider<Categories, List<Category>>.internal(
      Categories.new,
      name: r'categoriesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$categoriesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Categories = AutoDisposeNotifier<List<Category>>;
String _$productsHash() => r'f010e5196b56e6c23314c8d23b17fcf02d5271b4';

/// See also [Products].
@ProviderFor(Products)
final productsProvider =
    AutoDisposeNotifierProvider<Products, List<Product>>.internal(
      Products.new,
      name: r'productsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$productsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$Products = AutoDisposeNotifier<List<Product>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
