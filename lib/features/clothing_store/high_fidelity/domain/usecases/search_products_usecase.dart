import '../entities/entities.dart';
import '../repositories/repositories.dart';

class SearchProductsUseCase {
  final ClothingStoreRepository _repository;

  SearchProductsUseCase(this._repository);

  Future<List<Product>> call(String query) async {
    return _repository.searchProducts(query);
  }
}
