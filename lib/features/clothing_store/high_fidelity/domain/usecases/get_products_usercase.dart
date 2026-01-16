import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetProductsUseCase {
  final ClothingStoreRepository _repository;

  GetProductsUseCase(this._repository);

  Future<List<Product>> call() {
    return _repository.getProducts();
  }
}
