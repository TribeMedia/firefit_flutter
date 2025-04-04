import 'package:core/commerce/domain/models/product.dart';
import 'package:firefit/config/router_notifier.dart';
import 'package:firefit/features/auth/presentation/screens/login_screen.dart';
import 'package:firefit/features/auth/presentation/screens/registration_screen.dart';
import 'package:firefit/features/auth/presentation/screens/station_code_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/orders_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/payment_success_screen.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/application_container.dart';
import 'package:firefit/features/home/presentation/screens/home_screen.dart';
import 'package:firefit/features/menu/presentation/screens/menu_product_screen.dart';
import 'package:firefit/features/menu/presentation/screens/menu_screen.dart';
import 'package:firefit/features/profiles/presentation/screens/profile_screen.dart';
import 'package:firefit/features/profiles/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final routerNotifier = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    initialLocation: '/',
    refreshListenable: routerNotifier,
    redirect: (context, state) {
      final isAuthenticated = routerNotifier.isAuthenticated;
      final isAuthRoute = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register' ||
          state.matchedLocation == '/station-code';

      if (!isAuthenticated && !isAuthRoute) return '/login';
      if (isAuthenticated && isAuthRoute) return '/';
      return null;
    },
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return ApplicationContainer(
            name: state.matchedLocation,
            child: child,
          );
        },
        routes: [
          GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
          GoRoute(
            path: '/menu',
            builder: (context, state) => const MenuScreen(),
            routes: [
              GoRoute(
                path: 'item/:id',
                builder: (context, state) {
                  final id = state.pathParameters['id'];
                  // If product is provided in extra, use it directly
                  if (state.extra != null &&
                      (state.extra as Map<String, dynamic>)['product'] !=
                          null) {
                    final product = (state.extra
                        as Map<String, dynamic>)['product'] as Product;
                    return MenuProductScreen(product: product);
                  }

                  // Otherwise, use the provider to fetch the product
                  return Consumer(
                    builder: (context, ref, _) {
                      final productAsync =
                          ref.watch(productFutureProvider(id!));

                      return productAsync.when(
                        data: (product) {
                          if (product == null) {
                            return ErrorScreen(
                              errorMessage: 'Product not found',
                              onRetry: () => context.go('/menu'),
                            );
                          }
                          return MenuProductScreen(product: product);
                        },
                        loading: () => const Scaffold(
                          body: Center(child: CircularProgressIndicator()),
                        ),
                        error: (error, stack) => ErrorScreen(
                          errorMessage: error.toString(),
                          onRetry: () => context.go('/menu'),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/orders',
            builder: (context, state) => const OrdersScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
          path: '/success',
          builder: (context, state) {
            return PaymentSuccessScreen();
          }),
      GoRoute(
        path: '/register/:stationCode',
        builder: (context, state) {
          final stationCode = state.pathParameters['stationCode'];
          return RegistrationScreen(stationCode: stationCode!);
        },
      ),
      GoRoute(
        path: '/station-code',
        builder: (context, state) => const StationCodeScreen(),
      ),
    ],
    errorBuilder: (context, state) => ErrorScreen(
      errorMessage: state.error?.toString() ?? 'Unknown error occurred',
      onRetry: () => context.go('/'),
    ),
  );
});

// Extension methods for easier navigation (optional)
extension GoRouterExtensions on BuildContext {
  void pushNamedWithParams(String name, Map<String, String> params) {
    goNamed(name, pathParameters: params);
  }

  void pushNamedWithQuery(String name, Map<String, String> queryParams) {
    goNamed(name, queryParameters: queryParams);
  }
}
