import 'dart:async';
import 'dart:convert';

import 'package:core/commerce/tax/domain/services/sales_tax_service_interface.dart';
import 'package:core/commerce/tax/domain/services/stripe_payment_service_interface.dart';
import 'package:core/commerce/tax/infrastructure/services/sales_tax_service.dart';
import 'package:core/commerce/tax/infrastructure/services/stripe_payment_service.dart';
import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/home/presentation/providers/home_state.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:http/http.dart' as http;
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
  late final OrderRepositoryInterface orderRepository;
  late final Station currentStation;

  @override
  FutureOr<OrderViewModel> build(String userId) async {
    return await load(userId);
  }

  FutureOr<OrderViewModel> load(String userId) async {
    final homeState = await ref.watch(homeStateProvider.future);
    currentStation = homeState.user!.user.primaryStation!;

    orderRepository = ref.read(orderRepositoryProvider);
    final orderResult = await orderRepository.queryOrders(
      filter: Input$OrdersFilter(
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
        input: Input$OrdersInsertInput(
      userId: cart.userId,
      deliveryAddress1: currentStation.address1,
      deliveryAddress: currentStation.address,
      deliveryCity: currentStation.city,
      deliveryLocationName: currentStation.name,
      deliveryZip: currentStation.zip,
    ));
  }
}

class CheckoutState {
  CheckoutState({
    required this.isLoading,
    required this.error,
  });

  final bool isLoading;
  final String? error;
}

@Riverpod(keepAlive: true)
class CheckoutController extends _$CheckoutController {
  late final OrderRepositoryInterface orderRepository;
  late final Station currentStation;

  @override
  FutureOr<CheckoutState> build(String userId) async {
    return await load(userId);
  }

  FutureOr<CheckoutState> load(String userId) async {
    final homeState = await ref.watch(homeStateProvider.future);
    currentStation = homeState.user!.user.primaryStation!;

    orderRepository = ref.read(orderRepositoryProvider);

    final orderResult = await orderRepository.queryOrders(
      filter: Input$OrdersFilter(
        userId: Input$UUIDFilter(eq: userId),
      ),
    );

    return orderResult.fold(
      (l) {
        final viewModel = CheckoutState(error: l.error, isLoading: false);
        state = AsyncData(viewModel);
        return viewModel;
      },
      (r) {
        final viewModel = CheckoutState(isLoading: false, error: null);
        state = AsyncData(viewModel);
        return viewModel;
      },
    );
  }
}

final checkoutUrlProvider =
    FutureProvider.family<String?, String>((ref, userId) async {
  try {
    final response = await http.post(
      Uri.parse(
          '${Environment().supabaseBaseUrl}/functions/v1/create-checkout-session'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({'userId': userId}),
    );
    final sessionData = jsonDecode(response.body);
    return sessionData['url'].toString();
  } catch (e) {
    return null;
  }
});

final salesTaxServiceProvider = Provider<SalesTaxServiceInterface>(
  (ref) => SalesTaxService(
    talker: ref.read(loggingProvider),
    env: Environment(),
  ),
);

final salesTaxProvider = FutureProvider.family<TaxResponse, String>(
  (ref, zipCode) async {
    final salesTaxService = ref.read(salesTaxServiceProvider);
    final result = await salesTaxService.calculateTax(
      amount: 0.0,
      zipCode: zipCode,
    );
    return result.fold(
      (l) => throw l,
      (r) => r,
    );
  },
);

final stripePaymentServiceProvider = Provider<StripePaymentServiceInterface>(
  (ref) => StripePaymentService(
    env: Environment(),
  ),
);

final stripePaymentIntentProvider =
    FutureProvider.family<PaymentIntentResponse, PaymentIntentRequest>(
  (ref, request) async {
    final stripePaymentService = ref.read(stripePaymentServiceProvider);
    final result = await stripePaymentService.createPaymentIntent(
      request: request,
    );
    return result.fold(
      (l) => PaymentIntentResponse(
        clientSecret: '',
        paymentIntentId: '',
        success: false,
        errorMessage: l.error,
      ),
      (r) => r,
    );
  },
);
