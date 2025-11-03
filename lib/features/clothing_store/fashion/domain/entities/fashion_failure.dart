import 'package:freezed_annotation/freezed_annotation.dart';

part 'fashion_failure.freezed.dart';

/// Represents the possible errors in the Fashion domain
@freezed
class FashionFailure with _$FashionFailure {
  const factory FashionFailure.network({
    required String message,
    String? code,
  }) = NetworkFailure;

  const factory FashionFailure.server({
    required String message,
    int? statusCode,
  }) = ServerFailure;

  const factory FashionFailure.cache({
    required String message,
  }) = CacheFailure;

  const factory FashionFailure.unknown({
    required String message,
    Object? error,
  }) = UnknownFailure;
}
