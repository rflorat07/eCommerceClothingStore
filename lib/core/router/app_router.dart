import 'package:go_router/go_router.dart';

import '../../features/clothing_store/presentation/pages/clothing_store_page.dart';
import '../../shared/widgets/widgets.dart';
import '../demo/typography_demo_page.dart';

/// Application routes
class AppRoutes {
  /// Home route
  static const String home = '/';

  /// Clothing store route
  static const String clothingStore = '/clothing-store';

  /// Typography demo route
  static const String typographyDemo = '/typography';

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
      builder: (context, state) => const ClothingStorePage(),
    ),
  ],
  errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
);
