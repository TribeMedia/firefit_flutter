import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$Organization {
  Fragment$Organization({
    required this.id,
    required this.organizationTypeId,
    required this.organizationType,
    required this.name,
    this.description,
    this.iconUrl,
    this.coverUrl,
    required this.createdAt,
    this.$__typename = 'Organization',
  });

  factory Fragment$Organization.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$organizationTypeId = json['organizationTypeId'];
    final l$organizationType = json['organizationType'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Organization(
      id: (l$id as String),
      organizationTypeId: (l$organizationTypeId as String),
      organizationType: Fragment$OrganizationType.fromJson(
          (l$organizationType as Map<String, dynamic>)),
      name: (l$name as String),
      description: (l$description as String?),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String organizationTypeId;

  final Fragment$OrganizationType organizationType;

  final String name;

  final String? description;

  final String? iconUrl;

  final String? coverUrl;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$organizationTypeId = organizationTypeId;
    _resultData['organizationTypeId'] = l$organizationTypeId;
    final l$organizationType = organizationType;
    _resultData['organizationType'] = l$organizationType.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$organizationTypeId = organizationTypeId;
    final l$organizationType = organizationType;
    final l$name = name;
    final l$description = description;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$organizationTypeId,
      l$organizationType,
      l$name,
      l$description,
      l$iconUrl,
      l$coverUrl,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Organization) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$organizationTypeId = organizationTypeId;
    final lOther$organizationTypeId = other.organizationTypeId;
    if (l$organizationTypeId != lOther$organizationTypeId) {
      return false;
    }
    final l$organizationType = organizationType;
    final lOther$organizationType = other.organizationType;
    if (l$organizationType != lOther$organizationType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Fragment$Organization on Fragment$Organization {
  CopyWith$Fragment$Organization<Fragment$Organization> get copyWith =>
      CopyWith$Fragment$Organization(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Organization<TRes> {
  factory CopyWith$Fragment$Organization(
    Fragment$Organization instance,
    TRes Function(Fragment$Organization) then,
  ) = _CopyWithImpl$Fragment$Organization;

  factory CopyWith$Fragment$Organization.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Organization;

  TRes call({
    String? id,
    String? organizationTypeId,
    Fragment$OrganizationType? organizationType,
    String? name,
    String? description,
    String? iconUrl,
    String? coverUrl,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$OrganizationType<TRes> get organizationType;
}

class _CopyWithImpl$Fragment$Organization<TRes>
    implements CopyWith$Fragment$Organization<TRes> {
  _CopyWithImpl$Fragment$Organization(
    this._instance,
    this._then,
  );

  final Fragment$Organization _instance;

  final TRes Function(Fragment$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? organizationTypeId = _undefined,
    Object? organizationType = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Organization(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        organizationTypeId:
            organizationTypeId == _undefined || organizationTypeId == null
                ? _instance.organizationTypeId
                : (organizationTypeId as String),
        organizationType:
            organizationType == _undefined || organizationType == null
                ? _instance.organizationType
                : (organizationType as Fragment$OrganizationType),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrganizationType<TRes> get organizationType {
    final local$organizationType = _instance.organizationType;
    return CopyWith$Fragment$OrganizationType(
        local$organizationType, (e) => call(organizationType: e));
  }
}

class _CopyWithStubImpl$Fragment$Organization<TRes>
    implements CopyWith$Fragment$Organization<TRes> {
  _CopyWithStubImpl$Fragment$Organization(this._res);

  TRes _res;

  call({
    String? id,
    String? organizationTypeId,
    Fragment$OrganizationType? organizationType,
    String? name,
    String? description,
    String? iconUrl,
    String? coverUrl,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrganizationType<TRes> get organizationType =>
      CopyWith$Fragment$OrganizationType.stub(_res);
}

const fragmentDefinitionOrganization = FragmentDefinitionNode(
  name: NameNode(value: 'Organization'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Organization'),
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
      name: NameNode(value: 'organizationTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'organizationType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'OrganizationType'),
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
      name: NameNode(value: 'description'),
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
const documentNodeFragmentOrganization = DocumentNode(definitions: [
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);

extension ClientExtension$Fragment$Organization on graphql.GraphQLClient {
  void writeFragment$Organization({
    required Fragment$Organization data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Organization',
            document: documentNodeFragmentOrganization,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Organization? readFragment$Organization({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Organization',
          document: documentNodeFragmentOrganization,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Organization.fromJson(result);
  }
}

class Fragment$OrganizationType {
  Fragment$OrganizationType({
    required this.id,
    required this.name,
    this.schema,
    required this.key,
    this.iconUrl,
    this.coverUrl,
    required this.createdAt,
    this.$__typename = 'OrganizationType',
  });

  factory Fragment$OrganizationType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$schema = json['schema'];
    final l$key = json['key'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$OrganizationType(
      id: (l$id as String),
      name: (l$name as String),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      key: (l$key as String),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Map<String, dynamic>? schema;

  final String key;

  final String? iconUrl;

  final String? coverUrl;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$schema = schema;
    _resultData['schema'] = l$schema == null ? null : jsonFieldToJson(l$schema);
    final l$key = key;
    _resultData['key'] = l$key;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
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
    final l$schema = schema;
    final l$key = key;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$schema,
      l$key,
      l$iconUrl,
      l$coverUrl,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$OrganizationType) ||
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
    final l$schema = schema;
    final lOther$schema = other.schema;
    if (l$schema != lOther$schema) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
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

extension UtilityExtension$Fragment$OrganizationType
    on Fragment$OrganizationType {
  CopyWith$Fragment$OrganizationType<Fragment$OrganizationType> get copyWith =>
      CopyWith$Fragment$OrganizationType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$OrganizationType<TRes> {
  factory CopyWith$Fragment$OrganizationType(
    Fragment$OrganizationType instance,
    TRes Function(Fragment$OrganizationType) then,
  ) = _CopyWithImpl$Fragment$OrganizationType;

  factory CopyWith$Fragment$OrganizationType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrganizationType;

  TRes call({
    String? id,
    String? name,
    Map<String, dynamic>? schema,
    String? key,
    String? iconUrl,
    String? coverUrl,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$OrganizationType<TRes>
    implements CopyWith$Fragment$OrganizationType<TRes> {
  _CopyWithImpl$Fragment$OrganizationType(
    this._instance,
    this._then,
  );

  final Fragment$OrganizationType _instance;

  final TRes Function(Fragment$OrganizationType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? schema = _undefined,
    Object? key = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrganizationType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$OrganizationType<TRes>
    implements CopyWith$Fragment$OrganizationType<TRes> {
  _CopyWithStubImpl$Fragment$OrganizationType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Map<String, dynamic>? schema,
    String? key,
    String? iconUrl,
    String? coverUrl,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionOrganizationType = FragmentDefinitionNode(
  name: NameNode(value: 'OrganizationType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrganizationType'),
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
      name: NameNode(value: 'schema'),
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
const documentNodeFragmentOrganizationType = DocumentNode(definitions: [
  fragmentDefinitionOrganizationType,
]);

extension ClientExtension$Fragment$OrganizationType on graphql.GraphQLClient {
  void writeFragment$OrganizationType({
    required Fragment$OrganizationType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OrganizationType',
            document: documentNodeFragmentOrganizationType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OrganizationType? readFragment$OrganizationType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OrganizationType',
          document: documentNodeFragmentOrganizationType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OrganizationType.fromJson(result);
  }
}

class Variables$Query$OrganizationCollection {
  factory Variables$Query$OrganizationCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrganizationFilter? filter,
    List<Input$OrganizationOrderBy>? orderBy,
  }) =>
      Variables$Query$OrganizationCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$OrganizationCollection._(this._$data);

  factory Variables$Query$OrganizationCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
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
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$OrganizationFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$OrganizationOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$OrganizationCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$OrganizationFilter? get filter =>
      (_$data['filter'] as Input$OrganizationFilter?);

  List<Input$OrganizationOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$OrganizationOrderBy>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
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
    if (_$data.containsKey('filter')) {
      final l$filter = filter;
      result$data['filter'] = l$filter?.toJson();
    }
    if (_$data.containsKey('orderBy')) {
      final l$orderBy = orderBy;
      result$data['orderBy'] = l$orderBy?.map((e) => e.toJson()).toList();
    }
    return result$data;
  }

  CopyWith$Variables$Query$OrganizationCollection<
          Variables$Query$OrganizationCollection>
      get copyWith => CopyWith$Variables$Query$OrganizationCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$OrganizationCollection) ||
        runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    final l$last = last;
    final l$before = before;
    final l$after = after;
    final l$filter = filter;
    final l$orderBy = orderBy;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$OrganizationCollection<TRes> {
  factory CopyWith$Variables$Query$OrganizationCollection(
    Variables$Query$OrganizationCollection instance,
    TRes Function(Variables$Query$OrganizationCollection) then,
  ) = _CopyWithImpl$Variables$Query$OrganizationCollection;

  factory CopyWith$Variables$Query$OrganizationCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrganizationCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrganizationFilter? filter,
    List<Input$OrganizationOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$OrganizationCollection<TRes>
    implements CopyWith$Variables$Query$OrganizationCollection<TRes> {
  _CopyWithImpl$Variables$Query$OrganizationCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$OrganizationCollection _instance;

  final TRes Function(Variables$Query$OrganizationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$OrganizationCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$OrganizationFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$OrganizationOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$OrganizationCollection<TRes>
    implements CopyWith$Variables$Query$OrganizationCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$OrganizationCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrganizationFilter? filter,
    List<Input$OrganizationOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$OrganizationCollection {
  Query$OrganizationCollection({
    this.organizationCollection,
    this.$__typename = 'Query',
  });

  factory Query$OrganizationCollection.fromJson(Map<String, dynamic> json) {
    final l$organizationCollection = json['organizationCollection'];
    final l$$__typename = json['__typename'];
    return Query$OrganizationCollection(
      organizationCollection: l$organizationCollection == null
          ? null
          : Query$OrganizationCollection$organizationCollection.fromJson(
              (l$organizationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrganizationCollection$organizationCollection?
      organizationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$organizationCollection = organizationCollection;
    _resultData['organizationCollection'] = l$organizationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$organizationCollection = organizationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$organizationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$OrganizationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$organizationCollection = organizationCollection;
    final lOther$organizationCollection = other.organizationCollection;
    if (l$organizationCollection != lOther$organizationCollection) {
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

extension UtilityExtension$Query$OrganizationCollection
    on Query$OrganizationCollection {
  CopyWith$Query$OrganizationCollection<Query$OrganizationCollection>
      get copyWith => CopyWith$Query$OrganizationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrganizationCollection<TRes> {
  factory CopyWith$Query$OrganizationCollection(
    Query$OrganizationCollection instance,
    TRes Function(Query$OrganizationCollection) then,
  ) = _CopyWithImpl$Query$OrganizationCollection;

  factory CopyWith$Query$OrganizationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$OrganizationCollection;

  TRes call({
    Query$OrganizationCollection$organizationCollection? organizationCollection,
    String? $__typename,
  });
  CopyWith$Query$OrganizationCollection$organizationCollection<TRes>
      get organizationCollection;
}

class _CopyWithImpl$Query$OrganizationCollection<TRes>
    implements CopyWith$Query$OrganizationCollection<TRes> {
  _CopyWithImpl$Query$OrganizationCollection(
    this._instance,
    this._then,
  );

  final Query$OrganizationCollection _instance;

  final TRes Function(Query$OrganizationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? organizationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrganizationCollection(
        organizationCollection: organizationCollection == _undefined
            ? _instance.organizationCollection
            : (organizationCollection
                as Query$OrganizationCollection$organizationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$OrganizationCollection$organizationCollection<TRes>
      get organizationCollection {
    final local$organizationCollection = _instance.organizationCollection;
    return local$organizationCollection == null
        ? CopyWith$Query$OrganizationCollection$organizationCollection.stub(
            _then(_instance))
        : CopyWith$Query$OrganizationCollection$organizationCollection(
            local$organizationCollection,
            (e) => call(organizationCollection: e));
  }
}

class _CopyWithStubImpl$Query$OrganizationCollection<TRes>
    implements CopyWith$Query$OrganizationCollection<TRes> {
  _CopyWithStubImpl$Query$OrganizationCollection(this._res);

  TRes _res;

  call({
    Query$OrganizationCollection$organizationCollection? organizationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$OrganizationCollection$organizationCollection<TRes>
      get organizationCollection =>
          CopyWith$Query$OrganizationCollection$organizationCollection.stub(
              _res);
}

const documentNodeQueryOrganizationCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'OrganizationCollection'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrganizationFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'OrganizationOrderBy'),
            isNonNull: true,
          ),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'organizationCollection'),
        alias: null,
        arguments: [
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
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'orderBy'),
            value: VariableNode(name: NameNode(value: 'orderBy')),
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
                    name: NameNode(value: 'Organization'),
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
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasPreviousPage'),
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
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);
Query$OrganizationCollection _parserFn$Query$OrganizationCollection(
        Map<String, dynamic> data) =>
    Query$OrganizationCollection.fromJson(data);
typedef OnQueryComplete$Query$OrganizationCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$OrganizationCollection?,
);

class Options$Query$OrganizationCollection
    extends graphql.QueryOptions<Query$OrganizationCollection> {
  Options$Query$OrganizationCollection({
    String? operationName,
    Variables$Query$OrganizationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrganizationCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrganizationCollection? onComplete,
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
                        : _parserFn$Query$OrganizationCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrganizationCollection,
          parserFn: _parserFn$Query$OrganizationCollection,
        );

  final OnQueryComplete$Query$OrganizationCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$OrganizationCollection
    extends graphql.WatchQueryOptions<Query$OrganizationCollection> {
  WatchOptions$Query$OrganizationCollection({
    String? operationName,
    Variables$Query$OrganizationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrganizationCollection? typedOptimisticResult,
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
          document: documentNodeQueryOrganizationCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$OrganizationCollection,
        );
}

class FetchMoreOptions$Query$OrganizationCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrganizationCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$OrganizationCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryOrganizationCollection,
        );
}

extension ClientExtension$Query$OrganizationCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrganizationCollection>>
      query$OrganizationCollection(
              [Options$Query$OrganizationCollection? options]) async =>
          await this.query(options ?? Options$Query$OrganizationCollection());
  graphql.ObservableQuery<
      Query$OrganizationCollection> watchQuery$OrganizationCollection(
          [WatchOptions$Query$OrganizationCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$OrganizationCollection());
  void writeQuery$OrganizationCollection({
    required Query$OrganizationCollection data,
    Variables$Query$OrganizationCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryOrganizationCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$OrganizationCollection? readQuery$OrganizationCollection({
    Variables$Query$OrganizationCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryOrganizationCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$OrganizationCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrganizationCollection>
    useQuery$OrganizationCollection(
            [Options$Query$OrganizationCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$OrganizationCollection());
graphql.ObservableQuery<Query$OrganizationCollection>
    useWatchQuery$OrganizationCollection(
            [WatchOptions$Query$OrganizationCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$OrganizationCollection());

class Query$OrganizationCollection$Widget
    extends graphql_flutter.Query<Query$OrganizationCollection> {
  Query$OrganizationCollection$Widget({
    widgets.Key? key,
    Options$Query$OrganizationCollection? options,
    required graphql_flutter.QueryBuilder<Query$OrganizationCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$OrganizationCollection(),
          builder: builder,
        );
}

class Query$OrganizationCollection$organizationCollection {
  Query$OrganizationCollection$organizationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrganizationConnection',
  });

  factory Query$OrganizationCollection$organizationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$OrganizationCollection$organizationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$OrganizationCollection$organizationCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$OrganizationCollection$organizationCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$OrganizationCollection$organizationCollection$edges> edges;

  final Query$OrganizationCollection$organizationCollection$pageInfo pageInfo;

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
    if (!(other is Query$OrganizationCollection$organizationCollection) ||
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

extension UtilityExtension$Query$OrganizationCollection$organizationCollection
    on Query$OrganizationCollection$organizationCollection {
  CopyWith$Query$OrganizationCollection$organizationCollection<
          Query$OrganizationCollection$organizationCollection>
      get copyWith =>
          CopyWith$Query$OrganizationCollection$organizationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrganizationCollection$organizationCollection<
    TRes> {
  factory CopyWith$Query$OrganizationCollection$organizationCollection(
    Query$OrganizationCollection$organizationCollection instance,
    TRes Function(Query$OrganizationCollection$organizationCollection) then,
  ) = _CopyWithImpl$Query$OrganizationCollection$organizationCollection;

  factory CopyWith$Query$OrganizationCollection$organizationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection;

  TRes call({
    List<Query$OrganizationCollection$organizationCollection$edges>? edges,
    Query$OrganizationCollection$organizationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$OrganizationCollection$organizationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$OrganizationCollection$organizationCollection$edges<
                      Query$OrganizationCollection$organizationCollection$edges>>)
          _fn);
  CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$OrganizationCollection$organizationCollection<TRes>
    implements
        CopyWith$Query$OrganizationCollection$organizationCollection<TRes> {
  _CopyWithImpl$Query$OrganizationCollection$organizationCollection(
    this._instance,
    this._then,
  );

  final Query$OrganizationCollection$organizationCollection _instance;

  final TRes Function(Query$OrganizationCollection$organizationCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrganizationCollection$organizationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$OrganizationCollection$organizationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$OrganizationCollection$organizationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$OrganizationCollection$organizationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$OrganizationCollection$organizationCollection$edges<
                          Query$OrganizationCollection$organizationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$OrganizationCollection$organizationCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection<
        TRes>
    implements
        CopyWith$Query$OrganizationCollection$organizationCollection<TRes> {
  _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection(
      this._res);

  TRes _res;

  call({
    List<Query$OrganizationCollection$organizationCollection$edges>? edges,
    Query$OrganizationCollection$organizationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo
              .stub(_res);
}

class Query$OrganizationCollection$organizationCollection$edges {
  Query$OrganizationCollection$organizationCollection$edges({
    required this.node,
    this.$__typename = 'OrganizationEdge',
  });

  factory Query$OrganizationCollection$organizationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$OrganizationCollection$organizationCollection$edges(
      node: Fragment$Organization.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Organization node;

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
    if (!(other is Query$OrganizationCollection$organizationCollection$edges) ||
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

extension UtilityExtension$Query$OrganizationCollection$organizationCollection$edges
    on Query$OrganizationCollection$organizationCollection$edges {
  CopyWith$Query$OrganizationCollection$organizationCollection$edges<
          Query$OrganizationCollection$organizationCollection$edges>
      get copyWith =>
          CopyWith$Query$OrganizationCollection$organizationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrganizationCollection$organizationCollection$edges<
    TRes> {
  factory CopyWith$Query$OrganizationCollection$organizationCollection$edges(
    Query$OrganizationCollection$organizationCollection$edges instance,
    TRes Function(Query$OrganizationCollection$organizationCollection$edges)
        then,
  ) = _CopyWithImpl$Query$OrganizationCollection$organizationCollection$edges;

  factory CopyWith$Query$OrganizationCollection$organizationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection$edges;

  TRes call({
    Fragment$Organization? node,
    String? $__typename,
  });
  CopyWith$Fragment$Organization<TRes> get node;
}

class _CopyWithImpl$Query$OrganizationCollection$organizationCollection$edges<
        TRes>
    implements
        CopyWith$Query$OrganizationCollection$organizationCollection$edges<
            TRes> {
  _CopyWithImpl$Query$OrganizationCollection$organizationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$OrganizationCollection$organizationCollection$edges _instance;

  final TRes Function(Query$OrganizationCollection$organizationCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrganizationCollection$organizationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Organization),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Organization<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Organization(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection$edges<
        TRes>
    implements
        CopyWith$Query$OrganizationCollection$organizationCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$Organization? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Organization<TRes> get node =>
      CopyWith$Fragment$Organization.stub(_res);
}

class Query$OrganizationCollection$organizationCollection$pageInfo {
  Query$OrganizationCollection$organizationCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrganizationCollection$organizationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$OrganizationCollection$organizationCollection$pageInfo(
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? startCursor;

  final String? endCursor;

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$startCursor = startCursor;
    _resultData['startCursor'] = l$startCursor;
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$startCursor,
      l$endCursor,
      l$hasNextPage,
      l$hasPreviousPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Query$OrganizationCollection$organizationCollection$pageInfo) ||
        runtimeType != other.runtimeType) {
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
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$hasPreviousPage = hasPreviousPage;
    final lOther$hasPreviousPage = other.hasPreviousPage;
    if (l$hasPreviousPage != lOther$hasPreviousPage) {
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

extension UtilityExtension$Query$OrganizationCollection$organizationCollection$pageInfo
    on Query$OrganizationCollection$organizationCollection$pageInfo {
  CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<
          Query$OrganizationCollection$organizationCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo(
    Query$OrganizationCollection$organizationCollection$pageInfo instance,
    TRes Function(Query$OrganizationCollection$organizationCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$OrganizationCollection$organizationCollection$pageInfo;

  factory CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrganizationCollection$organizationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$OrganizationCollection$organizationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrganizationCollection$organizationCollection$pageInfo _instance;

  final TRes Function(
      Query$OrganizationCollection$organizationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrganizationCollection$organizationCollection$pageInfo(
        startCursor: startCursor == _undefined
            ? _instance.startCursor
            : (startCursor as String?),
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$OrganizationCollection$organizationCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$OrganizationCollection$organizationCollection$pageInfo(
      this._res);

  TRes _res;

  call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOrganization {
  factory Variables$Mutation$CreateOrganization(
          {required Input$OrganizationInsertInput input}) =>
      Variables$Mutation$CreateOrganization._({
        r'input': input,
      });

  Variables$Mutation$CreateOrganization._(this._$data);

  factory Variables$Mutation$CreateOrganization.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$OrganizationInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateOrganization._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrganizationInsertInput get input =>
      (_$data['input'] as Input$OrganizationInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrganization<
          Variables$Mutation$CreateOrganization>
      get copyWith => CopyWith$Variables$Mutation$CreateOrganization(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOrganization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrganization<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrganization(
    Variables$Mutation$CreateOrganization instance,
    TRes Function(Variables$Mutation$CreateOrganization) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrganization;

  factory CopyWith$Variables$Mutation$CreateOrganization.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrganization;

  TRes call({Input$OrganizationInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateOrganization<TRes>
    implements CopyWith$Variables$Mutation$CreateOrganization<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrganization(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrganization _instance;

  final TRes Function(Variables$Mutation$CreateOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateOrganization._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$OrganizationInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrganization<TRes>
    implements CopyWith$Variables$Mutation$CreateOrganization<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrganization(this._res);

  TRes _res;

  call({Input$OrganizationInsertInput? input}) => _res;
}

class Mutation$CreateOrganization {
  Mutation$CreateOrganization({
    this.insertIntoOrganizationCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrganization.fromJson(Map<String, dynamic> json) {
    final l$insertIntoOrganizationCollection =
        json['insertIntoOrganizationCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrganization(
      insertIntoOrganizationCollection: l$insertIntoOrganizationCollection ==
              null
          ? null
          : Mutation$CreateOrganization$insertIntoOrganizationCollection
              .fromJson(
                  (l$insertIntoOrganizationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrganization$insertIntoOrganizationCollection?
      insertIntoOrganizationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoOrganizationCollection = insertIntoOrganizationCollection;
    _resultData['insertIntoOrganizationCollection'] =
        l$insertIntoOrganizationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoOrganizationCollection = insertIntoOrganizationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoOrganizationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOrganization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoOrganizationCollection = insertIntoOrganizationCollection;
    final lOther$insertIntoOrganizationCollection =
        other.insertIntoOrganizationCollection;
    if (l$insertIntoOrganizationCollection !=
        lOther$insertIntoOrganizationCollection) {
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

extension UtilityExtension$Mutation$CreateOrganization
    on Mutation$CreateOrganization {
  CopyWith$Mutation$CreateOrganization<Mutation$CreateOrganization>
      get copyWith => CopyWith$Mutation$CreateOrganization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrganization<TRes> {
  factory CopyWith$Mutation$CreateOrganization(
    Mutation$CreateOrganization instance,
    TRes Function(Mutation$CreateOrganization) then,
  ) = _CopyWithImpl$Mutation$CreateOrganization;

  factory CopyWith$Mutation$CreateOrganization.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrganization;

  TRes call({
    Mutation$CreateOrganization$insertIntoOrganizationCollection?
        insertIntoOrganizationCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<TRes>
      get insertIntoOrganizationCollection;
}

class _CopyWithImpl$Mutation$CreateOrganization<TRes>
    implements CopyWith$Mutation$CreateOrganization<TRes> {
  _CopyWithImpl$Mutation$CreateOrganization(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrganization _instance;

  final TRes Function(Mutation$CreateOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoOrganizationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrganization(
        insertIntoOrganizationCollection: insertIntoOrganizationCollection ==
                _undefined
            ? _instance.insertIntoOrganizationCollection
            : (insertIntoOrganizationCollection
                as Mutation$CreateOrganization$insertIntoOrganizationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<TRes>
      get insertIntoOrganizationCollection {
    final local$insertIntoOrganizationCollection =
        _instance.insertIntoOrganizationCollection;
    return local$insertIntoOrganizationCollection == null
        ? CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection(
            local$insertIntoOrganizationCollection,
            (e) => call(insertIntoOrganizationCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrganization<TRes>
    implements CopyWith$Mutation$CreateOrganization<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrganization(this._res);

  TRes _res;

  call({
    Mutation$CreateOrganization$insertIntoOrganizationCollection?
        insertIntoOrganizationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<TRes>
      get insertIntoOrganizationCollection =>
          CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection
              .stub(_res);
}

const documentNodeMutationCreateOrganization = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrganization'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrganizationInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoOrganizationCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: ListValueNode(
                values: [VariableNode(name: NameNode(value: 'input'))]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'records'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Organization'),
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
            name: NameNode(value: 'affectedCount'),
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
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);
Mutation$CreateOrganization _parserFn$Mutation$CreateOrganization(
        Map<String, dynamic> data) =>
    Mutation$CreateOrganization.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrganization = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateOrganization?,
);

class Options$Mutation$CreateOrganization
    extends graphql.MutationOptions<Mutation$CreateOrganization> {
  Options$Mutation$CreateOrganization({
    String? operationName,
    required Variables$Mutation$CreateOrganization variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrganization? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrganization? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrganization>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOrganization(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrganization,
          parserFn: _parserFn$Mutation$CreateOrganization,
        );

  final OnMutationCompleted$Mutation$CreateOrganization? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrganization
    extends graphql.WatchQueryOptions<Mutation$CreateOrganization> {
  WatchOptions$Mutation$CreateOrganization({
    String? operationName,
    required Variables$Mutation$CreateOrganization variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrganization? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrganization,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrganization,
        );
}

extension ClientExtension$Mutation$CreateOrganization on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrganization>>
      mutate$CreateOrganization(
              Options$Mutation$CreateOrganization options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrganization>
      watchMutation$CreateOrganization(
              WatchOptions$Mutation$CreateOrganization options) =>
          this.watchMutation(options);
}

class Mutation$CreateOrganization$HookResult {
  Mutation$CreateOrganization$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrganization runMutation;

  final graphql.QueryResult<Mutation$CreateOrganization> result;
}

Mutation$CreateOrganization$HookResult useMutation$CreateOrganization(
    [WidgetOptions$Mutation$CreateOrganization? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrganization());
  return Mutation$CreateOrganization$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrganization>
    useWatchMutation$CreateOrganization(
            WatchOptions$Mutation$CreateOrganization options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrganization
    extends graphql.MutationOptions<Mutation$CreateOrganization> {
  WidgetOptions$Mutation$CreateOrganization({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrganization? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrganization? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrganization>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$CreateOrganization(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrganization,
          parserFn: _parserFn$Mutation$CreateOrganization,
        );

  final OnMutationCompleted$Mutation$CreateOrganization? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrganization
    = graphql.MultiSourceResult<Mutation$CreateOrganization> Function(
  Variables$Mutation$CreateOrganization, {
  Object? optimisticResult,
  Mutation$CreateOrganization? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrganization = widgets.Widget Function(
  RunMutation$Mutation$CreateOrganization,
  graphql.QueryResult<Mutation$CreateOrganization>?,
);

class Mutation$CreateOrganization$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrganization> {
  Mutation$CreateOrganization$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrganization? options,
    required Builder$Mutation$CreateOrganization builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrganization(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateOrganization$insertIntoOrganizationCollection {
  Mutation$CreateOrganization$insertIntoOrganizationCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrganizationInsertResponse',
  });

  factory Mutation$CreateOrganization$insertIntoOrganizationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrganization$insertIntoOrganizationCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$Organization.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Organization> records;

  final int affectedCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$records = records;
    final l$affectedCount = affectedCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$records.map((v) => v)),
      l$affectedCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$CreateOrganization$insertIntoOrganizationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$records = records;
    final lOther$records = other.records;
    if (l$records.length != lOther$records.length) {
      return false;
    }
    for (int i = 0; i < l$records.length; i++) {
      final l$records$entry = l$records[i];
      final lOther$records$entry = lOther$records[i];
      if (l$records$entry != lOther$records$entry) {
        return false;
      }
    }
    final l$affectedCount = affectedCount;
    final lOther$affectedCount = other.affectedCount;
    if (l$affectedCount != lOther$affectedCount) {
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

extension UtilityExtension$Mutation$CreateOrganization$insertIntoOrganizationCollection
    on Mutation$CreateOrganization$insertIntoOrganizationCollection {
  CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<
          Mutation$CreateOrganization$insertIntoOrganizationCollection>
      get copyWith =>
          CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<
    TRes> {
  factory CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection(
    Mutation$CreateOrganization$insertIntoOrganizationCollection instance,
    TRes Function(Mutation$CreateOrganization$insertIntoOrganizationCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateOrganization$insertIntoOrganizationCollection;

  factory CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrganization$insertIntoOrganizationCollection;

  TRes call({
    List<Fragment$Organization>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Organization> Function(
              Iterable<CopyWith$Fragment$Organization<Fragment$Organization>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateOrganization$insertIntoOrganizationCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateOrganization$insertIntoOrganizationCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrganization$insertIntoOrganizationCollection _instance;

  final TRes Function(
      Mutation$CreateOrganization$insertIntoOrganizationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrganization$insertIntoOrganizationCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Organization>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Organization> Function(
                  Iterable<
                      CopyWith$Fragment$Organization<Fragment$Organization>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$Organization(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateOrganization$insertIntoOrganizationCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateOrganization$insertIntoOrganizationCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateOrganization$insertIntoOrganizationCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Organization>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateOrganization {
  factory Variables$Mutation$UpdateOrganization({
    required String id,
    required Input$OrganizationUpdateInput organization,
  }) =>
      Variables$Mutation$UpdateOrganization._({
        r'id': id,
        r'organization': organization,
      });

  Variables$Mutation$UpdateOrganization._(this._$data);

  factory Variables$Mutation$UpdateOrganization.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$organization = data['organization'];
    result$data['organization'] = Input$OrganizationUpdateInput.fromJson(
        (l$organization as Map<String, dynamic>));
    return Variables$Mutation$UpdateOrganization._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$OrganizationUpdateInput get organization =>
      (_$data['organization'] as Input$OrganizationUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$organization = organization;
    result$data['organization'] = l$organization.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrganization<
          Variables$Mutation$UpdateOrganization>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrganization(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateOrganization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$organization = organization;
    final lOther$organization = other.organization;
    if (l$organization != lOther$organization) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$organization = organization;
    return Object.hashAll([
      l$id,
      l$organization,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOrganization<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrganization(
    Variables$Mutation$UpdateOrganization instance,
    TRes Function(Variables$Mutation$UpdateOrganization) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrganization;

  factory CopyWith$Variables$Mutation$UpdateOrganization.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrganization;

  TRes call({
    String? id,
    Input$OrganizationUpdateInput? organization,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrganization<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrganization<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrganization(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrganization _instance;

  final TRes Function(Variables$Mutation$UpdateOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? organization = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrganization._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (organization != _undefined && organization != null)
          'organization': (organization as Input$OrganizationUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrganization<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrganization<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrganization(this._res);

  TRes _res;

  call({
    String? id,
    Input$OrganizationUpdateInput? organization,
  }) =>
      _res;
}

class Mutation$UpdateOrganization {
  Mutation$UpdateOrganization({
    required this.updateOrganizationCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOrganization.fromJson(Map<String, dynamic> json) {
    final l$updateOrganizationCollection = json['updateOrganizationCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrganization(
      updateOrganizationCollection:
          Mutation$UpdateOrganization$updateOrganizationCollection.fromJson(
              (l$updateOrganizationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOrganization$updateOrganizationCollection
      updateOrganizationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOrganizationCollection = updateOrganizationCollection;
    _resultData['updateOrganizationCollection'] =
        l$updateOrganizationCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOrganizationCollection = updateOrganizationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOrganizationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrganization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOrganizationCollection = updateOrganizationCollection;
    final lOther$updateOrganizationCollection =
        other.updateOrganizationCollection;
    if (l$updateOrganizationCollection != lOther$updateOrganizationCollection) {
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

extension UtilityExtension$Mutation$UpdateOrganization
    on Mutation$UpdateOrganization {
  CopyWith$Mutation$UpdateOrganization<Mutation$UpdateOrganization>
      get copyWith => CopyWith$Mutation$UpdateOrganization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrganization<TRes> {
  factory CopyWith$Mutation$UpdateOrganization(
    Mutation$UpdateOrganization instance,
    TRes Function(Mutation$UpdateOrganization) then,
  ) = _CopyWithImpl$Mutation$UpdateOrganization;

  factory CopyWith$Mutation$UpdateOrganization.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrganization;

  TRes call({
    Mutation$UpdateOrganization$updateOrganizationCollection?
        updateOrganizationCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<TRes>
      get updateOrganizationCollection;
}

class _CopyWithImpl$Mutation$UpdateOrganization<TRes>
    implements CopyWith$Mutation$UpdateOrganization<TRes> {
  _CopyWithImpl$Mutation$UpdateOrganization(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrganization _instance;

  final TRes Function(Mutation$UpdateOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOrganizationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrganization(
        updateOrganizationCollection: updateOrganizationCollection ==
                    _undefined ||
                updateOrganizationCollection == null
            ? _instance.updateOrganizationCollection
            : (updateOrganizationCollection
                as Mutation$UpdateOrganization$updateOrganizationCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<TRes>
      get updateOrganizationCollection {
    final local$updateOrganizationCollection =
        _instance.updateOrganizationCollection;
    return CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection(
        local$updateOrganizationCollection,
        (e) => call(updateOrganizationCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrganization<TRes>
    implements CopyWith$Mutation$UpdateOrganization<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrganization(this._res);

  TRes _res;

  call({
    Mutation$UpdateOrganization$updateOrganizationCollection?
        updateOrganizationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<TRes>
      get updateOrganizationCollection =>
          CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection
              .stub(_res);
}

const documentNodeMutationUpdateOrganization = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrganization'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'organization')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrganizationUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOrganizationCollection'),
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
          ),
          ArgumentNode(
            name: NameNode(value: 'set'),
            value: VariableNode(name: NameNode(value: 'organization')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'records'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Organization'),
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
            name: NameNode(value: 'affectedCount'),
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
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);
Mutation$UpdateOrganization _parserFn$Mutation$UpdateOrganization(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrganization.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrganization = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrganization?,
);

class Options$Mutation$UpdateOrganization
    extends graphql.MutationOptions<Mutation$UpdateOrganization> {
  Options$Mutation$UpdateOrganization({
    String? operationName,
    required Variables$Mutation$UpdateOrganization variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrganization? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrganization? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrganization>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOrganization(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrganization,
          parserFn: _parserFn$Mutation$UpdateOrganization,
        );

  final OnMutationCompleted$Mutation$UpdateOrganization? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrganization
    extends graphql.WatchQueryOptions<Mutation$UpdateOrganization> {
  WatchOptions$Mutation$UpdateOrganization({
    String? operationName,
    required Variables$Mutation$UpdateOrganization variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrganization? typedOptimisticResult,
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
          document: documentNodeMutationUpdateOrganization,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrganization,
        );
}

extension ClientExtension$Mutation$UpdateOrganization on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrganization>>
      mutate$UpdateOrganization(
              Options$Mutation$UpdateOrganization options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrganization>
      watchMutation$UpdateOrganization(
              WatchOptions$Mutation$UpdateOrganization options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOrganization$HookResult {
  Mutation$UpdateOrganization$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateOrganization runMutation;

  final graphql.QueryResult<Mutation$UpdateOrganization> result;
}

Mutation$UpdateOrganization$HookResult useMutation$UpdateOrganization(
    [WidgetOptions$Mutation$UpdateOrganization? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateOrganization());
  return Mutation$UpdateOrganization$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateOrganization>
    useWatchMutation$UpdateOrganization(
            WatchOptions$Mutation$UpdateOrganization options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateOrganization
    extends graphql.MutationOptions<Mutation$UpdateOrganization> {
  WidgetOptions$Mutation$UpdateOrganization({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrganization? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrganization? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrganization>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOrganization(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrganization,
          parserFn: _parserFn$Mutation$UpdateOrganization,
        );

  final OnMutationCompleted$Mutation$UpdateOrganization? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateOrganization
    = graphql.MultiSourceResult<Mutation$UpdateOrganization> Function(
  Variables$Mutation$UpdateOrganization, {
  Object? optimisticResult,
  Mutation$UpdateOrganization? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateOrganization = widgets.Widget Function(
  RunMutation$Mutation$UpdateOrganization,
  graphql.QueryResult<Mutation$UpdateOrganization>?,
);

class Mutation$UpdateOrganization$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateOrganization> {
  Mutation$UpdateOrganization$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateOrganization? options,
    required Builder$Mutation$UpdateOrganization builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateOrganization(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$UpdateOrganization$updateOrganizationCollection {
  Mutation$UpdateOrganization$updateOrganizationCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrganizationUpdateResponse',
  });

  factory Mutation$UpdateOrganization$updateOrganizationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrganization$updateOrganizationCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$Organization.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Organization> records;

  final int affectedCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$records = records;
    final l$affectedCount = affectedCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$records.map((v) => v)),
      l$affectedCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateOrganization$updateOrganizationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$records = records;
    final lOther$records = other.records;
    if (l$records.length != lOther$records.length) {
      return false;
    }
    for (int i = 0; i < l$records.length; i++) {
      final l$records$entry = l$records[i];
      final lOther$records$entry = lOther$records[i];
      if (l$records$entry != lOther$records$entry) {
        return false;
      }
    }
    final l$affectedCount = affectedCount;
    final lOther$affectedCount = other.affectedCount;
    if (l$affectedCount != lOther$affectedCount) {
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

extension UtilityExtension$Mutation$UpdateOrganization$updateOrganizationCollection
    on Mutation$UpdateOrganization$updateOrganizationCollection {
  CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<
          Mutation$UpdateOrganization$updateOrganizationCollection>
      get copyWith =>
          CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<
    TRes> {
  factory CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection(
    Mutation$UpdateOrganization$updateOrganizationCollection instance,
    TRes Function(Mutation$UpdateOrganization$updateOrganizationCollection)
        then,
  ) = _CopyWithImpl$Mutation$UpdateOrganization$updateOrganizationCollection;

  factory CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrganization$updateOrganizationCollection;

  TRes call({
    List<Fragment$Organization>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Organization> Function(
              Iterable<CopyWith$Fragment$Organization<Fragment$Organization>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateOrganization$updateOrganizationCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<
            TRes> {
  _CopyWithImpl$Mutation$UpdateOrganization$updateOrganizationCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrganization$updateOrganizationCollection _instance;

  final TRes Function(Mutation$UpdateOrganization$updateOrganizationCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrganization$updateOrganizationCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Organization>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Organization> Function(
                  Iterable<
                      CopyWith$Fragment$Organization<Fragment$Organization>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$Organization(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateOrganization$updateOrganizationCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrganization$updateOrganizationCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrganization$updateOrganizationCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Organization>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteOrganization {
  factory Variables$Mutation$DeleteOrganization({required String id}) =>
      Variables$Mutation$DeleteOrganization._({
        r'id': id,
      });

  Variables$Mutation$DeleteOrganization._(this._$data);

  factory Variables$Mutation$DeleteOrganization.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteOrganization._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOrganization<
          Variables$Mutation$DeleteOrganization>
      get copyWith => CopyWith$Variables$Mutation$DeleteOrganization(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteOrganization) ||
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

abstract class CopyWith$Variables$Mutation$DeleteOrganization<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOrganization(
    Variables$Mutation$DeleteOrganization instance,
    TRes Function(Variables$Mutation$DeleteOrganization) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOrganization;

  factory CopyWith$Variables$Mutation$DeleteOrganization.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOrganization;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteOrganization<TRes>
    implements CopyWith$Variables$Mutation$DeleteOrganization<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOrganization(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOrganization _instance;

  final TRes Function(Variables$Mutation$DeleteOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteOrganization._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOrganization<TRes>
    implements CopyWith$Variables$Mutation$DeleteOrganization<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOrganization(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteOrganization {
  Mutation$DeleteOrganization({
    required this.deleteFromOrganizationCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOrganization.fromJson(Map<String, dynamic> json) {
    final l$deleteFromOrganizationCollection =
        json['deleteFromOrganizationCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOrganization(
      deleteFromOrganizationCollection:
          Mutation$DeleteOrganization$deleteFromOrganizationCollection.fromJson(
              (l$deleteFromOrganizationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOrganization$deleteFromOrganizationCollection
      deleteFromOrganizationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromOrganizationCollection = deleteFromOrganizationCollection;
    _resultData['deleteFromOrganizationCollection'] =
        l$deleteFromOrganizationCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromOrganizationCollection = deleteFromOrganizationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromOrganizationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteOrganization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromOrganizationCollection = deleteFromOrganizationCollection;
    final lOther$deleteFromOrganizationCollection =
        other.deleteFromOrganizationCollection;
    if (l$deleteFromOrganizationCollection !=
        lOther$deleteFromOrganizationCollection) {
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

extension UtilityExtension$Mutation$DeleteOrganization
    on Mutation$DeleteOrganization {
  CopyWith$Mutation$DeleteOrganization<Mutation$DeleteOrganization>
      get copyWith => CopyWith$Mutation$DeleteOrganization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOrganization<TRes> {
  factory CopyWith$Mutation$DeleteOrganization(
    Mutation$DeleteOrganization instance,
    TRes Function(Mutation$DeleteOrganization) then,
  ) = _CopyWithImpl$Mutation$DeleteOrganization;

  factory CopyWith$Mutation$DeleteOrganization.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOrganization;

  TRes call({
    Mutation$DeleteOrganization$deleteFromOrganizationCollection?
        deleteFromOrganizationCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<TRes>
      get deleteFromOrganizationCollection;
}

class _CopyWithImpl$Mutation$DeleteOrganization<TRes>
    implements CopyWith$Mutation$DeleteOrganization<TRes> {
  _CopyWithImpl$Mutation$DeleteOrganization(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOrganization _instance;

  final TRes Function(Mutation$DeleteOrganization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromOrganizationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOrganization(
        deleteFromOrganizationCollection: deleteFromOrganizationCollection ==
                    _undefined ||
                deleteFromOrganizationCollection == null
            ? _instance.deleteFromOrganizationCollection
            : (deleteFromOrganizationCollection
                as Mutation$DeleteOrganization$deleteFromOrganizationCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<TRes>
      get deleteFromOrganizationCollection {
    final local$deleteFromOrganizationCollection =
        _instance.deleteFromOrganizationCollection;
    return CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection(
        local$deleteFromOrganizationCollection,
        (e) => call(deleteFromOrganizationCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOrganization<TRes>
    implements CopyWith$Mutation$DeleteOrganization<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOrganization(this._res);

  TRes _res;

  call({
    Mutation$DeleteOrganization$deleteFromOrganizationCollection?
        deleteFromOrganizationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<TRes>
      get deleteFromOrganizationCollection =>
          CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection
              .stub(_res);
}

const documentNodeMutationDeleteOrganization = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOrganization'),
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
        name: NameNode(value: 'deleteFromOrganizationCollection'),
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
            name: NameNode(value: 'records'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Organization'),
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
            name: NameNode(value: 'affectedCount'),
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
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
]);
Mutation$DeleteOrganization _parserFn$Mutation$DeleteOrganization(
        Map<String, dynamic> data) =>
    Mutation$DeleteOrganization.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOrganization = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteOrganization?,
);

class Options$Mutation$DeleteOrganization
    extends graphql.MutationOptions<Mutation$DeleteOrganization> {
  Options$Mutation$DeleteOrganization({
    String? operationName,
    required Variables$Mutation$DeleteOrganization variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrganization? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOrganization? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOrganization>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOrganization(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOrganization,
          parserFn: _parserFn$Mutation$DeleteOrganization,
        );

  final OnMutationCompleted$Mutation$DeleteOrganization? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOrganization
    extends graphql.WatchQueryOptions<Mutation$DeleteOrganization> {
  WatchOptions$Mutation$DeleteOrganization({
    String? operationName,
    required Variables$Mutation$DeleteOrganization variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrganization? typedOptimisticResult,
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
          document: documentNodeMutationDeleteOrganization,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOrganization,
        );
}

extension ClientExtension$Mutation$DeleteOrganization on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOrganization>>
      mutate$DeleteOrganization(
              Options$Mutation$DeleteOrganization options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOrganization>
      watchMutation$DeleteOrganization(
              WatchOptions$Mutation$DeleteOrganization options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOrganization$HookResult {
  Mutation$DeleteOrganization$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteOrganization runMutation;

  final graphql.QueryResult<Mutation$DeleteOrganization> result;
}

Mutation$DeleteOrganization$HookResult useMutation$DeleteOrganization(
    [WidgetOptions$Mutation$DeleteOrganization? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteOrganization());
  return Mutation$DeleteOrganization$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteOrganization>
    useWatchMutation$DeleteOrganization(
            WatchOptions$Mutation$DeleteOrganization options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteOrganization
    extends graphql.MutationOptions<Mutation$DeleteOrganization> {
  WidgetOptions$Mutation$DeleteOrganization({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrganization? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOrganization? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOrganization>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$DeleteOrganization(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOrganization,
          parserFn: _parserFn$Mutation$DeleteOrganization,
        );

  final OnMutationCompleted$Mutation$DeleteOrganization? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteOrganization
    = graphql.MultiSourceResult<Mutation$DeleteOrganization> Function(
  Variables$Mutation$DeleteOrganization, {
  Object? optimisticResult,
  Mutation$DeleteOrganization? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteOrganization = widgets.Widget Function(
  RunMutation$Mutation$DeleteOrganization,
  graphql.QueryResult<Mutation$DeleteOrganization>?,
);

class Mutation$DeleteOrganization$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteOrganization> {
  Mutation$DeleteOrganization$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteOrganization? options,
    required Builder$Mutation$DeleteOrganization builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteOrganization(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$DeleteOrganization$deleteFromOrganizationCollection {
  Mutation$DeleteOrganization$deleteFromOrganizationCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrganizationDeleteResponse',
  });

  factory Mutation$DeleteOrganization$deleteFromOrganizationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOrganization$deleteFromOrganizationCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$Organization.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Organization> records;

  final int affectedCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$records = records;
    final l$affectedCount = affectedCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$records.map((v) => v)),
      l$affectedCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Mutation$DeleteOrganization$deleteFromOrganizationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$records = records;
    final lOther$records = other.records;
    if (l$records.length != lOther$records.length) {
      return false;
    }
    for (int i = 0; i < l$records.length; i++) {
      final l$records$entry = l$records[i];
      final lOther$records$entry = lOther$records[i];
      if (l$records$entry != lOther$records$entry) {
        return false;
      }
    }
    final l$affectedCount = affectedCount;
    final lOther$affectedCount = other.affectedCount;
    if (l$affectedCount != lOther$affectedCount) {
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

extension UtilityExtension$Mutation$DeleteOrganization$deleteFromOrganizationCollection
    on Mutation$DeleteOrganization$deleteFromOrganizationCollection {
  CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<
          Mutation$DeleteOrganization$deleteFromOrganizationCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection(
    Mutation$DeleteOrganization$deleteFromOrganizationCollection instance,
    TRes Function(Mutation$DeleteOrganization$deleteFromOrganizationCollection)
        then,
  ) = _CopyWithImpl$Mutation$DeleteOrganization$deleteFromOrganizationCollection;

  factory CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOrganization$deleteFromOrganizationCollection;

  TRes call({
    List<Fragment$Organization>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Organization> Function(
              Iterable<CopyWith$Fragment$Organization<Fragment$Organization>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteOrganization$deleteFromOrganizationCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<
            TRes> {
  _CopyWithImpl$Mutation$DeleteOrganization$deleteFromOrganizationCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOrganization$deleteFromOrganizationCollection _instance;

  final TRes Function(
      Mutation$DeleteOrganization$deleteFromOrganizationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOrganization$deleteFromOrganizationCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Organization>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Organization> Function(
                  Iterable<
                      CopyWith$Fragment$Organization<Fragment$Organization>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$Organization(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteOrganization$deleteFromOrganizationCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteOrganization$deleteFromOrganizationCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteOrganization$deleteFromOrganizationCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Organization>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
