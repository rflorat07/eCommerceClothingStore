import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetCategoriesUseCase {
  final ClothingStoreRepository _repository;

  GetCategoriesUseCase(this._repository);

  List<Category> call() {
    return _repository.getCategories();
  }
}
