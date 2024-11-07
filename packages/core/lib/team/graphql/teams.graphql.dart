import '../../common/graphql/application.graphql.dart';
import '../../content/graphql/content.graphql.dart';
import '../../schema.graphql.dart';
import '../../users/graphql/users.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$TeamUpdateType {
  Fragment$TeamUpdateType({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    required this.createdAt,
    this.$__typename = 'TeamUpdateType',
  });

  factory Fragment$TeamUpdateType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$TeamUpdateType(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

  final Map<String, dynamic>? schema;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$schema = schema;
    _resultData['schema'] = l$schema == null ? null : jsonFieldToJson(l$schema);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$key = key;
    final l$schema = schema;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$schema,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TeamUpdateType) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$schema = schema;
    final lOther$schema = other.schema;
    if (l$schema != lOther$schema) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TeamUpdateType on Fragment$TeamUpdateType {
  CopyWith$Fragment$TeamUpdateType<Fragment$TeamUpdateType> get copyWith =>
      CopyWith$Fragment$TeamUpdateType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TeamUpdateType<TRes> {
  factory CopyWith$Fragment$TeamUpdateType(
    Fragment$TeamUpdateType instance,
    TRes Function(Fragment$TeamUpdateType) then,
  ) = _CopyWithImpl$Fragment$TeamUpdateType;

  factory CopyWith$Fragment$TeamUpdateType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TeamUpdateType;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TeamUpdateType<TRes>
    implements CopyWith$Fragment$TeamUpdateType<TRes> {
  _CopyWithImpl$Fragment$TeamUpdateType(
    this._instance,
    this._then,
  );

  final Fragment$TeamUpdateType _instance;

  final TRes Function(Fragment$TeamUpdateType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TeamUpdateType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TeamUpdateType<TRes>
    implements CopyWith$Fragment$TeamUpdateType<TRes> {
  _CopyWithStubImpl$Fragment$TeamUpdateType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTeamUpdateType = FragmentDefinitionNode(
  name: NameNode(value: 'TeamUpdateType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TeamUpdateType'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'key'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'schema'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentTeamUpdateType = DocumentNode(definitions: [
  fragmentDefinitionTeamUpdateType,
]);

extension ClientExtension$Fragment$TeamUpdateType on graphql.GraphQLClient {
  void writeFragment$TeamUpdateType({
    required Fragment$TeamUpdateType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TeamUpdateType',
            document: documentNodeFragmentTeamUpdateType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TeamUpdateType? readFragment$TeamUpdateType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TeamUpdateType',
          document: documentNodeFragmentTeamUpdateType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TeamUpdateType.fromJson(result);
  }
}

class Fragment$TeamUpdate {
  Fragment$TeamUpdate({
    required this.id,
    required this.teamUpdateTypeId,
    required this.teamUpdateType,
    required this.contentId,
    required this.content,
    this.metadata,
    required this.isUrgent,
    required this.createdAt,
    this.$__typename = 'TeamUpdate',
  });

  factory Fragment$TeamUpdate.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$teamUpdateTypeId = json['teamUpdateTypeId'];
    final l$teamUpdateType = json['teamUpdateType'];
    final l$contentId = json['contentId'];
    final l$content = json['content'];
    final l$metadata = json['metadata'];
    final l$isUrgent = json['isUrgent'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$TeamUpdate(
      id: (l$id as String),
      teamUpdateTypeId: (l$teamUpdateTypeId as String),
      teamUpdateType: Fragment$TeamUpdateType.fromJson(
          (l$teamUpdateType as Map<String, dynamic>)),
      contentId: (l$contentId as String),
      content: Fragment$Content.fromJson((l$content as Map<String, dynamic>)),
      metadata: l$metadata == null ? null : jsonFieldFromJson(l$metadata),
      isUrgent: (l$isUrgent as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String teamUpdateTypeId;

  final Fragment$TeamUpdateType teamUpdateType;

  final String contentId;

  final Fragment$Content content;

  final Map<String, dynamic>? metadata;

  final bool isUrgent;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$teamUpdateTypeId = teamUpdateTypeId;
    _resultData['teamUpdateTypeId'] = l$teamUpdateTypeId;
    final l$teamUpdateType = teamUpdateType;
    _resultData['teamUpdateType'] = l$teamUpdateType.toJson();
    final l$contentId = contentId;
    _resultData['contentId'] = l$contentId;
    final l$content = content;
    _resultData['content'] = l$content.toJson();
    final l$metadata = metadata;
    _resultData['metadata'] =
        l$metadata == null ? null : jsonFieldToJson(l$metadata);
    final l$isUrgent = isUrgent;
    _resultData['isUrgent'] = l$isUrgent;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$teamUpdateTypeId = teamUpdateTypeId;
    final l$teamUpdateType = teamUpdateType;
    final l$contentId = contentId;
    final l$content = content;
    final l$metadata = metadata;
    final l$isUrgent = isUrgent;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$teamUpdateTypeId,
      l$teamUpdateType,
      l$contentId,
      l$content,
      l$metadata,
      l$isUrgent,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TeamUpdate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$teamUpdateTypeId = teamUpdateTypeId;
    final lOther$teamUpdateTypeId = other.teamUpdateTypeId;
    if (l$teamUpdateTypeId != lOther$teamUpdateTypeId) {
      return false;
    }
    final l$teamUpdateType = teamUpdateType;
    final lOther$teamUpdateType = other.teamUpdateType;
    if (l$teamUpdateType != lOther$teamUpdateType) {
      return false;
    }
    final l$contentId = contentId;
    final lOther$contentId = other.contentId;
    if (l$contentId != lOther$contentId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$isUrgent = isUrgent;
    final lOther$isUrgent = other.isUrgent;
    if (l$isUrgent != lOther$isUrgent) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$TeamUpdate on Fragment$TeamUpdate {
  CopyWith$Fragment$TeamUpdate<Fragment$TeamUpdate> get copyWith =>
      CopyWith$Fragment$TeamUpdate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TeamUpdate<TRes> {
  factory CopyWith$Fragment$TeamUpdate(
    Fragment$TeamUpdate instance,
    TRes Function(Fragment$TeamUpdate) then,
  ) = _CopyWithImpl$Fragment$TeamUpdate;

  factory CopyWith$Fragment$TeamUpdate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TeamUpdate;

  TRes call({
    String? id,
    String? teamUpdateTypeId,
    Fragment$TeamUpdateType? teamUpdateType,
    String? contentId,
    Fragment$Content? content,
    Map<String, dynamic>? metadata,
    bool? isUrgent,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$TeamUpdateType<TRes> get teamUpdateType;
  CopyWith$Fragment$Content<TRes> get content;
}

class _CopyWithImpl$Fragment$TeamUpdate<TRes>
    implements CopyWith$Fragment$TeamUpdate<TRes> {
  _CopyWithImpl$Fragment$TeamUpdate(
    this._instance,
    this._then,
  );

  final Fragment$TeamUpdate _instance;

  final TRes Function(Fragment$TeamUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? teamUpdateTypeId = _undefined,
    Object? teamUpdateType = _undefined,
    Object? contentId = _undefined,
    Object? content = _undefined,
    Object? metadata = _undefined,
    Object? isUrgent = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TeamUpdate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        teamUpdateTypeId:
            teamUpdateTypeId == _undefined || teamUpdateTypeId == null
                ? _instance.teamUpdateTypeId
                : (teamUpdateTypeId as String),
        teamUpdateType: teamUpdateType == _undefined || teamUpdateType == null
            ? _instance.teamUpdateType
            : (teamUpdateType as Fragment$TeamUpdateType),
        contentId: contentId == _undefined || contentId == null
            ? _instance.contentId
            : (contentId as String),
        content: content == _undefined || content == null
            ? _instance.content
            : (content as Fragment$Content),
        metadata: metadata == _undefined
            ? _instance.metadata
            : (metadata as Map<String, dynamic>?),
        isUrgent: isUrgent == _undefined || isUrgent == null
            ? _instance.isUrgent
            : (isUrgent as bool),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TeamUpdateType<TRes> get teamUpdateType {
    final local$teamUpdateType = _instance.teamUpdateType;
    return CopyWith$Fragment$TeamUpdateType(
        local$teamUpdateType, (e) => call(teamUpdateType: e));
  }

  CopyWith$Fragment$Content<TRes> get content {
    final local$content = _instance.content;
    return CopyWith$Fragment$Content(local$content, (e) => call(content: e));
  }
}

class _CopyWithStubImpl$Fragment$TeamUpdate<TRes>
    implements CopyWith$Fragment$TeamUpdate<TRes> {
  _CopyWithStubImpl$Fragment$TeamUpdate(this._res);

  TRes _res;

  call({
    String? id,
    String? teamUpdateTypeId,
    Fragment$TeamUpdateType? teamUpdateType,
    String? contentId,
    Fragment$Content? content,
    Map<String, dynamic>? metadata,
    bool? isUrgent,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TeamUpdateType<TRes> get teamUpdateType =>
      CopyWith$Fragment$TeamUpdateType.stub(_res);

  CopyWith$Fragment$Content<TRes> get content =>
      CopyWith$Fragment$Content.stub(_res);
}

const fragmentDefinitionTeamUpdate = FragmentDefinitionNode(
  name: NameNode(value: 'TeamUpdate'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TeamUpdate'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'teamUpdateTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'teamUpdateType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'TeamUpdateType'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'contentId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'content'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Content'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'metadata'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isUrgent'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentTeamUpdate = DocumentNode(definitions: [
  fragmentDefinitionTeamUpdate,
  fragmentDefinitionTeamUpdateType,
  fragmentDefinitionContent,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionContentType,
  fragmentDefinitionPublicationState,
  fragmentDefinitionContentTemplate,
  fragmentDefinitionContentTemplateVariable,
  fragmentDefinitionTemplateVariable,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);

extension ClientExtension$Fragment$TeamUpdate on graphql.GraphQLClient {
  void writeFragment$TeamUpdate({
    required Fragment$TeamUpdate data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TeamUpdate',
            document: documentNodeFragmentTeamUpdate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TeamUpdate? readFragment$TeamUpdate({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TeamUpdate',
          document: documentNodeFragmentTeamUpdate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TeamUpdate.fromJson(result);
  }
}

class Variables$Query$TeamUpdateTypeCollection {
  factory Variables$Query$TeamUpdateTypeCollection({
    Input$TeamUpdateTypeFilter? filter,
    List<Input$TeamUpdateTypeOrderBy>? orderBy,
    int? first,
    int? last,
    String? before,
    String? after,
    int? offset,
  }) =>
      Variables$Query$TeamUpdateTypeCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$TeamUpdateTypeCollection._(this._$data);

  factory Variables$Query$TeamUpdateTypeCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$TeamUpdateTypeFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$TeamUpdateTypeOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Variables$Query$TeamUpdateTypeCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TeamUpdateTypeFilter? get filter =>
      (_$data['filter'] as Input$TeamUpdateTypeFilter?);

  List<Input$TeamUpdateTypeOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$TeamUpdateTypeOrderBy>?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get offset => (_$data['offset'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TeamUpdateTypeCollection<
          Variables$Query$TeamUpdateTypeCollection>
      get copyWith => CopyWith$Variables$Query$TeamUpdateTypeCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TeamUpdateTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$orderBy = orderBy;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TeamUpdateTypeCollection<TRes> {
  factory CopyWith$Variables$Query$TeamUpdateTypeCollection(
    Variables$Query$TeamUpdateTypeCollection instance,
    TRes Function(Variables$Query$TeamUpdateTypeCollection) then,
  ) = _CopyWithImpl$Variables$Query$TeamUpdateTypeCollection;

  factory CopyWith$Variables$Query$TeamUpdateTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TeamUpdateTypeCollection;

  TRes call({
    Input$TeamUpdateTypeFilter? filter,
    List<Input$TeamUpdateTypeOrderBy>? orderBy,
    int? first,
    int? last,
    String? before,
    String? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$TeamUpdateTypeCollection<TRes>
    implements CopyWith$Variables$Query$TeamUpdateTypeCollection<TRes> {
  _CopyWithImpl$Variables$Query$TeamUpdateTypeCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$TeamUpdateTypeCollection _instance;

  final TRes Function(Variables$Query$TeamUpdateTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Variables$Query$TeamUpdateTypeCollection._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$TeamUpdateTypeFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$TeamUpdateTypeOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$TeamUpdateTypeCollection<TRes>
    implements CopyWith$Variables$Query$TeamUpdateTypeCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$TeamUpdateTypeCollection(this._res);

  TRes _res;

  call({
    Input$TeamUpdateTypeFilter? filter,
    List<Input$TeamUpdateTypeOrderBy>? orderBy,
    int? first,
    int? last,
    String? before,
    String? after,
    int? offset,
  }) =>
      _res;
}

class Query$TeamUpdateTypeCollection {
  Query$TeamUpdateTypeCollection({
    this.teamUpdateTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$TeamUpdateTypeCollection.fromJson(Map<String, dynamic> json) {
    final l$teamUpdateTypeCollection = json['teamUpdateTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateTypeCollection(
      teamUpdateTypeCollection: l$teamUpdateTypeCollection == null
          ? null
          : Query$TeamUpdateTypeCollection$teamUpdateTypeCollection.fromJson(
              (l$teamUpdateTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TeamUpdateTypeCollection$teamUpdateTypeCollection?
      teamUpdateTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teamUpdateTypeCollection = teamUpdateTypeCollection;
    _resultData['teamUpdateTypeCollection'] =
        l$teamUpdateTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teamUpdateTypeCollection = teamUpdateTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teamUpdateTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamUpdateTypeCollection = teamUpdateTypeCollection;
    final lOther$teamUpdateTypeCollection = other.teamUpdateTypeCollection;
    if (l$teamUpdateTypeCollection != lOther$teamUpdateTypeCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateTypeCollection
    on Query$TeamUpdateTypeCollection {
  CopyWith$Query$TeamUpdateTypeCollection<Query$TeamUpdateTypeCollection>
      get copyWith => CopyWith$Query$TeamUpdateTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateTypeCollection<TRes> {
  factory CopyWith$Query$TeamUpdateTypeCollection(
    Query$TeamUpdateTypeCollection instance,
    TRes Function(Query$TeamUpdateTypeCollection) then,
  ) = _CopyWithImpl$Query$TeamUpdateTypeCollection;

  factory CopyWith$Query$TeamUpdateTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateTypeCollection;

  TRes call({
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection?
        teamUpdateTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<TRes>
      get teamUpdateTypeCollection;
}

class _CopyWithImpl$Query$TeamUpdateTypeCollection<TRes>
    implements CopyWith$Query$TeamUpdateTypeCollection<TRes> {
  _CopyWithImpl$Query$TeamUpdateTypeCollection(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateTypeCollection _instance;

  final TRes Function(Query$TeamUpdateTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamUpdateTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateTypeCollection(
        teamUpdateTypeCollection: teamUpdateTypeCollection == _undefined
            ? _instance.teamUpdateTypeCollection
            : (teamUpdateTypeCollection
                as Query$TeamUpdateTypeCollection$teamUpdateTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<TRes>
      get teamUpdateTypeCollection {
    final local$teamUpdateTypeCollection = _instance.teamUpdateTypeCollection;
    return local$teamUpdateTypeCollection == null
        ? CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection.stub(
            _then(_instance))
        : CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
            local$teamUpdateTypeCollection,
            (e) => call(teamUpdateTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateTypeCollection<TRes>
    implements CopyWith$Query$TeamUpdateTypeCollection<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateTypeCollection(this._res);

  TRes _res;

  call({
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection?
        teamUpdateTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<TRes>
      get teamUpdateTypeCollection =>
          CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection.stub(
              _res);
}

const documentNodeQueryTeamUpdateTypeCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TeamUpdateTypeCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'TeamUpdateTypeFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'TeamUpdateTypeOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teamUpdateTypeCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TeamUpdateType'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTeamUpdateType,
]);
Query$TeamUpdateTypeCollection _parserFn$Query$TeamUpdateTypeCollection(
        Map<String, dynamic> data) =>
    Query$TeamUpdateTypeCollection.fromJson(data);
typedef OnQueryComplete$Query$TeamUpdateTypeCollection = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$TeamUpdateTypeCollection?,
);

class Options$Query$TeamUpdateTypeCollection
    extends graphql.QueryOptions<Query$TeamUpdateTypeCollection> {
  Options$Query$TeamUpdateTypeCollection({
    String? operationName,
    Variables$Query$TeamUpdateTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdateTypeCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TeamUpdateTypeCollection? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$TeamUpdateTypeCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryTeamUpdateTypeCollection,
          parserFn: _parserFn$Query$TeamUpdateTypeCollection,
        );

  final OnQueryComplete$Query$TeamUpdateTypeCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$TeamUpdateTypeCollection
    extends graphql.WatchQueryOptions<Query$TeamUpdateTypeCollection> {
  WatchOptions$Query$TeamUpdateTypeCollection({
    String? operationName,
    Variables$Query$TeamUpdateTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdateTypeCollection? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryTeamUpdateTypeCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TeamUpdateTypeCollection,
        );
}

class FetchMoreOptions$Query$TeamUpdateTypeCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TeamUpdateTypeCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$TeamUpdateTypeCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryTeamUpdateTypeCollection,
        );
}

extension ClientExtension$Query$TeamUpdateTypeCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TeamUpdateTypeCollection>>
      query$TeamUpdateTypeCollection(
              [Options$Query$TeamUpdateTypeCollection? options]) async =>
          await this.query(options ?? Options$Query$TeamUpdateTypeCollection());
  graphql.ObservableQuery<
      Query$TeamUpdateTypeCollection> watchQuery$TeamUpdateTypeCollection(
          [WatchOptions$Query$TeamUpdateTypeCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$TeamUpdateTypeCollection());
  void writeQuery$TeamUpdateTypeCollection({
    required Query$TeamUpdateTypeCollection data,
    Variables$Query$TeamUpdateTypeCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryTeamUpdateTypeCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TeamUpdateTypeCollection? readQuery$TeamUpdateTypeCollection({
    Variables$Query$TeamUpdateTypeCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryTeamUpdateTypeCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$TeamUpdateTypeCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TeamUpdateTypeCollection>
    useQuery$TeamUpdateTypeCollection(
            [Options$Query$TeamUpdateTypeCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$TeamUpdateTypeCollection());
graphql.ObservableQuery<Query$TeamUpdateTypeCollection>
    useWatchQuery$TeamUpdateTypeCollection(
            [WatchOptions$Query$TeamUpdateTypeCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$TeamUpdateTypeCollection());

class Query$TeamUpdateTypeCollection$Widget
    extends graphql_flutter.Query<Query$TeamUpdateTypeCollection> {
  Query$TeamUpdateTypeCollection$Widget({
    widgets.Key? key,
    Options$Query$TeamUpdateTypeCollection? options,
    required graphql_flutter.QueryBuilder<Query$TeamUpdateTypeCollection>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$TeamUpdateTypeCollection(),
          builder: builder,
        );
}

class Query$TeamUpdateTypeCollection$teamUpdateTypeCollection {
  Query$TeamUpdateTypeCollection$teamUpdateTypeCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'TeamUpdateTypeConnection',
  });

  factory Query$TeamUpdateTypeCollection$teamUpdateTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo
          .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>
      edges;

  final Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo
      pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateTypeCollection$teamUpdateTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection
    on Query$TeamUpdateTypeCollection$teamUpdateTypeCollection {
  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<
          Query$TeamUpdateTypeCollection$teamUpdateTypeCollection>
      get copyWith =>
          CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<
    TRes> {
  factory CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection instance,
    TRes Function(Query$TeamUpdateTypeCollection$teamUpdateTypeCollection) then,
  ) = _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection;

  factory CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection;

  TRes call({
    List<Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>? edges,
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
                      Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>>)
          _fn);
  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<
        TRes>
    implements
        CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<TRes> {
  _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateTypeCollection$teamUpdateTypeCollection _instance;

  final TRes Function(Query$TeamUpdateTypeCollection$teamUpdateTypeCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
                          Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<
        TRes>
    implements
        CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection(
      this._res);

  TRes _res;

  call({
    List<Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>? edges,
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo
              .stub(_res);
}

class Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges {
  Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges({
    required this.node,
    this.$__typename = 'TeamUpdateTypeEdge',
  });

  factory Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
      node: Fragment$TeamUpdateType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TeamUpdateType node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges
    on Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges {
  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
          Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges instance,
    TRes Function(Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges)
        then,
  ) = _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges;

  factory CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges;

  TRes call({
    Fragment$TeamUpdateType? node,
    String? $__typename,
  });
  CopyWith$Fragment$TeamUpdateType<TRes> get node;
}

class _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
            TRes> {
  _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges _instance;

  final TRes Function(
      Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$TeamUpdateType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TeamUpdateType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$TeamUpdateType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$TeamUpdateType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TeamUpdateType<TRes> get node =>
      CopyWith$Fragment$TeamUpdateType.stub(_res);
}

class Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo {
  Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
      hasPreviousPage: (l$hasPreviousPage as bool),
      hasNextPage: (l$hasNextPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPreviousPage;

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasPreviousPage = hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPreviousPage,
      l$hasNextPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo
    on Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo {
  CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
          Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
    Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo instance,
    TRes Function(
            Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo;

  factory CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo
      _instance;

  final TRes Function(
      Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$TeamUpdateTypeCollection$teamUpdateTypeCollection$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$TeamUpdateType {
  factory Variables$Query$TeamUpdateType({required String id}) =>
      Variables$Query$TeamUpdateType._({
        r'id': id,
      });

  Variables$Query$TeamUpdateType._(this._$data);

  factory Variables$Query$TeamUpdateType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$TeamUpdateType._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$TeamUpdateType<Variables$Query$TeamUpdateType>
      get copyWith => CopyWith$Variables$Query$TeamUpdateType(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TeamUpdateType) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$TeamUpdateType<TRes> {
  factory CopyWith$Variables$Query$TeamUpdateType(
    Variables$Query$TeamUpdateType instance,
    TRes Function(Variables$Query$TeamUpdateType) then,
  ) = _CopyWithImpl$Variables$Query$TeamUpdateType;

  factory CopyWith$Variables$Query$TeamUpdateType.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TeamUpdateType;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$TeamUpdateType<TRes>
    implements CopyWith$Variables$Query$TeamUpdateType<TRes> {
  _CopyWithImpl$Variables$Query$TeamUpdateType(
    this._instance,
    this._then,
  );

  final Variables$Query$TeamUpdateType _instance;

  final TRes Function(Variables$Query$TeamUpdateType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$TeamUpdateType._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$TeamUpdateType<TRes>
    implements CopyWith$Variables$Query$TeamUpdateType<TRes> {
  _CopyWithStubImpl$Variables$Query$TeamUpdateType(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$TeamUpdateType {
  Query$TeamUpdateType({
    this.teamUpdateTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$TeamUpdateType.fromJson(Map<String, dynamic> json) {
    final l$teamUpdateTypeCollection = json['teamUpdateTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateType(
      teamUpdateTypeCollection: l$teamUpdateTypeCollection == null
          ? null
          : Query$TeamUpdateType$teamUpdateTypeCollection.fromJson(
              (l$teamUpdateTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TeamUpdateType$teamUpdateTypeCollection? teamUpdateTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teamUpdateTypeCollection = teamUpdateTypeCollection;
    _resultData['teamUpdateTypeCollection'] =
        l$teamUpdateTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teamUpdateTypeCollection = teamUpdateTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teamUpdateTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateType) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamUpdateTypeCollection = teamUpdateTypeCollection;
    final lOther$teamUpdateTypeCollection = other.teamUpdateTypeCollection;
    if (l$teamUpdateTypeCollection != lOther$teamUpdateTypeCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateType on Query$TeamUpdateType {
  CopyWith$Query$TeamUpdateType<Query$TeamUpdateType> get copyWith =>
      CopyWith$Query$TeamUpdateType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TeamUpdateType<TRes> {
  factory CopyWith$Query$TeamUpdateType(
    Query$TeamUpdateType instance,
    TRes Function(Query$TeamUpdateType) then,
  ) = _CopyWithImpl$Query$TeamUpdateType;

  factory CopyWith$Query$TeamUpdateType.stub(TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateType;

  TRes call({
    Query$TeamUpdateType$teamUpdateTypeCollection? teamUpdateTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<TRes>
      get teamUpdateTypeCollection;
}

class _CopyWithImpl$Query$TeamUpdateType<TRes>
    implements CopyWith$Query$TeamUpdateType<TRes> {
  _CopyWithImpl$Query$TeamUpdateType(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateType _instance;

  final TRes Function(Query$TeamUpdateType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamUpdateTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateType(
        teamUpdateTypeCollection: teamUpdateTypeCollection == _undefined
            ? _instance.teamUpdateTypeCollection
            : (teamUpdateTypeCollection
                as Query$TeamUpdateType$teamUpdateTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<TRes>
      get teamUpdateTypeCollection {
    final local$teamUpdateTypeCollection = _instance.teamUpdateTypeCollection;
    return local$teamUpdateTypeCollection == null
        ? CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection.stub(
            _then(_instance))
        : CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection(
            local$teamUpdateTypeCollection,
            (e) => call(teamUpdateTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateType<TRes>
    implements CopyWith$Query$TeamUpdateType<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateType(this._res);

  TRes _res;

  call({
    Query$TeamUpdateType$teamUpdateTypeCollection? teamUpdateTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<TRes>
      get teamUpdateTypeCollection =>
          CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection.stub(_res);
}

const documentNodeQueryTeamUpdateType = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TeamUpdateType'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teamUpdateTypeCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TeamUpdateType'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTeamUpdateType,
]);
Query$TeamUpdateType _parserFn$Query$TeamUpdateType(
        Map<String, dynamic> data) =>
    Query$TeamUpdateType.fromJson(data);
typedef OnQueryComplete$Query$TeamUpdateType = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TeamUpdateType?,
);

class Options$Query$TeamUpdateType
    extends graphql.QueryOptions<Query$TeamUpdateType> {
  Options$Query$TeamUpdateType({
    String? operationName,
    required Variables$Query$TeamUpdateType variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdateType? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TeamUpdateType? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$TeamUpdateType(data),
                  ),
          onError: onError,
          document: documentNodeQueryTeamUpdateType,
          parserFn: _parserFn$Query$TeamUpdateType,
        );

  final OnQueryComplete$Query$TeamUpdateType? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$TeamUpdateType
    extends graphql.WatchQueryOptions<Query$TeamUpdateType> {
  WatchOptions$Query$TeamUpdateType({
    String? operationName,
    required Variables$Query$TeamUpdateType variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdateType? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryTeamUpdateType,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TeamUpdateType,
        );
}

class FetchMoreOptions$Query$TeamUpdateType extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TeamUpdateType({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TeamUpdateType variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryTeamUpdateType,
        );
}

extension ClientExtension$Query$TeamUpdateType on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TeamUpdateType>> query$TeamUpdateType(
          Options$Query$TeamUpdateType options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$TeamUpdateType> watchQuery$TeamUpdateType(
          WatchOptions$Query$TeamUpdateType options) =>
      this.watchQuery(options);
  void writeQuery$TeamUpdateType({
    required Query$TeamUpdateType data,
    required Variables$Query$TeamUpdateType variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryTeamUpdateType),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TeamUpdateType? readQuery$TeamUpdateType({
    required Variables$Query$TeamUpdateType variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTeamUpdateType),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TeamUpdateType.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TeamUpdateType> useQuery$TeamUpdateType(
        Options$Query$TeamUpdateType options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TeamUpdateType> useWatchQuery$TeamUpdateType(
        WatchOptions$Query$TeamUpdateType options) =>
    graphql_flutter.useWatchQuery(options);

class Query$TeamUpdateType$Widget
    extends graphql_flutter.Query<Query$TeamUpdateType> {
  Query$TeamUpdateType$Widget({
    widgets.Key? key,
    required Options$Query$TeamUpdateType options,
    required graphql_flutter.QueryBuilder<Query$TeamUpdateType> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$TeamUpdateType$teamUpdateTypeCollection {
  Query$TeamUpdateType$teamUpdateTypeCollection({
    required this.edges,
    this.$__typename = 'TeamUpdateTypeConnection',
  });

  factory Query$TeamUpdateType$teamUpdateTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateType$teamUpdateTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$TeamUpdateType$teamUpdateTypeCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TeamUpdateType$teamUpdateTypeCollection$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateType$teamUpdateTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateType$teamUpdateTypeCollection
    on Query$TeamUpdateType$teamUpdateTypeCollection {
  CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<
          Query$TeamUpdateType$teamUpdateTypeCollection>
      get copyWith => CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<TRes> {
  factory CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection(
    Query$TeamUpdateType$teamUpdateTypeCollection instance,
    TRes Function(Query$TeamUpdateType$teamUpdateTypeCollection) then,
  ) = _CopyWithImpl$Query$TeamUpdateType$teamUpdateTypeCollection;

  factory CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateType$teamUpdateTypeCollection;

  TRes call({
    List<Query$TeamUpdateType$teamUpdateTypeCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$TeamUpdateType$teamUpdateTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges<
                      Query$TeamUpdateType$teamUpdateTypeCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$TeamUpdateType$teamUpdateTypeCollection<TRes>
    implements CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<TRes> {
  _CopyWithImpl$Query$TeamUpdateType$teamUpdateTypeCollection(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateType$teamUpdateTypeCollection _instance;

  final TRes Function(Query$TeamUpdateType$teamUpdateTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateType$teamUpdateTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Query$TeamUpdateType$teamUpdateTypeCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$TeamUpdateType$teamUpdateTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges<
                          Query$TeamUpdateType$teamUpdateTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$TeamUpdateType$teamUpdateTypeCollection<TRes>
    implements CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateType$teamUpdateTypeCollection(this._res);

  TRes _res;

  call({
    List<Query$TeamUpdateType$teamUpdateTypeCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$TeamUpdateType$teamUpdateTypeCollection$edges {
  Query$TeamUpdateType$teamUpdateTypeCollection$edges({
    required this.node,
    this.$__typename = 'TeamUpdateTypeEdge',
  });

  factory Query$TeamUpdateType$teamUpdateTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateType$teamUpdateTypeCollection$edges(
      node: Fragment$TeamUpdateType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TeamUpdateType node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateType$teamUpdateTypeCollection$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateType$teamUpdateTypeCollection$edges
    on Query$TeamUpdateType$teamUpdateTypeCollection$edges {
  CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges<
          Query$TeamUpdateType$teamUpdateTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges(
    Query$TeamUpdateType$teamUpdateTypeCollection$edges instance,
    TRes Function(Query$TeamUpdateType$teamUpdateTypeCollection$edges) then,
  ) = _CopyWithImpl$Query$TeamUpdateType$teamUpdateTypeCollection$edges;

  factory CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateType$teamUpdateTypeCollection$edges;

  TRes call({
    Fragment$TeamUpdateType? node,
    String? $__typename,
  });
  CopyWith$Fragment$TeamUpdateType<TRes> get node;
}

class _CopyWithImpl$Query$TeamUpdateType$teamUpdateTypeCollection$edges<TRes>
    implements
        CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges<TRes> {
  _CopyWithImpl$Query$TeamUpdateType$teamUpdateTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateType$teamUpdateTypeCollection$edges _instance;

  final TRes Function(Query$TeamUpdateType$teamUpdateTypeCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateType$teamUpdateTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$TeamUpdateType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TeamUpdateType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$TeamUpdateType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateType$teamUpdateTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$TeamUpdateType$teamUpdateTypeCollection$edges<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateType$teamUpdateTypeCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$TeamUpdateType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TeamUpdateType<TRes> get node =>
      CopyWith$Fragment$TeamUpdateType.stub(_res);
}

class Variables$Query$TeamUpdateCollection {
  factory Variables$Query$TeamUpdateCollection({
    Input$TeamUpdateFilter? filter,
    List<Input$TeamUpdateOrderBy>? orderBy,
    int? first,
    int? last,
    String? before,
    String? after,
    int? offset,
  }) =>
      Variables$Query$TeamUpdateCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$TeamUpdateCollection._(this._$data);

  factory Variables$Query$TeamUpdateCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$TeamUpdateFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$TeamUpdateOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as String?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as String?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Variables$Query$TeamUpdateCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TeamUpdateFilter? get filter =>
      (_$data['filter'] as Input$TeamUpdateFilter?);

  List<Input$TeamUpdateOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$TeamUpdateOrderBy>?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get offset => (_$data['offset'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  CopyWith$Variables$Query$TeamUpdateCollection<
          Variables$Query$TeamUpdateCollection>
      get copyWith => CopyWith$Variables$Query$TeamUpdateCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TeamUpdateCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$filter = filter;
    final lOther$filter = other.filter;
    if (_$data.containsKey('filter') != other._$data.containsKey('filter')) {
      return false;
    }
    if (l$filter != lOther$filter) {
      return false;
    }
    final l$orderBy = orderBy;
    final lOther$orderBy = other.orderBy;
    if (_$data.containsKey('orderBy') != other._$data.containsKey('orderBy')) {
      return false;
    }
    if (l$orderBy != null && lOther$orderBy != null) {
      if (l$orderBy.length != lOther$orderBy.length) {
        return false;
      }
      for (int i = 0; i < l$orderBy.length; i++) {
        final l$orderBy$entry = l$orderBy[i];
        final lOther$orderBy$entry = lOther$orderBy[i];
        if (l$orderBy$entry != lOther$orderBy$entry) {
          return false;
        }
      }
    } else if (l$orderBy != lOther$orderBy) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$filter = filter;
    final l$orderBy = orderBy;
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$TeamUpdateCollection<TRes> {
  factory CopyWith$Variables$Query$TeamUpdateCollection(
    Variables$Query$TeamUpdateCollection instance,
    TRes Function(Variables$Query$TeamUpdateCollection) then,
  ) = _CopyWithImpl$Variables$Query$TeamUpdateCollection;

  factory CopyWith$Variables$Query$TeamUpdateCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TeamUpdateCollection;

  TRes call({
    Input$TeamUpdateFilter? filter,
    List<Input$TeamUpdateOrderBy>? orderBy,
    int? first,
    int? last,
    String? before,
    String? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$TeamUpdateCollection<TRes>
    implements CopyWith$Variables$Query$TeamUpdateCollection<TRes> {
  _CopyWithImpl$Variables$Query$TeamUpdateCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$TeamUpdateCollection _instance;

  final TRes Function(Variables$Query$TeamUpdateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? filter = _undefined,
    Object? orderBy = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Variables$Query$TeamUpdateCollection._({
        ..._instance._$data,
        if (filter != _undefined) 'filter': (filter as Input$TeamUpdateFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$TeamUpdateOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$TeamUpdateCollection<TRes>
    implements CopyWith$Variables$Query$TeamUpdateCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$TeamUpdateCollection(this._res);

  TRes _res;

  call({
    Input$TeamUpdateFilter? filter,
    List<Input$TeamUpdateOrderBy>? orderBy,
    int? first,
    int? last,
    String? before,
    String? after,
    int? offset,
  }) =>
      _res;
}

class Query$TeamUpdateCollection {
  Query$TeamUpdateCollection({
    this.teamUpdateCollection,
    this.$__typename = 'Query',
  });

  factory Query$TeamUpdateCollection.fromJson(Map<String, dynamic> json) {
    final l$teamUpdateCollection = json['teamUpdateCollection'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateCollection(
      teamUpdateCollection: l$teamUpdateCollection == null
          ? null
          : Query$TeamUpdateCollection$teamUpdateCollection.fromJson(
              (l$teamUpdateCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TeamUpdateCollection$teamUpdateCollection? teamUpdateCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teamUpdateCollection = teamUpdateCollection;
    _resultData['teamUpdateCollection'] = l$teamUpdateCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teamUpdateCollection = teamUpdateCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teamUpdateCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamUpdateCollection = teamUpdateCollection;
    final lOther$teamUpdateCollection = other.teamUpdateCollection;
    if (l$teamUpdateCollection != lOther$teamUpdateCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateCollection
    on Query$TeamUpdateCollection {
  CopyWith$Query$TeamUpdateCollection<Query$TeamUpdateCollection>
      get copyWith => CopyWith$Query$TeamUpdateCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateCollection<TRes> {
  factory CopyWith$Query$TeamUpdateCollection(
    Query$TeamUpdateCollection instance,
    TRes Function(Query$TeamUpdateCollection) then,
  ) = _CopyWithImpl$Query$TeamUpdateCollection;

  factory CopyWith$Query$TeamUpdateCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateCollection;

  TRes call({
    Query$TeamUpdateCollection$teamUpdateCollection? teamUpdateCollection,
    String? $__typename,
  });
  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<TRes>
      get teamUpdateCollection;
}

class _CopyWithImpl$Query$TeamUpdateCollection<TRes>
    implements CopyWith$Query$TeamUpdateCollection<TRes> {
  _CopyWithImpl$Query$TeamUpdateCollection(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateCollection _instance;

  final TRes Function(Query$TeamUpdateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamUpdateCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateCollection(
        teamUpdateCollection: teamUpdateCollection == _undefined
            ? _instance.teamUpdateCollection
            : (teamUpdateCollection
                as Query$TeamUpdateCollection$teamUpdateCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<TRes>
      get teamUpdateCollection {
    final local$teamUpdateCollection = _instance.teamUpdateCollection;
    return local$teamUpdateCollection == null
        ? CopyWith$Query$TeamUpdateCollection$teamUpdateCollection.stub(
            _then(_instance))
        : CopyWith$Query$TeamUpdateCollection$teamUpdateCollection(
            local$teamUpdateCollection, (e) => call(teamUpdateCollection: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateCollection<TRes>
    implements CopyWith$Query$TeamUpdateCollection<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateCollection(this._res);

  TRes _res;

  call({
    Query$TeamUpdateCollection$teamUpdateCollection? teamUpdateCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<TRes>
      get teamUpdateCollection =>
          CopyWith$Query$TeamUpdateCollection$teamUpdateCollection.stub(_res);
}

const documentNodeQueryTeamUpdateCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TeamUpdateCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'TeamUpdateFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'TeamUpdateOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'before')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teamUpdateCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'last')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TeamUpdate'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'startCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTeamUpdate,
  fragmentDefinitionTeamUpdateType,
  fragmentDefinitionContent,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionContentType,
  fragmentDefinitionPublicationState,
  fragmentDefinitionContentTemplate,
  fragmentDefinitionContentTemplateVariable,
  fragmentDefinitionTemplateVariable,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Query$TeamUpdateCollection _parserFn$Query$TeamUpdateCollection(
        Map<String, dynamic> data) =>
    Query$TeamUpdateCollection.fromJson(data);
typedef OnQueryComplete$Query$TeamUpdateCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TeamUpdateCollection?,
);

class Options$Query$TeamUpdateCollection
    extends graphql.QueryOptions<Query$TeamUpdateCollection> {
  Options$Query$TeamUpdateCollection({
    String? operationName,
    Variables$Query$TeamUpdateCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdateCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TeamUpdateCollection? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null
                        ? null
                        : _parserFn$Query$TeamUpdateCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryTeamUpdateCollection,
          parserFn: _parserFn$Query$TeamUpdateCollection,
        );

  final OnQueryComplete$Query$TeamUpdateCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$TeamUpdateCollection
    extends graphql.WatchQueryOptions<Query$TeamUpdateCollection> {
  WatchOptions$Query$TeamUpdateCollection({
    String? operationName,
    Variables$Query$TeamUpdateCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdateCollection? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryTeamUpdateCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TeamUpdateCollection,
        );
}

class FetchMoreOptions$Query$TeamUpdateCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TeamUpdateCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$TeamUpdateCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryTeamUpdateCollection,
        );
}

extension ClientExtension$Query$TeamUpdateCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TeamUpdateCollection>>
      query$TeamUpdateCollection(
              [Options$Query$TeamUpdateCollection? options]) async =>
          await this.query(options ?? Options$Query$TeamUpdateCollection());
  graphql.ObservableQuery<Query$TeamUpdateCollection>
      watchQuery$TeamUpdateCollection(
              [WatchOptions$Query$TeamUpdateCollection? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$TeamUpdateCollection());
  void writeQuery$TeamUpdateCollection({
    required Query$TeamUpdateCollection data,
    Variables$Query$TeamUpdateCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryTeamUpdateCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TeamUpdateCollection? readQuery$TeamUpdateCollection({
    Variables$Query$TeamUpdateCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryTeamUpdateCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TeamUpdateCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TeamUpdateCollection>
    useQuery$TeamUpdateCollection(
            [Options$Query$TeamUpdateCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$TeamUpdateCollection());
graphql.ObservableQuery<Query$TeamUpdateCollection>
    useWatchQuery$TeamUpdateCollection(
            [WatchOptions$Query$TeamUpdateCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$TeamUpdateCollection());

class Query$TeamUpdateCollection$Widget
    extends graphql_flutter.Query<Query$TeamUpdateCollection> {
  Query$TeamUpdateCollection$Widget({
    widgets.Key? key,
    Options$Query$TeamUpdateCollection? options,
    required graphql_flutter.QueryBuilder<Query$TeamUpdateCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$TeamUpdateCollection(),
          builder: builder,
        );
}

class Query$TeamUpdateCollection$teamUpdateCollection {
  Query$TeamUpdateCollection$teamUpdateCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'TeamUpdateConnection',
  });

  factory Query$TeamUpdateCollection$teamUpdateCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateCollection$teamUpdateCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$TeamUpdateCollection$teamUpdateCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$TeamUpdateCollection$teamUpdateCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TeamUpdateCollection$teamUpdateCollection$edges> edges;

  final Query$TeamUpdateCollection$teamUpdateCollection$pageInfo pageInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$pageInfo = pageInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$pageInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateCollection$teamUpdateCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateCollection$teamUpdateCollection
    on Query$TeamUpdateCollection$teamUpdateCollection {
  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<
          Query$TeamUpdateCollection$teamUpdateCollection>
      get copyWith => CopyWith$Query$TeamUpdateCollection$teamUpdateCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<TRes> {
  factory CopyWith$Query$TeamUpdateCollection$teamUpdateCollection(
    Query$TeamUpdateCollection$teamUpdateCollection instance,
    TRes Function(Query$TeamUpdateCollection$teamUpdateCollection) then,
  ) = _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection;

  factory CopyWith$Query$TeamUpdateCollection$teamUpdateCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection;

  TRes call({
    List<Query$TeamUpdateCollection$teamUpdateCollection$edges>? edges,
    Query$TeamUpdateCollection$teamUpdateCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$TeamUpdateCollection$teamUpdateCollection$edges> Function(
              Iterable<
                  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges<
                      Query$TeamUpdateCollection$teamUpdateCollection$edges>>)
          _fn);
  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection<TRes>
    implements CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<TRes> {
  _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateCollection$teamUpdateCollection _instance;

  final TRes Function(Query$TeamUpdateCollection$teamUpdateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateCollection$teamUpdateCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Query$TeamUpdateCollection$teamUpdateCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$TeamUpdateCollection$teamUpdateCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$TeamUpdateCollection$teamUpdateCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges<
                          Query$TeamUpdateCollection$teamUpdateCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection<TRes>
    implements CopyWith$Query$TeamUpdateCollection$teamUpdateCollection<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection(this._res);

  TRes _res;

  call({
    List<Query$TeamUpdateCollection$teamUpdateCollection$edges>? edges,
    Query$TeamUpdateCollection$teamUpdateCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo
              .stub(_res);
}

class Query$TeamUpdateCollection$teamUpdateCollection$edges {
  Query$TeamUpdateCollection$teamUpdateCollection$edges({
    required this.node,
    this.$__typename = 'TeamUpdateEdge',
  });

  factory Query$TeamUpdateCollection$teamUpdateCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateCollection$teamUpdateCollection$edges(
      node: Fragment$TeamUpdate.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TeamUpdate node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateCollection$teamUpdateCollection$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateCollection$teamUpdateCollection$edges
    on Query$TeamUpdateCollection$teamUpdateCollection$edges {
  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges<
          Query$TeamUpdateCollection$teamUpdateCollection$edges>
      get copyWith =>
          CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges<
    TRes> {
  factory CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges(
    Query$TeamUpdateCollection$teamUpdateCollection$edges instance,
    TRes Function(Query$TeamUpdateCollection$teamUpdateCollection$edges) then,
  ) = _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection$edges;

  factory CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection$edges;

  TRes call({
    Fragment$TeamUpdate? node,
    String? $__typename,
  });
  CopyWith$Fragment$TeamUpdate<TRes> get node;
}

class _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection$edges<TRes>
    implements
        CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges<TRes> {
  _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection$edges(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateCollection$teamUpdateCollection$edges _instance;

  final TRes Function(Query$TeamUpdateCollection$teamUpdateCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateCollection$teamUpdateCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$TeamUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TeamUpdate<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$TeamUpdate(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection$edges<
        TRes>
    implements
        CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$edges<TRes> {
  _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$TeamUpdate? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TeamUpdate<TRes> get node =>
      CopyWith$Fragment$TeamUpdate.stub(_res);
}

class Query$TeamUpdateCollection$teamUpdateCollection$pageInfo {
  Query$TeamUpdateCollection$teamUpdateCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$TeamUpdateCollection$teamUpdateCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
      hasPreviousPage: (l$hasPreviousPage as bool),
      hasNextPage: (l$hasNextPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPreviousPage;

  final bool hasNextPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasPreviousPage = hasPreviousPage;
    final l$hasNextPage = hasNextPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPreviousPage,
      l$hasNextPage,
      l$startCursor,
      l$endCursor,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdateCollection$teamUpdateCollection$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$startCursor = startCursor;
    final lOther$startCursor = other.startCursor;
    if (l$startCursor != lOther$startCursor) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo
    on Query$TeamUpdateCollection$teamUpdateCollection$pageInfo {
  CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<
          Query$TeamUpdateCollection$teamUpdateCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
    Query$TeamUpdateCollection$teamUpdateCollection$pageInfo instance,
    TRes Function(Query$TeamUpdateCollection$teamUpdateCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo;

  factory CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$TeamUpdateCollection$teamUpdateCollection$pageInfo _instance;

  final TRes Function(Query$TeamUpdateCollection$teamUpdateCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$TeamUpdateCollection$teamUpdateCollection$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$TeamUpdate {
  factory Variables$Query$TeamUpdate({required String id}) =>
      Variables$Query$TeamUpdate._({
        r'id': id,
      });

  Variables$Query$TeamUpdate._(this._$data);

  factory Variables$Query$TeamUpdate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$TeamUpdate._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$TeamUpdate<Variables$Query$TeamUpdate>
      get copyWith => CopyWith$Variables$Query$TeamUpdate(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$TeamUpdate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$TeamUpdate<TRes> {
  factory CopyWith$Variables$Query$TeamUpdate(
    Variables$Query$TeamUpdate instance,
    TRes Function(Variables$Query$TeamUpdate) then,
  ) = _CopyWithImpl$Variables$Query$TeamUpdate;

  factory CopyWith$Variables$Query$TeamUpdate.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$TeamUpdate;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$TeamUpdate<TRes>
    implements CopyWith$Variables$Query$TeamUpdate<TRes> {
  _CopyWithImpl$Variables$Query$TeamUpdate(
    this._instance,
    this._then,
  );

  final Variables$Query$TeamUpdate _instance;

  final TRes Function(Variables$Query$TeamUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$TeamUpdate._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$TeamUpdate<TRes>
    implements CopyWith$Variables$Query$TeamUpdate<TRes> {
  _CopyWithStubImpl$Variables$Query$TeamUpdate(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$TeamUpdate {
  Query$TeamUpdate({
    this.teamUpdateCollection,
    this.$__typename = 'Query',
  });

  factory Query$TeamUpdate.fromJson(Map<String, dynamic> json) {
    final l$teamUpdateCollection = json['teamUpdateCollection'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdate(
      teamUpdateCollection: l$teamUpdateCollection == null
          ? null
          : Query$TeamUpdate$teamUpdateCollection.fromJson(
              (l$teamUpdateCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$TeamUpdate$teamUpdateCollection? teamUpdateCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$teamUpdateCollection = teamUpdateCollection;
    _resultData['teamUpdateCollection'] = l$teamUpdateCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$teamUpdateCollection = teamUpdateCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$teamUpdateCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdate) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$teamUpdateCollection = teamUpdateCollection;
    final lOther$teamUpdateCollection = other.teamUpdateCollection;
    if (l$teamUpdateCollection != lOther$teamUpdateCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdate on Query$TeamUpdate {
  CopyWith$Query$TeamUpdate<Query$TeamUpdate> get copyWith =>
      CopyWith$Query$TeamUpdate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$TeamUpdate<TRes> {
  factory CopyWith$Query$TeamUpdate(
    Query$TeamUpdate instance,
    TRes Function(Query$TeamUpdate) then,
  ) = _CopyWithImpl$Query$TeamUpdate;

  factory CopyWith$Query$TeamUpdate.stub(TRes res) =
      _CopyWithStubImpl$Query$TeamUpdate;

  TRes call({
    Query$TeamUpdate$teamUpdateCollection? teamUpdateCollection,
    String? $__typename,
  });
  CopyWith$Query$TeamUpdate$teamUpdateCollection<TRes> get teamUpdateCollection;
}

class _CopyWithImpl$Query$TeamUpdate<TRes>
    implements CopyWith$Query$TeamUpdate<TRes> {
  _CopyWithImpl$Query$TeamUpdate(
    this._instance,
    this._then,
  );

  final Query$TeamUpdate _instance;

  final TRes Function(Query$TeamUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? teamUpdateCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdate(
        teamUpdateCollection: teamUpdateCollection == _undefined
            ? _instance.teamUpdateCollection
            : (teamUpdateCollection as Query$TeamUpdate$teamUpdateCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$TeamUpdate$teamUpdateCollection<TRes>
      get teamUpdateCollection {
    final local$teamUpdateCollection = _instance.teamUpdateCollection;
    return local$teamUpdateCollection == null
        ? CopyWith$Query$TeamUpdate$teamUpdateCollection.stub(_then(_instance))
        : CopyWith$Query$TeamUpdate$teamUpdateCollection(
            local$teamUpdateCollection, (e) => call(teamUpdateCollection: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdate<TRes>
    implements CopyWith$Query$TeamUpdate<TRes> {
  _CopyWithStubImpl$Query$TeamUpdate(this._res);

  TRes _res;

  call({
    Query$TeamUpdate$teamUpdateCollection? teamUpdateCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$TeamUpdate$teamUpdateCollection<TRes>
      get teamUpdateCollection =>
          CopyWith$Query$TeamUpdate$teamUpdateCollection.stub(_res);
}

const documentNodeQueryTeamUpdate = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'TeamUpdate'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'teamUpdateCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'TeamUpdate'),
                    directives: [],
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionTeamUpdate,
  fragmentDefinitionTeamUpdateType,
  fragmentDefinitionContent,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionContentType,
  fragmentDefinitionPublicationState,
  fragmentDefinitionContentTemplate,
  fragmentDefinitionContentTemplateVariable,
  fragmentDefinitionTemplateVariable,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Query$TeamUpdate _parserFn$Query$TeamUpdate(Map<String, dynamic> data) =>
    Query$TeamUpdate.fromJson(data);
typedef OnQueryComplete$Query$TeamUpdate = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$TeamUpdate?,
);

class Options$Query$TeamUpdate extends graphql.QueryOptions<Query$TeamUpdate> {
  Options$Query$TeamUpdate({
    String? operationName,
    required Variables$Query$TeamUpdate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdate? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$TeamUpdate? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$TeamUpdate(data),
                  ),
          onError: onError,
          document: documentNodeQueryTeamUpdate,
          parserFn: _parserFn$Query$TeamUpdate,
        );

  final OnQueryComplete$Query$TeamUpdate? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$TeamUpdate
    extends graphql.WatchQueryOptions<Query$TeamUpdate> {
  WatchOptions$Query$TeamUpdate({
    String? operationName,
    required Variables$Query$TeamUpdate variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$TeamUpdate? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryTeamUpdate,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$TeamUpdate,
        );
}

class FetchMoreOptions$Query$TeamUpdate extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$TeamUpdate({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$TeamUpdate variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryTeamUpdate,
        );
}

extension ClientExtension$Query$TeamUpdate on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$TeamUpdate>> query$TeamUpdate(
          Options$Query$TeamUpdate options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$TeamUpdate> watchQuery$TeamUpdate(
          WatchOptions$Query$TeamUpdate options) =>
      this.watchQuery(options);
  void writeQuery$TeamUpdate({
    required Query$TeamUpdate data,
    required Variables$Query$TeamUpdate variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryTeamUpdate),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$TeamUpdate? readQuery$TeamUpdate({
    required Variables$Query$TeamUpdate variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryTeamUpdate),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$TeamUpdate.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$TeamUpdate> useQuery$TeamUpdate(
        Options$Query$TeamUpdate options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$TeamUpdate> useWatchQuery$TeamUpdate(
        WatchOptions$Query$TeamUpdate options) =>
    graphql_flutter.useWatchQuery(options);

class Query$TeamUpdate$Widget extends graphql_flutter.Query<Query$TeamUpdate> {
  Query$TeamUpdate$Widget({
    widgets.Key? key,
    required Options$Query$TeamUpdate options,
    required graphql_flutter.QueryBuilder<Query$TeamUpdate> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$TeamUpdate$teamUpdateCollection {
  Query$TeamUpdate$teamUpdateCollection({
    required this.edges,
    this.$__typename = 'TeamUpdateConnection',
  });

  factory Query$TeamUpdate$teamUpdateCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdate$teamUpdateCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$TeamUpdate$teamUpdateCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$TeamUpdate$teamUpdateCollection$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdate$teamUpdateCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdate$teamUpdateCollection
    on Query$TeamUpdate$teamUpdateCollection {
  CopyWith$Query$TeamUpdate$teamUpdateCollection<
          Query$TeamUpdate$teamUpdateCollection>
      get copyWith => CopyWith$Query$TeamUpdate$teamUpdateCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdate$teamUpdateCollection<TRes> {
  factory CopyWith$Query$TeamUpdate$teamUpdateCollection(
    Query$TeamUpdate$teamUpdateCollection instance,
    TRes Function(Query$TeamUpdate$teamUpdateCollection) then,
  ) = _CopyWithImpl$Query$TeamUpdate$teamUpdateCollection;

  factory CopyWith$Query$TeamUpdate$teamUpdateCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$TeamUpdate$teamUpdateCollection;

  TRes call({
    List<Query$TeamUpdate$teamUpdateCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$TeamUpdate$teamUpdateCollection$edges> Function(
              Iterable<
                  CopyWith$Query$TeamUpdate$teamUpdateCollection$edges<
                      Query$TeamUpdate$teamUpdateCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$TeamUpdate$teamUpdateCollection<TRes>
    implements CopyWith$Query$TeamUpdate$teamUpdateCollection<TRes> {
  _CopyWithImpl$Query$TeamUpdate$teamUpdateCollection(
    this._instance,
    this._then,
  );

  final Query$TeamUpdate$teamUpdateCollection _instance;

  final TRes Function(Query$TeamUpdate$teamUpdateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdate$teamUpdateCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$TeamUpdate$teamUpdateCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$TeamUpdate$teamUpdateCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$TeamUpdate$teamUpdateCollection$edges<
                          Query$TeamUpdate$teamUpdateCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$TeamUpdate$teamUpdateCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$TeamUpdate$teamUpdateCollection<TRes>
    implements CopyWith$Query$TeamUpdate$teamUpdateCollection<TRes> {
  _CopyWithStubImpl$Query$TeamUpdate$teamUpdateCollection(this._res);

  TRes _res;

  call({
    List<Query$TeamUpdate$teamUpdateCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$TeamUpdate$teamUpdateCollection$edges {
  Query$TeamUpdate$teamUpdateCollection$edges({
    required this.node,
    this.$__typename = 'TeamUpdateEdge',
  });

  factory Query$TeamUpdate$teamUpdateCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$TeamUpdate$teamUpdateCollection$edges(
      node: Fragment$TeamUpdate.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$TeamUpdate node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$TeamUpdate$teamUpdateCollection$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$TeamUpdate$teamUpdateCollection$edges
    on Query$TeamUpdate$teamUpdateCollection$edges {
  CopyWith$Query$TeamUpdate$teamUpdateCollection$edges<
          Query$TeamUpdate$teamUpdateCollection$edges>
      get copyWith => CopyWith$Query$TeamUpdate$teamUpdateCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$TeamUpdate$teamUpdateCollection$edges<TRes> {
  factory CopyWith$Query$TeamUpdate$teamUpdateCollection$edges(
    Query$TeamUpdate$teamUpdateCollection$edges instance,
    TRes Function(Query$TeamUpdate$teamUpdateCollection$edges) then,
  ) = _CopyWithImpl$Query$TeamUpdate$teamUpdateCollection$edges;

  factory CopyWith$Query$TeamUpdate$teamUpdateCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$TeamUpdate$teamUpdateCollection$edges;

  TRes call({
    Fragment$TeamUpdate? node,
    String? $__typename,
  });
  CopyWith$Fragment$TeamUpdate<TRes> get node;
}

class _CopyWithImpl$Query$TeamUpdate$teamUpdateCollection$edges<TRes>
    implements CopyWith$Query$TeamUpdate$teamUpdateCollection$edges<TRes> {
  _CopyWithImpl$Query$TeamUpdate$teamUpdateCollection$edges(
    this._instance,
    this._then,
  );

  final Query$TeamUpdate$teamUpdateCollection$edges _instance;

  final TRes Function(Query$TeamUpdate$teamUpdateCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$TeamUpdate$teamUpdateCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$TeamUpdate),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TeamUpdate<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$TeamUpdate(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$TeamUpdate$teamUpdateCollection$edges<TRes>
    implements CopyWith$Query$TeamUpdate$teamUpdateCollection$edges<TRes> {
  _CopyWithStubImpl$Query$TeamUpdate$teamUpdateCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$TeamUpdate? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TeamUpdate<TRes> get node =>
      CopyWith$Fragment$TeamUpdate.stub(_res);
}
