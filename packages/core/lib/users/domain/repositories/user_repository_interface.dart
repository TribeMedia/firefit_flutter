import 'package:core/common/common.dart';
import 'package:core/schema.graphql.dart';
import 'package:core/users/users.dart';
import 'package:fpdart/fpdart.dart';

abstract class UserRepositoryInterface {
  Future<Either<Failure, List<User>>> queryUsers({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  });

  Future<Either<Failure, User>> createUser(
      {required Input$UserInsertInput input});
  Future<Either<Failure, User>> updateUser(
      {required String id, required Input$UserUpdateInput input});
}
