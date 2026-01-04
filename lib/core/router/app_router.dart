import 'package:go_router/go_router.dart';

import '../../features/clothing_store/high_fidelity/presentation/pages/pages.dart';
import '../../shared/widgets/widgets.dart';

/// Application routes
class AppRoutes {
  /// Home route
  static const String home = '/clothing-store';

  /// Clothing store route
  static const String clothingStore = '/clothing-store';

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
