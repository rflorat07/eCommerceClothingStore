import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String title,
    required double price,
    required double discountPercentage,
    required String description,
    required String category,
    required Rating rating,
    required String thumbnail,
    required List<String> images,
    @Default(false) bool isFavorite,
    @Default([]) List<String> availableSizes,
    @Default([]) List<AvailableColor> availableColors,
  }) = _Product;
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    required double rate,
    required int count,
  }) = _Rating;
}

@freezed
class AvailableColor with _$AvailableColor {
  const factory AvailableColor({
    required String colorName,
    required String hexCode,
    required int stockLevel,
  }) = _AvailableColor;
}
