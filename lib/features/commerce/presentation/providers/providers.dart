import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/commerce/presentation/providers/shopping_cart_notifier.dart';
import 'package:firefit/features/commerce/providers/providers.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

final orderRepositoryProvider = Provider<OrderRepositoryInterface>((ref) {
  return OrderRepository(talker: ref.read(loggingProvider), env: Environment());
});

class OrderViewModel {
  final String? error;
  final bool isLoading;
  final List<Order> orders;
  final String userId;

  OrderViewModel({
    this.error,
    this.isLoading = false,
    this.orders = const [],
    required this.userId,
  });

  OrderViewModel copyWith({
    bool? isLoading,
    List<Order>? orders,
    String? error,
  }) =>
      OrderViewModel(
          userId: userId,
          isLoading: isLoading ?? this.isLoading,
          orders: orders ?? this.orders,
          error: error);
}

@Riverpod(keepAlive: true)
class OrderController extends _$OrderController {
  @override
  FutureOr<OrderViewModel> build(String userId) async {
    state = const AsyncLoading();
    return await load(userId);
  }

  FutureOr<OrderViewModel> load(String userId) async {
    final orderRepository = ref.read(orderRepositoryProvider);
    final orderResult = await orderRepository.queryOrders(
      filter: Input$OrderFilter(
        userId: Input$UUIDFilter(eq: userId),
      ),
    );
    return orderResult.fold(
      (l) {
        final viewModel = OrderViewModel(userId: userId, error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = OrderViewModel(userId: userId, orders: r);
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }

  Future<fp.Either<Failure, Order>> createOrder(ShoppingCart cart) async {
    state = AsyncValue.data(state.value!.copyWith(isLoading: true));
    final orderRepository = ref.read(orderRepositoryProvider);
    final homeState = await ref.watch(homeStateProvider.future);
    final orderResult = await orderRepository.createOrder(
        input: Input$OrderInsertInput(
      userId: cart.userId,
      stationId: homeState.firstResponder!.currentStationId,
      paymentInfoId: demoUserPaymentMethodId,
      orderStatusId: createdOrderStatusId,
      orderTypeId: menuOrderTypeId,
    ));
    return orderResult.fold(
      (l) {
        state = AsyncData(state.value!.copyWith(
          error: l.error,
          isLoading: false,
        ));
        return fp.left(l);
      },
      (order) async {
        final orderRepository = ref.read(orderRepositoryProvider);
        final result = await orderRepository.updateShoppingCart(
            id: cart.id,
            input: Input$ShoppingCartUpdateInput(orderId: order.id));
        return result.fold(
          (l) {
            state = AsyncData(state.value!.copyWith(
              error: l.error,
              isLoading: false,
            ));
            return fp.left(l);
          },
          (r) async {
            await load(userId);
            ref.invalidate(shoppingCartProvider);
            return fp.right(order);
          },
        );
      },
    );
  }
}
