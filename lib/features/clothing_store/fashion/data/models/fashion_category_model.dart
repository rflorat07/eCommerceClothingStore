import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'fashion_category_model.freezed.dart';
part 'fashion_category_model.g.dart';

@freezed
class FashionCategoryModel with _$FashionCategoryModel {
  const factory FashionCategoryModel({
    required String id,
    required String name,
    required String imageUrl,
  }) = _FashionCategoryModel;

  factory FashionCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$FashionCategoryModelFromJson(json);
}

extension FashionCategoryModelX on FashionCategoryModel {
  Category toEntity() {
    return Category(
      id: id,
      name: name,
      imageUrl: imageUrl,
    );
  }
}
