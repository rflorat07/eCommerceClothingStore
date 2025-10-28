import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required String title,
    required double price,
    required double discountPercentage,
    required String description,
    required String category,
    required String categoryName,
    required RatingModel rating,
    required String thumbnail,
    required List<String> availableSizes,
    required List<AvailableColorModel> availableColors,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  // Puedes agregar métodos de conversión a entidad si es necesario
}

@freezed
class RatingModel with _$RatingModel {
  const factory RatingModel({
    required double rate,
    required int count,
  }) = _RatingModel;

  factory RatingModel.fromJson(Map<String, dynamic> json) =>
      _$RatingModelFromJson(json);
}

@freezed
class AvailableColorModel with _$AvailableColorModel {
  const factory AvailableColorModel({
    required String colorName,
    required String hexCode,
    required int stockLevel,
  }) = _AvailableColorModel;

  factory AvailableColorModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableColorModelFromJson(json);
}
