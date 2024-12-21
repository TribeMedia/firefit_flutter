

import 'package:core/commerce/domain/models/order.dart';
import 'package:core/commerce/domain/repositories/order_repository_interface.dart';
import 'package:core/commerce/domain/services/order_service_interface.dart';
import 'package:core/common/failures/failure.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:talker_flutter/talker_flutter.dart';

class OrderService implements OrderServiceInterface {
  final OrderRepositoryInterface orderRepository;
  final Talker talker;

  OrderService({
    required this.orderRepository,
    required this.talker,
  });
  @override
  Future<fp.Either<Failure, Order>> createOrder(ShoppingCart cart) async {
    // TODO: implement createOrder
    throw UnimplementedError();
  }
}