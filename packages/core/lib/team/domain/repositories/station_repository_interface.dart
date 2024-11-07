import 'package:core/common/common.dart';
import 'package:fpdart/fpdart.dart';
import 'package:core/team/domain/models/station.dart';

import '../../../schema.graphql.dart';

abstract class StationRepositoryInterface {
  Future<Either<Failure, List<Station>>> queryStations({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$StationFilter? filter,
    List<Input$StationOrderBy>? orderBy,
  });

  Future<Either<Failure, List<FirstResponder>>> queryFirstResponders({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$FirstResponderFilter? filter,
    List<Input$FirstResponderOrderBy>? orderBy,
  });

  Future<Either<Failure, List<TeamUpdate>>> queryTeamUpdates({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$TeamUpdateFilter? filter,
    List<Input$TeamUpdateOrderBy>? orderBy,
  });
}
