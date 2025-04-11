import 'package:core/commerce/commerce.dart';
import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/config/env.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

class OrderRepository extends OrderRepositoryInterface {
  OrderRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<fp.Either<Failure, Order>> createOrder(
      {required Input$OrdersInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreateOrder(
        Options$Mutation$CreateOrder(
          variables: Variables$Mutation$CreateOrder(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint(response.exception?.toString());
        return fp.Left(Failure.unprocessableEntity(
            message:
                response.exception?.toString() ?? 'Unknown error occurred'));
      }

      return fp.Right(
          response.parsedData!.insertIntoOrdersCollection!.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCart>> createShoppingCart(
      {required Input$ShoppingCartsInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreateShoppingCart(
        Options$Mutation$CreateShoppingCart(
          variables: Variables$Mutation$CreateShoppingCart(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(response
          .parsedData!.insertIntoShoppingCartsCollection!.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCartItem>> createShoppingCartMenuItem(
      {required Input$ShoppingCartItemsInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreateShoppingCartItem(
        Options$Mutation$CreateShoppingCartItem(
          variables: Variables$Mutation$CreateShoppingCartItem(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(response
          .parsedData!.insertIntoShoppingCartItemsCollection!.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCart>> deleteShoppingCart(
      {required String id}) async {
    try {
      final response = await graphqlClient.mutate$DeleteShoppingCart(
        Options$Mutation$DeleteShoppingCart(
          variables: Variables$Mutation$DeleteShoppingCart(id: id),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(
          response.parsedData!.deleteFromShoppingCartsCollection.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, bool>> deleteShoppingCartMenuItem(
      {required String id}) async {
    try {
      final response = await graphqlClient.mutate$DeleteShoppingCartItem(
        Options$Mutation$DeleteShoppingCartItem(
          variables: Variables$Mutation$DeleteShoppingCartItem(id: id),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(response
              .parsedData!.deleteFromShoppingCartItemsCollection.affectedCount >
          0);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, List<Order>>> queryOrders(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$OrdersFilter? filter,
      List<Input$OrdersOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$OrderCollection(
        Options$Query$OrderCollection(
          variables: Variables$Query$OrderCollection(
            first: first,
            last: last,
            before: before,
            after: after,
            filter: filter,
            orderBy: orderBy,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.ordersCollection != null &&
          response.parsedData!.ordersCollection!.edges.isNotEmpty) {
        return fp.Right(List<Order>.from(
            response.parsedData!.ordersCollection!.edges.map((e) => e.node)));
      }
      return const fp.Right([]);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, List<ShoppingCart>>> queryShoppingCarts({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ShoppingCartsFilter? filter,
    List<Input$ShoppingCartsOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$ShoppingCartCollection(
        Options$Query$ShoppingCartCollection(
          variables: Variables$Query$ShoppingCartCollection(
            first: first,
            last: last,
            before: before,
            after: after,
            filter: filter,
            orderBy: orderBy,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.shoppingCartsCollection != null &&
          response.parsedData!.shoppingCartsCollection!.edges.isNotEmpty) {
        return fp.Right(List<ShoppingCart>.from(response
            .parsedData!.shoppingCartsCollection!.edges
            .map((e) => e.node)));
      }
      return const fp.Right([]);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCart>> updateShoppingCart(
      {required String id,
      required Input$ShoppingCartsUpdateInput input}) async {
    try {
      final response = await graphqlClient.mutate$UpdateShoppingCart(
        Options$Mutation$UpdateShoppingCart(
          variables: Variables$Mutation$UpdateShoppingCart(
            id: id,
            input: input,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null) {
        return fp.Right(
            response.parsedData!.updateShoppingCartsCollection.records.first);
      }
      return const fp.Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCartItem>> createShoppingCartItem(
      {required Input$ShoppingCartItemsInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreateShoppingCartItem(
        Options$Mutation$CreateShoppingCartItem(
          variables: Variables$Mutation$CreateShoppingCartItem(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(response
          .parsedData!.insertIntoShoppingCartItemsCollection!.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCartItem>> updateShoppingCartItem(
      {required String id,
      required Input$ShoppingCartItemsUpdateInput input}) async {
    try {
      final response = await graphqlClient.mutate$UpdateShoppingCartItem(
        Options$Mutation$UpdateShoppingCartItem(
          variables: Variables$Mutation$UpdateShoppingCartItem(
            id: id,
            input: input,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null) {
        return fp.Right(response
            .parsedData!.updateShoppingCartItemsCollection.records.first);
      }
      return const fp.Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, Fragment$ShoppingCartItemWithCart?>>
      getShoppingCartItem({required String id}) async {
    try {
      final response = await graphqlClient.query$GetShoppingCartItem(
        Options$Query$GetShoppingCartItem(
          variables: Variables$Query$GetShoppingCartItem(id: id),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.shoppingCartItemsCollection?.edges.isNotEmpty ==
              true) {
        return fp.Right(
            response.parsedData!.shoppingCartItemsCollection?.edges.first.node);
      }
      return fp.Right(null);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, List<OrderItem>>> createOrderItems(
      {required List<Input$OrderItemsInsertInput> input}) async {
    try {
      final response = await graphqlClient.mutate$CreateOrderItems(
        Options$Mutation$CreateOrderItems(
          variables: Variables$Mutation$CreateOrderItems(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null) {
        return fp.Right(
            response.parsedData!.insertIntoOrderItemsCollection!.records);
      }
      return const fp.Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, List<DeliveryLocation>>>
      getValidDeliveryLocations() async {
    try {
      final response = await graphqlClient.query$ValidDeliveryLocations();

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.deliveryLocationCollection != null) {
        return fp.Right(response.parsedData!.deliveryLocationCollection!.edges
            .map((e) => e.node)
            .toList());
      }
      return const fp.Right([]);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
