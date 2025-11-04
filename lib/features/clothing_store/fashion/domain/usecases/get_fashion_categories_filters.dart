import 'package:either_dart/either.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetFashionCategoriesFiltersUseCase {
  final FashionRepository _repository;

  GetFashionCategoriesFiltersUseCase(this._repository);

  Future<Either<FashionFailure, List<Category>>> call() async {
    return await _repository.getFashionCategoriesFilters();
  }
}
