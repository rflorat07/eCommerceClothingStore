import '../../../../../core/errors/errors.dart';
import '../../../../../core/network/network.dart';
import '../models/models.dart';

class ClothingStoreLocalDataSource {
  // Local data source implementation
  Future<UserModel> getUser() async {
    try {
      // Make the request using NetworkClient
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/users/1',
      );

      // Parse the response using Freezed fromJson
      final user = UserModel.fromJson(response.data);
      return user;
    } catch (e) {
      // In case of error, return local data as fallback
      throw ServerFailure(message: 'Failed to fetch user data: $e');
    }
  }

  Future<List<CategoryModel>> getCategories() async {
    try {
      // Make the request using NetworkClient
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/products/categories',
      );

      // Parse the response using Freezed fromJson
      final categories = (response.data as List)
          .map((category) => CategoryModel.fromJson(category))
          .toList();

      // Add "All Item" category at the beginning
      categories.insert(
        0,
        const CategoryModel(
          slug: 'all',
          name: 'All Item',
          url: 'https://dummyjson.com/products',
          icon: 'category',
        ),
      );

      return categories;
    } catch (e) {
      // In case of error, return local data as fallback
      throw ServerFailure(message: 'Failed to fetch categories data: $e');
    }
  }

  Future<List<ProductModel>> getProducts() async {
    try {
      // Make the request using NetworkClient
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/products/category/womens-dresses',
      );

      // Extract values from the response map with defaults
      final productsData = response.data['products'] as List<dynamic>? ?? [];
      /*       final total = response.data['total'] as int? ?? 0;
      final skip = response.data['skip'] as int? ?? 0;
      final limit = response.data['limit'] as int? ?? 0;
      */

      // Parse the products list using Freezed fromJson
      final products = productsData
          .map(
            (product) => ProductModel.fromJson(product as Map<String, dynamic>),
          )
          .toList();

      return products;
    } catch (e) {
      // In case of error, return local data as fallback
      throw ServerFailure(message: 'Failed to fetch products data: $e');
    }
  }

  Future<List<ProductModel>> searchedProducts(String query) async {
    try {
      // Make the request using NetworkClient
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/products/search',
        queryParameters: {'q': query},
      );

      // Extract values from the response map with defaults
      final productsData = response.data['products'] as List<dynamic>? ?? [];

      // Parse the products list using Freezed fromJson
      final products = productsData
          .map(
            (product) => ProductModel.fromJson(product as Map<String, dynamic>),
          )
          .toList();

      return products;
    } catch (e) {
      // In case of error, return local data as fallback
      throw ServerFailure(message: 'Failed to fetch search products data: $e');
    }
  }
}
