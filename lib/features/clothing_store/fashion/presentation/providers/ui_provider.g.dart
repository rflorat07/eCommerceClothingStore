// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ui_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fashionPageControllerHash() =>
    r'41d4548f756e161342084390e3fc8b60b89e5848';

/// Provider for the PageController of the collections view
///
/// Manages the PageController state and handles resource disposal
/// when the provider is disposed
///
/// Copied from [fashionPageController].
@ProviderFor(fashionPageController)
final fashionPageControllerProvider =
    AutoDisposeProvider<PageController>.internal(
      fashionPageController,
      name: r'fashionPageControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fashionPageControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FashionPageControllerRef = AutoDisposeProviderRef<PageController>;
String _$fashionUiStateHash() => r'9f75a301e0d52c8c5c931eb1f98315f761c7dd54';

/// UI state for the fashion section
///
/// Copied from [FashionUiState].
@ProviderFor(FashionUiState)
final fashionUiStateProvider =
    AutoDisposeNotifierProvider<FashionUiState, FashionUiStateData>.internal(
      FashionUiState.new,
      name: r'fashionUiStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$fashionUiStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$FashionUiState = AutoDisposeNotifier<FashionUiStateData>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
