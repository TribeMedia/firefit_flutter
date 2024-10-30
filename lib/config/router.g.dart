// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $errorRoute,
      $loginRoute,
      $registerRoute,
      $profileRoute,
      $providersRoute,
      $chatRoute,
      $shoppingCartRoute,
      $orderHistoryRoute,
      $orderDetailRoute,
      $settingsRoute,
      $orderTrackingRoute,
      $foodDiaryRoute,
      $mealPlansRoute,
      $searchRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      name: 'Home',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'login',
          factory: $LoginRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'register',
          factory: $RegisterRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'profile',
          factory: $ProfileRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'chat',
          factory: $ChatRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'shopping-cart',
          factory: $ShoppingCartRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'order-history',
          factory: $OrderHistoryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'order-detail/:orderId',
          factory: $OrderDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'order-tracking/:orderId',
          factory: $OrderTrackingRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'food-diary',
          factory: $FoodDiaryRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'meal-plans',
          factory: $MealPlansRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'search',
          factory: $SearchRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'settings',
          factory: $SettingsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => const LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $RegisterRouteExtension on RegisterRoute {
  static RegisterRoute _fromState(GoRouterState state) => const RegisterRoute();

  String get location => GoRouteData.$location(
        '/register',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => const ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatRouteExtension on ChatRoute {
  static ChatRoute _fromState(GoRouterState state) => const ChatRoute();

  String get location => GoRouteData.$location(
        '/chat',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShoppingCartRouteExtension on ShoppingCartRoute {
  static ShoppingCartRoute _fromState(GoRouterState state) =>
      const ShoppingCartRoute();

  String get location => GoRouteData.$location(
        '/shopping-cart',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OrderHistoryRouteExtension on OrderHistoryRoute {
  static OrderHistoryRoute _fromState(GoRouterState state) =>
      const OrderHistoryRoute();

  String get location => GoRouteData.$location(
        '/order-history',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OrderDetailRouteExtension on OrderDetailRoute {
  static OrderDetailRoute _fromState(GoRouterState state) => OrderDetailRoute(
        orderId: state.pathParameters['orderId']!,
      );

  String get location => GoRouteData.$location(
        '/order-detail/${Uri.encodeComponent(orderId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $OrderTrackingRouteExtension on OrderTrackingRoute {
  static OrderTrackingRoute _fromState(GoRouterState state) =>
      OrderTrackingRoute(
        orderId: state.pathParameters['orderId']!,
      );

  String get location => GoRouteData.$location(
        '/order-tracking/${Uri.encodeComponent(orderId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $FoodDiaryRouteExtension on FoodDiaryRoute {
  static FoodDiaryRoute _fromState(GoRouterState state) =>
      const FoodDiaryRoute();

  String get location => GoRouteData.$location(
        '/food-diary',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MealPlansRouteExtension on MealPlansRoute {
  static MealPlansRoute _fromState(GoRouterState state) =>
      const MealPlansRoute();

  String get location => GoRouteData.$location(
        '/meal-plans',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => const SearchRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorRoute => GoRouteData.$route(
      path: '/error',
      name: 'Error',
      factory: $ErrorRouteExtension._fromState,
    );

extension $ErrorRouteExtension on ErrorRoute {
  static ErrorRoute _fromState(GoRouterState state) => ErrorRoute(
        error: state.uri.queryParameters['error']!,
      );

  String get location => GoRouteData.$location(
        '/error',
        queryParams: {
          'error': error,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $loginRoute => GoRouteData.$route(
      path: '/login',
      name: 'Login',
      factory: $LoginRouteExtension._fromState,
    );

RouteBase get $registerRoute => GoRouteData.$route(
      path: '/register',
      name: 'Register',
      factory: $RegisterRouteExtension._fromState,
    );

RouteBase get $profileRoute => GoRouteData.$route(
      path: '/profile',
      name: 'Profile',
      factory: $ProfileRouteExtension._fromState,
    );

RouteBase get $providersRoute => GoRouteData.$route(
      path: '/providers',
      name: 'Providers',
      factory: $ProvidersRouteExtension._fromState,
    );

extension $ProvidersRouteExtension on ProvidersRoute {
  static ProvidersRoute _fromState(GoRouterState state) =>
      const ProvidersRoute();

  String get location => GoRouteData.$location(
        '/providers',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $chatRoute => GoRouteData.$route(
      path: '/chat',
      name: 'Chat',
      factory: $ChatRouteExtension._fromState,
    );

RouteBase get $shoppingCartRoute => GoRouteData.$route(
      path: '/shopping-cart',
      name: 'ShoppingCart',
      factory: $ShoppingCartRouteExtension._fromState,
    );

RouteBase get $orderHistoryRoute => GoRouteData.$route(
      path: '/order-history',
      name: 'OrderHistory',
      factory: $OrderHistoryRouteExtension._fromState,
    );

RouteBase get $orderDetailRoute => GoRouteData.$route(
      path: '/order-detail/:orderId',
      name: 'OrderDetail',
      factory: $OrderDetailRouteExtension._fromState,
    );

RouteBase get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      name: 'Settings',
      factory: $SettingsRouteExtension._fromState,
    );

RouteBase get $orderTrackingRoute => GoRouteData.$route(
      path: '/order-tracking/:orderId',
      name: 'OrderTracking',
      factory: $OrderTrackingRouteExtension._fromState,
    );

RouteBase get $foodDiaryRoute => GoRouteData.$route(
      path: '/food-diary',
      name: 'FoodDiary',
      factory: $FoodDiaryRouteExtension._fromState,
    );

RouteBase get $mealPlansRoute => GoRouteData.$route(
      path: '/meal-plans',
      name: 'MealPlans',
      factory: $MealPlansRouteExtension._fromState,
    );

RouteBase get $searchRoute => GoRouteData.$route(
      path: '/search',
      name: 'Search',
      factory: $SearchRouteExtension._fromState,
    );
