import 'package:core/common/common.dart';
import 'package:core/meals/meals.dart'; // Import the meals.dart file to use the Menu type alias
import 'package:core/schema.graphql.dart';
import 'package:fpdart/fpdart.dart';

abstract class MenuRepositoryInterface {
  Future<Either<Failure, List<Menu>>> queryMenus({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$MenuFilter? filter,
    List<Input$MenuOrderBy>? orderBy,
  });

  Future<Either<Failure, List<MenuItem>>> queryMenuItems({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$MenuItemFilter? filter,
    List<Input$MenuItemOrderBy>? orderBy,
  });
}
