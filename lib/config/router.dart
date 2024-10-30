import 'dart:async';

import 'package:firefit/config/router_notifier.dart';
import 'package:firefit/features/auth/presentation/screens/login_screen.dart';
import 'package:firefit/features/auth/presentation/screens/profile_screen.dart';
import 'package:firefit/features/auth/presentation/screens/registration_screen.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/chat/ai_chat_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/ecosystem_provider_search_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/order_detail_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/order_history_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/order_tracking_screen.dart';
import 'package:firefit/features/commerce/presentation/screens/shopping_cart_screen.dart';

import 'package:firefit/features/common/presentation/screens/error_screen.dart';
import 'package:firefit/features/common/presentation/screens/settings_screen.dart';
import 'package:firefit/features/home/presentation/screens/ai_assisted_search_screen.dart';
import 'package:firefit/features/home/presentation/screens/food_diary_screen.dart';
import 'package:firefit/features/home/presentation/screens/home_screen.dart';
import 'package:firefit/features/home/presentation/screens/meal_plans_screen.dart';

import 'package:firefit/utils/riverpod/build_context_x.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'router.g.dart';

@TypedGoRoute<HomeRoute>(path: '/', name: 'Home', routes: [
  TypedGoRoute<LoginRoute>(path: '/login'),
  TypedGoRoute<RegisterRoute>(path: '/register'),
  TypedGoRoute<ProfileRoute>(path: '/profile'),
  TypedGoRoute<ChatRoute>(path: '/chat'),
  TypedGoRoute<ShoppingCartRoute>(path: '/shopping-cart'),
  TypedGoRoute<OrderHistoryRoute>(path: '/order-history'),
  TypedGoRoute<OrderDetailRoute>(path: '/order-detail/:orderId'),
  TypedGoRoute<OrderTrackingRoute>(path: '/order-tracking/:orderId'),
  TypedGoRoute<FoodDiaryRoute>(path: '/food-diary'),
  TypedGoRoute<MealPlansRoute>(path: '/meal-plans'),
  TypedGoRoute<SearchRoute>(path: '/search'),
  TypedGoRoute<SettingsRoute>(path: '/settings'),
])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static String get routePath => '/';
  static String get routeName => 'Home';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HookConsumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final userModelValue = ref.watch(userNotifierProvider);
        return userModelValue.when(
          data: (userModel) {
            return const HomeScreen();
          },
          error: (e, s) => ErrorScreen(
            errorMessage: e.toString(),
            onRetry: () {
              // Define your retry logic here
            },
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

@TypedGoRoute<ErrorRoute>(path: '/error', name: 'Error')
class ErrorRoute extends GoRouteData {
  ErrorRoute({required this.error});
  final String error;

  @override
  Widget build(BuildContext context, GoRouterState state) => ErrorScreen(
        errorMessage: error,
        onRetry: () {
          // Define your retry logic here
        },
      );
}

final routerProvider = Provider((ref) {
  final notifier = RouterNotifier(ref);
  return GoRouter(
    routes: $appRoutes,
    errorBuilder: (context, state) =>
        ErrorRoute(error: state.error!.message).build(context, state),
    navigatorKey: navigatorKey,
    refreshListenable: notifier,
  );
});

@TypedGoRoute<LoginRoute>(path: '/login', name: 'Login', routes: [])
class LoginRoute extends GoRouteData {
  const LoginRoute() : super();

  static String get routePath => '/login';
  static String get routeName => 'Login';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const LoginScreen();
}

@TypedGoRoute<RegisterRoute>(path: '/register', name: 'Register', routes: [])
class RegisterRoute extends GoRouteData {
  const RegisterRoute();

  static String get routePath => '/register';
  static String get routeName => 'Register';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const RegistrationScreen();
}

@TypedGoRoute<ProfileRoute>(path: '/profile', name: 'Profile', routes: [])
class ProfileRoute extends GoRouteData {
  const ProfileRoute();
  static String get routePath => '/profile';
  static String get routeName => 'Profile';
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const ProfileScreen();
}

@TypedGoRoute<ProvidersRoute>(path: '/providers', name: 'Providers', routes: [])
class ProvidersRoute extends GoRouteData {
  const ProvidersRoute();
  static String get routePath => '/providers';
  static String get routeName => 'Providers';
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const EcosystemProviderSearchScreen();
}

@TypedGoRoute<ChatRoute>(path: '/chat', name: 'Chat', routes: [])
class ChatRoute extends GoRouteData {
  const ChatRoute();
  static String get routePath => '/chat';
  static String get routeName => 'Chat';
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AIChatScreen();
}

@TypedGoRoute<ShoppingCartRoute>(
    path: '/shopping-cart', name: 'ShoppingCart', routes: [])
class ShoppingCartRoute extends GoRouteData {
  const ShoppingCartRoute();
  static String get routePath => '/shopping-cart';
  static String get routeName => 'ShoppingCart';
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      ShoppingCartScreen();
}

@TypedGoRoute<OrderHistoryRoute>(
    path: '/order-history', name: 'OrderHistory', routes: [])
class OrderHistoryRoute extends GoRouteData {
  const OrderHistoryRoute();
  static String get routePath => '/order-history';
  static String get routeName => 'OrderHistory';
  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const OrderHistoryScreen();
}

@TypedGoRoute<OrderDetailRoute>(
    path: '/order-detail/:orderId', name: 'OrderDetail', routes: [])
class OrderDetailRoute extends GoRouteData {
  final String orderId;

  OrderDetailRoute({required this.orderId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OrderDetailScreen(orderId: orderId);
  }

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    final userValue = context.ref.read(userNotifierProvider);

    if (!userValue.hasValue) {
      return const LoginRoute().location;
    }
    return null;
  }
}

@TypedGoRoute<SettingsRoute>(path: '/settings', name: 'Settings', routes: [])
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  static String get routePath => '/settings';
  static String get routeName => 'Settings';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const SettingsScreen();
}

@TypedGoRoute<OrderTrackingRoute>(
    path: '/order-tracking/:orderId', name: 'OrderTracking', routes: [])
class OrderTrackingRoute extends GoRouteData {
  final String orderId;

  OrderTrackingRoute({required this.orderId});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return OrderTrackingScreen(orderId: orderId);
  }

  @override
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    final userValue = context.ref.read(userNotifierProvider);

    if (!userValue.hasValue) {
      return const LoginRoute().location;
    }
    return null;
  }
}

@TypedGoRoute<FoodDiaryRoute>(
    path: '/food-diary', name: 'FoodDiary', routes: [])
class FoodDiaryRoute extends GoRouteData {
  const FoodDiaryRoute();

  static String get routePath => '/food-diary';
  static String get routeName => 'FoodDiary';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const FoodDiaryScreen();
}

@TypedGoRoute<MealPlansRoute>(
    path: '/meal-plans', name: 'MealPlans', routes: [])
class MealPlansRoute extends GoRouteData {
  const MealPlansRoute();

  static String get routePath => '/meal-plans';
  static String get routeName => 'MealPlans';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const MealPlansScreen();
}

@TypedGoRoute<SearchRoute>(path: '/search', name: 'Search', routes: [])
class SearchRoute extends GoRouteData {
  const SearchRoute();

  static String get routePath => '/search';
  static String get routeName => 'Search';

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const AIAssistedSearchScreen();
}

final GlobalKey<ScaffoldMessengerState> rootScaffoldMessengerKey =
    GlobalKey<ScaffoldMessengerState>();

final navigatorKey = GlobalKey<NavigatorState>(debugLabel: 'routerKey');
