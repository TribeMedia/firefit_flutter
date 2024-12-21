import 'package:core/common/common.dart';
import 'package:core/meals/meals.dart'; // Import the meals.dart file to use the MenuItem type alias
import 'package:core/schema.graphql.dart';
import 'package:fpdart/fpdart.dart';

abstract class MenuItemRepositoryInterface {
  Future<Either<Failure, List<MenuItem>>> queryMenuItems({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$MenuItemFilter? filter,
    List<Input$MenuItemOrderBy>? orderBy,
  });
}
