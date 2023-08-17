import 'package:go_router/go_router.dart';
import 'package:rug_demo/main.dart';
import 'package:rug_demo/presentation/dashboard/view/dashboard_screen.dart';
import 'package:rug_demo/presentation/homepage/view/homepage.dart';
import 'package:rug_demo/presentation/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashScreen.routeName,
  navigatorKey: navigationKey,
  routes: [
    GoRoute(
      name: SplashScreen.routeName,
      path: SplashScreen.routeName,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: Homepage.routeName,
      path: Homepage.routeName,
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      name: DashboardScreen.routeName,
      path: DashboardScreen.routeName,
      builder: (context, state) => const DashboardScreen(),
    ),
  ],
);
