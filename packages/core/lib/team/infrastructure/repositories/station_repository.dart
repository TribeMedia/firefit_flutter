import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/team/domain/models/station.dart';
import 'package:core/team/domain/repositories/station_repository_interface.dart';
import 'package:core/team/graphql/first_responders.graphql.dart';
import 'package:core/team/graphql/stations.graphql.dart';
import 'package:core/schema.graphql.dart';
import 'package:core/team/graphql/teams.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

import '../../../config/env.dart';

class StationRepository extends StationRepositoryInterface {
  StationRepository({required this.talker, required this.env}) {
    graphQLRepository = GraphQLRepository(talker: talker, env: env);
    graphqlClient = graphQLRepository.graphqlClient;
  }
  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<Station>>> queryStations({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$StationFilter? filter,
    List<Input$StationOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$StationCollection(
        Options$Query$StationCollection(
          variables: Variables$Query$StationCollection(
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
          response.parsedData!.stationCollection != null &&
          response.parsedData!.stationCollection!.edges.isNotEmpty) {
        return Right(List<Station>.from(
            response.parsedData!.stationCollection!.edges.map((e) => e.node)));
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<FirstResponder>>> queryFirstResponders({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$FirstResponderFilter? filter,
    List<Input$FirstResponderOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$FirstResponderCollection(
        Options$Query$FirstResponderCollection(
          variables: Variables$Query$FirstResponderCollection(
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
          response.parsedData!.firstResponderCollection != null &&
          response.parsedData!.firstResponderCollection!.edges.isNotEmpty) {
        return Right(List<FirstResponder>.from(response
            .parsedData!.firstResponderCollection!.edges
            .map((e) => e.node)));
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<TeamUpdate>>> queryTeamUpdates({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$TeamUpdateFilter? filter,
    List<Input$TeamUpdateOrderBy>? orderBy,
  }) async {
    try {
      final response = await graphqlClient.query$TeamUpdateCollection(
        Options$Query$TeamUpdateCollection(
          variables: Variables$Query$TeamUpdateCollection(
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
          response.parsedData!.teamUpdateCollection != null &&
          response.parsedData!.teamUpdateCollection!.edges.isNotEmpty) {
        return Right(List<TeamUpdate>.from(response
            .parsedData!.teamUpdateCollection!.edges
            .map((e) => e.node)));
      }
      return const Left(Failure.empty());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
