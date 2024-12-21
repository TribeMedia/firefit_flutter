

import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/config/env.dart';
import 'package:core/content/domain/models/content.dart';
import 'package:core/content/domain/repositories/content_repository_interface.dart';
import 'package:core/content/graphql/content.graphql.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';


class ContentRepository extends ContentRepositoryInterface {
  ContentRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(
        talker: talker, env: env
    );
    graphqlClient = graphQLRepository.graphqlClient;
  }
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<ContentType>>> queryContentTypes({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ContentTypeFilter? filter,
    List<Input$ContentTypeOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$ContentTypeCollection(
        Options$Query$ContentTypeCollection(
          variables: Variables$Query$ContentTypeCollection(
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
          response.parsedData!.contentTypeCollection != null &&
          response.parsedData!.contentTypeCollection!.edges.isNotEmpty
      ) {
        return Right(List<ContentType>.from(response.parsedData!.contentTypeCollection!.edges.map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Content>>> queryContent ({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ContentFilter? filter,
    List<Input$ContentOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$ContentCollection(
        Options$Query$ContentCollection(
          variables: Variables$Query$ContentCollection(
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
          response.parsedData!.contentCollection != null
      ) {
        return Right(List<Content>.from(response.parsedData!.contentCollection!.edges.map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Content>> createContent({required Input$ContentInsertInput input}) async {
    try {
      final response = await graphqlClient.mutate$CreateContent(
          Options$Mutation$CreateContent(
            variables: Variables$Mutation$CreateContent(objects: [input]),
          )
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null &&
          response.parsedData!.insertIntoContentCollection != null
      ) {
        return Right(response.parsedData!.insertIntoContentCollection!.records.first);
      }
      return const Left(Failure.empty());

    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Content>> updateContent({required String id, required Input$ContentUpdateInput input}) async {
    try {
      final response = await graphqlClient.mutate$UpdateContent(
          Options$Mutation$UpdateContent(
            variables: Variables$Mutation$UpdateContent(
              id: id,
              content: input,
            ),
          )
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      if (response.parsedData != null) {
        return Right(response.parsedData!.updateContentCollection.records.first);
      }
      return const Left(Failure.empty());

    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

}