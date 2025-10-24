import 'package:go_router/go_router.dart';

import '../../shared/widgets/widgets.dart';
import '../demo/typography_demo_page.dart';

/// Application routes
class AppRoutes {
  /// Home route
  static const String home = '/';

  /// Typography demo route
  static const String typographyDemo = '/typography';

  /// Private constructor
  AppRoutes._();
}

/// Router configuration
final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.home,
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
  ],
  errorBuilder: (context, state) => ErrorPage(error: state.error.toString()),
);
