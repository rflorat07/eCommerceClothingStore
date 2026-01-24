import '../entities/entities.dart';

abstract class ClothingStoreRepository {
  Future<User> getUser();
  Future<List<Category>> getCategories();
  Future<List<Product>> getProducts();
  Future<List<Product>> getProductsByCategory(String category);
  Future<List<Product>> searchProducts(String query);
}
