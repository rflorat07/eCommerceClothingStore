import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_provider.g.dart';

/// Fashion application configuration
class FashionAppSettings {
  final bool enableAnimations;
  final int pageTransitionDuration;
  final bool enableShimmer;
  final int cacheExpirationMinutes;

  const FashionAppSettings({
    this.enableAnimations = true,
    this.pageTransitionDuration = 300,
    this.enableShimmer = true,
    this.cacheExpirationMinutes = 30,
  });

  FashionAppSettings copyWith({
    bool? enableAnimations,
    int? pageTransitionDuration,
    bool? enableShimmer,
    int? cacheExpirationMinutes,
  }) {
    return FashionAppSettings(
      enableAnimations: enableAnimations ?? this.enableAnimations,
      pageTransitionDuration:
          pageTransitionDuration ?? this.pageTransitionDuration,
      enableShimmer: enableShimmer ?? this.enableShimmer,
      cacheExpirationMinutes:
          cacheExpirationMinutes ?? this.cacheExpirationMinutes,
    );
  }
}

/// Provider for application configuration
@riverpod
class FashionSettings extends _$FashionSettings {
  @override
  FashionAppSettings build() {
    return const FashionAppSettings();
  }

  /// Updates animation configuration
  void updateAnimationSettings(bool enabled) {
    state = state.copyWith(enableAnimations: enabled);
  }

  /// Updates transition duration
  void updateTransitionDuration(int duration) {
    state = state.copyWith(pageTransitionDuration: duration);
  }

  /// Updates shimmer configuration
  void updateShimmerSettings(bool enabled) {
    state = state.copyWith(enableShimmer: enabled);
  }
}
