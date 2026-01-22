import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class ClothingStoreRepositoryImpl implements ClothingStoreRepository {
  final ClothingStoreLocalDataSource _localDataSource;

  ClothingStoreRepositoryImpl(this._localDataSource);

  @override
  Future<User> getUser() async {
    final userModel = await _localDataSource.getUser();
    return userModel.toEntity();
  }

  @override
  Future<List<Category>> getCategories() async {
    final categoriesModel = await _localDataSource.getCategories();
    return categoriesModel
        .map((model) => model.toEntity())
        .toList(); // Mapea lista
  }

  @override
  Future<List<Product>> getProducts() async {
    final productModel = await _localDataSource.getProducts();
    return productModel.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<Product>> getProductsByCategory(String category) {
    // TODO: implement getProductsByCategory
    throw UnimplementedError();
  }

  @override
  Future<List<Product>> searchProducts(String query) async {
    final productModel = await _localDataSource.searchedProducts(query);
    return productModel.map((model) => model.toEntity()).toList();
  }
}
