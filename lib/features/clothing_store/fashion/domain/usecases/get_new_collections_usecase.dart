import 'package:either_dart/either.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetNewCollectionsUseCase {
  final FashionRepository _repository;

  GetNewCollectionsUseCase(this._repository);

  Future<Either<FashionFailure, List<Collection>>> call() async {
    return await _repository.getNewCollections();
  }
}
