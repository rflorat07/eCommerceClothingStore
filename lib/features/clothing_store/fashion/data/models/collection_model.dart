import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/entities.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    required String id,
    required String name,
    required String imagePath,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}

extension CollectionModelX on CollectionModel {
  Collection toEntity() {
    return Collection(
      id: id,
      name: name,
      imagePath: imagePath,
    );
  }
}
