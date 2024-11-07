import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/meals/meals.dart'; // Import the meals.dart file to use the Menu type alias
import 'package:core/meals/graphql/menu.graphql.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../config/env.dart';

class MenuRepository extends MenuRepositoryInterface {
  MenuRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<Menu>>> queryMenus({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$MenuFilter? filter,
    List<Input$MenuOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$Menus(
        Options$Query$Menus(
          variables: Variables$Query$Menus(
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
          response.parsedData!.menuCollection != null &&
          response.parsedData!.menuCollection!.edges.isNotEmpty) {
        return Right(List<Menu>.from(
            response.parsedData!.menuCollection!.edges.map((e) => e.node)));
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
