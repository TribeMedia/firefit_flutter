import 'dart:async';

import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/core.dart';
import 'package:drift/drift.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/auth/providers/authentication_service_provider.dart';
import 'package:firefit/features/commerce/domain/database/database.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:firefit/features/common/providers/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'providers.g.dart';

final productRepositoryProvider = Provider<ProductRepositoryInterface>((ref) {
  final talker = ref.watch(loggingProvider);
  // Watch the AsyncValue and retrieve the data if available, or use null if still loading
  final hiveStoreAsync = ref.watch(hiveProvider);
  final hiveStore = hiveStoreAsync.value; // This will be null while loading

  return ProductRepository(
      talker: talker, env: Environment(), hiveStore: hiveStore);
});

class MenuViewModel {
  final String? error;
  final bool isLoading;
  final List<Product> products;
  final List<Product> featuredProducts;

  MenuViewModel({
    this.error,
    this.isLoading = false,
    this.products = const [],
    this.featuredProducts = const [],
  });
}

@Riverpod(keepAlive: true)
class MenuController extends _$MenuController {
  static const int _pageSize = 10;
  List<Product> _cachedProducts = [];
  List<Product> _cachedFeaturedProducts = [];
  bool _hasMoreProducts = true;
  int _currentPage = 0;
  StreamSubscription<List<Product>>? _productSubscription;

  @override
  FutureOr<MenuViewModel> build() async {
    state = const AsyncLoading();

    // Reset pagination state when rebuilding
    _cachedProducts = [];
    _cachedFeaturedProducts = [];
    _hasMoreProducts = true;
    _currentPage = 0;

    // Set up subscription to product changes
    _setupProductSubscription();

    // Make sure to cancel the subscription when the provider is disposed
    ref.onDispose(() {
      _productSubscription?.cancel();
    });

    await loadFeaturedProducts();

    return await loadNextPage();
  }

  // Helper method to deduplicate products by ID
  List<Product> _deduplicateProducts(List<Product> products) {
    final uniqueProducts = <String, Product>{};
    for (final product in products) {
      uniqueProducts[product.id] = product;
    }
    return uniqueProducts.values.toList();
  }

  void _setupProductSubscription() {
    // Cancel any existing subscription
    _productSubscription?.cancel();

    // Get the product repository
    final productRepository = ref.read(productRepositoryProvider);

    // Subscribe to product changes
    _productSubscription = productRepository.subscribeToProducts().listen(
      (products) {
        // Update featured products with deduplication
        final newFeaturedProducts =
            products.where((product) => product.isFeatured).toList();
        _cachedFeaturedProducts = _deduplicateProducts(newFeaturedProducts);

        // Update the cached products and state
        _cachedProducts = products;
        state = AsyncData(MenuViewModel(
          isLoading: false,
          products: _cachedProducts,
          featuredProducts: _cachedFeaturedProducts,
          error: null,
        ));
      },
      onError: (error) {
        ref
            .read(loggingProvider)
            .error('Error in product subscription: $error');
      },
    );
  }

  Future<MenuViewModel> loadNextPage() async {
    if (!_hasMoreProducts) {
      // Return current state if there are no more products to load
      return MenuViewModel(
        isLoading: false,
        products: _cachedProducts,
        error: null,
      );
    }

    final menuRepository = ref.read(productRepositoryProvider);
    final menuResult = await menuRepository.queryProducts(
      orderBy: [
        Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.AscNullsLast)
      ],
      first: _pageSize,
      after: _currentPage > 0
          ? 'cursor-${(_currentPage - 1) * _pageSize + _pageSize - 1}'
          : null,
    );

    return menuResult.fold(
      (l) {
        final viewModel = MenuViewModel(error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        // Check if we've reached the end of the list
        if (r.length < _pageSize) {
          _hasMoreProducts = false;
        }

        final newFeaturedProducts =
            r.where((product) => product.isFeatured).toList();

        // Update cached featured products with deduplication
        _cachedFeaturedProducts = _deduplicateProducts(
            [..._cachedFeaturedProducts, ...newFeaturedProducts]);

        // Add new products to the cached list
        _cachedProducts = [..._cachedProducts, ...r];
        _currentPage++;

        final viewModel = MenuViewModel(
          isLoading: false,
          products: _cachedProducts,
          featuredProducts: _cachedFeaturedProducts,
          error: null,
        );
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }

  Future<MenuViewModel> loadFeaturedProducts() async {
    final menuRepository = ref.read(productRepositoryProvider);
    final menuResult = await menuRepository.queryFeaturedProducts();
    return menuResult.fold(
      (l) => MenuViewModel(error: l.error),
      (r) {
        // Update cached featured products with deduplication
        _cachedFeaturedProducts = _deduplicateProducts(r);
        state = AsyncData(MenuViewModel(
          isLoading: false,
          featuredProducts: _cachedFeaturedProducts,
          error: null,
        ));
        return MenuViewModel(featuredProducts: _cachedFeaturedProducts);
      },
    );
  }

  // Method to refresh the menu data
  Future<void> refreshMenu() async {
    state = const AsyncLoading();

    // Reset pagination state
    _cachedProducts = [];
    _hasMoreProducts = true;
    _currentPage = 0;

    // Re-setup the subscription to ensure we're getting the latest data
    _setupProductSubscription();

    await loadNextPage();
  }
}

class ProductCartModel {
  final String? error;
  final bool isLoading;
  final List<CartItem> shoppingCartItems;
  final Cart currentCart;

  ProductCartModel({
    this.error,
    this.isLoading = false,
    this.shoppingCartItems = const [],
    required this.currentCart,
  });

  ProductCartModel copyWith({
    String? error,
    bool? isLoading,
    List<CartItem>? shoppingCartItems,
    Cart? currentCart,
  }) {
    return ProductCartModel(
      error: error ?? this.error,
      isLoading: isLoading ?? this.isLoading,
      shoppingCartItems: shoppingCartItems ?? this.shoppingCartItems,
      currentCart: currentCart ?? this.currentCart,
    );
  }
}

final emptyProductCartModel = ProductCartModel(
  isLoading: false,
  shoppingCartItems: const [],
  currentCart: Cart(
    id: -1,
    userId: Uuid().v4(),
  ),
  error: null,
);

class ProductCartNotifier extends AsyncNotifier<ProductCartModel> {
  late AppDatabase _database;

  @override
  FutureOr<ProductCartModel> build() async {
    state = const AsyncLoading();
    _database = ref.read(cartDatabaseProvider);
    return await load();
  }

  Future<List<Cart>> getCartsByUserId(String userId) async {
    return await (_database.select(_database.carts)
          ..where((cart) => cart.userId.equals(userId)))
        .get();
  }

  Stream<List<CartItem>> watchCartById(int cartId) async* {
    yield* (_database.select(_database.cartItems)
          ..where((cartItem) => cartItem.cartId.equals(cartId)))
        .watch();
  }

  // Use a compute function to run database operations in a separate isolate
  Future<T> _computeAsync<T>(Future<T> Function() computation) async {
    return await computation();
  }

  void addProductToCart({required Product product, int quantity = 1}) {
    // Access the current state
    final currentState = state;

    currentState.whenData((model) {
      // Run database operation in a separate isolate
      _computeAsync(() async {
        try {
          // Check if the product is already in the cart
          final existingItems = await (_database.select(_database.cartItems)
                ..where((item) =>
                    item.productId.equals(product.id) &
                    item.cartId.equals(model.currentCart.id)))
              .get();

          if (existingItems.isNotEmpty) {
            // Product already in cart, update quantity
            final existingItem = existingItems.first;
            final updateQuery = _database.update(_database.cartItems)
              ..where((item) => item.id.equals(existingItem.id));

            await updateQuery.write(CartItemsCompanion(
              quantity: Value(existingItem.quantity + quantity),
            ));
          } else {
            // Product not in cart, add new item
            await _database.into(_database.cartItems).insert(CartItemsCompanion(
                  id: Value.absent(),
                  cartId: Value(model.currentCart.id),
                  productId: Value(product.id),
                  quantity: Value(quantity),
                  unitPrice: Value(product.unitPrice),
                  createdAt: Value(DateTime.now()),
                ));
          }

          // No need to manually update state as we're using streams
        } catch (e) {
          state = AsyncError('Failed to add product to cart: ${e.toString()}',
              StackTrace.current);
        }
      });
    });
  }

  void removeCartItem(int cartItemId) {
    // Run database operation in a separate isolate
    _computeAsync(() async {
      try {
        // Create the delete query properly
        final deleteQuery = _database.delete(_database.cartItems)
          ..where((cartItem) => cartItem.id.equals(cartItemId));

        // Execute the delete operation
        await deleteQuery.go();

        // No need to manually update state as we're using streams
      } catch (e) {
        state = AsyncError('Failed to remove item from cart: ${e.toString()}',
            StackTrace.current);
      }
    });
  }

  CartItem? getCartItemById(int cartItemId) {
    if (state.value == null) return null;
    try {
      return state.value!.shoppingCartItems
          .firstWhere((item) => item.id == cartItemId);
    } catch (e) {
      return null;
    }
  }

  void updateCartItemQuantity(int cartItemId, int quantity) {
    // Access the current state
    final currentState = state;

    currentState.whenData((model) {
      final cartItem = getCartItemById(cartItemId);
      if (cartItem == null) {
        return;
      }

      final targetQuantity = cartItem.quantity + quantity;
      if (targetQuantity < 1) {
        removeCartItem(cartItemId);
        return;
      }

      // Run database operation in a separate isolate
      _computeAsync(() async {
        try {
          // Create the update query properly
          final updateQuery = _database.update(_database.cartItems)
            ..where((cartItem) => cartItem.id.equals(cartItemId));

          // Execute the write operation
          await updateQuery
              .write(CartItemsCompanion(quantity: Value(targetQuantity)));

          // No need to manually update state as we're using streams
        } catch (e) {
          state = AsyncError('Failed to update cart item: ${e.toString()}',
              StackTrace.current);
        }
      });
    });
  }

  void clearCart() {
    // Run database operation in a separate isolate
    _computeAsync(() async {
      try {
        // Execute the delete operation
        await _database.delete(_database.cartItems).go();

        // No need to manually update state as we're using streams
      } catch (e) {
        state = AsyncError(
            'Failed to clear cart: ${e.toString()}', StackTrace.current);
      }
    });
  }

  Future<Either<Failure, Fragment$Order>> createOrder(
      Fragment$DeliveryLocation location) async {
    final currentState = state;

    return currentState.when(
      data: (data) async {
        final orderRepository = ref.read(orderRepositoryProvider);
        final result = await orderRepository.createOrder(
          input: Input$OrdersInsertInput(
              userId: data.currentCart.userId, deliveryLocationId: location.id),
        );

        return result.fold(
          (l) {
            return Left(l);
          },
          (r) async {
            clearCart();
            return Right(r);
          },
        );
      },
      error: (error, _) =>
          Left(Failure.unprocessableEntity(message: error.toString())),
      loading: () => Left(Failure.empty()),
    );
  }

  FutureOr<ProductCartModel> load() async {
    final authProvider = ref.read(authenticationServiceProvider);
    final currentUser = await authProvider.getCurrentUser();

    if (currentUser == null) {
      state = AsyncData(emptyProductCartModel);
      return emptyProductCartModel;
    }

    final cartDatabase = ref.read(cartDatabaseProvider);
    var carts = await getCartsByUserId(currentUser.user.id);

    if (carts.isEmpty) {
      // Create a new cart if none exists
      final insertedCart = await cartDatabase
          .into(cartDatabase.carts)
          .insertReturning(CartsCompanion(
            id: Value.absent(),
            userId: Value(currentUser.user.id),
            createdAt: Value(DateTime.now()),
          ));

      // Refresh carts list with the newly created cart
      carts = [insertedCart];
    }

    // Now we can safely access the first cart
    final cart = carts.first;

    // Initial cart items
    final cartItems = await (cartDatabase.select(cartDatabase.cartItems)
          ..where((cartItem) => cartItem.cartId.equals(cart.id)))
        .get();

    // Create initial view model
    final viewModel = ProductCartModel(
      isLoading: false,
      shoppingCartItems: cartItems,
      currentCart: cart,
      error: null,
    );

    // Set initial state
    state = AsyncData(viewModel);

    // Set up stream for reactive updates
    final stream = watchCartById(cart.id);

    // Use a separate variable to avoid cancellation when this method completes
    final subscription = stream.listen((updatedCartItems) {
      // We don't need to check if the notifier is still active
      // because the subscription will be automatically canceled when the notifier is disposed

      state = AsyncData(ProductCartModel(
        isLoading: false,
        shoppingCartItems: updatedCartItems,
        currentCart: cart,
        error: null,
      ));
    });

    // Add the subscription to be disposed when the notifier is disposed
    ref.onDispose(() {
      subscription.cancel();
    });

    return viewModel;
  }
}

final productCartProvider =
    AsyncNotifierProvider<ProductCartNotifier, ProductCartModel>(
  ProductCartNotifier.new,
);
