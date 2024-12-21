import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$ProviderType {
  Fragment$ProviderType({
    required this.id,
    required this.name,
    required this.key,
    this.description,
    this.iconUrl,
    this.coverUrl,
    this.schema,
    this.$__typename = 'ProviderType',
  });

  factory Fragment$ProviderType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$description = json['description'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$schema = json['schema'];
    final l$$__typename = json['__typename'];
    return Fragment$ProviderType(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      description: (l$description as String?),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

  final String? description;

  final String? iconUrl;

  final String? coverUrl;

  final Map<String, dynamic>? schema;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$schema = schema;
    _resultData['schema'] = l$schema == null ? null : jsonFieldToJson(l$schema);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$key = key;
    final l$description = description;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$schema = schema;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$description,
      l$iconUrl,
      l$coverUrl,
      l$schema,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ProviderType) || runtimeType != other.runtimeType) {
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
    final l$schema = schema;
    final lOther$schema = other.schema;
    if (l$schema != lOther$schema) {
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

extension UtilityExtension$Fragment$ProviderType on Fragment$ProviderType {
  CopyWith$Fragment$ProviderType<Fragment$ProviderType> get copyWith =>
      CopyWith$Fragment$ProviderType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ProviderType<TRes> {
  factory CopyWith$Fragment$ProviderType(
    Fragment$ProviderType instance,
    TRes Function(Fragment$ProviderType) then,
  ) = _CopyWithImpl$Fragment$ProviderType;

  factory CopyWith$Fragment$ProviderType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProviderType;

  TRes call({
    String? id,
    String? name,
    String? key,
    String? description,
    String? iconUrl,
    String? coverUrl,
    Map<String, dynamic>? schema,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$ProviderType<TRes>
    implements CopyWith$Fragment$ProviderType<TRes> {
  _CopyWithImpl$Fragment$ProviderType(
    this._instance,
    this._then,
  );

  final Fragment$ProviderType _instance;

  final TRes Function(Fragment$ProviderType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? description = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? schema = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProviderType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$ProviderType<TRes>
    implements CopyWith$Fragment$ProviderType<TRes> {
  _CopyWithStubImpl$Fragment$ProviderType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    String? description,
    String? iconUrl,
    String? coverUrl,
    Map<String, dynamic>? schema,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionProviderType = FragmentDefinitionNode(
  name: NameNode(value: 'ProviderType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ProviderType'),
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
      name: NameNode(value: 'schema'),
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
const documentNodeFragmentProviderType = DocumentNode(definitions: [
  fragmentDefinitionProviderType,
]);

extension ClientExtension$Fragment$ProviderType on graphql.GraphQLClient {
  void writeFragment$ProviderType({
    required Fragment$ProviderType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ProviderType',
            document: documentNodeFragmentProviderType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ProviderType? readFragment$ProviderType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ProviderType',
          document: documentNodeFragmentProviderType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ProviderType.fromJson(result);
  }
}

class Fragment$Provider {
  Fragment$Provider({
    required this.id,
    required this.providerTypeId,
    required this.providerType,
    required this.name,
    this.description,
    this.longDescriptionMarkdown,
    this.siteUrl,
    this.data,
    this.iconUrl,
    this.coverUrl,
    this.$__typename = 'Provider',
  });

  factory Fragment$Provider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$providerTypeId = json['providerTypeId'];
    final l$providerType = json['providerType'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$longDescriptionMarkdown = json['longDescriptionMarkdown'];
    final l$siteUrl = json['siteUrl'];
    final l$data = json['data'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$Provider(
      id: (l$id as String),
      providerTypeId: (l$providerTypeId as String),
      providerType: Fragment$ProviderType.fromJson(
          (l$providerType as Map<String, dynamic>)),
      name: (l$name as String),
      description: (l$description as String?),
      longDescriptionMarkdown: (l$longDescriptionMarkdown as String?),
      siteUrl: (l$siteUrl as String?),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String providerTypeId;

  final Fragment$ProviderType providerType;

  final String name;

  final String? description;

  final String? longDescriptionMarkdown;

  final String? siteUrl;

  final Map<String, dynamic>? data;

  final String? iconUrl;

  final String? coverUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$providerTypeId = providerTypeId;
    _resultData['providerTypeId'] = l$providerTypeId;
    final l$providerType = providerType;
    _resultData['providerType'] = l$providerType.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    _resultData['longDescriptionMarkdown'] = l$longDescriptionMarkdown;
    final l$siteUrl = siteUrl;
    _resultData['siteUrl'] = l$siteUrl;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$providerTypeId = providerTypeId;
    final l$providerType = providerType;
    final l$name = name;
    final l$description = description;
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    final l$siteUrl = siteUrl;
    final l$data = data;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$providerTypeId,
      l$providerType,
      l$name,
      l$description,
      l$longDescriptionMarkdown,
      l$siteUrl,
      l$data,
      l$iconUrl,
      l$coverUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Provider) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$providerTypeId = providerTypeId;
    final lOther$providerTypeId = other.providerTypeId;
    if (l$providerTypeId != lOther$providerTypeId) {
      return false;
    }
    final l$providerType = providerType;
    final lOther$providerType = other.providerType;
    if (l$providerType != lOther$providerType) {
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
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    final lOther$longDescriptionMarkdown = other.longDescriptionMarkdown;
    if (l$longDescriptionMarkdown != lOther$longDescriptionMarkdown) {
      return false;
    }
    final l$siteUrl = siteUrl;
    final lOther$siteUrl = other.siteUrl;
    if (l$siteUrl != lOther$siteUrl) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Provider on Fragment$Provider {
  CopyWith$Fragment$Provider<Fragment$Provider> get copyWith =>
      CopyWith$Fragment$Provider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Provider<TRes> {
  factory CopyWith$Fragment$Provider(
    Fragment$Provider instance,
    TRes Function(Fragment$Provider) then,
  ) = _CopyWithImpl$Fragment$Provider;

  factory CopyWith$Fragment$Provider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Provider;

  TRes call({
    String? id,
    String? providerTypeId,
    Fragment$ProviderType? providerType,
    String? name,
    String? description,
    String? longDescriptionMarkdown,
    String? siteUrl,
    Map<String, dynamic>? data,
    String? iconUrl,
    String? coverUrl,
    String? $__typename,
  });
  CopyWith$Fragment$ProviderType<TRes> get providerType;
}

class _CopyWithImpl$Fragment$Provider<TRes>
    implements CopyWith$Fragment$Provider<TRes> {
  _CopyWithImpl$Fragment$Provider(
    this._instance,
    this._then,
  );

  final Fragment$Provider _instance;

  final TRes Function(Fragment$Provider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? providerTypeId = _undefined,
    Object? providerType = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? longDescriptionMarkdown = _undefined,
    Object? siteUrl = _undefined,
    Object? data = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Provider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        providerTypeId: providerTypeId == _undefined || providerTypeId == null
            ? _instance.providerTypeId
            : (providerTypeId as String),
        providerType: providerType == _undefined || providerType == null
            ? _instance.providerType
            : (providerType as Fragment$ProviderType),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        longDescriptionMarkdown: longDescriptionMarkdown == _undefined
            ? _instance.longDescriptionMarkdown
            : (longDescriptionMarkdown as String?),
        siteUrl:
            siteUrl == _undefined ? _instance.siteUrl : (siteUrl as String?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProviderType<TRes> get providerType {
    final local$providerType = _instance.providerType;
    return CopyWith$Fragment$ProviderType(
        local$providerType, (e) => call(providerType: e));
  }
}

class _CopyWithStubImpl$Fragment$Provider<TRes>
    implements CopyWith$Fragment$Provider<TRes> {
  _CopyWithStubImpl$Fragment$Provider(this._res);

  TRes _res;

  call({
    String? id,
    String? providerTypeId,
    Fragment$ProviderType? providerType,
    String? name,
    String? description,
    String? longDescriptionMarkdown,
    String? siteUrl,
    Map<String, dynamic>? data,
    String? iconUrl,
    String? coverUrl,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProviderType<TRes> get providerType =>
      CopyWith$Fragment$ProviderType.stub(_res);
}

const fragmentDefinitionProvider = FragmentDefinitionNode(
  name: NameNode(value: 'Provider'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Provider'),
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
      name: NameNode(value: 'providerTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'providerType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ProviderType'),
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
      name: NameNode(value: 'longDescriptionMarkdown'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'siteUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'data'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentProvider = DocumentNode(definitions: [
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
]);

extension ClientExtension$Fragment$Provider on graphql.GraphQLClient {
  void writeFragment$Provider({
    required Fragment$Provider data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Provider',
            document: documentNodeFragmentProvider,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Provider? readFragment$Provider({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Provider',
          document: documentNodeFragmentProvider,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Provider.fromJson(result);
  }
}

class Variables$Query$ProviderById {
  factory Variables$Query$ProviderById({required String id}) =>
      Variables$Query$ProviderById._({
        r'id': id,
      });

  Variables$Query$ProviderById._(this._$data);

  factory Variables$Query$ProviderById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$ProviderById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ProviderById<Variables$Query$ProviderById>
      get copyWith => CopyWith$Variables$Query$ProviderById(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ProviderById) ||
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

abstract class CopyWith$Variables$Query$ProviderById<TRes> {
  factory CopyWith$Variables$Query$ProviderById(
    Variables$Query$ProviderById instance,
    TRes Function(Variables$Query$ProviderById) then,
  ) = _CopyWithImpl$Variables$Query$ProviderById;

  factory CopyWith$Variables$Query$ProviderById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ProviderById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$ProviderById<TRes>
    implements CopyWith$Variables$Query$ProviderById<TRes> {
  _CopyWithImpl$Variables$Query$ProviderById(
    this._instance,
    this._then,
  );

  final Variables$Query$ProviderById _instance;

  final TRes Function(Variables$Query$ProviderById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$ProviderById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ProviderById<TRes>
    implements CopyWith$Variables$Query$ProviderById<TRes> {
  _CopyWithStubImpl$Variables$Query$ProviderById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$ProviderById {
  Query$ProviderById({
    this.providerCollection,
    this.$__typename = 'Query',
  });

  factory Query$ProviderById.fromJson(Map<String, dynamic> json) {
    final l$providerCollection = json['providerCollection'];
    final l$$__typename = json['__typename'];
    return Query$ProviderById(
      providerCollection: l$providerCollection == null
          ? null
          : Query$ProviderById$providerCollection.fromJson(
              (l$providerCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProviderById$providerCollection? providerCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$providerCollection = providerCollection;
    _resultData['providerCollection'] = l$providerCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$providerCollection = providerCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$providerCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProviderById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$providerCollection = providerCollection;
    final lOther$providerCollection = other.providerCollection;
    if (l$providerCollection != lOther$providerCollection) {
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

extension UtilityExtension$Query$ProviderById on Query$ProviderById {
  CopyWith$Query$ProviderById<Query$ProviderById> get copyWith =>
      CopyWith$Query$ProviderById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProviderById<TRes> {
  factory CopyWith$Query$ProviderById(
    Query$ProviderById instance,
    TRes Function(Query$ProviderById) then,
  ) = _CopyWithImpl$Query$ProviderById;

  factory CopyWith$Query$ProviderById.stub(TRes res) =
      _CopyWithStubImpl$Query$ProviderById;

  TRes call({
    Query$ProviderById$providerCollection? providerCollection,
    String? $__typename,
  });
  CopyWith$Query$ProviderById$providerCollection<TRes> get providerCollection;
}

class _CopyWithImpl$Query$ProviderById<TRes>
    implements CopyWith$Query$ProviderById<TRes> {
  _CopyWithImpl$Query$ProviderById(
    this._instance,
    this._then,
  );

  final Query$ProviderById _instance;

  final TRes Function(Query$ProviderById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? providerCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderById(
        providerCollection: providerCollection == _undefined
            ? _instance.providerCollection
            : (providerCollection as Query$ProviderById$providerCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProviderById$providerCollection<TRes> get providerCollection {
    final local$providerCollection = _instance.providerCollection;
    return local$providerCollection == null
        ? CopyWith$Query$ProviderById$providerCollection.stub(_then(_instance))
        : CopyWith$Query$ProviderById$providerCollection(
            local$providerCollection, (e) => call(providerCollection: e));
  }
}

class _CopyWithStubImpl$Query$ProviderById<TRes>
    implements CopyWith$Query$ProviderById<TRes> {
  _CopyWithStubImpl$Query$ProviderById(this._res);

  TRes _res;

  call({
    Query$ProviderById$providerCollection? providerCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProviderById$providerCollection<TRes> get providerCollection =>
      CopyWith$Query$ProviderById$providerCollection.stub(_res);
}

const documentNodeQueryProviderById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProviderById'),
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
        name: NameNode(value: 'providerCollection'),
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
                    name: NameNode(value: 'Provider'),
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
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
]);
Query$ProviderById _parserFn$Query$ProviderById(Map<String, dynamic> data) =>
    Query$ProviderById.fromJson(data);
typedef OnQueryComplete$Query$ProviderById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ProviderById?,
);

class Options$Query$ProviderById
    extends graphql.QueryOptions<Query$ProviderById> {
  Options$Query$ProviderById({
    String? operationName,
    required Variables$Query$ProviderById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProviderById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProviderById? onComplete,
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
                    data == null ? null : _parserFn$Query$ProviderById(data),
                  ),
          onError: onError,
          document: documentNodeQueryProviderById,
          parserFn: _parserFn$Query$ProviderById,
        );

  final OnQueryComplete$Query$ProviderById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ProviderById
    extends graphql.WatchQueryOptions<Query$ProviderById> {
  WatchOptions$Query$ProviderById({
    String? operationName,
    required Variables$Query$ProviderById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProviderById? typedOptimisticResult,
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
          document: documentNodeQueryProviderById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProviderById,
        );
}

class FetchMoreOptions$Query$ProviderById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProviderById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ProviderById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryProviderById,
        );
}

extension ClientExtension$Query$ProviderById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProviderById>> query$ProviderById(
          Options$Query$ProviderById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ProviderById> watchQuery$ProviderById(
          WatchOptions$Query$ProviderById options) =>
      this.watchQuery(options);
  void writeQuery$ProviderById({
    required Query$ProviderById data,
    required Variables$Query$ProviderById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryProviderById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProviderById? readQuery$ProviderById({
    required Variables$Query$ProviderById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryProviderById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProviderById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ProviderById> useQuery$ProviderById(
        Options$Query$ProviderById options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ProviderById> useWatchQuery$ProviderById(
        WatchOptions$Query$ProviderById options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ProviderById$Widget
    extends graphql_flutter.Query<Query$ProviderById> {
  Query$ProviderById$Widget({
    widgets.Key? key,
    required Options$Query$ProviderById options,
    required graphql_flutter.QueryBuilder<Query$ProviderById> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ProviderById$providerCollection {
  Query$ProviderById$providerCollection({
    required this.edges,
    this.$__typename = 'ProviderConnection',
  });

  factory Query$ProviderById$providerCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$ProviderById$providerCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ProviderById$providerCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProviderById$providerCollection$edges> edges;

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
    if (!(other is Query$ProviderById$providerCollection) ||
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

extension UtilityExtension$Query$ProviderById$providerCollection
    on Query$ProviderById$providerCollection {
  CopyWith$Query$ProviderById$providerCollection<
          Query$ProviderById$providerCollection>
      get copyWith => CopyWith$Query$ProviderById$providerCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProviderById$providerCollection<TRes> {
  factory CopyWith$Query$ProviderById$providerCollection(
    Query$ProviderById$providerCollection instance,
    TRes Function(Query$ProviderById$providerCollection) then,
  ) = _CopyWithImpl$Query$ProviderById$providerCollection;

  factory CopyWith$Query$ProviderById$providerCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ProviderById$providerCollection;

  TRes call({
    List<Query$ProviderById$providerCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ProviderById$providerCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ProviderById$providerCollection$edges<
                      Query$ProviderById$providerCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$ProviderById$providerCollection<TRes>
    implements CopyWith$Query$ProviderById$providerCollection<TRes> {
  _CopyWithImpl$Query$ProviderById$providerCollection(
    this._instance,
    this._then,
  );

  final Query$ProviderById$providerCollection _instance;

  final TRes Function(Query$ProviderById$providerCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderById$providerCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$ProviderById$providerCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ProviderById$providerCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ProviderById$providerCollection$edges<
                          Query$ProviderById$providerCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$ProviderById$providerCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ProviderById$providerCollection<TRes>
    implements CopyWith$Query$ProviderById$providerCollection<TRes> {
  _CopyWithStubImpl$Query$ProviderById$providerCollection(this._res);

  TRes _res;

  call({
    List<Query$ProviderById$providerCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$ProviderById$providerCollection$edges {
  Query$ProviderById$providerCollection$edges({
    required this.node,
    this.$__typename = 'ProviderEdge',
  });

  factory Query$ProviderById$providerCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ProviderById$providerCollection$edges(
      node: Fragment$Provider.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Provider node;

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
    if (!(other is Query$ProviderById$providerCollection$edges) ||
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

extension UtilityExtension$Query$ProviderById$providerCollection$edges
    on Query$ProviderById$providerCollection$edges {
  CopyWith$Query$ProviderById$providerCollection$edges<
          Query$ProviderById$providerCollection$edges>
      get copyWith => CopyWith$Query$ProviderById$providerCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProviderById$providerCollection$edges<TRes> {
  factory CopyWith$Query$ProviderById$providerCollection$edges(
    Query$ProviderById$providerCollection$edges instance,
    TRes Function(Query$ProviderById$providerCollection$edges) then,
  ) = _CopyWithImpl$Query$ProviderById$providerCollection$edges;

  factory CopyWith$Query$ProviderById$providerCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$ProviderById$providerCollection$edges;

  TRes call({
    Fragment$Provider? node,
    String? $__typename,
  });
  CopyWith$Fragment$Provider<TRes> get node;
}

class _CopyWithImpl$Query$ProviderById$providerCollection$edges<TRes>
    implements CopyWith$Query$ProviderById$providerCollection$edges<TRes> {
  _CopyWithImpl$Query$ProviderById$providerCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ProviderById$providerCollection$edges _instance;

  final TRes Function(Query$ProviderById$providerCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderById$providerCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Provider),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Provider<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Provider(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ProviderById$providerCollection$edges<TRes>
    implements CopyWith$Query$ProviderById$providerCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ProviderById$providerCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Provider? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Provider<TRes> get node =>
      CopyWith$Fragment$Provider.stub(_res);
}

class Variables$Query$ProviderCollection {
  factory Variables$Query$ProviderCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ProviderFilter? filter,
    List<Input$ProviderOrderBy>? orderBy,
  }) =>
      Variables$Query$ProviderCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$ProviderCollection._(this._$data);

  factory Variables$Query$ProviderCollection.fromJson(
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
          : Input$ProviderFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ProviderOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$ProviderCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$ProviderFilter? get filter =>
      (_$data['filter'] as Input$ProviderFilter?);

  List<Input$ProviderOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ProviderOrderBy>?);

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

  CopyWith$Variables$Query$ProviderCollection<
          Variables$Query$ProviderCollection>
      get copyWith => CopyWith$Variables$Query$ProviderCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ProviderCollection) ||
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

abstract class CopyWith$Variables$Query$ProviderCollection<TRes> {
  factory CopyWith$Variables$Query$ProviderCollection(
    Variables$Query$ProviderCollection instance,
    TRes Function(Variables$Query$ProviderCollection) then,
  ) = _CopyWithImpl$Variables$Query$ProviderCollection;

  factory CopyWith$Variables$Query$ProviderCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ProviderCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ProviderFilter? filter,
    List<Input$ProviderOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$ProviderCollection<TRes>
    implements CopyWith$Variables$Query$ProviderCollection<TRes> {
  _CopyWithImpl$Variables$Query$ProviderCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ProviderCollection _instance;

  final TRes Function(Variables$Query$ProviderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$ProviderCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined) 'filter': (filter as Input$ProviderFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ProviderOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ProviderCollection<TRes>
    implements CopyWith$Variables$Query$ProviderCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ProviderCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ProviderFilter? filter,
    List<Input$ProviderOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$ProviderCollection {
  Query$ProviderCollection({
    this.providerCollection,
    this.$__typename = 'Query',
  });

  factory Query$ProviderCollection.fromJson(Map<String, dynamic> json) {
    final l$providerCollection = json['providerCollection'];
    final l$$__typename = json['__typename'];
    return Query$ProviderCollection(
      providerCollection: l$providerCollection == null
          ? null
          : Query$ProviderCollection$providerCollection.fromJson(
              (l$providerCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProviderCollection$providerCollection? providerCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$providerCollection = providerCollection;
    _resultData['providerCollection'] = l$providerCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$providerCollection = providerCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$providerCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ProviderCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$providerCollection = providerCollection;
    final lOther$providerCollection = other.providerCollection;
    if (l$providerCollection != lOther$providerCollection) {
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

extension UtilityExtension$Query$ProviderCollection
    on Query$ProviderCollection {
  CopyWith$Query$ProviderCollection<Query$ProviderCollection> get copyWith =>
      CopyWith$Query$ProviderCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProviderCollection<TRes> {
  factory CopyWith$Query$ProviderCollection(
    Query$ProviderCollection instance,
    TRes Function(Query$ProviderCollection) then,
  ) = _CopyWithImpl$Query$ProviderCollection;

  factory CopyWith$Query$ProviderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ProviderCollection;

  TRes call({
    Query$ProviderCollection$providerCollection? providerCollection,
    String? $__typename,
  });
  CopyWith$Query$ProviderCollection$providerCollection<TRes>
      get providerCollection;
}

class _CopyWithImpl$Query$ProviderCollection<TRes>
    implements CopyWith$Query$ProviderCollection<TRes> {
  _CopyWithImpl$Query$ProviderCollection(
    this._instance,
    this._then,
  );

  final Query$ProviderCollection _instance;

  final TRes Function(Query$ProviderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? providerCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderCollection(
        providerCollection: providerCollection == _undefined
            ? _instance.providerCollection
            : (providerCollection
                as Query$ProviderCollection$providerCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProviderCollection$providerCollection<TRes>
      get providerCollection {
    final local$providerCollection = _instance.providerCollection;
    return local$providerCollection == null
        ? CopyWith$Query$ProviderCollection$providerCollection.stub(
            _then(_instance))
        : CopyWith$Query$ProviderCollection$providerCollection(
            local$providerCollection, (e) => call(providerCollection: e));
  }
}

class _CopyWithStubImpl$Query$ProviderCollection<TRes>
    implements CopyWith$Query$ProviderCollection<TRes> {
  _CopyWithStubImpl$Query$ProviderCollection(this._res);

  TRes _res;

  call({
    Query$ProviderCollection$providerCollection? providerCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProviderCollection$providerCollection<TRes>
      get providerCollection =>
          CopyWith$Query$ProviderCollection$providerCollection.stub(_res);
}

const documentNodeQueryProviderCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProviderCollection'),
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
          name: NameNode(value: 'ProviderFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ProviderOrderBy'),
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
        name: NameNode(value: 'providerCollection'),
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
                    name: NameNode(value: 'Provider'),
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
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
]);
Query$ProviderCollection _parserFn$Query$ProviderCollection(
        Map<String, dynamic> data) =>
    Query$ProviderCollection.fromJson(data);
typedef OnQueryComplete$Query$ProviderCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ProviderCollection?,
);

class Options$Query$ProviderCollection
    extends graphql.QueryOptions<Query$ProviderCollection> {
  Options$Query$ProviderCollection({
    String? operationName,
    Variables$Query$ProviderCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProviderCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProviderCollection? onComplete,
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
                        : _parserFn$Query$ProviderCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryProviderCollection,
          parserFn: _parserFn$Query$ProviderCollection,
        );

  final OnQueryComplete$Query$ProviderCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ProviderCollection
    extends graphql.WatchQueryOptions<Query$ProviderCollection> {
  WatchOptions$Query$ProviderCollection({
    String? operationName,
    Variables$Query$ProviderCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProviderCollection? typedOptimisticResult,
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
          document: documentNodeQueryProviderCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProviderCollection,
        );
}

class FetchMoreOptions$Query$ProviderCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProviderCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ProviderCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryProviderCollection,
        );
}

extension ClientExtension$Query$ProviderCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProviderCollection>>
      query$ProviderCollection(
              [Options$Query$ProviderCollection? options]) async =>
          await this.query(options ?? Options$Query$ProviderCollection());
  graphql.ObservableQuery<Query$ProviderCollection>
      watchQuery$ProviderCollection(
              [WatchOptions$Query$ProviderCollection? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$ProviderCollection());
  void writeQuery$ProviderCollection({
    required Query$ProviderCollection data,
    Variables$Query$ProviderCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryProviderCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProviderCollection? readQuery$ProviderCollection({
    Variables$Query$ProviderCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryProviderCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProviderCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ProviderCollection>
    useQuery$ProviderCollection([Options$Query$ProviderCollection? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$ProviderCollection());
graphql.ObservableQuery<Query$ProviderCollection>
    useWatchQuery$ProviderCollection(
            [WatchOptions$Query$ProviderCollection? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$ProviderCollection());

class Query$ProviderCollection$Widget
    extends graphql_flutter.Query<Query$ProviderCollection> {
  Query$ProviderCollection$Widget({
    widgets.Key? key,
    Options$Query$ProviderCollection? options,
    required graphql_flutter.QueryBuilder<Query$ProviderCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ProviderCollection(),
          builder: builder,
        );
}

class Query$ProviderCollection$providerCollection {
  Query$ProviderCollection$providerCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ProviderConnection',
  });

  factory Query$ProviderCollection$providerCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ProviderCollection$providerCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$ProviderCollection$providerCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$ProviderCollection$providerCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProviderCollection$providerCollection$edges> edges;

  final Query$ProviderCollection$providerCollection$pageInfo pageInfo;

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
    if (!(other is Query$ProviderCollection$providerCollection) ||
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

extension UtilityExtension$Query$ProviderCollection$providerCollection
    on Query$ProviderCollection$providerCollection {
  CopyWith$Query$ProviderCollection$providerCollection<
          Query$ProviderCollection$providerCollection>
      get copyWith => CopyWith$Query$ProviderCollection$providerCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProviderCollection$providerCollection<TRes> {
  factory CopyWith$Query$ProviderCollection$providerCollection(
    Query$ProviderCollection$providerCollection instance,
    TRes Function(Query$ProviderCollection$providerCollection) then,
  ) = _CopyWithImpl$Query$ProviderCollection$providerCollection;

  factory CopyWith$Query$ProviderCollection$providerCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ProviderCollection$providerCollection;

  TRes call({
    List<Query$ProviderCollection$providerCollection$edges>? edges,
    Query$ProviderCollection$providerCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ProviderCollection$providerCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ProviderCollection$providerCollection$edges<
                      Query$ProviderCollection$providerCollection$edges>>)
          _fn);
  CopyWith$Query$ProviderCollection$providerCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ProviderCollection$providerCollection<TRes>
    implements CopyWith$Query$ProviderCollection$providerCollection<TRes> {
  _CopyWithImpl$Query$ProviderCollection$providerCollection(
    this._instance,
    this._then,
  );

  final Query$ProviderCollection$providerCollection _instance;

  final TRes Function(Query$ProviderCollection$providerCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderCollection$providerCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Query$ProviderCollection$providerCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$ProviderCollection$providerCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ProviderCollection$providerCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ProviderCollection$providerCollection$edges<
                          Query$ProviderCollection$providerCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$ProviderCollection$providerCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$ProviderCollection$providerCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ProviderCollection$providerCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ProviderCollection$providerCollection<TRes>
    implements CopyWith$Query$ProviderCollection$providerCollection<TRes> {
  _CopyWithStubImpl$Query$ProviderCollection$providerCollection(this._res);

  TRes _res;

  call({
    List<Query$ProviderCollection$providerCollection$edges>? edges,
    Query$ProviderCollection$providerCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ProviderCollection$providerCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ProviderCollection$providerCollection$pageInfo.stub(
              _res);
}

class Query$ProviderCollection$providerCollection$edges {
  Query$ProviderCollection$providerCollection$edges({
    required this.node,
    this.$__typename = 'ProviderEdge',
  });

  factory Query$ProviderCollection$providerCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ProviderCollection$providerCollection$edges(
      node: Fragment$Provider.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Provider node;

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
    if (!(other is Query$ProviderCollection$providerCollection$edges) ||
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

extension UtilityExtension$Query$ProviderCollection$providerCollection$edges
    on Query$ProviderCollection$providerCollection$edges {
  CopyWith$Query$ProviderCollection$providerCollection$edges<
          Query$ProviderCollection$providerCollection$edges>
      get copyWith =>
          CopyWith$Query$ProviderCollection$providerCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProviderCollection$providerCollection$edges<
    TRes> {
  factory CopyWith$Query$ProviderCollection$providerCollection$edges(
    Query$ProviderCollection$providerCollection$edges instance,
    TRes Function(Query$ProviderCollection$providerCollection$edges) then,
  ) = _CopyWithImpl$Query$ProviderCollection$providerCollection$edges;

  factory CopyWith$Query$ProviderCollection$providerCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProviderCollection$providerCollection$edges;

  TRes call({
    Fragment$Provider? node,
    String? $__typename,
  });
  CopyWith$Fragment$Provider<TRes> get node;
}

class _CopyWithImpl$Query$ProviderCollection$providerCollection$edges<TRes>
    implements
        CopyWith$Query$ProviderCollection$providerCollection$edges<TRes> {
  _CopyWithImpl$Query$ProviderCollection$providerCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ProviderCollection$providerCollection$edges _instance;

  final TRes Function(Query$ProviderCollection$providerCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderCollection$providerCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Provider),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Provider<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Provider(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ProviderCollection$providerCollection$edges<TRes>
    implements
        CopyWith$Query$ProviderCollection$providerCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ProviderCollection$providerCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$Provider? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Provider<TRes> get node =>
      CopyWith$Fragment$Provider.stub(_res);
}

class Query$ProviderCollection$providerCollection$pageInfo {
  Query$ProviderCollection$providerCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ProviderCollection$providerCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$ProviderCollection$providerCollection$pageInfo(
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
    if (!(other is Query$ProviderCollection$providerCollection$pageInfo) ||
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

extension UtilityExtension$Query$ProviderCollection$providerCollection$pageInfo
    on Query$ProviderCollection$providerCollection$pageInfo {
  CopyWith$Query$ProviderCollection$providerCollection$pageInfo<
          Query$ProviderCollection$providerCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ProviderCollection$providerCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProviderCollection$providerCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ProviderCollection$providerCollection$pageInfo(
    Query$ProviderCollection$providerCollection$pageInfo instance,
    TRes Function(Query$ProviderCollection$providerCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$ProviderCollection$providerCollection$pageInfo;

  factory CopyWith$Query$ProviderCollection$providerCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProviderCollection$providerCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProviderCollection$providerCollection$pageInfo<TRes>
    implements
        CopyWith$Query$ProviderCollection$providerCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$ProviderCollection$providerCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ProviderCollection$providerCollection$pageInfo _instance;

  final TRes Function(Query$ProviderCollection$providerCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProviderCollection$providerCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ProviderCollection$providerCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ProviderCollection$providerCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ProviderCollection$providerCollection$pageInfo(
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
