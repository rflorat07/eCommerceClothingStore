import 'package:go_router/go_router.dart';

import '../../features/clothing_store/presentation/pages/clothing_store_home_page.dart';
import '../../shared/widgets/widgets.dart';
import '../demo/demo.dart';

/// Application routes
class AppRoutes {
  /// Home route
  static const String home = '/';

  /// Clothing store route
  static const String clothingStore = '/clothing-store';

  /// Typography demo route
  static const String typographyDemo = '/typography';

  /// Fixed header grid route
  static const String fixedHeaderGrid = '/fixed-header-grid';

  /// Private constructor
  AppRoutes._();
}

/// Router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.clothingStore,
  routes: [
    GoRoute(
      path: AppRoutes.home,
      name: 'home',
      builder: (context, state) => const TypographyDemoPage(),
    ),
    GoRoute(
      path: AppRoutes.typographyDemo,
      name: 'typography-demo',
      builder: (context, state) => const TypographyDemoPage(),
    ),
    GoRoute(
      path: AppRoutes.clothingStore,
      name: 'clothing-store',
      builder: (context, state) => const ClothingStoreHomePage(),
    ),
    GoRoute(
      path: AppRoutes.fixedHeaderGrid,
      name: 'fixed-header-grid',
      builder: (context, state) => const FixedHorizontalListScreen(),
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
);
