import 'package:core/common/domain/models/common.dart';
import 'package:core/common/domain/repositories/application_repository_interface.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/common/graphql/application.graphql.dart';
import 'package:core/common/graphql/notifications.graphql.dart';
//import 'package:core/common/graphql/notifications.graphql.dart';
import 'package:core/common/repositories/graphql_repository.dart';
import 'package:core/config/env.dart';
import 'package:core/schema.graphql.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:graphql/client.dart';
import 'package:talker_flutter/talker_flutter.dart';

class ApplicationRepository implements ApplicationRepositoryInterface {
  ApplicationRepository({required this.talker, required this.env});

  late GraphQLRepository graphQLRepository;
  late GraphQLClient graphqlClient;
  final EnvInterface env;
  final Talker talker;

  @override
  Future<Either<Failure, List<Application>>> queryApplication(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$ApplicationFilter? filter,
      List<Input$ApplicationOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$ApplicationCollection(
        Options$Query$ApplicationCollection(
          variables: Variables$Query$ApplicationCollection(
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
          response.parsedData!.applicationCollection != null &&
          response.parsedData!.applicationCollection!.edges.isNotEmpty) {
        return Right(List<Application>.from(response
            .parsedData!.applicationCollection!.edges
            .map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ApplicationType>>> queryApplicationType(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$ApplicationTypeFilter? filter,
      List<Input$ApplicationTypeOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$ApplicationTypeCollection(
        Options$Query$ApplicationTypeCollection(
          variables: Variables$Query$ApplicationTypeCollection(
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
          response.parsedData!.applicationTypeCollection != null &&
          response.parsedData!.applicationTypeCollection!.edges.isNotEmpty) {
        return Right(List<ApplicationType>.from(response
            .parsedData!.applicationTypeCollection!.edges
            .map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<NotificationType>>> queryNotificationType(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$NotificationTypeFilter? filter,
      List<Input$NotificationTypeOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$NotificationTypesCollection(
        Options$Query$NotificationTypesCollection(
          variables: Variables$Query$NotificationTypesCollection(
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
          response.parsedData!.notificationTypeCollection != null &&
          response.parsedData!.notificationTypeCollection!.edges.isNotEmpty) {
        return Right(List<NotificationType>.from(response
            .parsedData!.notificationTypeCollection!.edges
            .map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Notification>>> queryNotifications(
      {int? first,
      int? last,
      String? before,
      String? after,
      Input$NotificationFilter? filter,
      List<Input$NotificationOrderBy>? orderBy}) async {
    try {
      final response = await graphqlClient.query$NotificationCollection(
        Options$Query$NotificationCollection(
          variables: Variables$Query$NotificationCollection(
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
          response.parsedData!.notificationCollection != null &&
          response.parsedData!.notificationCollection!.edges.isNotEmpty) {
        return Right(List<Notification>.from(response
            .parsedData!.notificationCollection!.edges
            .map((e) => e.node)));
      }
      return const Right([]);
    } catch (e) {
      debugPrint('$e');
      return Left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
