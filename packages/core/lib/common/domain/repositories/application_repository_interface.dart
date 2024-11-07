import 'package:core/common/common.dart';
import 'package:fpdart/fpdart.dart';

import '../../../schema.graphql.dart';

abstract class ApplicationRepositoryInterface {
  Future<Either<Failure, List<ApplicationType>>> queryApplicationType({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ApplicationTypeFilter? filter,
    List<Input$ApplicationTypeOrderBy>? orderBy,
  });
  Future<Either<Failure, List<Application>>> queryApplication({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ApplicationFilter? filter,
    List<Input$ApplicationOrderBy>? orderBy,
  });

  Future<Either<Failure, List<NotificationType>>> queryNotificationType({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$NotificationTypeFilter? filter,
    List<Input$NotificationTypeOrderBy>? orderBy,
  });

  Future<Either<Failure, List<Notification>>> queryNotifications({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$NotificationFilter? filter,
    List<Input$NotificationOrderBy>? orderBy,
  });
}
