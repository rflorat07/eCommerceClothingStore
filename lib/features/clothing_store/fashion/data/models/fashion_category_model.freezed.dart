// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fashion_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FashionCategoryModel _$FashionCategoryModelFromJson(Map<String, dynamic> json) {
  return _FashionCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$FashionCategoryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this FashionCategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FashionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FashionCategoryModelCopyWith<FashionCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FashionCategoryModelCopyWith<$Res> {
  factory $FashionCategoryModelCopyWith(
    FashionCategoryModel value,
    $Res Function(FashionCategoryModel) then,
  ) = _$FashionCategoryModelCopyWithImpl<$Res, FashionCategoryModel>;
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class _$FashionCategoryModelCopyWithImpl<
  $Res,
  $Val extends FashionCategoryModel
>
    implements $FashionCategoryModelCopyWith<$Res> {
  _$FashionCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FashionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? imageUrl = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            imageUrl: null == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FashionCategoryModelImplCopyWith<$Res>
    implements $FashionCategoryModelCopyWith<$Res> {
  factory _$$FashionCategoryModelImplCopyWith(
    _$FashionCategoryModelImpl value,
    $Res Function(_$FashionCategoryModelImpl) then,
  ) = __$$FashionCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String imageUrl});
}

/// @nodoc
class __$$FashionCategoryModelImplCopyWithImpl<$Res>
    extends _$FashionCategoryModelCopyWithImpl<$Res, _$FashionCategoryModelImpl>
    implements _$$FashionCategoryModelImplCopyWith<$Res> {
  __$$FashionCategoryModelImplCopyWithImpl(
    _$FashionCategoryModelImpl _value,
    $Res Function(_$FashionCategoryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FashionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? imageUrl = null}) {
    return _then(
      _$FashionCategoryModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        imageUrl: null == imageUrl
            ? _value.imageUrl
            : imageUrl // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FashionCategoryModelImpl implements _FashionCategoryModel {
  const _$FashionCategoryModelImpl({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory _$FashionCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FashionCategoryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FashionCategoryModel(id: $id, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FashionCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, imageUrl);

  /// Create a copy of FashionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FashionCategoryModelImplCopyWith<_$FashionCategoryModelImpl>
  get copyWith =>
      __$$FashionCategoryModelImplCopyWithImpl<_$FashionCategoryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$FashionCategoryModelImplToJson(this);
  }
}

abstract class _FashionCategoryModel implements FashionCategoryModel {
  const factory _FashionCategoryModel({
    required final String id,
    required final String name,
    required final String imageUrl,
  }) = _$FashionCategoryModelImpl;

  factory _FashionCategoryModel.fromJson(Map<String, dynamic> json) =
      _$FashionCategoryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get imageUrl;

  /// Create a copy of FashionCategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FashionCategoryModelImplCopyWith<_$FashionCategoryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
