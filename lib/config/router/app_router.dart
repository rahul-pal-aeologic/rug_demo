import 'package:go_router/go_router.dart';
import 'package:rug_demo/main.dart';
import 'package:rug_demo/presentation/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: SplashScreen.routeName,
  navigatorKey: navigationKey,
  routes: [
    GoRoute(
      name: SplashScreen.routeName,
      path: SplashScreen.routeName,
      builder: (context, state) => const SplashScreen(),
    )]);