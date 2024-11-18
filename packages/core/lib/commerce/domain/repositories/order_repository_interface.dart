import 'package:core/commerce/commerce.dart';
import 'package:core/commerce/domain/models/order.dart';
import 'package:core/common/common.dart';
import 'package:core/schema.graphql.dart';
import 'package:fpdart/fpdart.dart' as fp;

abstract class OrderRepositoryInterface {
  Future<fp.Either<Failure, List<Order>>> queryOrders({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$OrderFilter? filter,
    List<Input$OrderOrderBy>? orderBy,
  });

  Future<fp.Either<Failure, Order>> createOrder(
      {required Input$OrderInsertInput input});

  Future<fp.Either<Failure, ShoppingCart>> createShoppingCart(
      {required Input$ShoppingCartInsertInput input});

  Future<fp.Either<Failure, ShoppingCartMenuItem>> createShoppingCartMenuItem(
      {required Input$ShoppingCartMenuItemInsertInput input});

  Future<fp.Either<Failure, ShoppingCart>> deleteShoppingCart(
      {required String id});

  Future<fp.Either<Failure, ShoppingCart>> updateShoppingCart(
      {required String id, required Input$ShoppingCartUpdateInput input});

  Future<fp.Either<Failure, ShoppingCartMenuItem>> deleteShoppingCartMenuItem(
      {required String id});

  Future<fp.Either<Failure, Order>> placeOrder({
    required String shoppingCartId,
    required String paymentInfoId,
  });

  Future<fp.Either<Failure, List<PaymentInfo>>> queryPaymentInfo({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$PaymentInfoFilter? filter,
    List<Input$PaymentInfoOrderBy>? orderBy,
  });

  Future<fp.Either<Failure, List<PaymentType>>> queryPaymentType({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$PaymentTypeFilter? filter,
    List<Input$PaymentTypeOrderBy>? orderBy,
  });

  Future<fp.Either<Failure, List<ShoppingCart>>> queryShoppingCarts({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ShoppingCartFilter? filter,
    List<Input$ShoppingCartOrderBy>? orderBy,
  });

  Future<fp.Either<Failure, PaymentInfo>> createPaymentInfo(
      {required Input$PaymentInfoInsertInput input});
}
