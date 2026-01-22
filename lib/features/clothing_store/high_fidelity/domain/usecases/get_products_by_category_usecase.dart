import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetProductsByCategoryUseCase {
  final ClothingStoreRepository _repository;

  GetProductsByCategoryUseCase(this._repository);

  Future<List<Product>> call(String category) async {
    return _repository.getProductsByCategory(category);
  }
}
