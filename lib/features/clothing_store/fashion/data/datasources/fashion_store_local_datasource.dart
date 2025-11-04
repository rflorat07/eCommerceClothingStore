import '../../domain/entities/entities.dart';

class FashionStoreLocalDataSource {
  // Implementation of local data source methods
  Future<List<Collection>> getNewCollections() async {
    // Simulate fetching local data
    await Future.delayed(const Duration(seconds: 1));
    return [
      const Collection(
        id: '1',
        name: 'Local Item 1',
        imagePath: 'assets/images/fashion/new_collection_1.png',
      ),
      const Collection(
        id: '2',
        name: 'Local Item 2',
        imagePath: 'assets/images/fashion/new_collection_1.png',
      ),
      const Collection(
        id: '3',
        name: 'Local Item 3',
        imagePath: 'assets/images/fashion/new_collection_1.png',
      ),
    ];
  }

  Future<List<Category>> getFashionCategories() async {
    // Simulate fetching local data
    await Future.delayed(const Duration(seconds: 1));
    return [
      const Category(
        id: '1',
        name: 'T-Shirt',
        imageUrl: 'assets/images/fashion/category_1.png',
      ),
      const Category(
        id: '2',
        name: 'Pant',
        imageUrl: 'assets/images/fashion/category_2.png',
      ),
      const Category(
        id: '3',
        name: 'Dress',
        imageUrl: 'assets/images/fashion/category_2.png',
      ),
      const Category(
        id: '4',
        name: 'Jacket',
        imageUrl: 'assets/images/fashion/category_3.png',
      ),
    ];
  }
}
