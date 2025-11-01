import '../entities/entities.dart';
import '../repositories/repositories.dart';

class GetUserUseCase {
  final ClothingStoreRepository _repository;

  GetUserUseCase(this._repository);

  User call() {
    return _repository.getUser();
  }
}
