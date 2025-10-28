// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      description: json['description'] as String,
      category: json['category'] as String,
      categoryName: json['categoryName'] as String,
      rating: RatingModel.fromJson(json['rating'] as Map<String, dynamic>),
      thumbnail: json['thumbnail'] as String,
      availableSizes: (json['availableSizes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      availableColors: (json['availableColors'] as List<dynamic>)
          .map((e) => AvailableColorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'discountPercentage': instance.discountPercentage,
      'description': instance.description,
      'category': instance.category,
      'categoryName': instance.categoryName,
      'rating': instance.rating,
      'thumbnail': instance.thumbnail,
      'availableSizes': instance.availableSizes,
      'availableColors': instance.availableColors,
    };

_$RatingModelImpl _$$RatingModelImplFromJson(Map<String, dynamic> json) =>
    _$RatingModelImpl(
      rate: (json['rate'] as num).toDouble(),
      count: (json['count'] as num).toInt(),
    );

Map<String, dynamic> _$$RatingModelImplToJson(_$RatingModelImpl instance) =>
    <String, dynamic>{'rate': instance.rate, 'count': instance.count};

_$AvailableColorModelImpl _$$AvailableColorModelImplFromJson(
  Map<String, dynamic> json,
) => _$AvailableColorModelImpl(
  colorName: json['colorName'] as String,
  hexCode: json['hexCode'] as String,
  stockLevel: (json['stockLevel'] as num).toInt(),
);

Map<String, dynamic> _$$AvailableColorModelImplToJson(
  _$AvailableColorModelImpl instance,
) => <String, dynamic>{
  'colorName': instance.colorName,
  'hexCode': instance.hexCode,
  'stockLevel': instance.stockLevel,
};
