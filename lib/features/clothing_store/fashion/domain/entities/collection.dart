import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';

@freezed
class Collection with _$Collection {
  const factory Collection({
    required String id,
    required String name,
    required String imagePath,
  }) = _Collection;
}
