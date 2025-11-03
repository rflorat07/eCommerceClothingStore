import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_provider.g.dart';

/// Provider for the PageController of the collections view
///
/// Manages the PageController state and handles resource disposal
/// when the provider is disposed
@riverpod
PageController fashionPageController(Ref ref) {
  final controller = PageController();
  ref.onDispose(controller.dispose);
  return controller;
}

/// UI state for the fashion section
@riverpod
class FashionUiState extends _$FashionUiState {
  @override
  FashionUiStateData build() {
    return const FashionUiStateData();
  }

  /// Updates the current page index
  void updateCurrentPageIndex(int index) {
    state = state.copyWith(currentPageIndex: index);
  }

  /// Updates the loading state
  void updateLoadingState(bool isLoading) {
    state = state.copyWith(isLoading: isLoading);
  }
}

/// Data class for the UI state
class FashionUiStateData {
  final int currentPageIndex;
  final bool isLoading;

  const FashionUiStateData({
    this.currentPageIndex = 0,
    this.isLoading = false,
  });

  FashionUiStateData copyWith({
    int? currentPageIndex,
    bool? isLoading,
  }) {
    return FashionUiStateData(
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
