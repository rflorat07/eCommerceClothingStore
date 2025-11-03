import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/entities.dart';
import 'dependencies_provider.dart';

part 'collections_provider.g.dart';

/// Provider that manages fashion collections
///
/// This provider uses AsyncNotifier to handle the asynchronous state
/// of collections and provides methods for refresh and error handling
@riverpod
class FashionCollections extends _$FashionCollections {
  @override
  Future<List<Collection>> build() async {
    return _fetchCollections();
  }

  /// Refreshes the collections
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(_fetchCollections);
  }

  /// Gets the collections from the use case
  Future<List<Collection>> _fetchCollections() async {
    final getNewCollections = ref.read(getNewCollectionsProvider);
    final result = await getNewCollections.call();

    return result.fold(
      (failure) => throw Exception(failure.message),
      (collections) => collections,
    );
  }

  /// Handles specific business logic errors
  Future<void> retryOnError() async {
    if (state.hasError) {
      await refresh();
    }
  }
}
