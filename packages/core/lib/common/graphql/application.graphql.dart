import '../../providers/graphql/provider.graphql.dart';
import '../../schema.graphql.dart';
import '../../team/graphql/first_responders.graphql.dart';
import '../../team/graphql/stations.graphql.dart';
import '../../users/graphql/organizations.graphql.dart';
import '../../users/graphql/users.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$ApplicationType {
  Fragment$ApplicationType({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    required this.createdAt,
    this.$__typename = 'ApplicationType',
  });

  factory Fragment$ApplicationType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ApplicationType(
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
    if (!(other is Fragment$ApplicationType) ||
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

extension UtilityExtension$Fragment$ApplicationType
    on Fragment$ApplicationType {
  CopyWith$Fragment$ApplicationType<Fragment$ApplicationType> get copyWith =>
      CopyWith$Fragment$ApplicationType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ApplicationType<TRes> {
  factory CopyWith$Fragment$ApplicationType(
    Fragment$ApplicationType instance,
    TRes Function(Fragment$ApplicationType) then,
  ) = _CopyWithImpl$Fragment$ApplicationType;

  factory CopyWith$Fragment$ApplicationType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ApplicationType;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ApplicationType<TRes>
    implements CopyWith$Fragment$ApplicationType<TRes> {
  _CopyWithImpl$Fragment$ApplicationType(
    this._instance,
    this._then,
  );

  final Fragment$ApplicationType _instance;

  final TRes Function(Fragment$ApplicationType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ApplicationType(
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

class _CopyWithStubImpl$Fragment$ApplicationType<TRes>
    implements CopyWith$Fragment$ApplicationType<TRes> {
  _CopyWithStubImpl$Fragment$ApplicationType(this._res);

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

const fragmentDefinitionApplicationType = FragmentDefinitionNode(
  name: NameNode(value: 'ApplicationType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ApplicationType'),
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
const documentNodeFragmentApplicationType = DocumentNode(definitions: [
  fragmentDefinitionApplicationType,
]);

extension ClientExtension$Fragment$ApplicationType on graphql.GraphQLClient {
  void writeFragment$ApplicationType({
    required Fragment$ApplicationType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ApplicationType',
            document: documentNodeFragmentApplicationType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ApplicationType? readFragment$ApplicationType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ApplicationType',
          document: documentNodeFragmentApplicationType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ApplicationType.fromJson(result);
  }
}

class Fragment$Application {
  Fragment$Application({
    required this.id,
    required this.applicationTypeId,
    required this.applicationType,
    required this.name,
    this.shortDescription,
    this.longDescriptionMarkdown,
    this.iconUrl,
    this.coverUrl,
    this.ownerId,
    this.owner,
    required this.createdAt,
    this.$__typename = 'Application',
  });

  factory Fragment$Application.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$applicationTypeId = json['applicationTypeId'];
    final l$applicationType = json['applicationType'];
    final l$name = json['name'];
    final l$shortDescription = json['shortDescription'];
    final l$longDescriptionMarkdown = json['longDescriptionMarkdown'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$ownerId = json['ownerId'];
    final l$owner = json['owner'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Application(
      id: (l$id as String),
      applicationTypeId: (l$applicationTypeId as String),
      applicationType: Fragment$ApplicationType.fromJson(
          (l$applicationType as Map<String, dynamic>)),
      name: (l$name as String),
      shortDescription: (l$shortDescription as String?),
      longDescriptionMarkdown: (l$longDescriptionMarkdown as String?),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      ownerId: (l$ownerId as String?),
      owner: l$owner == null
          ? null
          : Fragment$User.fromJson((l$owner as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String applicationTypeId;

  final Fragment$ApplicationType applicationType;

  final String name;

  final String? shortDescription;

  final String? longDescriptionMarkdown;

  final String? iconUrl;

  final String? coverUrl;

  final String? ownerId;

  final Fragment$User? owner;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$applicationTypeId = applicationTypeId;
    _resultData['applicationTypeId'] = l$applicationTypeId;
    final l$applicationType = applicationType;
    _resultData['applicationType'] = l$applicationType.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$shortDescription = shortDescription;
    _resultData['shortDescription'] = l$shortDescription;
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    _resultData['longDescriptionMarkdown'] = l$longDescriptionMarkdown;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$ownerId = ownerId;
    _resultData['ownerId'] = l$ownerId;
    final l$owner = owner;
    _resultData['owner'] = l$owner?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$applicationTypeId = applicationTypeId;
    final l$applicationType = applicationType;
    final l$name = name;
    final l$shortDescription = shortDescription;
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$ownerId = ownerId;
    final l$owner = owner;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$applicationTypeId,
      l$applicationType,
      l$name,
      l$shortDescription,
      l$longDescriptionMarkdown,
      l$iconUrl,
      l$coverUrl,
      l$ownerId,
      l$owner,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Application) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$applicationTypeId = applicationTypeId;
    final lOther$applicationTypeId = other.applicationTypeId;
    if (l$applicationTypeId != lOther$applicationTypeId) {
      return false;
    }
    final l$applicationType = applicationType;
    final lOther$applicationType = other.applicationType;
    if (l$applicationType != lOther$applicationType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$shortDescription = shortDescription;
    final lOther$shortDescription = other.shortDescription;
    if (l$shortDescription != lOther$shortDescription) {
      return false;
    }
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    final lOther$longDescriptionMarkdown = other.longDescriptionMarkdown;
    if (l$longDescriptionMarkdown != lOther$longDescriptionMarkdown) {
      return false;
    }
    final l$iconUrl = iconUrl;
    final lOther$iconUrl = other.iconUrl;
    if (l$iconUrl != lOther$iconUrl) {
      return false;
    }
    final l$coverUrl = coverUrl;
    final lOther$coverUrl = other.coverUrl;
    if (l$coverUrl != lOther$coverUrl) {
      return false;
    }
    final l$ownerId = ownerId;
    final lOther$ownerId = other.ownerId;
    if (l$ownerId != lOther$ownerId) {
      return false;
    }
    final l$owner = owner;
    final lOther$owner = other.owner;
    if (l$owner != lOther$owner) {
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

extension UtilityExtension$Fragment$Application on Fragment$Application {
  CopyWith$Fragment$Application<Fragment$Application> get copyWith =>
      CopyWith$Fragment$Application(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Application<TRes> {
  factory CopyWith$Fragment$Application(
    Fragment$Application instance,
    TRes Function(Fragment$Application) then,
  ) = _CopyWithImpl$Fragment$Application;

  factory CopyWith$Fragment$Application.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Application;

  TRes call({
    String? id,
    String? applicationTypeId,
    Fragment$ApplicationType? applicationType,
    String? name,
    String? shortDescription,
    String? longDescriptionMarkdown,
    String? iconUrl,
    String? coverUrl,
    String? ownerId,
    Fragment$User? owner,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$ApplicationType<TRes> get applicationType;
  CopyWith$Fragment$User<TRes> get owner;
}

class _CopyWithImpl$Fragment$Application<TRes>
    implements CopyWith$Fragment$Application<TRes> {
  _CopyWithImpl$Fragment$Application(
    this._instance,
    this._then,
  );

  final Fragment$Application _instance;

  final TRes Function(Fragment$Application) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? applicationTypeId = _undefined,
    Object? applicationType = _undefined,
    Object? name = _undefined,
    Object? shortDescription = _undefined,
    Object? longDescriptionMarkdown = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? ownerId = _undefined,
    Object? owner = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Application(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        applicationTypeId:
            applicationTypeId == _undefined || applicationTypeId == null
                ? _instance.applicationTypeId
                : (applicationTypeId as String),
        applicationType:
            applicationType == _undefined || applicationType == null
                ? _instance.applicationType
                : (applicationType as Fragment$ApplicationType),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        shortDescription: shortDescription == _undefined
            ? _instance.shortDescription
            : (shortDescription as String?),
        longDescriptionMarkdown: longDescriptionMarkdown == _undefined
            ? _instance.longDescriptionMarkdown
            : (longDescriptionMarkdown as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        ownerId:
            ownerId == _undefined ? _instance.ownerId : (ownerId as String?),
        owner:
            owner == _undefined ? _instance.owner : (owner as Fragment$User?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ApplicationType<TRes> get applicationType {
    final local$applicationType = _instance.applicationType;
    return CopyWith$Fragment$ApplicationType(
        local$applicationType, (e) => call(applicationType: e));
  }

  CopyWith$Fragment$User<TRes> get owner {
    final local$owner = _instance.owner;
    return local$owner == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$owner, (e) => call(owner: e));
  }
}

class _CopyWithStubImpl$Fragment$Application<TRes>
    implements CopyWith$Fragment$Application<TRes> {
  _CopyWithStubImpl$Fragment$Application(this._res);

  TRes _res;

  call({
    String? id,
    String? applicationTypeId,
    Fragment$ApplicationType? applicationType,
    String? name,
    String? shortDescription,
    String? longDescriptionMarkdown,
    String? iconUrl,
    String? coverUrl,
    String? ownerId,
    Fragment$User? owner,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ApplicationType<TRes> get applicationType =>
      CopyWith$Fragment$ApplicationType.stub(_res);

  CopyWith$Fragment$User<TRes> get owner => CopyWith$Fragment$User.stub(_res);
}

const fragmentDefinitionApplication = FragmentDefinitionNode(
  name: NameNode(value: 'Application'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Application'),
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
      name: NameNode(value: 'applicationTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'applicationType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ApplicationType'),
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
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'shortDescription'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'longDescriptionMarkdown'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'iconUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'coverUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ownerId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'owner'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'User'),
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
const documentNodeFragmentApplication = DocumentNode(definitions: [
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);

extension ClientExtension$Fragment$Application on graphql.GraphQLClient {
  void writeFragment$Application({
    required Fragment$Application data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Application',
            document: documentNodeFragmentApplication,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Application? readFragment$Application({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Application',
          document: documentNodeFragmentApplication,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Application.fromJson(result);
  }
}

class Variables$Query$ApplicationCollection {
  factory Variables$Query$ApplicationCollection({
    Input$ApplicationFilter? filter,
    List<Input$ApplicationOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      Variables$Query$ApplicationCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$ApplicationCollection._(this._$data);

  factory Variables$Query$ApplicationCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$ApplicationFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ApplicationOrderBy.fromJson((e as Map<String, dynamic>)))
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
      result$data['before'] = (l$before as dynamic?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as dynamic?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Variables$Query$ApplicationCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ApplicationFilter? get filter =>
      (_$data['filter'] as Input$ApplicationFilter?);

  List<Input$ApplicationOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ApplicationOrderBy>?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

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

  CopyWith$Variables$Query$ApplicationCollection<
          Variables$Query$ApplicationCollection>
      get copyWith => CopyWith$Variables$Query$ApplicationCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ApplicationCollection) ||
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

abstract class CopyWith$Variables$Query$ApplicationCollection<TRes> {
  factory CopyWith$Variables$Query$ApplicationCollection(
    Variables$Query$ApplicationCollection instance,
    TRes Function(Variables$Query$ApplicationCollection) then,
  ) = _CopyWithImpl$Variables$Query$ApplicationCollection;

  factory CopyWith$Variables$Query$ApplicationCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ApplicationCollection;

  TRes call({
    Input$ApplicationFilter? filter,
    List<Input$ApplicationOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$ApplicationCollection<TRes>
    implements CopyWith$Variables$Query$ApplicationCollection<TRes> {
  _CopyWithImpl$Variables$Query$ApplicationCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ApplicationCollection _instance;

  final TRes Function(Variables$Query$ApplicationCollection) _then;

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
      _then(Variables$Query$ApplicationCollection._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$ApplicationFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ApplicationOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ApplicationCollection<TRes>
    implements CopyWith$Variables$Query$ApplicationCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ApplicationCollection(this._res);

  TRes _res;

  call({
    Input$ApplicationFilter? filter,
    List<Input$ApplicationOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      _res;
}

class Query$ApplicationCollection {
  Query$ApplicationCollection({
    this.applicationCollection,
    this.$__typename = 'Query',
  });

  factory Query$ApplicationCollection.fromJson(Map<String, dynamic> json) {
    final l$applicationCollection = json['applicationCollection'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationCollection(
      applicationCollection: l$applicationCollection == null
          ? null
          : Query$ApplicationCollection$applicationCollection.fromJson(
              (l$applicationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ApplicationCollection$applicationCollection?
      applicationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$applicationCollection = applicationCollection;
    _resultData['applicationCollection'] = l$applicationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$applicationCollection = applicationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$applicationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ApplicationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$applicationCollection = applicationCollection;
    final lOther$applicationCollection = other.applicationCollection;
    if (l$applicationCollection != lOther$applicationCollection) {
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

extension UtilityExtension$Query$ApplicationCollection
    on Query$ApplicationCollection {
  CopyWith$Query$ApplicationCollection<Query$ApplicationCollection>
      get copyWith => CopyWith$Query$ApplicationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationCollection<TRes> {
  factory CopyWith$Query$ApplicationCollection(
    Query$ApplicationCollection instance,
    TRes Function(Query$ApplicationCollection) then,
  ) = _CopyWithImpl$Query$ApplicationCollection;

  factory CopyWith$Query$ApplicationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ApplicationCollection;

  TRes call({
    Query$ApplicationCollection$applicationCollection? applicationCollection,
    String? $__typename,
  });
  CopyWith$Query$ApplicationCollection$applicationCollection<TRes>
      get applicationCollection;
}

class _CopyWithImpl$Query$ApplicationCollection<TRes>
    implements CopyWith$Query$ApplicationCollection<TRes> {
  _CopyWithImpl$Query$ApplicationCollection(
    this._instance,
    this._then,
  );

  final Query$ApplicationCollection _instance;

  final TRes Function(Query$ApplicationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? applicationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationCollection(
        applicationCollection: applicationCollection == _undefined
            ? _instance.applicationCollection
            : (applicationCollection
                as Query$ApplicationCollection$applicationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ApplicationCollection$applicationCollection<TRes>
      get applicationCollection {
    final local$applicationCollection = _instance.applicationCollection;
    return local$applicationCollection == null
        ? CopyWith$Query$ApplicationCollection$applicationCollection.stub(
            _then(_instance))
        : CopyWith$Query$ApplicationCollection$applicationCollection(
            local$applicationCollection, (e) => call(applicationCollection: e));
  }
}

class _CopyWithStubImpl$Query$ApplicationCollection<TRes>
    implements CopyWith$Query$ApplicationCollection<TRes> {
  _CopyWithStubImpl$Query$ApplicationCollection(this._res);

  TRes _res;

  call({
    Query$ApplicationCollection$applicationCollection? applicationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ApplicationCollection$applicationCollection<TRes>
      get applicationCollection =>
          CopyWith$Query$ApplicationCollection$applicationCollection.stub(_res);
}

const documentNodeQueryApplicationCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ApplicationCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ApplicationFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ApplicationOrderBy'),
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
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
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
        name: NameNode(value: 'applicationCollection'),
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
                    name: NameNode(value: 'Application'),
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
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);
Query$ApplicationCollection _parserFn$Query$ApplicationCollection(
        Map<String, dynamic> data) =>
    Query$ApplicationCollection.fromJson(data);
typedef OnQueryComplete$Query$ApplicationCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ApplicationCollection?,
);

class Options$Query$ApplicationCollection
    extends graphql.QueryOptions<Query$ApplicationCollection> {
  Options$Query$ApplicationCollection({
    String? operationName,
    Variables$Query$ApplicationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApplicationCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ApplicationCollection? onComplete,
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
                        : _parserFn$Query$ApplicationCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryApplicationCollection,
          parserFn: _parserFn$Query$ApplicationCollection,
        );

  final OnQueryComplete$Query$ApplicationCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ApplicationCollection
    extends graphql.WatchQueryOptions<Query$ApplicationCollection> {
  WatchOptions$Query$ApplicationCollection({
    String? operationName,
    Variables$Query$ApplicationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApplicationCollection? typedOptimisticResult,
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
          document: documentNodeQueryApplicationCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ApplicationCollection,
        );
}

class FetchMoreOptions$Query$ApplicationCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ApplicationCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ApplicationCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryApplicationCollection,
        );
}

extension ClientExtension$Query$ApplicationCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ApplicationCollection>>
      query$ApplicationCollection(
              [Options$Query$ApplicationCollection? options]) async =>
          await this.query(options ?? Options$Query$ApplicationCollection());
  graphql.ObservableQuery<
      Query$ApplicationCollection> watchQuery$ApplicationCollection(
          [WatchOptions$Query$ApplicationCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ApplicationCollection());
  void writeQuery$ApplicationCollection({
    required Query$ApplicationCollection data,
    Variables$Query$ApplicationCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryApplicationCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ApplicationCollection? readQuery$ApplicationCollection({
    Variables$Query$ApplicationCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryApplicationCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ApplicationCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ApplicationCollection>
    useQuery$ApplicationCollection(
            [Options$Query$ApplicationCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$ApplicationCollection());
graphql.ObservableQuery<Query$ApplicationCollection>
    useWatchQuery$ApplicationCollection(
            [WatchOptions$Query$ApplicationCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$ApplicationCollection());

class Query$ApplicationCollection$Widget
    extends graphql_flutter.Query<Query$ApplicationCollection> {
  Query$ApplicationCollection$Widget({
    widgets.Key? key,
    Options$Query$ApplicationCollection? options,
    required graphql_flutter.QueryBuilder<Query$ApplicationCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ApplicationCollection(),
          builder: builder,
        );
}

class Query$ApplicationCollection$applicationCollection {
  Query$ApplicationCollection$applicationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ApplicationConnection',
  });

  factory Query$ApplicationCollection$applicationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationCollection$applicationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$ApplicationCollection$applicationCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$ApplicationCollection$applicationCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ApplicationCollection$applicationCollection$edges> edges;

  final Query$ApplicationCollection$applicationCollection$pageInfo pageInfo;

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
    if (!(other is Query$ApplicationCollection$applicationCollection) ||
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

extension UtilityExtension$Query$ApplicationCollection$applicationCollection
    on Query$ApplicationCollection$applicationCollection {
  CopyWith$Query$ApplicationCollection$applicationCollection<
          Query$ApplicationCollection$applicationCollection>
      get copyWith =>
          CopyWith$Query$ApplicationCollection$applicationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationCollection$applicationCollection<
    TRes> {
  factory CopyWith$Query$ApplicationCollection$applicationCollection(
    Query$ApplicationCollection$applicationCollection instance,
    TRes Function(Query$ApplicationCollection$applicationCollection) then,
  ) = _CopyWithImpl$Query$ApplicationCollection$applicationCollection;

  factory CopyWith$Query$ApplicationCollection$applicationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection;

  TRes call({
    List<Query$ApplicationCollection$applicationCollection$edges>? edges,
    Query$ApplicationCollection$applicationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ApplicationCollection$applicationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ApplicationCollection$applicationCollection$edges<
                      Query$ApplicationCollection$applicationCollection$edges>>)
          _fn);
  CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ApplicationCollection$applicationCollection<TRes>
    implements
        CopyWith$Query$ApplicationCollection$applicationCollection<TRes> {
  _CopyWithImpl$Query$ApplicationCollection$applicationCollection(
    this._instance,
    this._then,
  );

  final Query$ApplicationCollection$applicationCollection _instance;

  final TRes Function(Query$ApplicationCollection$applicationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationCollection$applicationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$ApplicationCollection$applicationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$ApplicationCollection$applicationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ApplicationCollection$applicationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ApplicationCollection$applicationCollection$edges<
                          Query$ApplicationCollection$applicationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$ApplicationCollection$applicationCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection<TRes>
    implements
        CopyWith$Query$ApplicationCollection$applicationCollection<TRes> {
  _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection(
      this._res);

  TRes _res;

  call({
    List<Query$ApplicationCollection$applicationCollection$edges>? edges,
    Query$ApplicationCollection$applicationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo
              .stub(_res);
}

class Query$ApplicationCollection$applicationCollection$edges {
  Query$ApplicationCollection$applicationCollection$edges({
    required this.node,
    this.$__typename = 'ApplicationEdge',
  });

  factory Query$ApplicationCollection$applicationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationCollection$applicationCollection$edges(
      node: Fragment$Application.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Application node;

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
    if (!(other is Query$ApplicationCollection$applicationCollection$edges) ||
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

extension UtilityExtension$Query$ApplicationCollection$applicationCollection$edges
    on Query$ApplicationCollection$applicationCollection$edges {
  CopyWith$Query$ApplicationCollection$applicationCollection$edges<
          Query$ApplicationCollection$applicationCollection$edges>
      get copyWith =>
          CopyWith$Query$ApplicationCollection$applicationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationCollection$applicationCollection$edges<
    TRes> {
  factory CopyWith$Query$ApplicationCollection$applicationCollection$edges(
    Query$ApplicationCollection$applicationCollection$edges instance,
    TRes Function(Query$ApplicationCollection$applicationCollection$edges) then,
  ) = _CopyWithImpl$Query$ApplicationCollection$applicationCollection$edges;

  factory CopyWith$Query$ApplicationCollection$applicationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection$edges;

  TRes call({
    Fragment$Application? node,
    String? $__typename,
  });
  CopyWith$Fragment$Application<TRes> get node;
}

class _CopyWithImpl$Query$ApplicationCollection$applicationCollection$edges<
        TRes>
    implements
        CopyWith$Query$ApplicationCollection$applicationCollection$edges<TRes> {
  _CopyWithImpl$Query$ApplicationCollection$applicationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ApplicationCollection$applicationCollection$edges _instance;

  final TRes Function(Query$ApplicationCollection$applicationCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationCollection$applicationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Application),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Application<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Application(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection$edges<
        TRes>
    implements
        CopyWith$Query$ApplicationCollection$applicationCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$Application? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Application<TRes> get node =>
      CopyWith$Fragment$Application.stub(_res);
}

class Query$ApplicationCollection$applicationCollection$pageInfo {
  Query$ApplicationCollection$applicationCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ApplicationCollection$applicationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationCollection$applicationCollection$pageInfo(
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
            is Query$ApplicationCollection$applicationCollection$pageInfo) ||
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

extension UtilityExtension$Query$ApplicationCollection$applicationCollection$pageInfo
    on Query$ApplicationCollection$applicationCollection$pageInfo {
  CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<
          Query$ApplicationCollection$applicationCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo(
    Query$ApplicationCollection$applicationCollection$pageInfo instance,
    TRes Function(Query$ApplicationCollection$applicationCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$ApplicationCollection$applicationCollection$pageInfo;

  factory CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ApplicationCollection$applicationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$ApplicationCollection$applicationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ApplicationCollection$applicationCollection$pageInfo _instance;

  final TRes Function(
      Query$ApplicationCollection$applicationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationCollection$applicationCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ApplicationCollection$applicationCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$ApplicationCollection$applicationCollection$pageInfo(
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

class Variables$Query$Application {
  factory Variables$Query$Application({required String id}) =>
      Variables$Query$Application._({
        r'id': id,
      });

  Variables$Query$Application._(this._$data);

  factory Variables$Query$Application.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Application._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Application<Variables$Query$Application>
      get copyWith => CopyWith$Variables$Query$Application(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Application) ||
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

abstract class CopyWith$Variables$Query$Application<TRes> {
  factory CopyWith$Variables$Query$Application(
    Variables$Query$Application instance,
    TRes Function(Variables$Query$Application) then,
  ) = _CopyWithImpl$Variables$Query$Application;

  factory CopyWith$Variables$Query$Application.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Application;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Application<TRes>
    implements CopyWith$Variables$Query$Application<TRes> {
  _CopyWithImpl$Variables$Query$Application(
    this._instance,
    this._then,
  );

  final Variables$Query$Application _instance;

  final TRes Function(Variables$Query$Application) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Application._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Application<TRes>
    implements CopyWith$Variables$Query$Application<TRes> {
  _CopyWithStubImpl$Variables$Query$Application(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Application {
  Query$Application({
    this.applicationCollection,
    this.$__typename = 'Query',
  });

  factory Query$Application.fromJson(Map<String, dynamic> json) {
    final l$applicationCollection = json['applicationCollection'];
    final l$$__typename = json['__typename'];
    return Query$Application(
      applicationCollection: l$applicationCollection == null
          ? null
          : Query$Application$applicationCollection.fromJson(
              (l$applicationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Application$applicationCollection? applicationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$applicationCollection = applicationCollection;
    _resultData['applicationCollection'] = l$applicationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$applicationCollection = applicationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$applicationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Application) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$applicationCollection = applicationCollection;
    final lOther$applicationCollection = other.applicationCollection;
    if (l$applicationCollection != lOther$applicationCollection) {
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

extension UtilityExtension$Query$Application on Query$Application {
  CopyWith$Query$Application<Query$Application> get copyWith =>
      CopyWith$Query$Application(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Application<TRes> {
  factory CopyWith$Query$Application(
    Query$Application instance,
    TRes Function(Query$Application) then,
  ) = _CopyWithImpl$Query$Application;

  factory CopyWith$Query$Application.stub(TRes res) =
      _CopyWithStubImpl$Query$Application;

  TRes call({
    Query$Application$applicationCollection? applicationCollection,
    String? $__typename,
  });
  CopyWith$Query$Application$applicationCollection<TRes>
      get applicationCollection;
}

class _CopyWithImpl$Query$Application<TRes>
    implements CopyWith$Query$Application<TRes> {
  _CopyWithImpl$Query$Application(
    this._instance,
    this._then,
  );

  final Query$Application _instance;

  final TRes Function(Query$Application) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? applicationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Application(
        applicationCollection: applicationCollection == _undefined
            ? _instance.applicationCollection
            : (applicationCollection
                as Query$Application$applicationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Application$applicationCollection<TRes>
      get applicationCollection {
    final local$applicationCollection = _instance.applicationCollection;
    return local$applicationCollection == null
        ? CopyWith$Query$Application$applicationCollection.stub(
            _then(_instance))
        : CopyWith$Query$Application$applicationCollection(
            local$applicationCollection, (e) => call(applicationCollection: e));
  }
}

class _CopyWithStubImpl$Query$Application<TRes>
    implements CopyWith$Query$Application<TRes> {
  _CopyWithStubImpl$Query$Application(this._res);

  TRes _res;

  call({
    Query$Application$applicationCollection? applicationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Application$applicationCollection<TRes>
      get applicationCollection =>
          CopyWith$Query$Application$applicationCollection.stub(_res);
}

const documentNodeQueryApplication = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Application'),
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
        name: NameNode(value: 'applicationCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'id')),
                  )
                ]),
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
                    name: NameNode(value: 'Application'),
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
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);
Query$Application _parserFn$Query$Application(Map<String, dynamic> data) =>
    Query$Application.fromJson(data);
typedef OnQueryComplete$Query$Application = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Application?,
);

class Options$Query$Application
    extends graphql.QueryOptions<Query$Application> {
  Options$Query$Application({
    String? operationName,
    required Variables$Query$Application variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Application? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Application? onComplete,
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
                    data == null ? null : _parserFn$Query$Application(data),
                  ),
          onError: onError,
          document: documentNodeQueryApplication,
          parserFn: _parserFn$Query$Application,
        );

  final OnQueryComplete$Query$Application? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Application
    extends graphql.WatchQueryOptions<Query$Application> {
  WatchOptions$Query$Application({
    String? operationName,
    required Variables$Query$Application variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Application? typedOptimisticResult,
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
          document: documentNodeQueryApplication,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Application,
        );
}

class FetchMoreOptions$Query$Application extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Application({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Application variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryApplication,
        );
}

extension ClientExtension$Query$Application on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Application>> query$Application(
          Options$Query$Application options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Application> watchQuery$Application(
          WatchOptions$Query$Application options) =>
      this.watchQuery(options);
  void writeQuery$Application({
    required Query$Application data,
    required Variables$Query$Application variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryApplication),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Application? readQuery$Application({
    required Variables$Query$Application variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryApplication),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Application.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Application> useQuery$Application(
        Options$Query$Application options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Application> useWatchQuery$Application(
        WatchOptions$Query$Application options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Application$Widget
    extends graphql_flutter.Query<Query$Application> {
  Query$Application$Widget({
    widgets.Key? key,
    required Options$Query$Application options,
    required graphql_flutter.QueryBuilder<Query$Application> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Application$applicationCollection {
  Query$Application$applicationCollection({
    required this.edges,
    this.$__typename = 'ApplicationConnection',
  });

  factory Query$Application$applicationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Application$applicationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Application$applicationCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Application$applicationCollection$edges> edges;

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
    if (!(other is Query$Application$applicationCollection) ||
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

extension UtilityExtension$Query$Application$applicationCollection
    on Query$Application$applicationCollection {
  CopyWith$Query$Application$applicationCollection<
          Query$Application$applicationCollection>
      get copyWith => CopyWith$Query$Application$applicationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Application$applicationCollection<TRes> {
  factory CopyWith$Query$Application$applicationCollection(
    Query$Application$applicationCollection instance,
    TRes Function(Query$Application$applicationCollection) then,
  ) = _CopyWithImpl$Query$Application$applicationCollection;

  factory CopyWith$Query$Application$applicationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Application$applicationCollection;

  TRes call({
    List<Query$Application$applicationCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Application$applicationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Application$applicationCollection$edges<
                      Query$Application$applicationCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Application$applicationCollection<TRes>
    implements CopyWith$Query$Application$applicationCollection<TRes> {
  _CopyWithImpl$Query$Application$applicationCollection(
    this._instance,
    this._then,
  );

  final Query$Application$applicationCollection _instance;

  final TRes Function(Query$Application$applicationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Application$applicationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Application$applicationCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Application$applicationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Application$applicationCollection$edges<
                          Query$Application$applicationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$Application$applicationCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Application$applicationCollection<TRes>
    implements CopyWith$Query$Application$applicationCollection<TRes> {
  _CopyWithStubImpl$Query$Application$applicationCollection(this._res);

  TRes _res;

  call({
    List<Query$Application$applicationCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Application$applicationCollection$edges {
  Query$Application$applicationCollection$edges({
    required this.node,
    this.$__typename = 'ApplicationEdge',
  });

  factory Query$Application$applicationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Application$applicationCollection$edges(
      node: Fragment$Application.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Application node;

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
    if (!(other is Query$Application$applicationCollection$edges) ||
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

extension UtilityExtension$Query$Application$applicationCollection$edges
    on Query$Application$applicationCollection$edges {
  CopyWith$Query$Application$applicationCollection$edges<
          Query$Application$applicationCollection$edges>
      get copyWith => CopyWith$Query$Application$applicationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Application$applicationCollection$edges<TRes> {
  factory CopyWith$Query$Application$applicationCollection$edges(
    Query$Application$applicationCollection$edges instance,
    TRes Function(Query$Application$applicationCollection$edges) then,
  ) = _CopyWithImpl$Query$Application$applicationCollection$edges;

  factory CopyWith$Query$Application$applicationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$Application$applicationCollection$edges;

  TRes call({
    Fragment$Application? node,
    String? $__typename,
  });
  CopyWith$Fragment$Application<TRes> get node;
}

class _CopyWithImpl$Query$Application$applicationCollection$edges<TRes>
    implements CopyWith$Query$Application$applicationCollection$edges<TRes> {
  _CopyWithImpl$Query$Application$applicationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Application$applicationCollection$edges _instance;

  final TRes Function(Query$Application$applicationCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Application$applicationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Application),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Application<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Application(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Application$applicationCollection$edges<TRes>
    implements CopyWith$Query$Application$applicationCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Application$applicationCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Application? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Application<TRes> get node =>
      CopyWith$Fragment$Application.stub(_res);
}

class Variables$Query$ApplicationTypeCollection {
  factory Variables$Query$ApplicationTypeCollection({
    Input$ApplicationTypeFilter? filter,
    List<Input$ApplicationTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      Variables$Query$ApplicationTypeCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$ApplicationTypeCollection._(this._$data);

  factory Variables$Query$ApplicationTypeCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$ApplicationTypeFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$ApplicationTypeOrderBy.fromJson(
              (e as Map<String, dynamic>)))
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
      result$data['before'] = (l$before as dynamic?);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as dynamic?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Variables$Query$ApplicationTypeCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ApplicationTypeFilter? get filter =>
      (_$data['filter'] as Input$ApplicationTypeFilter?);

  List<Input$ApplicationTypeOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ApplicationTypeOrderBy>?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

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

  CopyWith$Variables$Query$ApplicationTypeCollection<
          Variables$Query$ApplicationTypeCollection>
      get copyWith => CopyWith$Variables$Query$ApplicationTypeCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ApplicationTypeCollection) ||
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

abstract class CopyWith$Variables$Query$ApplicationTypeCollection<TRes> {
  factory CopyWith$Variables$Query$ApplicationTypeCollection(
    Variables$Query$ApplicationTypeCollection instance,
    TRes Function(Variables$Query$ApplicationTypeCollection) then,
  ) = _CopyWithImpl$Variables$Query$ApplicationTypeCollection;

  factory CopyWith$Variables$Query$ApplicationTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ApplicationTypeCollection;

  TRes call({
    Input$ApplicationTypeFilter? filter,
    List<Input$ApplicationTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$ApplicationTypeCollection<TRes>
    implements CopyWith$Variables$Query$ApplicationTypeCollection<TRes> {
  _CopyWithImpl$Variables$Query$ApplicationTypeCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ApplicationTypeCollection _instance;

  final TRes Function(Variables$Query$ApplicationTypeCollection) _then;

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
      _then(Variables$Query$ApplicationTypeCollection._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$ApplicationTypeFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ApplicationTypeOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ApplicationTypeCollection<TRes>
    implements CopyWith$Variables$Query$ApplicationTypeCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ApplicationTypeCollection(this._res);

  TRes _res;

  call({
    Input$ApplicationTypeFilter? filter,
    List<Input$ApplicationTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      _res;
}

class Query$ApplicationTypeCollection {
  Query$ApplicationTypeCollection({
    this.applicationTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$ApplicationTypeCollection.fromJson(Map<String, dynamic> json) {
    final l$applicationTypeCollection = json['applicationTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationTypeCollection(
      applicationTypeCollection: l$applicationTypeCollection == null
          ? null
          : Query$ApplicationTypeCollection$applicationTypeCollection.fromJson(
              (l$applicationTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ApplicationTypeCollection$applicationTypeCollection?
      applicationTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$applicationTypeCollection = applicationTypeCollection;
    _resultData['applicationTypeCollection'] =
        l$applicationTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$applicationTypeCollection = applicationTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$applicationTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ApplicationTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$applicationTypeCollection = applicationTypeCollection;
    final lOther$applicationTypeCollection = other.applicationTypeCollection;
    if (l$applicationTypeCollection != lOther$applicationTypeCollection) {
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

extension UtilityExtension$Query$ApplicationTypeCollection
    on Query$ApplicationTypeCollection {
  CopyWith$Query$ApplicationTypeCollection<Query$ApplicationTypeCollection>
      get copyWith => CopyWith$Query$ApplicationTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationTypeCollection<TRes> {
  factory CopyWith$Query$ApplicationTypeCollection(
    Query$ApplicationTypeCollection instance,
    TRes Function(Query$ApplicationTypeCollection) then,
  ) = _CopyWithImpl$Query$ApplicationTypeCollection;

  factory CopyWith$Query$ApplicationTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ApplicationTypeCollection;

  TRes call({
    Query$ApplicationTypeCollection$applicationTypeCollection?
        applicationTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<TRes>
      get applicationTypeCollection;
}

class _CopyWithImpl$Query$ApplicationTypeCollection<TRes>
    implements CopyWith$Query$ApplicationTypeCollection<TRes> {
  _CopyWithImpl$Query$ApplicationTypeCollection(
    this._instance,
    this._then,
  );

  final Query$ApplicationTypeCollection _instance;

  final TRes Function(Query$ApplicationTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? applicationTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationTypeCollection(
        applicationTypeCollection: applicationTypeCollection == _undefined
            ? _instance.applicationTypeCollection
            : (applicationTypeCollection
                as Query$ApplicationTypeCollection$applicationTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<TRes>
      get applicationTypeCollection {
    final local$applicationTypeCollection = _instance.applicationTypeCollection;
    return local$applicationTypeCollection == null
        ? CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection
            .stub(_then(_instance))
        : CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection(
            local$applicationTypeCollection,
            (e) => call(applicationTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$ApplicationTypeCollection<TRes>
    implements CopyWith$Query$ApplicationTypeCollection<TRes> {
  _CopyWithStubImpl$Query$ApplicationTypeCollection(this._res);

  TRes _res;

  call({
    Query$ApplicationTypeCollection$applicationTypeCollection?
        applicationTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<TRes>
      get applicationTypeCollection =>
          CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection
              .stub(_res);
}

const documentNodeQueryApplicationTypeCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ApplicationTypeCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ApplicationTypeFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ApplicationTypeOrderBy'),
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
          name: NameNode(value: 'Cursor'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
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
        name: NameNode(value: 'applicationTypeCollection'),
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
                    name: NameNode(value: 'ApplicationType'),
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
  fragmentDefinitionApplicationType,
]);
Query$ApplicationTypeCollection _parserFn$Query$ApplicationTypeCollection(
        Map<String, dynamic> data) =>
    Query$ApplicationTypeCollection.fromJson(data);
typedef OnQueryComplete$Query$ApplicationTypeCollection = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$ApplicationTypeCollection?,
);

class Options$Query$ApplicationTypeCollection
    extends graphql.QueryOptions<Query$ApplicationTypeCollection> {
  Options$Query$ApplicationTypeCollection({
    String? operationName,
    Variables$Query$ApplicationTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApplicationTypeCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ApplicationTypeCollection? onComplete,
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
                        : _parserFn$Query$ApplicationTypeCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryApplicationTypeCollection,
          parserFn: _parserFn$Query$ApplicationTypeCollection,
        );

  final OnQueryComplete$Query$ApplicationTypeCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ApplicationTypeCollection
    extends graphql.WatchQueryOptions<Query$ApplicationTypeCollection> {
  WatchOptions$Query$ApplicationTypeCollection({
    String? operationName,
    Variables$Query$ApplicationTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ApplicationTypeCollection? typedOptimisticResult,
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
          document: documentNodeQueryApplicationTypeCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ApplicationTypeCollection,
        );
}

class FetchMoreOptions$Query$ApplicationTypeCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ApplicationTypeCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ApplicationTypeCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryApplicationTypeCollection,
        );
}

extension ClientExtension$Query$ApplicationTypeCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ApplicationTypeCollection>>
      query$ApplicationTypeCollection(
              [Options$Query$ApplicationTypeCollection? options]) async =>
          await this
              .query(options ?? Options$Query$ApplicationTypeCollection());
  graphql.ObservableQuery<Query$ApplicationTypeCollection>
      watchQuery$ApplicationTypeCollection(
              [WatchOptions$Query$ApplicationTypeCollection? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$ApplicationTypeCollection());
  void writeQuery$ApplicationTypeCollection({
    required Query$ApplicationTypeCollection data,
    Variables$Query$ApplicationTypeCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryApplicationTypeCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ApplicationTypeCollection? readQuery$ApplicationTypeCollection({
    Variables$Query$ApplicationTypeCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryApplicationTypeCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ApplicationTypeCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ApplicationTypeCollection>
    useQuery$ApplicationTypeCollection(
            [Options$Query$ApplicationTypeCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$ApplicationTypeCollection());
graphql.ObservableQuery<Query$ApplicationTypeCollection>
    useWatchQuery$ApplicationTypeCollection(
            [WatchOptions$Query$ApplicationTypeCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$ApplicationTypeCollection());

class Query$ApplicationTypeCollection$Widget
    extends graphql_flutter.Query<Query$ApplicationTypeCollection> {
  Query$ApplicationTypeCollection$Widget({
    widgets.Key? key,
    Options$Query$ApplicationTypeCollection? options,
    required graphql_flutter.QueryBuilder<Query$ApplicationTypeCollection>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ApplicationTypeCollection(),
          builder: builder,
        );
}

class Query$ApplicationTypeCollection$applicationTypeCollection {
  Query$ApplicationTypeCollection$applicationTypeCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ApplicationTypeConnection',
  });

  factory Query$ApplicationTypeCollection$applicationTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationTypeCollection$applicationTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$ApplicationTypeCollection$applicationTypeCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ApplicationTypeCollection$applicationTypeCollection$edges>
      edges;

  final Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo
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
    if (!(other is Query$ApplicationTypeCollection$applicationTypeCollection) ||
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

extension UtilityExtension$Query$ApplicationTypeCollection$applicationTypeCollection
    on Query$ApplicationTypeCollection$applicationTypeCollection {
  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<
          Query$ApplicationTypeCollection$applicationTypeCollection>
      get copyWith =>
          CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<
    TRes> {
  factory CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection(
    Query$ApplicationTypeCollection$applicationTypeCollection instance,
    TRes Function(Query$ApplicationTypeCollection$applicationTypeCollection)
        then,
  ) = _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection;

  factory CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection;

  TRes call({
    List<Query$ApplicationTypeCollection$applicationTypeCollection$edges>?
        edges,
    Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ApplicationTypeCollection$applicationTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
                      Query$ApplicationTypeCollection$applicationTypeCollection$edges>>)
          _fn);
  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection<
        TRes>
    implements
        CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<
            TRes> {
  _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection(
    this._instance,
    this._then,
  );

  final Query$ApplicationTypeCollection$applicationTypeCollection _instance;

  final TRes Function(Query$ApplicationTypeCollection$applicationTypeCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationTypeCollection$applicationTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$ApplicationTypeCollection$applicationTypeCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ApplicationTypeCollection$applicationTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
                          Query$ApplicationTypeCollection$applicationTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection<
        TRes>
    implements
        CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection<
            TRes> {
  _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection(
      this._res);

  TRes _res;

  call({
    List<Query$ApplicationTypeCollection$applicationTypeCollection$edges>?
        edges,
    Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo
              .stub(_res);
}

class Query$ApplicationTypeCollection$applicationTypeCollection$edges {
  Query$ApplicationTypeCollection$applicationTypeCollection$edges({
    required this.node,
    this.$__typename = 'ApplicationTypeEdge',
  });

  factory Query$ApplicationTypeCollection$applicationTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationTypeCollection$applicationTypeCollection$edges(
      node: Fragment$ApplicationType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ApplicationType node;

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
            is Query$ApplicationTypeCollection$applicationTypeCollection$edges) ||
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

extension UtilityExtension$Query$ApplicationTypeCollection$applicationTypeCollection$edges
    on Query$ApplicationTypeCollection$applicationTypeCollection$edges {
  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
          Query$ApplicationTypeCollection$applicationTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges(
    Query$ApplicationTypeCollection$applicationTypeCollection$edges instance,
    TRes Function(
            Query$ApplicationTypeCollection$applicationTypeCollection$edges)
        then,
  ) = _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection$edges;

  factory CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection$edges;

  TRes call({
    Fragment$ApplicationType? node,
    String? $__typename,
  });
  CopyWith$Fragment$ApplicationType<TRes> get node;
}

class _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
            TRes> {
  _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ApplicationTypeCollection$applicationTypeCollection$edges
      _instance;

  final TRes Function(
      Query$ApplicationTypeCollection$applicationTypeCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationTypeCollection$applicationTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ApplicationType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ApplicationType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ApplicationType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ApplicationType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ApplicationType<TRes> get node =>
      CopyWith$Fragment$ApplicationType.stub(_res);
}

class Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo {
  Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
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
            is Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo) ||
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

extension UtilityExtension$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo
    on Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo {
  CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
          Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
    Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo instance,
    TRes Function(
            Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo;

  factory CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo
      _instance;

  final TRes Function(
      Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$ApplicationTypeCollection$applicationTypeCollection$pageInfo(
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
