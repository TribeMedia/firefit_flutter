import 'package:core/commerce/commerce.dart';
import 'package:core/commerce/domain/models/order.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/common/common.dart';
import 'package:core/schema.graphql.dart';
import 'package:fpdart/fpdart.dart' as fp;

abstract class OrderRepositoryInterface {
  Future<fp.Either<Failure, List<Order>>> queryOrders({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$OrdersFilter? filter,
    List<Input$OrdersOrderBy>? orderBy,
  });

  Future<fp.Either<Failure, Order>> createOrder(
      {required Input$OrdersInsertInput input});

  Future<fp.Either<Failure, ShoppingCart>> createShoppingCart(
      {required Input$ShoppingCartsInsertInput input});

  Future<fp.Either<Failure, ShoppingCartItem>> createShoppingCartItem(
      {required Input$ShoppingCartItemsInsertInput input});

  Future<fp.Either<Failure, ShoppingCartItem>> createShoppingCartMenuItem(
      {required Input$ShoppingCartItemsInsertInput input});

  Future<fp.Either<Failure, ShoppingCart>> deleteShoppingCart(
      {required String id});

  Future<fp.Either<Failure, ShoppingCart>> updateShoppingCart(
      {required String id, required Input$ShoppingCartsUpdateInput input});

  Future<fp.Either<Failure, ShoppingCartItem>> updateShoppingCartItem(
      {required String id, required Input$ShoppingCartItemsUpdateInput input});

  Future<fp.Either<Failure, bool>> deleteShoppingCartMenuItem(
      {required String id});

  Future<fp.Either<Failure, List<ShoppingCart>>> queryShoppingCarts({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ShoppingCartsFilter? filter,
    List<Input$ShoppingCartsOrderBy>? orderBy,
  });

  Future<fp.Either<Failure, Fragment$ShoppingCartItemWithCart?>>
      getShoppingCartItem({
    required String id,
  });
}
