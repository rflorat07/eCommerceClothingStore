import '../../../../../core/errors/errors.dart';
import '../../../../../core/network/network.dart';
import '../../domain/entities/entities.dart';
import '../models/user_model.dart';

class ClothingStoreLocalDataSource {
  // Local data source implementation
  Future<UserModel> getUser() async {
    try {
      // Hacer la request usando NetworkClient
      final response = await NetworkClient.instance.dio.get(
        'https://dummyjson.com/users/1',
      );

      // Parsear la respuesta usando Freezed fromJson
      final user = UserModel.fromJson(response.data);
      return user;
    } catch (e) {
      // En caso de error, retornar datos locales como fallback
      throw ServerFailure(message: 'Failed to fetch user data: $e');
    }
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

  List<Product> getProducts() {
    return [
      // Return a list of Product entities
      const Product(
        id: 1,
        title: 'Modern Light Clothes',
        price: 212.99,
        discountPercentage: 265.99,
        description:
            'Its simple and elegant shape makes it perfect for those of you who like minimalist clothes.',
        category: 'tshirt',
        categoryName: 'T-Shirt',
        rating: Rating(rate: 5.0, count: 892),
        thumbnail: 'assets/images/high_fidelity/product_1.png',
        images: [
          'assets/images/high_fidelity/product_detail_1.png',
        ],
        isFavorite: false,
        availableSizes: ['S', 'M', 'L', 'XL'],
        availableColors: [
          AvailableColor(
            colorName: 'Grey',
            hexCode: '#787676',
            stockLevel: 10,
          ),
          AvailableColor(
            colorName: 'Neutral',
            hexCode: '#433F40',
            stockLevel: 5,
          ),
          AvailableColor(
            colorName: 'Black',
            hexCode: '#121111',
            stockLevel: 5,
          ),
        ],
      ),
      const Product(
        id: 2,
        title: 'Light Dress Bless',
        price: 162.99,
        discountPercentage: 190.00,
        description:
            'Its simple and elegant shape makes it perfect for those of you who like minimalist clothes. ',
        category: 'dress',
        categoryName: 'Dress modern',
        rating: Rating(rate: 5.0, count: 7932),
        thumbnail: 'assets/images/high_fidelity/product_2.png',
        images: [
          'assets/images/high_fidelity/product_detail_2.png',
        ],
        isFavorite: true,
        availableSizes: ['S', 'M', 'L', 'XL'],
        availableColors: [
          AvailableColor(
            colorName: 'Grey',
            hexCode: '#787676',
            stockLevel: 10,
          ),
          AvailableColor(
            colorName: 'Neutral',
            hexCode: '#433F40',
            stockLevel: 5,
          ),
          AvailableColor(
            colorName: 'Black',
            hexCode: '#121111',
            stockLevel: 5,
          ),
        ],
      ),
      const Product(
        id: 3,
        title: 'Maroon Dark Top',
        price: 194.99,
        discountPercentage: 215.99,
        description:
            'Its simple and elegant shape makes it perfect for those of you who like minimalist clothes.',
        category: 'dress',
        categoryName: 'Dress',
        rating: Rating(rate: 4.9, count: 292),
        thumbnail: 'assets/images/high_fidelity/product_3.png',
        images: [
          'assets/images/high_fidelity/product_detail_3.png',
        ],
        isFavorite: false,
        availableSizes: ['S', 'M', 'L', 'XL'],
        availableColors: [
          AvailableColor(
            colorName: 'Grey',
            hexCode: '#787676',
            stockLevel: 10,
          ),
          AvailableColor(
            colorName: 'Neutral',
            hexCode: '#433F40',
            stockLevel: 5,
          ),
          AvailableColor(
            colorName: 'Black',
            hexCode: '#121111',
            stockLevel: 5,
          ),
        ],
      ),
      const Product(
        id: 4,
        title: 'Light Dress Yellow',
        price: 122.99,
        discountPercentage: 165.99,
        description:
            'Its simple and elegant shape makes it perfect for those of you who like minimalist clothes.',
        category: 'dress',
        categoryName: 'Dress modern',
        rating: Rating(rate: 5.0, count: 1892),
        thumbnail: 'assets/images/high_fidelity/product_4.png',
        images: [
          'assets/images/high_fidelity/product_detail_4.png',
        ],
        isFavorite: false,
        availableSizes: ['S', 'M', 'L', 'XL'],
        availableColors: [
          AvailableColor(
            colorName: 'Grey',
            hexCode: '#787676',
            stockLevel: 10,
          ),
          AvailableColor(
            colorName: 'Neutral',
            hexCode: '#433F40',
            stockLevel: 5,
          ),
          AvailableColor(
            colorName: 'Yellow',
            hexCode: '#FFCC00',
            stockLevel: 5,
          ),
        ],
      ),
    ];
  }
}
