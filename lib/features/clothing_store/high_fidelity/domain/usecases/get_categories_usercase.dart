import '../../data/models/models.dart';
import '../repositories/repositories.dart';

class GetCategoriesUseCase {
  final ClothingStoreRepository _repository;

  GetCategoriesUseCase(this._repository);

  Future<List<CategoryModel>> call() {
    return _repository.getCategories();
  }
}
