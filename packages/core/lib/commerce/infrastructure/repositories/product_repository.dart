import 'package:core/commerce/domain/models/product.dart';
import 'package:core/commerce/domain/repositories/product_repository_interface.dart';
import 'package:core/commerce/graphql/products.graphql.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/config/env.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

class ProductRepository extends ProductRepositoryInterface {
  ProductRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }

  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<Product>>> queryProducts({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ProductsFilter? filter,
    List<Input$ProductsOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$ProductCollection(
        Options$Query$ProductCollection(
          variables: Variables$Query$ProductCollection(
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
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.productsCollection != null &&
          response.parsedData!.productsCollection!.edges.isNotEmpty) {
        return Right(List<Product>.from(
            response.parsedData!.productsCollection!.edges.map((e) => e.node)));
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
