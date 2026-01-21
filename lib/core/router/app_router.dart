import 'package:go_router/go_router.dart';

import '../../features/clothing_store/high_fidelity/presentation/pages/pages.dart';
import '../../shared/widgets/widgets.dart';

/// Application routes
class AppRoutes {
  /// Clothing store route
  static const String clothingStore = '/clothing-store';

  /// Clothing store favorites route
  static const String clothingStoreFavorites = '/clothing-store/favorites';

  /// Clothing store profile route
  static const String clothingStoreProfile = '/clothing-store/profile';

  /// Clothing store shopping bag route
  static const String clothingStoreShoppingBag = '/clothing-store/shopping-bag';

  /// Clothing store detail route
  static const String clothingStoreDetail = '/clothing-store/detail';

  /// Clothing store checkout route
  static const String clothingStoreCheckout = '/clothing-store/checkout';

  /// Custom bottom navigation bar route
  static const String customBottomNavBar = '/custom-bottom-nav-bar';

  /// Private constructor
  AppRoutes._();
}

/// Router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.customBottomNavBar,
  routes: [
    /// Clothing Store Routes
    GoRoute(
      path: AppRoutes.clothingStore,
      name: 'clothing-store',
      builder: (context, state) => const ClothingStoreHomePage(),
    ),
    GoRoute(
      path: AppRoutes.clothingStoreShoppingBag,
      name: 'clothing-store-shopping-bag',
      builder: (context, state) => const ClothingStoreShoppingBagPage(),
    ),
    GoRoute(
      path: AppRoutes.clothingStoreFavorites,
      name: 'clothing-store-favorites',
      builder: (context, state) => const ClothingStoreFavoritesPage(),
    ),
    GoRoute(
      path: AppRoutes.clothingStoreProfile,
      name: 'clothing-store-profile',
      builder: (context, state) => const ClothingStoreProfilePage(),
    ),
    GoRoute(
      path: AppRoutes.clothingStoreDetail,
      name: 'clothing-store-detail',
      builder: (context, state) => ClothingStoreDetailPage(
        product: state.extra as dynamic, // Pass the product from route state
      ),
    ),
    GoRoute(
      path: AppRoutes.clothingStoreCheckout,
      name: 'clothing-store-checkout',
      builder: (context, state) => const ClothingStoreCheckoutPage(),
    ),
    GoRoute(
      path: AppRoutes.customBottomNavBar,
      name: 'custom-bottom-nav-bar',
      builder: (context, state) => const ClothingStoreBottomNavBar(),
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
);
