import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

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
  @override
  FutureOr<OrderViewModel> build(String userId) async {
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
}
