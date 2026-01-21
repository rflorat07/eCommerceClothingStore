import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    String? title, // Made nullable
    String? description, // Made nullable
    String? category, // Made nullable
    required double price,
    required double discountPercentage,
    required double rating,
    required double stock,
    @Default([]) List<String> tags,
    String? brand, // Made nullable
    String? sku, // Made nullable
    required double weight,
    String? warrantyInformation, // Made nullable
    String? shippingInformation, // Made nullable
    String? availabilityStatus, // Made nullable
    String? returnPolicy, // Made nullable
    required int minimumOrderQuantity,
    String? thumbnail, // Made nullable
    @Default([]) List<String> images,
    @Default(false) bool isFavorite,
    @Default([]) List<String> availableSizes,
    @Default([]) List<AvailableColorModel> availableColors,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}

extension ProductModelX on ProductModel {
  Product toEntity() {
    return Product(
      id: id,
      title: title ?? 'Unknown Title', // Provide default if null
      price: price,
      discountPercentage: discountPercentage,
      description:
          description ?? 'No description available', // Provide default if null
      category: category ?? 'Uncategorized', // Provide default if null
      rating: Rating(
        rate: rating,
        count: 4,
      ),
      thumbnail: thumbnail ?? '', // Provide default if null
      images: images.toList(),
      isFavorite: isFavorite,
      availableSizes: availableSizes,
      availableColors: availableColors
          .map(
            (e) => AvailableColor(
              colorName: e.colorName ?? 'Unknown', // Provide default if null
              hexCode: e.hexCode ?? '#000000', // Provide default if null
              stockLevel: e.stockLevel,
            ),
          )
          .toList(),
      brand: brand ?? 'Unknown Brand', // Provide default if null
    );
  }
}

@freezed
class AvailableColorModel with _$AvailableColorModel {
  const factory AvailableColorModel({
    String? colorName, // Made nullable
    String? hexCode, // Made nullable
    required int stockLevel,
  }) = _AvailableColorModel;

  factory AvailableColorModel.fromJson(Map<String, dynamic> json) =>
      _$AvailableColorModelFromJson(json);
}
