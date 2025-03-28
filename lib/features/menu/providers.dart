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

  MenuViewModel({
    this.error,
    this.isLoading = false,
    this.products = const [],
  });
}

@Riverpod(keepAlive: true)
class MenuController extends _$MenuController {
  @override
  FutureOr<MenuViewModel> build() async {
    state = const AsyncLoading();
    return await load();
  }

  FutureOr<MenuViewModel> load() async {
    final menuRepository = ref.read(productRepositoryProvider);
    final menuResult = await menuRepository.queryProducts(
      orderBy: [
        Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.AscNullsLast)
      ],
    );
    return menuResult.fold(
      (l) {
        final viewModel = MenuViewModel(error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = MenuViewModel(
          isLoading: false,
          products: r,
          error: null,
        );
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }
}

class ProductCartModel {
  final String? error;
  final bool isLoading;
  final List<CartItem> shoppingCartItems;
  final Cart? currentCart;

  ProductCartModel({
    this.error,
    this.isLoading = false,
    this.shoppingCartItems = const [],
    this.currentCart,
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
  currentCart: null,
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

  void addProductToCart(Product product, int quantity) {
    // Access the current state
    final currentState = state;

    currentState.whenData((model) async {
      try {            
        final cartItem = await _database
            .into(_database.cartItems)
            .insertReturning(CartItemsCompanion(
              id: Value.absent(),
              cartId: Value(model.currentCart?.id ?? 0),
              productId: Value(product.id),
              quantity: Value(quantity),
              unitPrice: Value(product.unitPrice),
              createdAt: Value(DateTime.now()),
            ));

        state = AsyncData(model.copyWith(
          shoppingCartItems: [...model.shoppingCartItems, cartItem],
        ));
      } catch (e) {
        state = AsyncError(
            'Failed to add product to cart: ${e.toString()}', StackTrace.current);
      }
    });
  }

  void removeCartItem(int cartItemId) {
    // Access the current state
    final currentState = state;

    currentState.whenData((model) async {
      // Create the delete query properly
      final deleteQuery = _database.delete(_database.cartItems)
        ..where((cartItem) => cartItem.id.equals(cartItemId));

      // Execute the delete operation
      await deleteQuery.go();

      // Update state to remove the item
      state = AsyncData(model.copyWith(
        shoppingCartItems: model.shoppingCartItems
            .where((item) => item.id != cartItemId)
            .toList(),
      ));
    });
  }

  void updateCartItemQuantity(int cartItemId, int quantity) {
    // Access the current state
    final currentState = state;

    currentState.whenData((model) async {
      // Create the update query properly
      final updateQuery = _database.update(_database.cartItems)
        ..where((cartItem) => cartItem.id.equals(cartItemId));

      // Execute the write operation
      await updateQuery.write(CartItemsCompanion(quantity: Value(quantity)));

      state = AsyncData(model.copyWith(
        shoppingCartItems: model.shoppingCartItems.map((cartItem) {
          if (cartItem.id == cartItemId) {
            return cartItem.copyWith(quantity: quantity);
          }
          return cartItem;
        }).toList(),
      ));
    });
  }

  void clearCart() {
    // Access the current state
    final currentState = state;

    currentState.whenData((model) async {
      // Execute the delete operation
      await _database.delete(_database.cartItems).go();

      // Update state to clear cart items
      state = AsyncData(model.copyWith(
        shoppingCartItems: const [],
      ));
    });
  }

  Future<Either<Failure, Fragment$Order>> createOrder() async {
    final currentState = state;

    return currentState.when(
      data: (data) async {
        final orderRepository = ref.read(orderRepositoryProvider);
        final result = await orderRepository.createOrder(
          input: Input$OrdersInsertInput(
            userId: data.currentCart!.userId,
          ),
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

    final cartItems = await (cartDatabase.select(cartDatabase.cartItems)
          ..where((cartItem) => cartItem.cartId.equals(cart.id)))
        .get();

    /*final stream = watchCartById(cart.id);
    stream.listen((cartItems) async {
      final viewModel = ProductCartModel(
        isLoading: false,
        shoppingCartItems: cartItems,
        currentCart: cart,
        error: null,
      );
      ref.invalidateSelf();
      state = AsyncData(viewModel);
    });*/

    final viewModel = ProductCartModel(
      isLoading: false,
      shoppingCartItems: cartItems,
      currentCart: cart,
      error: null,
    );
    state = AsyncData(viewModel);
    return viewModel;
  }
}

final productCartProvider =
    AsyncNotifierProvider<ProductCartNotifier, ProductCartModel>(
  ProductCartNotifier.new,
);
