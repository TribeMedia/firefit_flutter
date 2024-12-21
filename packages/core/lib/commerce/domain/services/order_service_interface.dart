import 'package:core/commerce/domain/models/order.dart';
import 'package:core/common/failures/failure.dart';
import 'package:fpdart/fpdart.dart' as fp;

abstract class OrderServiceInterface {
  Future<fp.Either<Failure, Order>> createOrder(ShoppingCart cart);
}
