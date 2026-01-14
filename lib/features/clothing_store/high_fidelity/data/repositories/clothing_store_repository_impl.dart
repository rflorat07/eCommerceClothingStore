import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../datasources/datasources.dart';
import '../models/models.dart';

class ClothingStoreRepositoryImpl implements ClothingStoreRepository {
  final ClothingStoreLocalDataSource _localDataSource;

  ClothingStoreRepositoryImpl(this._localDataSource);

  @override
  Future<UserModel> getUser() {
    return _localDataSource.getUser();
  }

  @override
  List<Category> getCategories() {
    return _localDataSource.getCategories();
  }

  @override
  List<Product> getProducts() {
    return _localDataSource.getProducts();
  }
}
