

import 'package:core/content/content.dart';
import 'package:core/common/common.dart';
import 'package:fpdart/fpdart.dart';

import '../../../schema.graphql.dart';

abstract class ContentRepositoryInterface {

  Future<Either<Failure, List<ContentType>>> queryContentTypes({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ContentTypeFilter? filter,
    List<Input$ContentTypeOrderBy>? orderBy,
  });
  Future<Either<Failure, List<Content>>> queryContent({
    int? first,
    int? last,
    String? before,
    String? after,
    Input$ContentFilter? filter,
    List<Input$ContentOrderBy>? orderBy,
  });

  Future<Either<Failure, Content>> createContent({ required Input$ContentInsertInput input });
  Future<Either<Failure, Content>> updateContent({ required String id, required Input$ContentUpdateInput input });
}