import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetUserUseCase {
  final ClothingStoreRepository _repository;

  GetUserUseCase(this._repository);

  Future<User> call() async {
    return _repository.getUser();
  }
}
