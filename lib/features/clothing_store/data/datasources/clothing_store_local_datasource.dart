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

  List<Category> getCategories() {
    return [
      const Category(
        id: '1',
        name: 'all',
        label: 'All Items',
        iconName: 'category',
      ),
      const Category(
        id: '2',
        name: 'dress',
        label: 'Dress',
        iconName: 'dress',
      ),
      const Category(
        id: '3',
        name: 'tshirt',
        label: 'T-Shirt',
        iconName: 'tshirt',
      ),
      const Category(
        id: '4',
        name: 'Jeans',
        label: 'Jeans',
        iconName: 'jeans',
      ),
    ];
  }
}
