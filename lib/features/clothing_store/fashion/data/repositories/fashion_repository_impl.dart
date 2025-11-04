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
          message: 'Error retrieving collections: $error',
          error: error,
        ),
      );
    }
  }

  @override
  Future<Either<FashionFailure, List<Category>>> getFashionCategories() async {
    try {
      final categories = await _localDataSource.getFashionCategories();
      return Right(categories);
    } catch (error) {
      return Left(
        FashionFailure.unknown(
          message: 'Error retrieving categories : $error',
          error: error,
        ),
      );
    }
  }

  @override
  Future<Either<FashionFailure, List<Category>>>
  getFashionCategoriesFilters() async {
    try {
      final categories = await _localDataSource.getFashionCategoriesFilters();
      return Right(categories);
    } catch (error) {
      return Left(
        FashionFailure.unknown(
          message: 'Error retrieving categories : $error',
          error: error,
        ),
      );
    }
  }
}
