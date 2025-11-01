// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get discountPercentage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  Rating get rating => throw _privateConstructorUsedError;
  String get thumbnail => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  bool get isFavorite => throw _privateConstructorUsedError;
  List<String> get availableSizes => throw _privateConstructorUsedError;
  List<AvailableColor> get availableColors =>
      throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call({
    int id,
    String title,
    double price,
    double discountPercentage,
    String description,
    String categoryName,
    String category,
    Rating rating,
    String thumbnail,
    List<String> images,
    bool isFavorite,
    List<String> availableSizes,
    List<AvailableColor> availableColors,
  });

  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? description = null,
    Object? categoryName = null,
    Object? category = null,
    Object? rating = null,
    Object? thumbnail = null,
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
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            price: null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double,
            discountPercentage: null == discountPercentage
                ? _value.discountPercentage
                : discountPercentage // ignore: cast_nullable_to_non_nullable
                      as double,
            description: null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String,
            categoryName: null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String,
            category: null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String,
            rating: null == rating
                ? _value.rating
                : rating // ignore: cast_nullable_to_non_nullable
                      as Rating,
            thumbnail: null == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String,
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
                      as List<AvailableColor>,
          )
          as $Val,
    );
  }

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res> get rating {
    return $RatingCopyWith<$Res>(_value.rating, (value) {
      return _then(_value.copyWith(rating: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
    _$ProductImpl value,
    $Res Function(_$ProductImpl) then,
  ) = __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    double price,
    double discountPercentage,
    String description,
    String categoryName,
    String category,
    Rating rating,
    String thumbnail,
    List<String> images,
    bool isFavorite,
    List<String> availableSizes,
    List<AvailableColor> availableColors,
  });

  @override
  $RatingCopyWith<$Res> get rating;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
    _$ProductImpl _value,
    $Res Function(_$ProductImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? price = null,
    Object? discountPercentage = null,
    Object? description = null,
    Object? categoryName = null,
    Object? category = null,
    Object? rating = null,
    Object? thumbnail = null,
    Object? images = null,
    Object? isFavorite = null,
    Object? availableSizes = null,
    Object? availableColors = null,
  }) {
    return _then(
      _$ProductImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        price: null == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double,
        discountPercentage: null == discountPercentage
            ? _value.discountPercentage
            : discountPercentage // ignore: cast_nullable_to_non_nullable
                  as double,
        description: null == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String,
        categoryName: null == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String,
        category: null == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String,
        rating: null == rating
            ? _value.rating
            : rating // ignore: cast_nullable_to_non_nullable
                  as Rating,
        thumbnail: null == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String,
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
                  as List<AvailableColor>,
      ),
    );
  }
}

/// @nodoc

class _$ProductImpl implements _Product {
  const _$ProductImpl({
    required this.id,
    required this.title,
    required this.price,
    required this.discountPercentage,
    required this.description,
    required this.categoryName,
    required this.category,
    required this.rating,
    required this.thumbnail,
    required final List<String> images,
    required this.isFavorite,
    required final List<String> availableSizes,
    required final List<AvailableColor> availableColors,
  }) : _images = images,
       _availableSizes = availableSizes,
       _availableColors = availableColors;

  @override
  final int id;
  @override
  final String title;
  @override
  final double price;
  @override
  final double discountPercentage;
  @override
  final String description;
  @override
  final String categoryName;
  @override
  final String category;
  @override
  final Rating rating;
  @override
  final String thumbnail;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final bool isFavorite;
  final List<String> _availableSizes;
  @override
  List<String> get availableSizes {
    if (_availableSizes is EqualUnmodifiableListView) return _availableSizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableSizes);
  }

  final List<AvailableColor> _availableColors;
  @override
  List<AvailableColor> get availableColors {
    if (_availableColors is EqualUnmodifiableListView) return _availableColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableColors);
  }

  @override
  String toString() {
    return 'Product(id: $id, title: $title, price: $price, discountPercentage: $discountPercentage, description: $description, categoryName: $categoryName, category: $category, rating: $rating, thumbnail: $thumbnail, images: $images, isFavorite: $isFavorite, availableSizes: $availableSizes, availableColors: $availableColors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.rating, rating) || other.rating == rating) &&
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

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    price,
    discountPercentage,
    description,
    categoryName,
    category,
    rating,
    thumbnail,
    const DeepCollectionEquality().hash(_images),
    isFavorite,
    const DeepCollectionEquality().hash(_availableSizes),
    const DeepCollectionEquality().hash(_availableColors),
  );

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product({
    required final int id,
    required final String title,
    required final double price,
    required final double discountPercentage,
    required final String description,
    required final String categoryName,
    required final String category,
    required final Rating rating,
    required final String thumbnail,
    required final List<String> images,
    required final bool isFavorite,
    required final List<String> availableSizes,
    required final List<AvailableColor> availableColors,
  }) = _$ProductImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  double get price;
  @override
  double get discountPercentage;
  @override
  String get description;
  @override
  String get categoryName;
  @override
  String get category;
  @override
  Rating get rating;
  @override
  String get thumbnail;
  @override
  List<String> get images;
  @override
  bool get isFavorite;
  @override
  List<String> get availableSizes;
  @override
  List<AvailableColor> get availableColors;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Rating {
  double get rate => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rate = null, Object? count = null}) {
    return _then(
      _value.copyWith(
            rate: null == rate
                ? _value.rate
                : rate // ignore: cast_nullable_to_non_nullable
                      as double,
            count: null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
    _$RatingImpl value,
    $Res Function(_$RatingImpl) then,
  ) = __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double rate, int count});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
    _$RatingImpl _value,
    $Res Function(_$RatingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? rate = null, Object? count = null}) {
    return _then(
      _$RatingImpl(
        rate: null == rate
            ? _value.rate
            : rate // ignore: cast_nullable_to_non_nullable
                  as double,
        count: null == count
            ? _value.count
            : count // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$RatingImpl implements _Rating {
  const _$RatingImpl({required this.rate, required this.count});

  @override
  final double rate;
  @override
  final int count;

  @override
  String toString() {
    return 'Rating(rate: $rate, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rate, count);

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);
}

abstract class _Rating implements Rating {
  const factory _Rating({
    required final double rate,
    required final int count,
  }) = _$RatingImpl;

  @override
  double get rate;
  @override
  int get count;

  /// Create a copy of Rating
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AvailableColor {
  String get colorName => throw _privateConstructorUsedError;
  String get hexCode => throw _privateConstructorUsedError;
  int get stockLevel => throw _privateConstructorUsedError;

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableColorCopyWith<AvailableColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableColorCopyWith<$Res> {
  factory $AvailableColorCopyWith(
    AvailableColor value,
    $Res Function(AvailableColor) then,
  ) = _$AvailableColorCopyWithImpl<$Res, AvailableColor>;
  @useResult
  $Res call({String colorName, String hexCode, int stockLevel});
}

/// @nodoc
class _$AvailableColorCopyWithImpl<$Res, $Val extends AvailableColor>
    implements $AvailableColorCopyWith<$Res> {
  _$AvailableColorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? hexCode = null,
    Object? stockLevel = null,
  }) {
    return _then(
      _value.copyWith(
            colorName: null == colorName
                ? _value.colorName
                : colorName // ignore: cast_nullable_to_non_nullable
                      as String,
            hexCode: null == hexCode
                ? _value.hexCode
                : hexCode // ignore: cast_nullable_to_non_nullable
                      as String,
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
abstract class _$$AvailableColorImplCopyWith<$Res>
    implements $AvailableColorCopyWith<$Res> {
  factory _$$AvailableColorImplCopyWith(
    _$AvailableColorImpl value,
    $Res Function(_$AvailableColorImpl) then,
  ) = __$$AvailableColorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String colorName, String hexCode, int stockLevel});
}

/// @nodoc
class __$$AvailableColorImplCopyWithImpl<$Res>
    extends _$AvailableColorCopyWithImpl<$Res, _$AvailableColorImpl>
    implements _$$AvailableColorImplCopyWith<$Res> {
  __$$AvailableColorImplCopyWithImpl(
    _$AvailableColorImpl _value,
    $Res Function(_$AvailableColorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? hexCode = null,
    Object? stockLevel = null,
  }) {
    return _then(
      _$AvailableColorImpl(
        colorName: null == colorName
            ? _value.colorName
            : colorName // ignore: cast_nullable_to_non_nullable
                  as String,
        hexCode: null == hexCode
            ? _value.hexCode
            : hexCode // ignore: cast_nullable_to_non_nullable
                  as String,
        stockLevel: null == stockLevel
            ? _value.stockLevel
            : stockLevel // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$AvailableColorImpl implements _AvailableColor {
  const _$AvailableColorImpl({
    required this.colorName,
    required this.hexCode,
    required this.stockLevel,
  });

  @override
  final String colorName;
  @override
  final String hexCode;
  @override
  final int stockLevel;

  @override
  String toString() {
    return 'AvailableColor(colorName: $colorName, hexCode: $hexCode, stockLevel: $stockLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableColorImpl &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.hexCode, hexCode) || other.hexCode == hexCode) &&
            (identical(other.stockLevel, stockLevel) ||
                other.stockLevel == stockLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorName, hexCode, stockLevel);

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableColorImplCopyWith<_$AvailableColorImpl> get copyWith =>
      __$$AvailableColorImplCopyWithImpl<_$AvailableColorImpl>(
        this,
        _$identity,
      );
}

abstract class _AvailableColor implements AvailableColor {
  const factory _AvailableColor({
    required final String colorName,
    required final String hexCode,
    required final int stockLevel,
  }) = _$AvailableColorImpl;

  @override
  String get colorName;
  @override
  String get hexCode;
  @override
  int get stockLevel;

  /// Create a copy of AvailableColor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableColorImplCopyWith<_$AvailableColorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
