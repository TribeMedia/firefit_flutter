import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

const String menuOrderTypeId = 'd94c1b99-57b5-4515-8e65-72f37648698f';
const String createdOrderStatusId = 'ee060cf3-5628-4cc6-b4a4-6fc1e500d7c3';
const String demoUserPaymentMethodId = 'de12448d-2c83-4567-a24d-0abfd01db84d';

final orderRepositoryProvider = Provider<OrderRepositoryInterface>((ref) {
  final talker = ref.watch(loggingProvider);

  return OrderRepository(talker: talker, env: Environment());
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
}

@Riverpod(keepAlive: true)
class OrderController extends _$OrderController {
  late final OrderRepositoryInterface orderRepository;
  late final Station currentStation;

  @override
  FutureOr<OrderViewModel> build(String userId) async {
    return await load(userId);
  }

  FutureOr<OrderViewModel> load(String userId) async {
    final homeState = await ref.watch(homeStateProvider.future);
    currentStation = homeState.firstResponder!.currentStation!;

    orderRepository = ref.read(orderRepositoryProvider);
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
    return await orderRepository.createOrder(
        input: Input$OrderInsertInput(
      userId: cart.userId,
      stationId: currentStation.id,
      orderTypeId: menuOrderTypeId,
      orderStatusId: createdOrderStatusId,
      paymentInfoId: demoUserPaymentMethodId,
    ));
  }
}
