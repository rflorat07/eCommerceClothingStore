import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetCategoriesUsecase {
  final ClothingStoreRepository _repository;

  GetCategoriesUsecase(this._repository);

  List<Category> call() {
    return _repository.getCategories();
  }
}
