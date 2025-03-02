import 'package:core/common/failures/failure.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/config/env.dart';
import 'package:core/schema.graphql.dart';
import 'package:core/stations/domain/models/station.dart';
import 'package:core/stations/domain/repositories/station_repository_interface.dart';
import 'package:core/stations/graphql/stations.graphql.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

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
    Input$StationsFilter? filter,
    List<Input$StationsOrderBy>? orderBy,
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
          response.parsedData!.stationsCollection != null &&
          response.parsedData!.stationsCollection!.edges.isNotEmpty) {
        return Right(List<Station>.from(
            response.parsedData!.stationsCollection!.edges.map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Station>> createStation({
    required Input$StationsInsertInput input,
  }) async {
    try {
      final response = await graphqlClient.mutate$CreateStation(
        Options$Mutation$CreateStation(
          variables: Variables$Mutation$CreateStation(
            input: input,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      final data = response.parsedData?.insertIntoStationsCollection?.records;
      if (data == null || data.isEmpty) {
        return Left(
            Failure.unprocessableEntity(message: 'Failed to create station'));
      }

      return Right(Station.fromJson(data.first.toJson()));
    } catch (e, stackTrace) {
      talker.handle(e, stackTrace);
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Station>> updateStation({
    required String id,
    required Input$StationsUpdateInput input,
  }) async {
    try {
      final response = await graphqlClient.mutate$UpdateStation(
        Options$Mutation$UpdateStation(
          variables: Variables$Mutation$UpdateStation(
            id: id,
            input: input,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      final data = response.parsedData?.updateStationsCollection.records;
      if (data == null || data.isEmpty) {
        return Left(
            Failure.unprocessableEntity(message: 'Failed to update station'));
      }

      return Right(Station.fromJson(data.first.toJson()));
    } catch (e, stackTrace) {
      talker.handle(e, stackTrace);
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Unit>> deleteStation({
    required String id,
  }) async {
    try {
      final response = await graphqlClient.mutate$DeleteStation(
        Options$Mutation$DeleteStation(
          variables: Variables$Mutation$DeleteStation(
            id: id,
          ),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message: response.exception.toString()));
      }

      final data = response.parsedData?.deleteFromStationsCollection.records;
      if (data == null || data.isEmpty) {
        return Left(
            Failure.unprocessableEntity(message: 'Failed to delete station'));
      }

      return Right(unit);
    } catch (e, stackTrace) {
      talker.handle(e, stackTrace);
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Station>> getStationByCode({required String id}) async {
    try {
      final response = await graphqlClient.query$Station(
        Options$Query$Station(
          variables: Variables$Query$Station(id: id),
        ),
      );

      if (response.hasException) {
        debugPrint('${response.exception}');
        return Left(Failure.unprocessableEntity(
            message:
                response.exception.toString() ?? 'Unknown error occurred'));
      }

      if (response.parsedData != null &&
          response.parsedData!.stationsCollection != null &&
          response.parsedData!.stationsCollection!.edges.isNotEmpty) {
        return Right(response.parsedData!.stationsCollection!.edges.first.node);
      }
      return const Left(Failure.notFound());
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
