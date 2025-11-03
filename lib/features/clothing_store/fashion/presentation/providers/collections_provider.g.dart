// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collections_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fashionCollectionsHash() =>
    r'9fc183256214204e3eaf5a3c85361edae8454e1c';

/// Provider that manages fashion collections
///
/// This provider uses AsyncNotifier to handle the asynchronous state
/// of collections and provides methods for refresh and error handling
///
/// Copied from [FashionCollections].
@ProviderFor(FashionCollections)
final fashionCollectionsProvider =
    AutoDisposeAsyncNotifierProvider<
      FashionCollections,
      List<Collection>
    >.internal(
      FashionCollections.new,
      name: r'fashionCollectionsProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fashionCollectionsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FashionCollections = AutoDisposeAsyncNotifier<List<Collection>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
