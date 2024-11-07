import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/meals/meals.dart'; // Import the meals.dart file to use the MenuItem type alias
import 'package:core/meals/graphql/menu.graphql.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../config/env.dart';

class MenuItemRepository extends MenuItemRepositoryInterface {
  MenuItemRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<MenuItem>>> queryMenuItems({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$MenuItemFilter? filter,
    List<Input$MenuItemOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$MenuItems(
        Options$Query$MenuItems(
          variables: Variables$Query$MenuItems(
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
          response.parsedData!.menuItemCollection != null &&
          response.parsedData!.menuItemCollection!.edges.isNotEmpty) {
        return Right(List<MenuItem>.from(
            response.parsedData!.menuItemCollection!.edges.map((e) => e.node)));
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
