import 'package:firefit/config/router_notifier.dart';
import 'package:firefit/features/auth/presentation/screens/login_screen.dart';
import 'package:firefit/features/auth/presentation/screens/registration_screen.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/application_container.dart';
import 'package:firefit/features/home/presentation/screens/home_screen.dart';
import 'package:firefit/features/menu/presentation/screens/menu_item_detail_page.dart';
import 'package:firefit/features/menu/presentation/screens/menu_screen.dart';
import 'package:firefit/features/profiles/presentation/screens/settings_screen.dart';
import 'package:firefit/features/teams/presentation/screens/station_screen.dart';
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
          state.matchedLocation == '/register';

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
          GoRoute(
            path: '/',
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: '/menu',
            builder: (context, state) => const MenuScreen(),
            routes: [
              GoRoute(
                path: 'item/:id',
                builder: (context, state) {
                  final id = state.pathParameters['id'];
                  return MenuItemDetailPage(
                    menuItemId: id!,
                  );
                },
              ),
            ],
          ),
          GoRoute(
            path: '/station',
            builder: (context, state) => const StationScreen(),
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) => const SettingsScreen(),
          ),
        ],
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegistrationScreen(),
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
