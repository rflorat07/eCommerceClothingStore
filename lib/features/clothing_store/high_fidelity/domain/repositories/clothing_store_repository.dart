import '../entities/entities.dart';

abstract class ClothingStoreRepository {
  User getUser();
  List<Category> getCategories();
  List<Product> getProducts();
}
