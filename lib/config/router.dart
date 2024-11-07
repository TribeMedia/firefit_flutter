import 'package:firefit/config/providers.dart';
import 'package:firefit/config/router_notifier.dart';
import 'package:firefit/features/auth/presentation/screens/login_screen.dart';
import 'package:firefit/features/auth/presentation/screens/registration_screen.dart';
import 'package:firefit/features/chat/ai_chat_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/menu_screen.dart';
//import 'package:firefit/features/commerce/presentation/screens/order_detail_screen.dart.old';
import 'package:firefit/features/commerce/presentation/screens/shopping_cart_screen.dart';
import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/widgets/application_container.dart';
import 'package:firefit/features/home/presentation/screens/home_screen.dart';
//import 'package:firefit/features/meals/presentation/screens/ai_assisted_search_screen.dart';
import 'package:firefit/features/profiles/presentation/screens/profile_screen.dart';
import 'package:firefit/features/profiles/presentation/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final routerProvider = Provider<GoRouter>((ref) {
  final logging = ref.read(loggingProvider);
  logging.debug('Initializing router');

  final routerNotifier = RouterNotifier(ref);

  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: navigatorKey,
    initialLocation: '/',
    refreshListenable: routerNotifier,
    redirect: (BuildContext context, GoRouterState state) {
      logging.debug('Router redirect called: ${state.matchedLocation}');

      final isAuthenticated = routerNotifier.isAuthenticated;
      final isLoginRoute = state.matchedLocation == '/login';
      final isRegistrationRoute = state.matchedLocation == '/register';

      // Allow access to login and registration without authentication
      if (!isAuthenticated && (isLoginRoute || isRegistrationRoute)) {
        return null;
      }

      // Redirect to login if not authenticated
      if (!isAuthenticated) {
        return '/login';
      }

      // Redirect to home if authenticated and trying to access login/register
      if (isAuthenticated && (isLoginRoute || isRegistrationRoute)) {
        return '/';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/',
        name: 'home',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        routes: [
          GoRoute(
            path: 'login',
            name: 'login',
            builder: (BuildContext context, GoRouterState state) {
              return const LoginScreen();
            },
          ),
          GoRoute(
            path: 'register',
            name: 'register',
            builder: (BuildContext context, GoRouterState state) {
              return const RegistrationScreen();
            },
          ),
          GoRoute(
            path: 'chat',
            name: 'chat',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'chat',
                child: AIChatScreen(),
              );
            },
          ),
          GoRoute(
            path: 'menu',
            name: 'menu',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'menu',
                child: MenuScreen(),
              );
            },
          ),
          /*GoRoute(
            path: 'order-detail/:orderId',
            name: 'orderDetail',
            builder: (BuildContext context, GoRouterState state) {
              final orderId = state.pathParameters['orderId']!;
              return ApplicationContainer(
                name: 'orderDetail',
                child: OrderDetailScreen(orderId: orderId),
              );
            },
          ),*/
          /*GoRoute(
            path: 'order-history',
            name: 'orderHistory',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'orderHistory',
                child: OrderHistoryScreen(),
              );
            },
          ),*/
          GoRoute(
            path: 'shopping-cart',
            name: 'shoppingCart',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'shoppingCart',
                child: ShoppingCartScreen(),
              );
            },
          ),
          /*GoRoute(
            path: 'ai-assisted-search',
            name: 'aiAssistedSearch',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'aiAssistedSearch',
                child: AIAssistedSearchScreen(),
              );
            },
          ),*/
          GoRoute(
            path: 'profile',
            name: 'profile',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'profile',
                child: ProfileScreen(),
              );
            },
          ),
          GoRoute(
            path: 'settings',
            name: 'settings',
            builder: (BuildContext context, GoRouterState state) {
              return const ApplicationContainer(
                name: 'settings',
                child: SettingsScreen(),
              );
            },
          ),
        ],
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) {
      return ErrorScreen(
        errorMessage: state.error?.toString() ?? 'Unknown error occurred',
        onRetry: () {
          context.go('/');
        },
      );
    },
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
