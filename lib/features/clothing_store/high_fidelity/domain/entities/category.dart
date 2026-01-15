import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String slug,
    required String name,
    required String url,
    String? icon,
  }) = _Category;
}
