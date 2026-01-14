import '../../data/models/user_model.dart';
import '../entities/entities.dart';

abstract class ClothingStoreRepository {
  Future<UserModel> getUser();
  List<Category> getCategories();
  List<Product> getProducts();
}
