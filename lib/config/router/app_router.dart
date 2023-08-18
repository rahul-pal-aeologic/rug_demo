import 'package:go_router/go_router.dart';
import 'package:rug_demo/main.dart';
import 'package:rug_demo/presentation/dashboard/view/dashboard_screen.dart';
import 'package:rug_demo/presentation/dashboard/view/homepage/view/homepage.dart';
import 'package:rug_demo/presentation/filter/view/filter_page.dart';
import 'package:rug_demo/presentation/login/view/login_page.dart';
import 'package:rug_demo/presentation/onboarding/view/onboarding_page.dart';
import 'package:rug_demo/presentation/signup/view/signup_page.dart';
import 'package:rug_demo/presentation/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: OnboardingScreen.routeName,
  navigatorKey: navigationKey,
  routes: [
    GoRoute(
      name: OnboardingScreen.routeName,
      path: OnboardingScreen.routeName,
      builder: (context, state) => const OnboardingScreen(),
    ),
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
      name: LoginScreen.routeName,
      path: LoginScreen.routeName,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: SignupScreen.routeName,
      path: SignupScreen.routeName,
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      name: DashboardScreen.routeName,
      path: DashboardScreen.routeName,
      builder: (context, state) => const DashboardScreen(),
    ),
    GoRoute(
      name: FilterScreen.routeName,
      path: FilterScreen.routeName,
      builder: (context, state) => const FilterScreen(),
    ),
  ],
);
