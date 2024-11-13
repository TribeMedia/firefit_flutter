import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' as fp;
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/commerce/commerce.dart';

import '../../../config/env.dart';

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
      {required Input$OrderInsertInput input}) {
    // TODO: implement createOrder
    throw UnimplementedError();
  }

  @override
  Future<fp.Either<Failure, PaymentInfo>> createPaymentInfo(
      {required Input$PaymentInfoInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreatePaymentInfo(
        Options$Mutation$CreatePaymentInfo(
          variables: Variables$Mutation$CreatePaymentInfo(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(
          response.parsedData!.insertIntoPaymentInfoCollection!.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCart>> createShoppingCart(
      {required Input$ShoppingCartInsertInput input}) async {
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

      return fp.Right(
          response.parsedData!.insertIntoShoppingCartCollection!.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCartMenuItem>> createShoppingCartMenuItem(
      {required Input$ShoppingCartMenuItemInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreateShoppingCartMenuItem(
        Options$Mutation$CreateShoppingCartMenuItem(
          variables:
              Variables$Mutation$CreateShoppingCartMenuItem(input: input),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(response
          .parsedData!.insertIntoShoppingCartMenuItemCollection!.records.first);
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
          response.parsedData!.deleteFromShoppingCartCollection.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, ShoppingCartMenuItem>> deleteShoppingCartMenuItem(
      {required String id}) async {
    try {
      final response = await graphqlClient.mutate$DeleteShoppingCartMenuItem(
        Options$Mutation$DeleteShoppingCartMenuItem(
          variables: Variables$Mutation$DeleteShoppingCartMenuItem(id: id),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return fp.Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      return fp.Right(response
          .parsedData!.deleteFromShoppingCartMenuItemCollection.records.first);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, Order>> placeOrder(
      {required String shoppingCartId, required String paymentInfoId}) {
    // TODO: implement placeOrder
    throw UnimplementedError();
  }

  @override
  Future<fp.Either<Failure, List<Order>>> queryOrders(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$OrderFilter? filter,
      List<Input$OrderOrderBy>? orderBy}) async {
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
          response.parsedData!.orderCollection != null &&
          response.parsedData!.orderCollection!.edges.isNotEmpty) {
        return fp.Right(List<Order>.from(
            response.parsedData!.orderCollection!.edges.map((e) => e.node)));
      }
      return const fp.Right([]);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, List<PaymentInfo>>> queryPaymentInfo(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$PaymentInfoFilter? filter,
      List<Input$PaymentInfoOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$PaymentInfoCollection(
        Options$Query$PaymentInfoCollection(
          variables: Variables$Query$PaymentInfoCollection(
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
          response.parsedData!.paymentInfoCollection != null &&
          response.parsedData!.paymentInfoCollection!.edges.isNotEmpty) {
        return fp.Right(List<PaymentInfo>.from(response
            .parsedData!.paymentInfoCollection!.edges
            .map((e) => e.node)));
      }

      return const fp.Right([]);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<fp.Either<Failure, List<PaymentType>>> queryPaymentType(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$PaymentTypeFilter? filter,
      List<Input$PaymentTypeOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$PaymentTypeCollection(
        Options$Query$PaymentTypeCollection(
          variables: Variables$Query$PaymentTypeCollection(
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
          response.parsedData!.paymentTypeCollection != null &&
          response.parsedData!.paymentTypeCollection!.edges.isNotEmpty) {
        return fp.Right(List<PaymentType>.from(response
            .parsedData!.paymentTypeCollection!.edges
            .map((e) => e.node)));
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
    Input$ShoppingCartFilter? filter,
    List<Input$ShoppingCartOrderBy>? orderBy,
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
          response.parsedData!.shoppingCartCollection != null &&
          response.parsedData!.shoppingCartCollection!.edges.isNotEmpty) {
        return fp.Right(List<ShoppingCart>.from(response
            .parsedData!.shoppingCartCollection!.edges
            .map((e) => e.node)));
      }
      return const fp.Right([]);
    } catch (e) {
      debugPrint('$e');
      return fp.Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
