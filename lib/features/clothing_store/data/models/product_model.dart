import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

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
    required bool isFavorite,
    required List<String> availableSizes,
    required List<AvailableColorModel> availableColors,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  Product toEntity() {
    return Product(
      id: id,
      title: title,
      price: price,
      discountPercentage: discountPercentage,
      description: description,
      category: category,
      categoryName: categoryName,
      rating: Rating(
        rate: rating.rate,
        count: rating.count,
      ),
      thumbnail: thumbnail,
      isFavorite: isFavorite,
      availableSizes: availableSizes,
      availableColors: availableColors
          .map(
            (colorModel) => AvailableColor(
              colorName: colorModel.colorName,
              hexCode: colorModel.hexCode,
              stockLevel: colorModel.stockLevel,
            ),
          )
          .toList(),
    );
  }
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
