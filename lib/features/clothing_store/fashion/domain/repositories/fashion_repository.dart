import 'package:either_dart/either.dart';

import '../entities/entities.dart';

abstract class FashionRepository {
  Future<Either<FashionFailure, List<Collection>>> getNewCollections();
}
