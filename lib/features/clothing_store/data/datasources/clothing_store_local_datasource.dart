import '../../domain/entities/entities.dart';

class ClothingStoreLocalDataSource {
  // Local data source implementation
  User getUser() {
    return const User(
      id: '1',
      name: 'Albert Stevano',
      email: 'albert.stevano@example.com',
      username: 'albertstevano',
      profilePicture: 'assets/images/profile.png',
    );
  }
}
