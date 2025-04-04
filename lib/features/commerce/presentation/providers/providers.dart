import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/commerce/presentation/providers/delivery_location_provider.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:firefit/features/menu/providers.dart';

// Re-export providers
export 'package:firefit/features/commerce/presentation/providers/delivery_location_provider.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:intl/intl.dart' hide TextDirection;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

final orderRepositoryProvider = Provider<OrderRepositoryInterface>((ref) {
  return OrderRepository(talker: ref.read(loggingProvider), env: Environment());
});

class OrderViewModel {
  final String? error;
  final bool isLoading;
  final List<Order> orders;
  final AuthUser user;

  OrderViewModel({
    this.error,
    this.isLoading = false,
    this.orders = const [],
    required this.user,
  });

  OrderViewModel copyWith({
    bool? isLoading,
    List<Order>? orders,
    String? error,
  }) =>
      OrderViewModel(
          user: user,
          isLoading: isLoading ?? this.isLoading,
          orders: orders ?? this.orders,
          error: error);
}

@Riverpod(keepAlive: true)
class OrderController extends _$OrderController {
  @override
  FutureOr<OrderViewModel> build(AuthUser user) async {
    state = const AsyncLoading();
    return await load(user);
  }

  FutureOr<OrderViewModel> load(AuthUser user) async {
    final orderRepository = ref.read(orderRepositoryProvider);
    final orderResult = await orderRepository.queryOrders(
      filter: Input$OrdersFilter(
        userId: Input$UUIDFilter(eq: state.value?.user.user.id),
      ),
    );
    return orderResult.fold(
      (l) {
        final viewModel = OrderViewModel(user: user, error: l.error);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = OrderViewModel(user: user, orders: r);
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
        input: Input$OrdersInsertInput(
      userId: cart.userId,
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
            input: Input$ShoppingCartsUpdateInput(orderId: order.id));
        return result.fold(
          (l) {
            state = AsyncData(state.value!.copyWith(
              error: l.error,
              isLoading: false,
            ));
            return fp.left(l);
          },
          (r) async {
            await load(homeState.user!);
            ref.invalidate(productCartProvider);
            return fp.right(order);
          },
        );
      },
    );
  }
}

/// A simple provider that returns user-friendly label text for an [Enum$OrderStatus]
final orderStatusLabelProvider = Provider.family<String, Enum$OrderStatus>(
  (ref, status) {
    switch (status) {
      case Enum$OrderStatus.placed:
        return 'Placed';
      case Enum$OrderStatus.in_progress:
        return 'In Progress';
      case Enum$OrderStatus.made:
        return 'Prepared';
      case Enum$OrderStatus.out_for_delivery:
        return 'Out for Delivery';
      case Enum$OrderStatus.delivered:
        return 'Delivered';
      case Enum$OrderStatus.canceled:
        return 'Canceled';
      case Enum$OrderStatus.error:
        return 'Error';
      case Enum$OrderStatus.$unknown:
        return 'Unknown';
    }
  },
);

/// A simple provider that returns an appropriate [Color] for an [Enum$OrderStatus]
final orderStatusColorProvider = Provider.family<Color, Enum$OrderStatus>(
  (ref, status) {
    switch (status) {
      case Enum$OrderStatus.placed:
        return Colors.blue;
      case Enum$OrderStatus.in_progress:
        return Colors.orange;
      case Enum$OrderStatus.made:
        return Colors.green.shade600;
      case Enum$OrderStatus.out_for_delivery:
        return Colors.purple;
      case Enum$OrderStatus.delivered:
        return Colors.green;
      case Enum$OrderStatus.canceled:
        return Colors.red;
      case Enum$OrderStatus.error:
        return Colors.red.shade700;
      case Enum$OrderStatus.$unknown:
        return Colors.grey;
    }
  },
);

/// Model class to hold order total calculations
class OrderTotals {
  final double subtotal;
  final double tax;
  final double total;
  final int itemCount;
  final String formattedSubtotal;
  final String formattedTax;
  final String formattedTotal;

  OrderTotals({
    required this.subtotal,
    required this.tax,
    required this.total,
    required this.itemCount,
    required this.formattedSubtotal,
    required this.formattedTax,
    required this.formattedTotal,
  });
}

/// Provider that calculates consistent order totals from an Order object
final orderTotalsProvider = Provider.family<OrderTotals, Order>(
  (ref, order) {
    // Calculate total items and order amount
    int totalItems = 0;
    double subtotal = 0;

    if (order.orderItemsCollection?.edges != null) {
      for (final edge in order.orderItemsCollection!.edges) {
        final item = edge.node;
        totalItems += item.quantity;
        subtotal += (item.unitPrice * item.quantity);
      }
    }

    // Calculate tax and total (assuming 8.25% tax rate)
    final tax = subtotal * 0.0825;
    final total = subtotal + tax;

    // Format currency amounts
    final currencyFormat = NumberFormat.currency(symbol: '\$');
    final formattedSubtotal = currencyFormat.format(subtotal);
    final formattedTax = currencyFormat.format(tax);
    final formattedTotal = currencyFormat.format(total);

    return OrderTotals(
      subtotal: subtotal,
      tax: tax,
      total: total,
      itemCount: totalItems,
      formattedSubtotal: formattedSubtotal,
      formattedTax: formattedTax,
      formattedTotal: formattedTotal,
    );
  },
);
