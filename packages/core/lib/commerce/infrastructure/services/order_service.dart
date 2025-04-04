

import 'package:core/core.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:talker_flutter/talker_flutter.dart';
import 'package:uuid/uuid.dart';

class OrderService implements OrderServiceInterface {
  final OrderRepositoryInterface orderRepository;
  final UserRepositoryInterface userRepository;
  final Talker talker;

  OrderService({
    required this.orderRepository,
    required this.userRepository,
    required this.talker,
  });
  @override
  Future<fp.Either<Failure, Order>> createOrder(ShoppingCart cart) async {
    try {
      if (cart.shoppingCartItemsCollection == null || cart.shoppingCartItemsCollection!.edges.isEmpty) {
        return fp.Either.left(Failure.unprocessableEntity(message: 'Cart is empty'));
      }
      final newOrderId = const Uuid().v4();
      // For future implementation, we'll use these cart items
      // final shoppingCartItems = cart.shoppingCartItemsCollection!.edges;
      // Create order items (will be used when actual creation is implemented)
      // For now we're tracking it in a comment to document the planned functionality

      final orderItems = cart.shoppingCartItemsCollection?.edges.map((item) {
        return Input$OrderItemsInsertInput(
          productId: item.node.product.id,
          orderId: newOrderId,
          quantity: item.node.quantity,
          unitPrice: item.node.unitPrice,
        );
      }).toList();

      if (orderItems == null || orderItems.isEmpty) {
        return fp.Either.left(Failure.unprocessableEntity(message: 'Order items not found'));
      }

      final userResult = await userRepository.queryUsers(
        filter: Input$UsersFilter(
          id: Input$UUIDFilter(eq: cart.userId),
        ),
      );

      return userResult.fold(
        (l) => fp.Either.left(Failure.unprocessableEntity(message: l.toString())),
        (r) async {
          if (r.isEmpty) {
            return fp.Either.left(Failure.unprocessableEntity(message: 'User not found'));
          }
          final user = r.first;
          final station = user.primaryStation;
          if (station == null) {
            return fp.Either.left(Failure.unprocessableEntity(message: 'Station not found'));
          }

          final result = await orderRepository.createOrder(
            input: Input$OrdersInsertInput(
              id: newOrderId,
              userId: user.id,
              orderStatus: Enum$OrderStatus.placed,
            ),
          );
          return result.fold(
            (l) => fp.Either.left(Failure.unprocessableEntity(message: l.toString())),
            (r) async {

              await orderRepository.createOrderItems(
                input: orderItems,
              );
              return fp.Either.right(r);
            },
          );
        },
      );
    } catch (e) {
      return fp.Either.left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}