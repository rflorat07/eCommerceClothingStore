import 'package:either_dart/either.dart';

import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetFashionCategoriesUseCase {
  final FashionRepository repository;

  GetFashionCategoriesUseCase(this.repository);

  Future<Either<FashionFailure, List<Category>>> call() async {
    return await repository.getFashionCategories();
  }
}
