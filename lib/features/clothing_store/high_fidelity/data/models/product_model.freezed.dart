// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return _ProductModel.fromJson(json);
}

/// @nodoc
mixin _$ProductModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError; // Made nullable
  String? get description =>
      throw _privateConstructorUsedError; // Made nullable
  String? get category => throw _privateConstructorUsedError; // Made nullable
  double get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  double get stock => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError; // Made nullable
  String? get sku => throw _privateConstructorUsedError; // Made nullable
  double get weight => throw _privateConstructorUsedError;
  String? get warrantyInformation =>
      throw _privateConstructorUsedError; // Made nullable
  String? get shippingInformation =>
      throw _privateConstructorUsedError; // Made nullable
  String? get availabilityStatus =>
      throw _privateConstructorUsedError; // Made nullable
  String? get returnPolicy =>
      throw _privateConstructorUsedError; // Made nullable
  int get minimumOrderQuantity => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError; // Made nullable
  List<String> get images => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<String> get availableSizes => throw _privateConstructorUsedError;
  List<AvailableColorModel> get availableColors =>
      throw _privateConstructorUsedError;

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductModelCopyWith<ProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductModelCopyWith<$Res> {
  factory $ProductModelCopyWith(
    ProductModel value,
    $Res Function(ProductModel) then,
  ) = _$ProductModelCopyWithImpl<$Res, ProductModel>;
  @useResult
  $Res call({
    int id,
    String? title,
    String? description,
    String? category,
    double price,
    double discountPercentage,
    double rating,
    double stock,
    List<String> tags,
    String? brand,
    String? sku,
    double weight,
    String? warrantyInformation,
    String? shippingInformation,
    String? availabilityStatus,
    String? returnPolicy,
    int minimumOrderQuantity,
    String? thumbnail,
    List<String> images,
    bool isFavorite,
    List<String> availableSizes,
    List<AvailableColorModel> availableColors,
  });
}

/// @nodoc
class _$ProductModelCopyWithImpl<$Res, $Val extends ProductModel>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = null,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = null,
    Object? thumbnail = freezed,
    Object? images = null,
    Object? isFavorite = null,
    Object? availableSizes = null,
    Object? availableColors = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            discountPercentage: null == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as double,
            stock: null == stock
                ? _value.stock
                : stock // ignore: cast_nullable_to_non_nullable
                      as double,
            tags: null == tags
                ? _value.tags
                : tags // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            brand: freezed == brand
                ? _value.brand
                : brand // ignore: cast_nullable_to_non_nullable
                      as String?,
            sku: freezed == sku
                ? _value.sku
                : sku // ignore: cast_nullable_to_non_nullable
                      as String?,
            weight: null == weight
                ? _value.weight
                : weight // ignore: cast_nullable_to_non_nullable
                      as double,
            warrantyInformation: freezed == warrantyInformation
                ? _value.warrantyInformation
                : warrantyInformation // ignore: cast_nullable_to_non_nullable
                      as String?,
            shippingInformation: freezed == shippingInformation
                ? _value.shippingInformation
                : shippingInformation // ignore: cast_nullable_to_non_nullable
                      as String?,
            availabilityStatus: freezed == availabilityStatus
                ? _value.availabilityStatus
                : availabilityStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            returnPolicy: freezed == returnPolicy
                ? _value.returnPolicy
                : returnPolicy // ignore: cast_nullable_to_non_nullable
                      as String?,
            minimumOrderQuantity: null == minimumOrderQuantity
                ? _value.minimumOrderQuantity
                : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
                      as int,
            thumbnail: freezed == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String?,
            images: null == images
                ? _value.images
                : images // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            isFavorite: null == isFavorite
                ? _value.isFavorite
                : isFavorite // ignore: cast_nullable_to_non_nullable
                      as bool,
            availableSizes: null == availableSizes
                ? _value.availableSizes
                : availableSizes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            availableColors: null == availableColors
                ? _value.availableColors
                : availableColors // ignore: cast_nullable_to_non_nullable
                      as List<AvailableColorModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProductModelImplCopyWith<$Res>
    implements $ProductModelCopyWith<$Res> {
  factory _$$ProductModelImplCopyWith(
    _$ProductModelImpl value,
    $Res Function(_$ProductModelImpl) then,
  ) = __$$ProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? title,
    String? description,
    String? category,
    double price,
    double discountPercentage,
    double rating,
    double stock,
    List<String> tags,
    String? brand,
    String? sku,
    double weight,
    String? warrantyInformation,
    String? shippingInformation,
    String? availabilityStatus,
    String? returnPolicy,
    int minimumOrderQuantity,
    String? thumbnail,
    List<String> images,
    bool isFavorite,
    List<String> availableSizes,
    List<AvailableColorModel> availableColors,
  });
}

/// @nodoc
class __$$ProductModelImplCopyWithImpl<$Res>
    extends _$ProductModelCopyWithImpl<$Res, _$ProductModelImpl>
    implements _$$ProductModelImplCopyWith<$Res> {
  __$$ProductModelImplCopyWithImpl(
    _$ProductModelImpl _value,
    $Res Function(_$ProductModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = null,
    Object? discountPercentage = null,
    Object? rating = null,
    Object? stock = null,
    Object? tags = null,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = null,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = null,
    Object? thumbnail = freezed,
    Object? images = null,
    Object? isFavorite = null,
    Object? availableSizes = null,
    Object? availableColors = null,
  }) {
    return _then(
      _$ProductModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        discountPercentage: null == discountPercentage
            ? _value.discountPercentage
            : discountPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as double,
        stock: null == stock
            ? _value.stock
            : stock // ignore: cast_nullable_to_non_nullable
                  as double,
        tags: null == tags
            ? _value._tags
            : tags // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        brand: freezed == brand
            ? _value.brand
            : brand // ignore: cast_nullable_to_non_nullable
                  as String?,
        sku: freezed == sku
            ? _value.sku
            : sku // ignore: cast_nullable_to_non_nullable
                  as String?,
        weight: null == weight
            ? _value.weight
            : weight // ignore: cast_nullable_to_non_nullable
                  as double,
        warrantyInformation: freezed == warrantyInformation
            ? _value.warrantyInformation
            : warrantyInformation // ignore: cast_nullable_to_non_nullable
                  as String?,
        shippingInformation: freezed == shippingInformation
            ? _value.shippingInformation
            : shippingInformation // ignore: cast_nullable_to_non_nullable
                  as String?,
        availabilityStatus: freezed == availabilityStatus
            ? _value.availabilityStatus
            : availabilityStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        returnPolicy: freezed == returnPolicy
            ? _value.returnPolicy
            : returnPolicy // ignore: cast_nullable_to_non_nullable
                  as String?,
        minimumOrderQuantity: null == minimumOrderQuantity
            ? _value.minimumOrderQuantity
            : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
                  as int,
        thumbnail: freezed == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String?,
        images: null == images
            ? _value._images
            : images // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        isFavorite: null == isFavorite
            ? _value.isFavorite
            : isFavorite // ignore: cast_nullable_to_non_nullable
                  as bool,
        availableSizes: null == availableSizes
            ? _value._availableSizes
            : availableSizes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        availableColors: null == availableColors
            ? _value._availableColors
            : availableColors // ignore: cast_nullable_to_non_nullable
                  as List<AvailableColorModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductModelImpl implements _ProductModel {
  const _$ProductModelImpl({
    required this.id,
    this.title,
    this.description,
    this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    final List<String> tags = const [],
    this.brand,
    this.sku,
    required this.weight,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    this.returnPolicy,
    required this.minimumOrderQuantity,
    this.thumbnail,
    final List<String> images = const [],
    this.isFavorite = false,
    final List<String> availableSizes = const [],
    final List<AvailableColorModel> availableColors = const [],
  }) : _tags = tags,
       _images = images,
       _availableSizes = availableSizes,
       _availableColors = availableColors;

  factory _$ProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  // Made nullable
  @override
  final String? description;
  // Made nullable
  @override
  final String? category;
  // Made nullable
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final double rating;
  @override
  final double stock;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String? brand;
  // Made nullable
  @override
  final String? sku;
  // Made nullable
  @override
  final double weight;
  @override
  final String? warrantyInformation;
  // Made nullable
  @override
  final String? shippingInformation;
  // Made nullable
  @override
  final String? availabilityStatus;
  // Made nullable
  @override
  final String? returnPolicy;
  // Made nullable
  @override
  final int minimumOrderQuantity;
  @override
  final String? thumbnail;
  // Made nullable
  final List<String> _images;
  // Made nullable
  @override
  @JsonKey()
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey()
  final bool isFavorite;
  final List<String> _availableSizes;
  @override
  @JsonKey()
  List<String> get availableSizes {
    if (_availableSizes is EqualUnmodifiableListView) return _availableSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSizes);
  }

  final List<AvailableColorModel> _availableColors;
  @override
  @JsonKey()
  List<AvailableColorModel> get availableColors {
    if (_availableColors is EqualUnmodifiableListView) return _availableColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableColors);
  }

  @override
  String toString() {
    return 'ProductModel(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, thumbnail: $thumbnail, images: $images, isFavorite: $isFavorite, availableSizes: $availableSizes, availableColors: $availableColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            const DeepCollectionEquality().equals(
              other._availableSizes,
              _availableSizes,
            ) &&
            const DeepCollectionEquality().equals(
              other._availableColors,
              _availableColors,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    description,
    category,
    price,
    discountPercentage,
    rating,
    stock,
    const DeepCollectionEquality().hash(_tags),
    brand,
    sku,
    weight,
    warrantyInformation,
    shippingInformation,
    availabilityStatus,
    returnPolicy,
    minimumOrderQuantity,
    thumbnail,
    const DeepCollectionEquality().hash(_images),
    isFavorite,
    const DeepCollectionEquality().hash(_availableSizes),
    const DeepCollectionEquality().hash(_availableColors),
  ]);

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      __$$ProductModelImplCopyWithImpl<_$ProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductModelImplToJson(this);
  }
}

abstract class _ProductModel implements ProductModel {
  const factory _ProductModel({
    required final int id,
    final String? title,
    final String? description,
    final String? category,
    required final double price,
    required final double discountPercentage,
    required final double rating,
    required final double stock,
    final List<String> tags,
    final String? brand,
    final String? sku,
    required final double weight,
    final String? warrantyInformation,
    final String? shippingInformation,
    final String? availabilityStatus,
    final String? returnPolicy,
    required final int minimumOrderQuantity,
    final String? thumbnail,
    final List<String> images,
    final bool isFavorite,
    final List<String> availableSizes,
    final List<AvailableColorModel> availableColors,
  }) = _$ProductModelImpl;

  factory _ProductModel.fromJson(Map<String, dynamic> json) =
      _$ProductModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get title; // Made nullable
  @override
  String? get description; // Made nullable
  @override
  String? get category; // Made nullable
  @override
  double get price;
  @override
  double get discountPercentage;
  @override
  double get rating;
  @override
  double get stock;
  @override
  List<String> get tags;
  @override
  String? get brand; // Made nullable
  @override
  String? get sku; // Made nullable
  @override
  double get weight;
  @override
  String? get warrantyInformation; // Made nullable
  @override
  String? get shippingInformation; // Made nullable
  @override
  String? get availabilityStatus; // Made nullable
  @override
  String? get returnPolicy; // Made nullable
  @override
  int get minimumOrderQuantity;
  @override
  String? get thumbnail; // Made nullable
  @override
  List<String> get images;
  @override
  bool get isFavorite;
  @override
  List<String> get availableSizes;
  @override
  List<AvailableColorModel> get availableColors;

  /// Create a copy of ProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductModelImplCopyWith<_$ProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailableColorModel _$AvailableColorModelFromJson(Map<String, dynamic> json) {
  return _AvailableColorModel.fromJson(json);
}

/// @nodoc
mixin _$AvailableColorModel {
  String? get colorName => throw _privateConstructorUsedError; // Made nullable
  String? get hexCode => throw _privateConstructorUsedError; // Made nullable
  int get stockLevel => throw _privateConstructorUsedError;

  /// Serializes this AvailableColorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableColorModelCopyWith<AvailableColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableColorModelCopyWith<$Res> {
  factory $AvailableColorModelCopyWith(
    AvailableColorModel value,
    $Res Function(AvailableColorModel) then,
  ) = _$AvailableColorModelCopyWithImpl<$Res, AvailableColorModel>;
  @useResult
  $Res call({String? colorName, String? hexCode, int stockLevel});
}

/// @nodoc
class _$AvailableColorModelCopyWithImpl<$Res, $Val extends AvailableColorModel>
    implements $AvailableColorModelCopyWith<$Res> {
  _$AvailableColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = freezed,
    Object? hexCode = freezed,
    Object? stockLevel = null,
  }) {
    return _then(
      _value.copyWith(
            colorName: freezed == colorName
                ? _value.colorName
                : colorName // ignore: cast_nullable_to_non_nullable
                      as String?,
            hexCode: freezed == hexCode
                ? _value.hexCode
                : hexCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            stockLevel: null == stockLevel
                ? _value.stockLevel
                : stockLevel // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailableColorModelImplCopyWith<$Res>
    implements $AvailableColorModelCopyWith<$Res> {
  factory _$$AvailableColorModelImplCopyWith(
    _$AvailableColorModelImpl value,
    $Res Function(_$AvailableColorModelImpl) then,
  ) = __$$AvailableColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? colorName, String? hexCode, int stockLevel});
}

/// @nodoc
class __$$AvailableColorModelImplCopyWithImpl<$Res>
    extends _$AvailableColorModelCopyWithImpl<$Res, _$AvailableColorModelImpl>
    implements _$$AvailableColorModelImplCopyWith<$Res> {
  __$$AvailableColorModelImplCopyWithImpl(
    _$AvailableColorModelImpl _value,
    $Res Function(_$AvailableColorModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailableColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = freezed,
    Object? hexCode = freezed,
    Object? stockLevel = null,
  }) {
    return _then(
      _$AvailableColorModelImpl(
        colorName: freezed == colorName
            ? _value.colorName
            : colorName // ignore: cast_nullable_to_non_nullable
                  as String?,
        hexCode: freezed == hexCode
            ? _value.hexCode
            : hexCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        stockLevel: null == stockLevel
            ? _value.stockLevel
            : stockLevel // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableColorModelImpl implements _AvailableColorModel {
  const _$AvailableColorModelImpl({
    this.colorName,
    this.hexCode,
    required this.stockLevel,
  });

  factory _$AvailableColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableColorModelImplFromJson(json);

  @override
  final String? colorName;
  // Made nullable
  @override
  final String? hexCode;
  // Made nullable
  @override
  final int stockLevel;

  @override
  String toString() {
    return 'AvailableColorModel(colorName: $colorName, hexCode: $hexCode, stockLevel: $stockLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableColorModelImpl &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.hexCode, hexCode) || other.hexCode == hexCode) &&
            (identical(other.stockLevel, stockLevel) ||
                other.stockLevel == stockLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, colorName, hexCode, stockLevel);

  /// Create a copy of AvailableColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableColorModelImplCopyWith<_$AvailableColorModelImpl> get copyWith =>
      __$$AvailableColorModelImplCopyWithImpl<_$AvailableColorModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableColorModelImplToJson(this);
  }
}

abstract class _AvailableColorModel implements AvailableColorModel {
  const factory _AvailableColorModel({
    final String? colorName,
    final String? hexCode,
    required final int stockLevel,
  }) = _$AvailableColorModelImpl;

  factory _AvailableColorModel.fromJson(Map<String, dynamic> json) =
      _$AvailableColorModelImpl.fromJson;

  @override
  String? get colorName; // Made nullable
  @override
  String? get hexCode; // Made nullable
  @override
  int get stockLevel;

  /// Create a copy of AvailableColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableColorModelImplCopyWith<_$AvailableColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
