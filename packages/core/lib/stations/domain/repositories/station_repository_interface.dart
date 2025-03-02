import 'package:core/common/common.dart';
import 'package:core/schema.graphql.dart';
import 'package:core/stations/domain/models/station.dart';
import 'package:fpdart/fpdart.dart';

abstract class StationRepositoryInterface {
  Future<Either<Failure, List<Station>>> queryStations({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$StationsFilter? filter,
    List<Input$StationsOrderBy>? orderBy,
  });

  Future<Either<Failure, Station>> getStationByCode({
    required String id,
  });

  Future<Either<Failure, Station>> createStation({
    required Input$StationsInsertInput input,
  });

  Future<Either<Failure, Station>> updateStation({
    required String id,
    required Input$StationsUpdateInput input,
  });

  Future<Either<Failure, Unit>> deleteStation({
    required String id,
  });
}
