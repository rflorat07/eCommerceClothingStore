import '../../data/models/models.dart';
import '../entities/entities.dart';

abstract class ClothingStoreRepository {
  Future<UserModel> getUser();
  Future<List<CategoryModel>> getCategories();
  List<Product> getProducts();
}
