import 'package:either_dart/either.dart';

import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';

class FashionRepositoryImpl implements FashionRepository {
  final FashionStoreLocalDataSource _localDataSource;

  FashionRepositoryImpl(this._localDataSource);

  @override
  Future<Either<FashionFailure, List<Collection>>> getNewCollections() async {
    try {
      final collections = await _localDataSource.getNewCollections();
      return Right(collections);
    } catch (error) {
      return Left(
        FashionFailure.unknown(
          message: 'Error al obtener las colecciones: $error',
          error: error,
        ),
      );
    }
  }
}
