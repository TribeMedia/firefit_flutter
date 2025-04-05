import 'dart:async';

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
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';

class ProductRepository extends ProductRepositoryInterface {
  ProductRepository({
    required this.talker,
    required this.env,
    this.hiveStore,
  }) {
    graphQLRepository =
        GraphQLRepository(talker: talker, env: env, hiveStore: hiveStore);
    graphqlClient = graphQLRepository.graphqlClient;
    _supabase = Supabase.instance.client;
  }

  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  late final SupabaseClient _supabase;
  final EnvInterface env;
  final Talker talker;
  final HiveStore? hiveStore;

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
  
  @override
  Stream<List<Product>> subscribeToProducts() {
    // Create a StreamController to manage the product stream
    final controller = StreamController<List<Product>>.broadcast();
    
    try {
      // Set up Supabase subscription to the products table
      final subscription = _supabase
          .channel('public:products')
          .onPostgresChanges(
            event: PostgresChangeEvent.insert,
            schema: 'public',
            table: 'products',
            callback: (payload) async {
              talker.debug('Product change detected: ${payload.toString()}');
              
              // When a change is detected, fetch the latest products
              final result = await queryProducts(
                orderBy: [
                  Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.AscNullsLast)
                ],
              );
              
              // Add the updated product list to the stream
              result.fold(
                (failure) {
                  talker.error('Failed to fetch updated products: ${failure.error}');
                },
                (products) {
                  controller.add(products);
                },
              );
            },
          )
          .subscribe();
      
      // Clean up the subscription when the stream is closed
      controller.onCancel = () {
        subscription.unsubscribe();
      };
      
      // Initial fetch to populate the stream
      queryProducts(
        orderBy: [
          Input$ProductsOrderBy(createdAt: Enum$OrderByDirection.AscNullsLast)
        ],
      ).then((result) {
        result.fold(
          (failure) {
            talker.error('Failed to fetch initial products: ${failure.error}');
          },
          (products) {
            controller.add(products);
          },
        );
      });
    } catch (e) {
      talker.error('Error setting up product subscription: $e');
      controller.addError(e);
    }
    
    return controller.stream;
  }
}
