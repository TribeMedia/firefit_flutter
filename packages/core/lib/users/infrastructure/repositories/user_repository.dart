import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/config/env.dart';
import 'package:core/schema.graphql.dart';
import 'package:core/users/domain/models/user.dart';
import 'package:core/users/domain/repositories/user_repository_interface.dart';
import 'package:core/users/graphql/users.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:talker_flutter/talker_flutter.dart';

class UserRepository extends UserRepositoryInterface {
  UserRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<User>>> queryUsers({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$UserCollection(
        Options$Query$UserCollection(
          variables: Variables$Query$UserCollection(
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
          response.parsedData!.userCollection != null) {
        return Right(List<User>.from(
            response.parsedData!.userCollection!.edges.map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> createUser(
      {required Input$UserInsertInput input}) async {
    try {
      final response =
          await graphqlClient.mutate$CreateUser(Options$Mutation$CreateUser(
        variables: Variables$Mutation$CreateUser(input: input),
      ));

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.insertIntoUserCollection != null) {
        return Right(
            response.parsedData!.insertIntoUserCollection!.records.first);
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> updateUser(
      {required String id, required Input$UserUpdateInput input}) async {
    try {
      final response =
          await graphqlClient.mutate$UpdateUser(Options$Mutation$UpdateUser(
        variables: Variables$Mutation$UpdateUser(
          id: id,
          user: input,
        ),
      ));

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null) {
        return Right(response.parsedData!.updateUserCollection.records.first);
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
