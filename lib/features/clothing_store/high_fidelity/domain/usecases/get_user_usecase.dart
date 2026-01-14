import '../../data/models/user_model.dart';
import '../repositories/repositories.dart';

class GetUserUseCase {
  final ClothingStoreRepository _repository;

  GetUserUseCase(this._repository);

  Future<UserModel> call() {
    return _repository.getUser();
  }
}
