import '../entities/entities.dart';

abstract class ClothingStoreRepository {
  Future<User> getUser();
  Future<List<Category>> getCategories();
  Future<List<Product>> getProducts();
}
