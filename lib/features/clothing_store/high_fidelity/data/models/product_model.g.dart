// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(
  Map<String, dynamic> json,
) => _$ProductModelImpl(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  category: json['category'] as String?,
  price: (json['price'] as num).toDouble(),
  discountPercentage: (json['discountPercentage'] as num).toDouble(),
  rating: (json['rating'] as num).toDouble(),
  stock: (json['stock'] as num).toDouble(),
  tags:
      (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  brand: json['brand'] as String?,
  sku: json['sku'] as String?,
  weight: (json['weight'] as num).toDouble(),
  warrantyInformation: json['warrantyInformation'] as String?,
  shippingInformation: json['shippingInformation'] as String?,
  availabilityStatus: json['availabilityStatus'] as String?,
  returnPolicy: json['returnPolicy'] as String?,
  minimumOrderQuantity: (json['minimumOrderQuantity'] as num).toInt(),
  thumbnail: json['thumbnail'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isFavorite: json['isFavorite'] as bool? ?? false,
  availableSizes:
      (json['availableSizes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  availableColors:
      (json['availableColors'] as List<dynamic>?)
          ?.map((e) => AvailableColorModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'rating': instance.rating,
      'stock': instance.stock,
      'tags': instance.tags,
      'brand': instance.brand,
      'sku': instance.sku,
      'weight': instance.weight,
      'warrantyInformation': instance.warrantyInformation,
      'shippingInformation': instance.shippingInformation,
      'availabilityStatus': instance.availabilityStatus,
      'returnPolicy': instance.returnPolicy,
      'minimumOrderQuantity': instance.minimumOrderQuantity,
      'thumbnail': instance.thumbnail,
      'images': instance.images,
      'isFavorite': instance.isFavorite,
      'availableSizes': instance.availableSizes,
      'availableColors': instance.availableColors,
    };

_$AvailableColorModelImpl _$$AvailableColorModelImplFromJson(
  Map<String, dynamic> json,
) => _$AvailableColorModelImpl(
  colorName: json['colorName'] as String?,
  hexCode: json['hexCode'] as String?,
  stockLevel: (json['stockLevel'] as num).toInt(),
);

Map<String, dynamic> _$$AvailableColorModelImplToJson(
  _$AvailableColorModelImpl instance,
) => <String, dynamic>{
  'colorName': instance.colorName,
  'hexCode': instance.hexCode,
  'stockLevel': instance.stockLevel,
};
