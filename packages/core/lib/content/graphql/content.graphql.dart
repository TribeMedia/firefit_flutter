import '../../common/graphql/application.graphql.dart';
import '../../schema.graphql.dart';
import '../../users/graphql/users.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$PublicationState {
  Fragment$PublicationState({
    required this.id,
    required this.name,
    required this.key,
    required this.createdAt,
    this.$__typename = 'PublicationState',
  });

  factory Fragment$PublicationState.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$PublicationState(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

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
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PublicationState) ||
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

extension UtilityExtension$Fragment$PublicationState
    on Fragment$PublicationState {
  CopyWith$Fragment$PublicationState<Fragment$PublicationState> get copyWith =>
      CopyWith$Fragment$PublicationState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PublicationState<TRes> {
  factory CopyWith$Fragment$PublicationState(
    Fragment$PublicationState instance,
    TRes Function(Fragment$PublicationState) then,
  ) = _CopyWithImpl$Fragment$PublicationState;

  factory CopyWith$Fragment$PublicationState.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PublicationState;

  TRes call({
    String? id,
    String? name,
    String? key,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PublicationState<TRes>
    implements CopyWith$Fragment$PublicationState<TRes> {
  _CopyWithImpl$Fragment$PublicationState(
    this._instance,
    this._then,
  );

  final Fragment$PublicationState _instance;

  final TRes Function(Fragment$PublicationState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PublicationState(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PublicationState<TRes>
    implements CopyWith$Fragment$PublicationState<TRes> {
  _CopyWithStubImpl$Fragment$PublicationState(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionPublicationState = FragmentDefinitionNode(
  name: NameNode(value: 'PublicationState'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PublicationState'),
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
const documentNodeFragmentPublicationState = DocumentNode(definitions: [
  fragmentDefinitionPublicationState,
]);

extension ClientExtension$Fragment$PublicationState on graphql.GraphQLClient {
  void writeFragment$PublicationState({
    required Fragment$PublicationState data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PublicationState',
            document: documentNodeFragmentPublicationState,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PublicationState? readFragment$PublicationState({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PublicationState',
          document: documentNodeFragmentPublicationState,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PublicationState.fromJson(result);
  }
}

class Fragment$ContentType {
  Fragment$ContentType({
    required this.id,
    this.applicationId,
    this.application,
    required this.name,
    this.description,
    required this.key,
    this.schema,
    this.requiresApproval,
    required this.createdAt,
    this.$__typename = 'ContentType',
  });

  factory Fragment$ContentType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$applicationId = json['applicationId'];
    final l$application = json['application'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$requiresApproval = json['requiresApproval'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentType(
      id: (l$id as String),
      applicationId: (l$applicationId as String?),
      application: l$application == null
          ? null
          : Fragment$Application.fromJson(
              (l$application as Map<String, dynamic>)),
      name: (l$name as String),
      description: (l$description as String?),
      key: (l$key as String),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      requiresApproval: (l$requiresApproval as bool?),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? applicationId;

  final Fragment$Application? application;

  final String name;

  final String? description;

  final String key;

  final Map<String, dynamic>? schema;

  final bool? requiresApproval;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$applicationId = applicationId;
    _resultData['applicationId'] = l$applicationId;
    final l$application = application;
    _resultData['application'] = l$application?.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$schema = schema;
    _resultData['schema'] = l$schema == null ? null : jsonFieldToJson(l$schema);
    final l$requiresApproval = requiresApproval;
    _resultData['requiresApproval'] = l$requiresApproval;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$applicationId = applicationId;
    final l$application = application;
    final l$name = name;
    final l$description = description;
    final l$key = key;
    final l$schema = schema;
    final l$requiresApproval = requiresApproval;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$applicationId,
      l$application,
      l$name,
      l$description,
      l$key,
      l$schema,
      l$requiresApproval,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentType) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$applicationId = applicationId;
    final lOther$applicationId = other.applicationId;
    if (l$applicationId != lOther$applicationId) {
      return false;
    }
    final l$application = application;
    final lOther$application = other.application;
    if (l$application != lOther$application) {
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
    final l$requiresApproval = requiresApproval;
    final lOther$requiresApproval = other.requiresApproval;
    if (l$requiresApproval != lOther$requiresApproval) {
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

extension UtilityExtension$Fragment$ContentType on Fragment$ContentType {
  CopyWith$Fragment$ContentType<Fragment$ContentType> get copyWith =>
      CopyWith$Fragment$ContentType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ContentType<TRes> {
  factory CopyWith$Fragment$ContentType(
    Fragment$ContentType instance,
    TRes Function(Fragment$ContentType) then,
  ) = _CopyWithImpl$Fragment$ContentType;

  factory CopyWith$Fragment$ContentType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentType;

  TRes call({
    String? id,
    String? applicationId,
    Fragment$Application? application,
    String? name,
    String? description,
    String? key,
    Map<String, dynamic>? schema,
    bool? requiresApproval,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$Application<TRes> get application;
}

class _CopyWithImpl$Fragment$ContentType<TRes>
    implements CopyWith$Fragment$ContentType<TRes> {
  _CopyWithImpl$Fragment$ContentType(
    this._instance,
    this._then,
  );

  final Fragment$ContentType _instance;

  final TRes Function(Fragment$ContentType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? applicationId = _undefined,
    Object? application = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? requiresApproval = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        applicationId: applicationId == _undefined
            ? _instance.applicationId
            : (applicationId as String?),
        application: application == _undefined
            ? _instance.application
            : (application as Fragment$Application?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        requiresApproval: requiresApproval == _undefined
            ? _instance.requiresApproval
            : (requiresApproval as bool?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Application<TRes> get application {
    final local$application = _instance.application;
    return local$application == null
        ? CopyWith$Fragment$Application.stub(_then(_instance))
        : CopyWith$Fragment$Application(
            local$application, (e) => call(application: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentType<TRes>
    implements CopyWith$Fragment$ContentType<TRes> {
  _CopyWithStubImpl$Fragment$ContentType(this._res);

  TRes _res;

  call({
    String? id,
    String? applicationId,
    Fragment$Application? application,
    String? name,
    String? description,
    String? key,
    Map<String, dynamic>? schema,
    bool? requiresApproval,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Application<TRes> get application =>
      CopyWith$Fragment$Application.stub(_res);
}

const fragmentDefinitionContentType = FragmentDefinitionNode(
  name: NameNode(value: 'ContentType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentType'),
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
      name: NameNode(value: 'applicationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'application'),
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
      name: NameNode(value: 'requiresApproval'),
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
const documentNodeFragmentContentType = DocumentNode(definitions: [
  fragmentDefinitionContentType,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);

extension ClientExtension$Fragment$ContentType on graphql.GraphQLClient {
  void writeFragment$ContentType({
    required Fragment$ContentType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentType',
            document: documentNodeFragmentContentType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentType? readFragment$ContentType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentType',
          document: documentNodeFragmentContentType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentType.fromJson(result);
  }
}

class Fragment$TemplateVariableType {
  Fragment$TemplateVariableType({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    required this.createdAt,
    this.description,
    required this.isPrimitive,
    required this.isArray,
    required this.isObject,
    required this.isNumeric,
    required this.isBool,
    required this.isString,
    this.$__typename = 'TemplateVariableType',
  });

  factory Fragment$TemplateVariableType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$description = json['description'];
    final l$isPrimitive = json['isPrimitive'];
    final l$isArray = json['isArray'];
    final l$isObject = json['isObject'];
    final l$isNumeric = json['isNumeric'];
    final l$isBool = json['isBool'];
    final l$isString = json['isString'];
    final l$$__typename = json['__typename'];
    return Fragment$TemplateVariableType(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      createdAt: DateTime.parse((l$createdAt as String)),
      description: (l$description as String?),
      isPrimitive: (l$isPrimitive as bool),
      isArray: (l$isArray as bool),
      isObject: (l$isObject as bool),
      isNumeric: (l$isNumeric as bool),
      isBool: (l$isBool as bool),
      isString: (l$isString as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

  final Map<String, dynamic>? schema;

  final DateTime createdAt;

  final String? description;

  final bool isPrimitive;

  final bool isArray;

  final bool isObject;

  final bool isNumeric;

  final bool isBool;

  final bool isString;

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
    final l$description = description;
    _resultData['description'] = l$description;
    final l$isPrimitive = isPrimitive;
    _resultData['isPrimitive'] = l$isPrimitive;
    final l$isArray = isArray;
    _resultData['isArray'] = l$isArray;
    final l$isObject = isObject;
    _resultData['isObject'] = l$isObject;
    final l$isNumeric = isNumeric;
    _resultData['isNumeric'] = l$isNumeric;
    final l$isBool = isBool;
    _resultData['isBool'] = l$isBool;
    final l$isString = isString;
    _resultData['isString'] = l$isString;
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
    final l$description = description;
    final l$isPrimitive = isPrimitive;
    final l$isArray = isArray;
    final l$isObject = isObject;
    final l$isNumeric = isNumeric;
    final l$isBool = isBool;
    final l$isString = isString;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$schema,
      l$createdAt,
      l$description,
      l$isPrimitive,
      l$isArray,
      l$isObject,
      l$isNumeric,
      l$isBool,
      l$isString,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TemplateVariableType) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$isPrimitive = isPrimitive;
    final lOther$isPrimitive = other.isPrimitive;
    if (l$isPrimitive != lOther$isPrimitive) {
      return false;
    }
    final l$isArray = isArray;
    final lOther$isArray = other.isArray;
    if (l$isArray != lOther$isArray) {
      return false;
    }
    final l$isObject = isObject;
    final lOther$isObject = other.isObject;
    if (l$isObject != lOther$isObject) {
      return false;
    }
    final l$isNumeric = isNumeric;
    final lOther$isNumeric = other.isNumeric;
    if (l$isNumeric != lOther$isNumeric) {
      return false;
    }
    final l$isBool = isBool;
    final lOther$isBool = other.isBool;
    if (l$isBool != lOther$isBool) {
      return false;
    }
    final l$isString = isString;
    final lOther$isString = other.isString;
    if (l$isString != lOther$isString) {
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

extension UtilityExtension$Fragment$TemplateVariableType
    on Fragment$TemplateVariableType {
  CopyWith$Fragment$TemplateVariableType<Fragment$TemplateVariableType>
      get copyWith => CopyWith$Fragment$TemplateVariableType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$TemplateVariableType<TRes> {
  factory CopyWith$Fragment$TemplateVariableType(
    Fragment$TemplateVariableType instance,
    TRes Function(Fragment$TemplateVariableType) then,
  ) = _CopyWithImpl$Fragment$TemplateVariableType;

  factory CopyWith$Fragment$TemplateVariableType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TemplateVariableType;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? description,
    bool? isPrimitive,
    bool? isArray,
    bool? isObject,
    bool? isNumeric,
    bool? isBool,
    bool? isString,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$TemplateVariableType<TRes>
    implements CopyWith$Fragment$TemplateVariableType<TRes> {
  _CopyWithImpl$Fragment$TemplateVariableType(
    this._instance,
    this._then,
  );

  final Fragment$TemplateVariableType _instance;

  final TRes Function(Fragment$TemplateVariableType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? description = _undefined,
    Object? isPrimitive = _undefined,
    Object? isArray = _undefined,
    Object? isObject = _undefined,
    Object? isNumeric = _undefined,
    Object? isBool = _undefined,
    Object? isString = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TemplateVariableType(
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
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        isPrimitive: isPrimitive == _undefined || isPrimitive == null
            ? _instance.isPrimitive
            : (isPrimitive as bool),
        isArray: isArray == _undefined || isArray == null
            ? _instance.isArray
            : (isArray as bool),
        isObject: isObject == _undefined || isObject == null
            ? _instance.isObject
            : (isObject as bool),
        isNumeric: isNumeric == _undefined || isNumeric == null
            ? _instance.isNumeric
            : (isNumeric as bool),
        isBool: isBool == _undefined || isBool == null
            ? _instance.isBool
            : (isBool as bool),
        isString: isString == _undefined || isString == null
            ? _instance.isString
            : (isString as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$TemplateVariableType<TRes>
    implements CopyWith$Fragment$TemplateVariableType<TRes> {
  _CopyWithStubImpl$Fragment$TemplateVariableType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? description,
    bool? isPrimitive,
    bool? isArray,
    bool? isObject,
    bool? isNumeric,
    bool? isBool,
    bool? isString,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionTemplateVariableType = FragmentDefinitionNode(
  name: NameNode(value: 'TemplateVariableType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TemplateVariableType'),
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
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isPrimitive'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isArray'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isObject'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isNumeric'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isBool'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isString'),
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
const documentNodeFragmentTemplateVariableType = DocumentNode(definitions: [
  fragmentDefinitionTemplateVariableType,
]);

extension ClientExtension$Fragment$TemplateVariableType
    on graphql.GraphQLClient {
  void writeFragment$TemplateVariableType({
    required Fragment$TemplateVariableType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TemplateVariableType',
            document: documentNodeFragmentTemplateVariableType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TemplateVariableType? readFragment$TemplateVariableType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TemplateVariableType',
          document: documentNodeFragmentTemplateVariableType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$TemplateVariableType.fromJson(result);
  }
}

class Fragment$TemplateVariable {
  Fragment$TemplateVariable({
    required this.id,
    this.templateVariableTypeId,
    this.templateVariableType,
    this.data,
    required this.createdAt,
    this.$__typename = 'TemplateVariable',
  });

  factory Fragment$TemplateVariable.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$templateVariableTypeId = json['templateVariableTypeId'];
    final l$templateVariableType = json['templateVariableType'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$TemplateVariable(
      id: (l$id as String),
      templateVariableTypeId: (l$templateVariableTypeId as String?),
      templateVariableType: l$templateVariableType == null
          ? null
          : Fragment$TemplateVariableType.fromJson(
              (l$templateVariableType as Map<String, dynamic>)),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? templateVariableTypeId;

  final Fragment$TemplateVariableType? templateVariableType;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$templateVariableTypeId = templateVariableTypeId;
    _resultData['templateVariableTypeId'] = l$templateVariableTypeId;
    final l$templateVariableType = templateVariableType;
    _resultData['templateVariableType'] = l$templateVariableType?.toJson();
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$templateVariableTypeId = templateVariableTypeId;
    final l$templateVariableType = templateVariableType;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$templateVariableTypeId,
      l$templateVariableType,
      l$data,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$TemplateVariable) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$templateVariableTypeId = templateVariableTypeId;
    final lOther$templateVariableTypeId = other.templateVariableTypeId;
    if (l$templateVariableTypeId != lOther$templateVariableTypeId) {
      return false;
    }
    final l$templateVariableType = templateVariableType;
    final lOther$templateVariableType = other.templateVariableType;
    if (l$templateVariableType != lOther$templateVariableType) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Fragment$TemplateVariable
    on Fragment$TemplateVariable {
  CopyWith$Fragment$TemplateVariable<Fragment$TemplateVariable> get copyWith =>
      CopyWith$Fragment$TemplateVariable(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$TemplateVariable<TRes> {
  factory CopyWith$Fragment$TemplateVariable(
    Fragment$TemplateVariable instance,
    TRes Function(Fragment$TemplateVariable) then,
  ) = _CopyWithImpl$Fragment$TemplateVariable;

  factory CopyWith$Fragment$TemplateVariable.stub(TRes res) =
      _CopyWithStubImpl$Fragment$TemplateVariable;

  TRes call({
    String? id,
    String? templateVariableTypeId,
    Fragment$TemplateVariableType? templateVariableType,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$TemplateVariableType<TRes> get templateVariableType;
}

class _CopyWithImpl$Fragment$TemplateVariable<TRes>
    implements CopyWith$Fragment$TemplateVariable<TRes> {
  _CopyWithImpl$Fragment$TemplateVariable(
    this._instance,
    this._then,
  );

  final Fragment$TemplateVariable _instance;

  final TRes Function(Fragment$TemplateVariable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? templateVariableTypeId = _undefined,
    Object? templateVariableType = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$TemplateVariable(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        templateVariableTypeId: templateVariableTypeId == _undefined
            ? _instance.templateVariableTypeId
            : (templateVariableTypeId as String?),
        templateVariableType: templateVariableType == _undefined
            ? _instance.templateVariableType
            : (templateVariableType as Fragment$TemplateVariableType?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TemplateVariableType<TRes> get templateVariableType {
    final local$templateVariableType = _instance.templateVariableType;
    return local$templateVariableType == null
        ? CopyWith$Fragment$TemplateVariableType.stub(_then(_instance))
        : CopyWith$Fragment$TemplateVariableType(
            local$templateVariableType, (e) => call(templateVariableType: e));
  }
}

class _CopyWithStubImpl$Fragment$TemplateVariable<TRes>
    implements CopyWith$Fragment$TemplateVariable<TRes> {
  _CopyWithStubImpl$Fragment$TemplateVariable(this._res);

  TRes _res;

  call({
    String? id,
    String? templateVariableTypeId,
    Fragment$TemplateVariableType? templateVariableType,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TemplateVariableType<TRes> get templateVariableType =>
      CopyWith$Fragment$TemplateVariableType.stub(_res);
}

const fragmentDefinitionTemplateVariable = FragmentDefinitionNode(
  name: NameNode(value: 'TemplateVariable'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'TemplateVariable'),
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
      name: NameNode(value: 'templateVariableTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'templateVariableType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'TemplateVariableType'),
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
      name: NameNode(value: 'data'),
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
const documentNodeFragmentTemplateVariable = DocumentNode(definitions: [
  fragmentDefinitionTemplateVariable,
  fragmentDefinitionTemplateVariableType,
]);

extension ClientExtension$Fragment$TemplateVariable on graphql.GraphQLClient {
  void writeFragment$TemplateVariable({
    required Fragment$TemplateVariable data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'TemplateVariable',
            document: documentNodeFragmentTemplateVariable,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$TemplateVariable? readFragment$TemplateVariable({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'TemplateVariable',
          document: documentNodeFragmentTemplateVariable,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$TemplateVariable.fromJson(result);
  }
}

class Fragment$ContentTemplateVariable {
  Fragment$ContentTemplateVariable({
    required this.id,
    this.templateVariableTypeId,
    this.templateVariableType,
    required this.contentTemplateId,
    this.data,
    required this.createdAt,
    this.$__typename = 'ContentTemplateVariable',
  });

  factory Fragment$ContentTemplateVariable.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$templateVariableTypeId = json['templateVariableTypeId'];
    final l$templateVariableType = json['templateVariableType'];
    final l$contentTemplateId = json['contentTemplateId'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentTemplateVariable(
      id: (l$id as String),
      templateVariableTypeId: (l$templateVariableTypeId as String?),
      templateVariableType: l$templateVariableType == null
          ? null
          : Fragment$TemplateVariableType.fromJson(
              (l$templateVariableType as Map<String, dynamic>)),
      contentTemplateId: (l$contentTemplateId as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? templateVariableTypeId;

  final Fragment$TemplateVariableType? templateVariableType;

  final String contentTemplateId;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$templateVariableTypeId = templateVariableTypeId;
    _resultData['templateVariableTypeId'] = l$templateVariableTypeId;
    final l$templateVariableType = templateVariableType;
    _resultData['templateVariableType'] = l$templateVariableType?.toJson();
    final l$contentTemplateId = contentTemplateId;
    _resultData['contentTemplateId'] = l$contentTemplateId;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$templateVariableTypeId = templateVariableTypeId;
    final l$templateVariableType = templateVariableType;
    final l$contentTemplateId = contentTemplateId;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$templateVariableTypeId,
      l$templateVariableType,
      l$contentTemplateId,
      l$data,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentTemplateVariable) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$templateVariableTypeId = templateVariableTypeId;
    final lOther$templateVariableTypeId = other.templateVariableTypeId;
    if (l$templateVariableTypeId != lOther$templateVariableTypeId) {
      return false;
    }
    final l$templateVariableType = templateVariableType;
    final lOther$templateVariableType = other.templateVariableType;
    if (l$templateVariableType != lOther$templateVariableType) {
      return false;
    }
    final l$contentTemplateId = contentTemplateId;
    final lOther$contentTemplateId = other.contentTemplateId;
    if (l$contentTemplateId != lOther$contentTemplateId) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
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

extension UtilityExtension$Fragment$ContentTemplateVariable
    on Fragment$ContentTemplateVariable {
  CopyWith$Fragment$ContentTemplateVariable<Fragment$ContentTemplateVariable>
      get copyWith => CopyWith$Fragment$ContentTemplateVariable(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ContentTemplateVariable<TRes> {
  factory CopyWith$Fragment$ContentTemplateVariable(
    Fragment$ContentTemplateVariable instance,
    TRes Function(Fragment$ContentTemplateVariable) then,
  ) = _CopyWithImpl$Fragment$ContentTemplateVariable;

  factory CopyWith$Fragment$ContentTemplateVariable.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentTemplateVariable;

  TRes call({
    String? id,
    String? templateVariableTypeId,
    Fragment$TemplateVariableType? templateVariableType,
    String? contentTemplateId,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$TemplateVariableType<TRes> get templateVariableType;
}

class _CopyWithImpl$Fragment$ContentTemplateVariable<TRes>
    implements CopyWith$Fragment$ContentTemplateVariable<TRes> {
  _CopyWithImpl$Fragment$ContentTemplateVariable(
    this._instance,
    this._then,
  );

  final Fragment$ContentTemplateVariable _instance;

  final TRes Function(Fragment$ContentTemplateVariable) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? templateVariableTypeId = _undefined,
    Object? templateVariableType = _undefined,
    Object? contentTemplateId = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentTemplateVariable(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        templateVariableTypeId: templateVariableTypeId == _undefined
            ? _instance.templateVariableTypeId
            : (templateVariableTypeId as String?),
        templateVariableType: templateVariableType == _undefined
            ? _instance.templateVariableType
            : (templateVariableType as Fragment$TemplateVariableType?),
        contentTemplateId:
            contentTemplateId == _undefined || contentTemplateId == null
                ? _instance.contentTemplateId
                : (contentTemplateId as String),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$TemplateVariableType<TRes> get templateVariableType {
    final local$templateVariableType = _instance.templateVariableType;
    return local$templateVariableType == null
        ? CopyWith$Fragment$TemplateVariableType.stub(_then(_instance))
        : CopyWith$Fragment$TemplateVariableType(
            local$templateVariableType, (e) => call(templateVariableType: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentTemplateVariable<TRes>
    implements CopyWith$Fragment$ContentTemplateVariable<TRes> {
  _CopyWithStubImpl$Fragment$ContentTemplateVariable(this._res);

  TRes _res;

  call({
    String? id,
    String? templateVariableTypeId,
    Fragment$TemplateVariableType? templateVariableType,
    String? contentTemplateId,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$TemplateVariableType<TRes> get templateVariableType =>
      CopyWith$Fragment$TemplateVariableType.stub(_res);
}

const fragmentDefinitionContentTemplateVariable = FragmentDefinitionNode(
  name: NameNode(value: 'ContentTemplateVariable'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentTemplateVariable'),
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
      name: NameNode(value: 'templateVariableTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'templateVariableType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'TemplateVariableType'),
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
      name: NameNode(value: 'contentTemplateId'),
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
const documentNodeFragmentContentTemplateVariable = DocumentNode(definitions: [
  fragmentDefinitionContentTemplateVariable,
  fragmentDefinitionTemplateVariableType,
]);

extension ClientExtension$Fragment$ContentTemplateVariable
    on graphql.GraphQLClient {
  void writeFragment$ContentTemplateVariable({
    required Fragment$ContentTemplateVariable data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentTemplateVariable',
            document: documentNodeFragmentContentTemplateVariable,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentTemplateVariable? readFragment$ContentTemplateVariable({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentTemplateVariable',
          document: documentNodeFragmentContentTemplateVariable,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$ContentTemplateVariable.fromJson(result);
  }
}

class Fragment$ContentTemplate {
  Fragment$ContentTemplate({
    required this.id,
    required this.applicationId,
    required this.application,
    required this.contentTypeId,
    required this.contentType,
    required this.title,
    required this.body,
    this.data,
    required this.createdAt,
    required this.isActive,
    this.activatedAt,
    this.isArchived,
    this.archivedAt,
    this.updatedAt,
    this.contentTemplateVariableCollection,
    this.$__typename = 'ContentTemplate',
  });

  factory Fragment$ContentTemplate.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$applicationId = json['applicationId'];
    final l$application = json['application'];
    final l$contentTypeId = json['contentTypeId'];
    final l$contentType = json['contentType'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$isActive = json['isActive'];
    final l$activatedAt = json['activatedAt'];
    final l$isArchived = json['isArchived'];
    final l$archivedAt = json['archivedAt'];
    final l$updatedAt = json['updatedAt'];
    final l$contentTemplateVariableCollection =
        json['contentTemplateVariableCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentTemplate(
      id: (l$id as String),
      applicationId: (l$applicationId as String),
      application: Fragment$Application.fromJson(
          (l$application as Map<String, dynamic>)),
      contentTypeId: (l$contentTypeId as String),
      contentType: Fragment$ContentType.fromJson(
          (l$contentType as Map<String, dynamic>)),
      title: (l$title as String),
      body: (l$body as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      isActive: (l$isActive as bool),
      activatedAt: l$activatedAt == null
          ? null
          : DateTime.parse((l$activatedAt as String)),
      isArchived: (l$isArchived as bool?),
      archivedAt: l$archivedAt == null
          ? null
          : DateTime.parse((l$archivedAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      contentTemplateVariableCollection: l$contentTemplateVariableCollection ==
              null
          ? null
          : Fragment$ContentTemplate$contentTemplateVariableCollection.fromJson(
              (l$contentTemplateVariableCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String applicationId;

  final Fragment$Application application;

  final String contentTypeId;

  final Fragment$ContentType contentType;

  final String title;

  final String body;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final bool isActive;

  final DateTime? activatedAt;

  final bool? isArchived;

  final DateTime? archivedAt;

  final DateTime? updatedAt;

  final Fragment$ContentTemplate$contentTemplateVariableCollection?
      contentTemplateVariableCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$applicationId = applicationId;
    _resultData['applicationId'] = l$applicationId;
    final l$application = application;
    _resultData['application'] = l$application.toJson();
    final l$contentTypeId = contentTypeId;
    _resultData['contentTypeId'] = l$contentTypeId;
    final l$contentType = contentType;
    _resultData['contentType'] = l$contentType.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$isActive = isActive;
    _resultData['isActive'] = l$isActive;
    final l$activatedAt = activatedAt;
    _resultData['activatedAt'] = l$activatedAt?.toIso8601String();
    final l$isArchived = isArchived;
    _resultData['isArchived'] = l$isArchived;
    final l$archivedAt = archivedAt;
    _resultData['archivedAt'] = l$archivedAt?.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$contentTemplateVariableCollection =
        contentTemplateVariableCollection;
    _resultData['contentTemplateVariableCollection'] =
        l$contentTemplateVariableCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$applicationId = applicationId;
    final l$application = application;
    final l$contentTypeId = contentTypeId;
    final l$contentType = contentType;
    final l$title = title;
    final l$body = body;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$isActive = isActive;
    final l$activatedAt = activatedAt;
    final l$isArchived = isArchived;
    final l$archivedAt = archivedAt;
    final l$updatedAt = updatedAt;
    final l$contentTemplateVariableCollection =
        contentTemplateVariableCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$applicationId,
      l$application,
      l$contentTypeId,
      l$contentType,
      l$title,
      l$body,
      l$data,
      l$createdAt,
      l$isActive,
      l$activatedAt,
      l$isArchived,
      l$archivedAt,
      l$updatedAt,
      l$contentTemplateVariableCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentTemplate) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$applicationId = applicationId;
    final lOther$applicationId = other.applicationId;
    if (l$applicationId != lOther$applicationId) {
      return false;
    }
    final l$application = application;
    final lOther$application = other.application;
    if (l$application != lOther$application) {
      return false;
    }
    final l$contentTypeId = contentTypeId;
    final lOther$contentTypeId = other.contentTypeId;
    if (l$contentTypeId != lOther$contentTypeId) {
      return false;
    }
    final l$contentType = contentType;
    final lOther$contentType = other.contentType;
    if (l$contentType != lOther$contentType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$isActive = isActive;
    final lOther$isActive = other.isActive;
    if (l$isActive != lOther$isActive) {
      return false;
    }
    final l$activatedAt = activatedAt;
    final lOther$activatedAt = other.activatedAt;
    if (l$activatedAt != lOther$activatedAt) {
      return false;
    }
    final l$isArchived = isArchived;
    final lOther$isArchived = other.isArchived;
    if (l$isArchived != lOther$isArchived) {
      return false;
    }
    final l$archivedAt = archivedAt;
    final lOther$archivedAt = other.archivedAt;
    if (l$archivedAt != lOther$archivedAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$contentTemplateVariableCollection =
        contentTemplateVariableCollection;
    final lOther$contentTemplateVariableCollection =
        other.contentTemplateVariableCollection;
    if (l$contentTemplateVariableCollection !=
        lOther$contentTemplateVariableCollection) {
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

extension UtilityExtension$Fragment$ContentTemplate
    on Fragment$ContentTemplate {
  CopyWith$Fragment$ContentTemplate<Fragment$ContentTemplate> get copyWith =>
      CopyWith$Fragment$ContentTemplate(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ContentTemplate<TRes> {
  factory CopyWith$Fragment$ContentTemplate(
    Fragment$ContentTemplate instance,
    TRes Function(Fragment$ContentTemplate) then,
  ) = _CopyWithImpl$Fragment$ContentTemplate;

  factory CopyWith$Fragment$ContentTemplate.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentTemplate;

  TRes call({
    String? id,
    String? applicationId,
    Fragment$Application? application,
    String? contentTypeId,
    Fragment$ContentType? contentType,
    String? title,
    String? body,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    bool? isActive,
    DateTime? activatedAt,
    bool? isArchived,
    DateTime? archivedAt,
    DateTime? updatedAt,
    Fragment$ContentTemplate$contentTemplateVariableCollection?
        contentTemplateVariableCollection,
    String? $__typename,
  });
  CopyWith$Fragment$Application<TRes> get application;
  CopyWith$Fragment$ContentType<TRes> get contentType;
  CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<TRes>
      get contentTemplateVariableCollection;
}

class _CopyWithImpl$Fragment$ContentTemplate<TRes>
    implements CopyWith$Fragment$ContentTemplate<TRes> {
  _CopyWithImpl$Fragment$ContentTemplate(
    this._instance,
    this._then,
  );

  final Fragment$ContentTemplate _instance;

  final TRes Function(Fragment$ContentTemplate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? applicationId = _undefined,
    Object? application = _undefined,
    Object? contentTypeId = _undefined,
    Object? contentType = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? isActive = _undefined,
    Object? activatedAt = _undefined,
    Object? isArchived = _undefined,
    Object? archivedAt = _undefined,
    Object? updatedAt = _undefined,
    Object? contentTemplateVariableCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentTemplate(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        applicationId: applicationId == _undefined || applicationId == null
            ? _instance.applicationId
            : (applicationId as String),
        application: application == _undefined || application == null
            ? _instance.application
            : (application as Fragment$Application),
        contentTypeId: contentTypeId == _undefined || contentTypeId == null
            ? _instance.contentTypeId
            : (contentTypeId as String),
        contentType: contentType == _undefined || contentType == null
            ? _instance.contentType
            : (contentType as Fragment$ContentType),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        body: body == _undefined || body == null
            ? _instance.body
            : (body as String),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        isActive: isActive == _undefined || isActive == null
            ? _instance.isActive
            : (isActive as bool),
        activatedAt: activatedAt == _undefined
            ? _instance.activatedAt
            : (activatedAt as DateTime?),
        isArchived: isArchived == _undefined
            ? _instance.isArchived
            : (isArchived as bool?),
        archivedAt: archivedAt == _undefined
            ? _instance.archivedAt
            : (archivedAt as DateTime?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        contentTemplateVariableCollection: contentTemplateVariableCollection ==
                _undefined
            ? _instance.contentTemplateVariableCollection
            : (contentTemplateVariableCollection
                as Fragment$ContentTemplate$contentTemplateVariableCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Application<TRes> get application {
    final local$application = _instance.application;
    return CopyWith$Fragment$Application(
        local$application, (e) => call(application: e));
  }

  CopyWith$Fragment$ContentType<TRes> get contentType {
    final local$contentType = _instance.contentType;
    return CopyWith$Fragment$ContentType(
        local$contentType, (e) => call(contentType: e));
  }

  CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<TRes>
      get contentTemplateVariableCollection {
    final local$contentTemplateVariableCollection =
        _instance.contentTemplateVariableCollection;
    return local$contentTemplateVariableCollection == null
        ? CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection
            .stub(_then(_instance))
        : CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection(
            local$contentTemplateVariableCollection,
            (e) => call(contentTemplateVariableCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentTemplate<TRes>
    implements CopyWith$Fragment$ContentTemplate<TRes> {
  _CopyWithStubImpl$Fragment$ContentTemplate(this._res);

  TRes _res;

  call({
    String? id,
    String? applicationId,
    Fragment$Application? application,
    String? contentTypeId,
    Fragment$ContentType? contentType,
    String? title,
    String? body,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    bool? isActive,
    DateTime? activatedAt,
    bool? isArchived,
    DateTime? archivedAt,
    DateTime? updatedAt,
    Fragment$ContentTemplate$contentTemplateVariableCollection?
        contentTemplateVariableCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Application<TRes> get application =>
      CopyWith$Fragment$Application.stub(_res);

  CopyWith$Fragment$ContentType<TRes> get contentType =>
      CopyWith$Fragment$ContentType.stub(_res);

  CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<TRes>
      get contentTemplateVariableCollection =>
          CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection
              .stub(_res);
}

const fragmentDefinitionContentTemplate = FragmentDefinitionNode(
  name: NameNode(value: 'ContentTemplate'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentTemplate'),
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
      name: NameNode(value: 'applicationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'application'),
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
      name: NameNode(value: 'contentTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ContentType'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'body'),
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
      name: NameNode(value: 'createdAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isActive'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'activatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isArchived'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'archivedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentTemplateVariableCollection'),
      alias: null,
      arguments: [],
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
                  name: NameNode(value: 'ContentTemplateVariable'),
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
);
const documentNodeFragmentContentTemplate = DocumentNode(definitions: [
  fragmentDefinitionContentTemplate,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionContentType,
  fragmentDefinitionContentTemplateVariable,
  fragmentDefinitionTemplateVariableType,
]);

extension ClientExtension$Fragment$ContentTemplate on graphql.GraphQLClient {
  void writeFragment$ContentTemplate({
    required Fragment$ContentTemplate data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentTemplate',
            document: documentNodeFragmentContentTemplate,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentTemplate? readFragment$ContentTemplate({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentTemplate',
          document: documentNodeFragmentContentTemplate,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentTemplate.fromJson(result);
  }
}

class Fragment$ContentTemplate$contentTemplateVariableCollection {
  Fragment$ContentTemplate$contentTemplateVariableCollection({
    required this.edges,
    this.$__typename = 'ContentTemplateVariableConnection',
  });

  factory Fragment$ContentTemplate$contentTemplateVariableCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentTemplate$contentTemplateVariableCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$ContentTemplate$contentTemplateVariableCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ContentTemplate$contentTemplateVariableCollection$edges>
      edges;

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
    if (!(other
            is Fragment$ContentTemplate$contentTemplateVariableCollection) ||
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

extension UtilityExtension$Fragment$ContentTemplate$contentTemplateVariableCollection
    on Fragment$ContentTemplate$contentTemplateVariableCollection {
  CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<
          Fragment$ContentTemplate$contentTemplateVariableCollection>
      get copyWith =>
          CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<
    TRes> {
  factory CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection(
    Fragment$ContentTemplate$contentTemplateVariableCollection instance,
    TRes Function(Fragment$ContentTemplate$contentTemplateVariableCollection)
        then,
  ) = _CopyWithImpl$Fragment$ContentTemplate$contentTemplateVariableCollection;

  factory CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ContentTemplate$contentTemplateVariableCollection;

  TRes call({
    List<Fragment$ContentTemplate$contentTemplateVariableCollection$edges>?
        edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$ContentTemplate$contentTemplateVariableCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
                      Fragment$ContentTemplate$contentTemplateVariableCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$ContentTemplate$contentTemplateVariableCollection<
        TRes>
    implements
        CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<
            TRes> {
  _CopyWithImpl$Fragment$ContentTemplate$contentTemplateVariableCollection(
    this._instance,
    this._then,
  );

  final Fragment$ContentTemplate$contentTemplateVariableCollection _instance;

  final TRes Function(
      Fragment$ContentTemplate$contentTemplateVariableCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentTemplate$contentTemplateVariableCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$ContentTemplate$contentTemplateVariableCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$ContentTemplate$contentTemplateVariableCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
                          Fragment$ContentTemplate$contentTemplateVariableCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$ContentTemplate$contentTemplateVariableCollection<
        TRes>
    implements
        CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection<
            TRes> {
  _CopyWithStubImpl$Fragment$ContentTemplate$contentTemplateVariableCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ContentTemplate$contentTemplateVariableCollection$edges>?
        edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$ContentTemplate$contentTemplateVariableCollection$edges {
  Fragment$ContentTemplate$contentTemplateVariableCollection$edges({
    required this.node,
    this.$__typename = 'ContentTemplateVariableEdge',
  });

  factory Fragment$ContentTemplate$contentTemplateVariableCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
      node: Fragment$ContentTemplateVariable.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentTemplateVariable node;

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
            is Fragment$ContentTemplate$contentTemplateVariableCollection$edges) ||
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

extension UtilityExtension$Fragment$ContentTemplate$contentTemplateVariableCollection$edges
    on Fragment$ContentTemplate$contentTemplateVariableCollection$edges {
  CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
          Fragment$ContentTemplate$contentTemplateVariableCollection$edges>
      get copyWith =>
          CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
    TRes> {
  factory CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
    Fragment$ContentTemplate$contentTemplateVariableCollection$edges instance,
    TRes Function(
            Fragment$ContentTemplate$contentTemplateVariableCollection$edges)
        then,
  ) = _CopyWithImpl$Fragment$ContentTemplate$contentTemplateVariableCollection$edges;

  factory CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ContentTemplate$contentTemplateVariableCollection$edges;

  TRes call({
    Fragment$ContentTemplateVariable? node,
    String? $__typename,
  });
  CopyWith$Fragment$ContentTemplateVariable<TRes> get node;
}

class _CopyWithImpl$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
            TRes> {
  _CopyWithImpl$Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$ContentTemplate$contentTemplateVariableCollection$edges
      _instance;

  final TRes Function(
      Fragment$ContentTemplate$contentTemplateVariableCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ContentTemplateVariable),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentTemplateVariable<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ContentTemplateVariable(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$ContentTemplate$contentTemplateVariableCollection$edges<
            TRes> {
  _CopyWithStubImpl$Fragment$ContentTemplate$contentTemplateVariableCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ContentTemplateVariable? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentTemplateVariable<TRes> get node =>
      CopyWith$Fragment$ContentTemplateVariable.stub(_res);
}

class Fragment$ContentPart {
  Fragment$ContentPart({
    required this.id,
    required this.contentTypeId,
    required this.contentType,
    required this.title,
    this.data,
    required this.body,
    this.bodyMarkdown,
    required this.createdAt,
    this.updatedAt,
    required this.version,
    this.aiContext,
    this.$__typename = 'ContentPart',
  });

  factory Fragment$ContentPart.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contentTypeId = json['contentTypeId'];
    final l$contentType = json['contentType'];
    final l$title = json['title'];
    final l$data = json['data'];
    final l$body = json['body'];
    final l$bodyMarkdown = json['bodyMarkdown'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$version = json['version'];
    final l$aiContext = json['aiContext'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentPart(
      id: (l$id as String),
      contentTypeId: (l$contentTypeId as String),
      contentType: Fragment$ContentType.fromJson(
          (l$contentType as Map<String, dynamic>)),
      title: (l$title as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      body: (l$body as String),
      bodyMarkdown: (l$bodyMarkdown as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      version: (l$version as int),
      aiContext: (l$aiContext as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String contentTypeId;

  final Fragment$ContentType contentType;

  final String title;

  final Map<String, dynamic>? data;

  final String body;

  final String? bodyMarkdown;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final int version;

  final String? aiContext;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contentTypeId = contentTypeId;
    _resultData['contentTypeId'] = l$contentTypeId;
    final l$contentType = contentType;
    _resultData['contentType'] = l$contentType.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$body = body;
    _resultData['body'] = l$body;
    final l$bodyMarkdown = bodyMarkdown;
    _resultData['bodyMarkdown'] = l$bodyMarkdown;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$version = version;
    _resultData['version'] = l$version;
    final l$aiContext = aiContext;
    _resultData['aiContext'] = l$aiContext;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contentTypeId = contentTypeId;
    final l$contentType = contentType;
    final l$title = title;
    final l$data = data;
    final l$body = body;
    final l$bodyMarkdown = bodyMarkdown;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$version = version;
    final l$aiContext = aiContext;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$contentTypeId,
      l$contentType,
      l$title,
      l$data,
      l$body,
      l$bodyMarkdown,
      l$createdAt,
      l$updatedAt,
      l$version,
      l$aiContext,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentPart) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contentTypeId = contentTypeId;
    final lOther$contentTypeId = other.contentTypeId;
    if (l$contentTypeId != lOther$contentTypeId) {
      return false;
    }
    final l$contentType = contentType;
    final lOther$contentType = other.contentType;
    if (l$contentType != lOther$contentType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$bodyMarkdown = bodyMarkdown;
    final lOther$bodyMarkdown = other.bodyMarkdown;
    if (l$bodyMarkdown != lOther$bodyMarkdown) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
      return false;
    }
    final l$aiContext = aiContext;
    final lOther$aiContext = other.aiContext;
    if (l$aiContext != lOther$aiContext) {
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

extension UtilityExtension$Fragment$ContentPart on Fragment$ContentPart {
  CopyWith$Fragment$ContentPart<Fragment$ContentPart> get copyWith =>
      CopyWith$Fragment$ContentPart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ContentPart<TRes> {
  factory CopyWith$Fragment$ContentPart(
    Fragment$ContentPart instance,
    TRes Function(Fragment$ContentPart) then,
  ) = _CopyWithImpl$Fragment$ContentPart;

  factory CopyWith$Fragment$ContentPart.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentPart;

  TRes call({
    String? id,
    String? contentTypeId,
    Fragment$ContentType? contentType,
    String? title,
    Map<String, dynamic>? data,
    String? body,
    String? bodyMarkdown,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? version,
    String? aiContext,
    String? $__typename,
  });
  CopyWith$Fragment$ContentType<TRes> get contentType;
}

class _CopyWithImpl$Fragment$ContentPart<TRes>
    implements CopyWith$Fragment$ContentPart<TRes> {
  _CopyWithImpl$Fragment$ContentPart(
    this._instance,
    this._then,
  );

  final Fragment$ContentPart _instance;

  final TRes Function(Fragment$ContentPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contentTypeId = _undefined,
    Object? contentType = _undefined,
    Object? title = _undefined,
    Object? data = _undefined,
    Object? body = _undefined,
    Object? bodyMarkdown = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? version = _undefined,
    Object? aiContext = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentPart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        contentTypeId: contentTypeId == _undefined || contentTypeId == null
            ? _instance.contentTypeId
            : (contentTypeId as String),
        contentType: contentType == _undefined || contentType == null
            ? _instance.contentType
            : (contentType as Fragment$ContentType),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        body: body == _undefined || body == null
            ? _instance.body
            : (body as String),
        bodyMarkdown: bodyMarkdown == _undefined
            ? _instance.bodyMarkdown
            : (bodyMarkdown as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        version: version == _undefined || version == null
            ? _instance.version
            : (version as int),
        aiContext: aiContext == _undefined
            ? _instance.aiContext
            : (aiContext as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentType<TRes> get contentType {
    final local$contentType = _instance.contentType;
    return CopyWith$Fragment$ContentType(
        local$contentType, (e) => call(contentType: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentPart<TRes>
    implements CopyWith$Fragment$ContentPart<TRes> {
  _CopyWithStubImpl$Fragment$ContentPart(this._res);

  TRes _res;

  call({
    String? id,
    String? contentTypeId,
    Fragment$ContentType? contentType,
    String? title,
    Map<String, dynamic>? data,
    String? body,
    String? bodyMarkdown,
    DateTime? createdAt,
    DateTime? updatedAt,
    int? version,
    String? aiContext,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentType<TRes> get contentType =>
      CopyWith$Fragment$ContentType.stub(_res);
}

const fragmentDefinitionContentPart = FragmentDefinitionNode(
  name: NameNode(value: 'ContentPart'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentPart'),
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
      name: NameNode(value: 'contentTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ContentType'),
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
      name: NameNode(value: 'title'),
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
      name: NameNode(value: 'body'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bodyMarkdown'),
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
      name: NameNode(value: 'updatedAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'version'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'aiContext'),
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
const documentNodeFragmentContentPart = DocumentNode(definitions: [
  fragmentDefinitionContentPart,
  fragmentDefinitionContentType,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);

extension ClientExtension$Fragment$ContentPart on graphql.GraphQLClient {
  void writeFragment$ContentPart({
    required Fragment$ContentPart data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentPart',
            document: documentNodeFragmentContentPart,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentPart? readFragment$ContentPart({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentPart',
          document: documentNodeFragmentContentPart,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentPart.fromJson(result);
  }
}

class Fragment$ContentContentPart {
  Fragment$ContentContentPart({
    required this.id,
    required this.contentId,
    required this.contentPartId,
    required this.contentPart,
    required this.index,
    required this.createdAt,
    this.$__typename = 'ContentContentPart',
  });

  factory Fragment$ContentContentPart.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$contentId = json['contentId'];
    final l$contentPartId = json['contentPartId'];
    final l$contentPart = json['contentPart'];
    final l$index = json['index'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ContentContentPart(
      id: (l$id as String),
      contentId: (l$contentId as String),
      contentPartId: (l$contentPartId as String),
      contentPart: Fragment$ContentPart.fromJson(
          (l$contentPart as Map<String, dynamic>)),
      index: (l$index as int),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String contentId;

  final String contentPartId;

  final Fragment$ContentPart contentPart;

  final int index;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$contentId = contentId;
    _resultData['contentId'] = l$contentId;
    final l$contentPartId = contentPartId;
    _resultData['contentPartId'] = l$contentPartId;
    final l$contentPart = contentPart;
    _resultData['contentPart'] = l$contentPart.toJson();
    final l$index = index;
    _resultData['index'] = l$index;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$contentId = contentId;
    final l$contentPartId = contentPartId;
    final l$contentPart = contentPart;
    final l$index = index;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$contentId,
      l$contentPartId,
      l$contentPart,
      l$index,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ContentContentPart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$contentId = contentId;
    final lOther$contentId = other.contentId;
    if (l$contentId != lOther$contentId) {
      return false;
    }
    final l$contentPartId = contentPartId;
    final lOther$contentPartId = other.contentPartId;
    if (l$contentPartId != lOther$contentPartId) {
      return false;
    }
    final l$contentPart = contentPart;
    final lOther$contentPart = other.contentPart;
    if (l$contentPart != lOther$contentPart) {
      return false;
    }
    final l$index = index;
    final lOther$index = other.index;
    if (l$index != lOther$index) {
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

extension UtilityExtension$Fragment$ContentContentPart
    on Fragment$ContentContentPart {
  CopyWith$Fragment$ContentContentPart<Fragment$ContentContentPart>
      get copyWith => CopyWith$Fragment$ContentContentPart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ContentContentPart<TRes> {
  factory CopyWith$Fragment$ContentContentPart(
    Fragment$ContentContentPart instance,
    TRes Function(Fragment$ContentContentPart) then,
  ) = _CopyWithImpl$Fragment$ContentContentPart;

  factory CopyWith$Fragment$ContentContentPart.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ContentContentPart;

  TRes call({
    String? id,
    String? contentId,
    String? contentPartId,
    Fragment$ContentPart? contentPart,
    int? index,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$ContentPart<TRes> get contentPart;
}

class _CopyWithImpl$Fragment$ContentContentPart<TRes>
    implements CopyWith$Fragment$ContentContentPart<TRes> {
  _CopyWithImpl$Fragment$ContentContentPart(
    this._instance,
    this._then,
  );

  final Fragment$ContentContentPart _instance;

  final TRes Function(Fragment$ContentContentPart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? contentId = _undefined,
    Object? contentPartId = _undefined,
    Object? contentPart = _undefined,
    Object? index = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ContentContentPart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        contentId: contentId == _undefined || contentId == null
            ? _instance.contentId
            : (contentId as String),
        contentPartId: contentPartId == _undefined || contentPartId == null
            ? _instance.contentPartId
            : (contentPartId as String),
        contentPart: contentPart == _undefined || contentPart == null
            ? _instance.contentPart
            : (contentPart as Fragment$ContentPart),
        index: index == _undefined || index == null
            ? _instance.index
            : (index as int),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentPart<TRes> get contentPart {
    final local$contentPart = _instance.contentPart;
    return CopyWith$Fragment$ContentPart(
        local$contentPart, (e) => call(contentPart: e));
  }
}

class _CopyWithStubImpl$Fragment$ContentContentPart<TRes>
    implements CopyWith$Fragment$ContentContentPart<TRes> {
  _CopyWithStubImpl$Fragment$ContentContentPart(this._res);

  TRes _res;

  call({
    String? id,
    String? contentId,
    String? contentPartId,
    Fragment$ContentPart? contentPart,
    int? index,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentPart<TRes> get contentPart =>
      CopyWith$Fragment$ContentPart.stub(_res);
}

const fragmentDefinitionContentContentPart = FragmentDefinitionNode(
  name: NameNode(value: 'ContentContentPart'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ContentContentPart'),
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
      name: NameNode(value: 'contentId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentPartId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentPart'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ContentPart'),
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
      name: NameNode(value: 'index'),
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
const documentNodeFragmentContentContentPart = DocumentNode(definitions: [
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
  fragmentDefinitionContentType,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);

extension ClientExtension$Fragment$ContentContentPart on graphql.GraphQLClient {
  void writeFragment$ContentContentPart({
    required Fragment$ContentContentPart data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ContentContentPart',
            document: documentNodeFragmentContentContentPart,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ContentContentPart? readFragment$ContentContentPart({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ContentContentPart',
          document: documentNodeFragmentContentContentPart,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ContentContentPart.fromJson(result);
  }
}

class Fragment$Content {
  Fragment$Content({
    required this.id,
    required this.applicationId,
    required this.application,
    required this.contentTypeId,
    required this.contentType,
    this.authorId,
    this.author,
    required this.title,
    this.description,
    required this.body,
    this.bodyMarkdown,
    required this.publicationStateId,
    required this.publicationState,
    required this.isApproved,
    this.approvedAt,
    required this.createdAt,
    this.coverUrl,
    this.publicationUrl,
    this.version,
    this.contentTemplateId,
    this.contentTemplate,
    this.creationTypeId,
    this.creationType,
    this.contentContentPartCollection,
    this.$__typename = 'Content',
  });

  factory Fragment$Content.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$applicationId = json['applicationId'];
    final l$application = json['application'];
    final l$contentTypeId = json['contentTypeId'];
    final l$contentType = json['contentType'];
    final l$authorId = json['authorId'];
    final l$author = json['author'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$body = json['body'];
    final l$bodyMarkdown = json['bodyMarkdown'];
    final l$publicationStateId = json['publicationStateId'];
    final l$publicationState = json['publicationState'];
    final l$isApproved = json['isApproved'];
    final l$approvedAt = json['approvedAt'];
    final l$createdAt = json['createdAt'];
    final l$coverUrl = json['coverUrl'];
    final l$publicationUrl = json['publicationUrl'];
    final l$version = json['version'];
    final l$contentTemplateId = json['contentTemplateId'];
    final l$contentTemplate = json['contentTemplate'];
    final l$creationTypeId = json['creationTypeId'];
    final l$creationType = json['creationType'];
    final l$contentContentPartCollection = json['contentContentPartCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$Content(
      id: (l$id as String),
      applicationId: (l$applicationId as String),
      application: Fragment$Application.fromJson(
          (l$application as Map<String, dynamic>)),
      contentTypeId: (l$contentTypeId as String),
      contentType: Fragment$ContentType.fromJson(
          (l$contentType as Map<String, dynamic>)),
      authorId: (l$authorId as String?),
      author: l$author == null
          ? null
          : Fragment$User.fromJson((l$author as Map<String, dynamic>)),
      title: (l$title as String),
      description: (l$description as String?),
      body: (l$body as String),
      bodyMarkdown: (l$bodyMarkdown as String?),
      publicationStateId: (l$publicationStateId as String),
      publicationState: Fragment$PublicationState.fromJson(
          (l$publicationState as Map<String, dynamic>)),
      isApproved: (l$isApproved as bool),
      approvedAt: l$approvedAt == null
          ? null
          : DateTime.parse((l$approvedAt as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      coverUrl: (l$coverUrl as String?),
      publicationUrl: (l$publicationUrl as String?),
      version: (l$version as int?),
      contentTemplateId: (l$contentTemplateId as String?),
      contentTemplate: l$contentTemplate == null
          ? null
          : Fragment$ContentTemplate.fromJson(
              (l$contentTemplate as Map<String, dynamic>)),
      creationTypeId: (l$creationTypeId as String?),
      creationType: l$creationType == null
          ? null
          : Fragment$CreationType.fromJson(
              (l$creationType as Map<String, dynamic>)),
      contentContentPartCollection: l$contentContentPartCollection == null
          ? null
          : Fragment$Content$contentContentPartCollection.fromJson(
              (l$contentContentPartCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String applicationId;

  final Fragment$Application application;

  final String contentTypeId;

  final Fragment$ContentType contentType;

  final String? authorId;

  final Fragment$User? author;

  final String title;

  final String? description;

  final String body;

  final String? bodyMarkdown;

  final String publicationStateId;

  final Fragment$PublicationState publicationState;

  final bool isApproved;

  final DateTime? approvedAt;

  final DateTime createdAt;

  final String? coverUrl;

  final String? publicationUrl;

  final int? version;

  final String? contentTemplateId;

  final Fragment$ContentTemplate? contentTemplate;

  final String? creationTypeId;

  final Fragment$CreationType? creationType;

  final Fragment$Content$contentContentPartCollection?
      contentContentPartCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$applicationId = applicationId;
    _resultData['applicationId'] = l$applicationId;
    final l$application = application;
    _resultData['application'] = l$application.toJson();
    final l$contentTypeId = contentTypeId;
    _resultData['contentTypeId'] = l$contentTypeId;
    final l$contentType = contentType;
    _resultData['contentType'] = l$contentType.toJson();
    final l$authorId = authorId;
    _resultData['authorId'] = l$authorId;
    final l$author = author;
    _resultData['author'] = l$author?.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$bodyMarkdown = bodyMarkdown;
    _resultData['bodyMarkdown'] = l$bodyMarkdown;
    final l$publicationStateId = publicationStateId;
    _resultData['publicationStateId'] = l$publicationStateId;
    final l$publicationState = publicationState;
    _resultData['publicationState'] = l$publicationState.toJson();
    final l$isApproved = isApproved;
    _resultData['isApproved'] = l$isApproved;
    final l$approvedAt = approvedAt;
    _resultData['approvedAt'] = l$approvedAt?.toIso8601String();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$publicationUrl = publicationUrl;
    _resultData['publicationUrl'] = l$publicationUrl;
    final l$version = version;
    _resultData['version'] = l$version;
    final l$contentTemplateId = contentTemplateId;
    _resultData['contentTemplateId'] = l$contentTemplateId;
    final l$contentTemplate = contentTemplate;
    _resultData['contentTemplate'] = l$contentTemplate?.toJson();
    final l$creationTypeId = creationTypeId;
    _resultData['creationTypeId'] = l$creationTypeId;
    final l$creationType = creationType;
    _resultData['creationType'] = l$creationType?.toJson();
    final l$contentContentPartCollection = contentContentPartCollection;
    _resultData['contentContentPartCollection'] =
        l$contentContentPartCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$applicationId = applicationId;
    final l$application = application;
    final l$contentTypeId = contentTypeId;
    final l$contentType = contentType;
    final l$authorId = authorId;
    final l$author = author;
    final l$title = title;
    final l$description = description;
    final l$body = body;
    final l$bodyMarkdown = bodyMarkdown;
    final l$publicationStateId = publicationStateId;
    final l$publicationState = publicationState;
    final l$isApproved = isApproved;
    final l$approvedAt = approvedAt;
    final l$createdAt = createdAt;
    final l$coverUrl = coverUrl;
    final l$publicationUrl = publicationUrl;
    final l$version = version;
    final l$contentTemplateId = contentTemplateId;
    final l$contentTemplate = contentTemplate;
    final l$creationTypeId = creationTypeId;
    final l$creationType = creationType;
    final l$contentContentPartCollection = contentContentPartCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$applicationId,
      l$application,
      l$contentTypeId,
      l$contentType,
      l$authorId,
      l$author,
      l$title,
      l$description,
      l$body,
      l$bodyMarkdown,
      l$publicationStateId,
      l$publicationState,
      l$isApproved,
      l$approvedAt,
      l$createdAt,
      l$coverUrl,
      l$publicationUrl,
      l$version,
      l$contentTemplateId,
      l$contentTemplate,
      l$creationTypeId,
      l$creationType,
      l$contentContentPartCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Content) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$applicationId = applicationId;
    final lOther$applicationId = other.applicationId;
    if (l$applicationId != lOther$applicationId) {
      return false;
    }
    final l$application = application;
    final lOther$application = other.application;
    if (l$application != lOther$application) {
      return false;
    }
    final l$contentTypeId = contentTypeId;
    final lOther$contentTypeId = other.contentTypeId;
    if (l$contentTypeId != lOther$contentTypeId) {
      return false;
    }
    final l$contentType = contentType;
    final lOther$contentType = other.contentType;
    if (l$contentType != lOther$contentType) {
      return false;
    }
    final l$authorId = authorId;
    final lOther$authorId = other.authorId;
    if (l$authorId != lOther$authorId) {
      return false;
    }
    final l$author = author;
    final lOther$author = other.author;
    if (l$author != lOther$author) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$bodyMarkdown = bodyMarkdown;
    final lOther$bodyMarkdown = other.bodyMarkdown;
    if (l$bodyMarkdown != lOther$bodyMarkdown) {
      return false;
    }
    final l$publicationStateId = publicationStateId;
    final lOther$publicationStateId = other.publicationStateId;
    if (l$publicationStateId != lOther$publicationStateId) {
      return false;
    }
    final l$publicationState = publicationState;
    final lOther$publicationState = other.publicationState;
    if (l$publicationState != lOther$publicationState) {
      return false;
    }
    final l$isApproved = isApproved;
    final lOther$isApproved = other.isApproved;
    if (l$isApproved != lOther$isApproved) {
      return false;
    }
    final l$approvedAt = approvedAt;
    final lOther$approvedAt = other.approvedAt;
    if (l$approvedAt != lOther$approvedAt) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$coverUrl = coverUrl;
    final lOther$coverUrl = other.coverUrl;
    if (l$coverUrl != lOther$coverUrl) {
      return false;
    }
    final l$publicationUrl = publicationUrl;
    final lOther$publicationUrl = other.publicationUrl;
    if (l$publicationUrl != lOther$publicationUrl) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
      return false;
    }
    final l$contentTemplateId = contentTemplateId;
    final lOther$contentTemplateId = other.contentTemplateId;
    if (l$contentTemplateId != lOther$contentTemplateId) {
      return false;
    }
    final l$contentTemplate = contentTemplate;
    final lOther$contentTemplate = other.contentTemplate;
    if (l$contentTemplate != lOther$contentTemplate) {
      return false;
    }
    final l$creationTypeId = creationTypeId;
    final lOther$creationTypeId = other.creationTypeId;
    if (l$creationTypeId != lOther$creationTypeId) {
      return false;
    }
    final l$creationType = creationType;
    final lOther$creationType = other.creationType;
    if (l$creationType != lOther$creationType) {
      return false;
    }
    final l$contentContentPartCollection = contentContentPartCollection;
    final lOther$contentContentPartCollection =
        other.contentContentPartCollection;
    if (l$contentContentPartCollection != lOther$contentContentPartCollection) {
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

extension UtilityExtension$Fragment$Content on Fragment$Content {
  CopyWith$Fragment$Content<Fragment$Content> get copyWith =>
      CopyWith$Fragment$Content(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Content<TRes> {
  factory CopyWith$Fragment$Content(
    Fragment$Content instance,
    TRes Function(Fragment$Content) then,
  ) = _CopyWithImpl$Fragment$Content;

  factory CopyWith$Fragment$Content.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Content;

  TRes call({
    String? id,
    String? applicationId,
    Fragment$Application? application,
    String? contentTypeId,
    Fragment$ContentType? contentType,
    String? authorId,
    Fragment$User? author,
    String? title,
    String? description,
    String? body,
    String? bodyMarkdown,
    String? publicationStateId,
    Fragment$PublicationState? publicationState,
    bool? isApproved,
    DateTime? approvedAt,
    DateTime? createdAt,
    String? coverUrl,
    String? publicationUrl,
    int? version,
    String? contentTemplateId,
    Fragment$ContentTemplate? contentTemplate,
    String? creationTypeId,
    Fragment$CreationType? creationType,
    Fragment$Content$contentContentPartCollection? contentContentPartCollection,
    String? $__typename,
  });
  CopyWith$Fragment$Application<TRes> get application;
  CopyWith$Fragment$ContentType<TRes> get contentType;
  CopyWith$Fragment$User<TRes> get author;
  CopyWith$Fragment$PublicationState<TRes> get publicationState;
  CopyWith$Fragment$ContentTemplate<TRes> get contentTemplate;
  CopyWith$Fragment$CreationType<TRes> get creationType;
  CopyWith$Fragment$Content$contentContentPartCollection<TRes>
      get contentContentPartCollection;
}

class _CopyWithImpl$Fragment$Content<TRes>
    implements CopyWith$Fragment$Content<TRes> {
  _CopyWithImpl$Fragment$Content(
    this._instance,
    this._then,
  );

  final Fragment$Content _instance;

  final TRes Function(Fragment$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? applicationId = _undefined,
    Object? application = _undefined,
    Object? contentTypeId = _undefined,
    Object? contentType = _undefined,
    Object? authorId = _undefined,
    Object? author = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? body = _undefined,
    Object? bodyMarkdown = _undefined,
    Object? publicationStateId = _undefined,
    Object? publicationState = _undefined,
    Object? isApproved = _undefined,
    Object? approvedAt = _undefined,
    Object? createdAt = _undefined,
    Object? coverUrl = _undefined,
    Object? publicationUrl = _undefined,
    Object? version = _undefined,
    Object? contentTemplateId = _undefined,
    Object? contentTemplate = _undefined,
    Object? creationTypeId = _undefined,
    Object? creationType = _undefined,
    Object? contentContentPartCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Content(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        applicationId: applicationId == _undefined || applicationId == null
            ? _instance.applicationId
            : (applicationId as String),
        application: application == _undefined || application == null
            ? _instance.application
            : (application as Fragment$Application),
        contentTypeId: contentTypeId == _undefined || contentTypeId == null
            ? _instance.contentTypeId
            : (contentTypeId as String),
        contentType: contentType == _undefined || contentType == null
            ? _instance.contentType
            : (contentType as Fragment$ContentType),
        authorId:
            authorId == _undefined ? _instance.authorId : (authorId as String?),
        author: author == _undefined
            ? _instance.author
            : (author as Fragment$User?),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        body: body == _undefined || body == null
            ? _instance.body
            : (body as String),
        bodyMarkdown: bodyMarkdown == _undefined
            ? _instance.bodyMarkdown
            : (bodyMarkdown as String?),
        publicationStateId:
            publicationStateId == _undefined || publicationStateId == null
                ? _instance.publicationStateId
                : (publicationStateId as String),
        publicationState:
            publicationState == _undefined || publicationState == null
                ? _instance.publicationState
                : (publicationState as Fragment$PublicationState),
        isApproved: isApproved == _undefined || isApproved == null
            ? _instance.isApproved
            : (isApproved as bool),
        approvedAt: approvedAt == _undefined
            ? _instance.approvedAt
            : (approvedAt as DateTime?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        publicationUrl: publicationUrl == _undefined
            ? _instance.publicationUrl
            : (publicationUrl as String?),
        version: version == _undefined ? _instance.version : (version as int?),
        contentTemplateId: contentTemplateId == _undefined
            ? _instance.contentTemplateId
            : (contentTemplateId as String?),
        contentTemplate: contentTemplate == _undefined
            ? _instance.contentTemplate
            : (contentTemplate as Fragment$ContentTemplate?),
        creationTypeId: creationTypeId == _undefined
            ? _instance.creationTypeId
            : (creationTypeId as String?),
        creationType: creationType == _undefined
            ? _instance.creationType
            : (creationType as Fragment$CreationType?),
        contentContentPartCollection: contentContentPartCollection == _undefined
            ? _instance.contentContentPartCollection
            : (contentContentPartCollection
                as Fragment$Content$contentContentPartCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Application<TRes> get application {
    final local$application = _instance.application;
    return CopyWith$Fragment$Application(
        local$application, (e) => call(application: e));
  }

  CopyWith$Fragment$ContentType<TRes> get contentType {
    final local$contentType = _instance.contentType;
    return CopyWith$Fragment$ContentType(
        local$contentType, (e) => call(contentType: e));
  }

  CopyWith$Fragment$User<TRes> get author {
    final local$author = _instance.author;
    return local$author == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$author, (e) => call(author: e));
  }

  CopyWith$Fragment$PublicationState<TRes> get publicationState {
    final local$publicationState = _instance.publicationState;
    return CopyWith$Fragment$PublicationState(
        local$publicationState, (e) => call(publicationState: e));
  }

  CopyWith$Fragment$ContentTemplate<TRes> get contentTemplate {
    final local$contentTemplate = _instance.contentTemplate;
    return local$contentTemplate == null
        ? CopyWith$Fragment$ContentTemplate.stub(_then(_instance))
        : CopyWith$Fragment$ContentTemplate(
            local$contentTemplate, (e) => call(contentTemplate: e));
  }

  CopyWith$Fragment$CreationType<TRes> get creationType {
    final local$creationType = _instance.creationType;
    return local$creationType == null
        ? CopyWith$Fragment$CreationType.stub(_then(_instance))
        : CopyWith$Fragment$CreationType(
            local$creationType, (e) => call(creationType: e));
  }

  CopyWith$Fragment$Content$contentContentPartCollection<TRes>
      get contentContentPartCollection {
    final local$contentContentPartCollection =
        _instance.contentContentPartCollection;
    return local$contentContentPartCollection == null
        ? CopyWith$Fragment$Content$contentContentPartCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$Content$contentContentPartCollection(
            local$contentContentPartCollection,
            (e) => call(contentContentPartCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Content<TRes>
    implements CopyWith$Fragment$Content<TRes> {
  _CopyWithStubImpl$Fragment$Content(this._res);

  TRes _res;

  call({
    String? id,
    String? applicationId,
    Fragment$Application? application,
    String? contentTypeId,
    Fragment$ContentType? contentType,
    String? authorId,
    Fragment$User? author,
    String? title,
    String? description,
    String? body,
    String? bodyMarkdown,
    String? publicationStateId,
    Fragment$PublicationState? publicationState,
    bool? isApproved,
    DateTime? approvedAt,
    DateTime? createdAt,
    String? coverUrl,
    String? publicationUrl,
    int? version,
    String? contentTemplateId,
    Fragment$ContentTemplate? contentTemplate,
    String? creationTypeId,
    Fragment$CreationType? creationType,
    Fragment$Content$contentContentPartCollection? contentContentPartCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Application<TRes> get application =>
      CopyWith$Fragment$Application.stub(_res);

  CopyWith$Fragment$ContentType<TRes> get contentType =>
      CopyWith$Fragment$ContentType.stub(_res);

  CopyWith$Fragment$User<TRes> get author => CopyWith$Fragment$User.stub(_res);

  CopyWith$Fragment$PublicationState<TRes> get publicationState =>
      CopyWith$Fragment$PublicationState.stub(_res);

  CopyWith$Fragment$ContentTemplate<TRes> get contentTemplate =>
      CopyWith$Fragment$ContentTemplate.stub(_res);

  CopyWith$Fragment$CreationType<TRes> get creationType =>
      CopyWith$Fragment$CreationType.stub(_res);

  CopyWith$Fragment$Content$contentContentPartCollection<TRes>
      get contentContentPartCollection =>
          CopyWith$Fragment$Content$contentContentPartCollection.stub(_res);
}

const fragmentDefinitionContent = FragmentDefinitionNode(
  name: NameNode(value: 'Content'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Content'),
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
      name: NameNode(value: 'applicationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'application'),
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
      name: NameNode(value: 'contentTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ContentType'),
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
      name: NameNode(value: 'authorId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'author'),
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
      name: NameNode(value: 'title'),
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
      name: NameNode(value: 'body'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bodyMarkdown'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'publicationStateId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'publicationState'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PublicationState'),
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
      name: NameNode(value: 'isApproved'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'approvedAt'),
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
      name: NameNode(value: 'coverUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'publicationUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'version'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentTemplateId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'contentTemplate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ContentTemplate'),
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
      name: NameNode(value: 'creationTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'creationType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'CreationType'),
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
      name: NameNode(value: 'contentContentPartCollection'),
      alias: null,
      arguments: [
        ArgumentNode(
          name: NameNode(value: 'orderBy'),
          value: ListValueNode(values: [
            ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'index'),
                value: EnumValueNode(name: NameNode(value: 'AscNullsLast')),
              )
            ])
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
                  name: NameNode(value: 'ContentContentPart'),
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
);
const documentNodeFragmentContent = DocumentNode(definitions: [
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
  fragmentDefinitionTemplateVariableType,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);

extension ClientExtension$Fragment$Content on graphql.GraphQLClient {
  void writeFragment$Content({
    required Fragment$Content data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Content',
            document: documentNodeFragmentContent,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Content? readFragment$Content({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Content',
          document: documentNodeFragmentContent,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Content.fromJson(result);
  }
}

class Fragment$Content$contentContentPartCollection {
  Fragment$Content$contentContentPartCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ContentContentPartConnection',
  });

  factory Fragment$Content$contentContentPartCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$Content$contentContentPartCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$Content$contentContentPartCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$Content$contentContentPartCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Content$contentContentPartCollection$edges> edges;

  final Fragment$Content$contentContentPartCollection$pageInfo pageInfo;

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
    if (!(other is Fragment$Content$contentContentPartCollection) ||
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

extension UtilityExtension$Fragment$Content$contentContentPartCollection
    on Fragment$Content$contentContentPartCollection {
  CopyWith$Fragment$Content$contentContentPartCollection<
          Fragment$Content$contentContentPartCollection>
      get copyWith => CopyWith$Fragment$Content$contentContentPartCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Content$contentContentPartCollection<TRes> {
  factory CopyWith$Fragment$Content$contentContentPartCollection(
    Fragment$Content$contentContentPartCollection instance,
    TRes Function(Fragment$Content$contentContentPartCollection) then,
  ) = _CopyWithImpl$Fragment$Content$contentContentPartCollection;

  factory CopyWith$Fragment$Content$contentContentPartCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Content$contentContentPartCollection;

  TRes call({
    List<Fragment$Content$contentContentPartCollection$edges>? edges,
    Fragment$Content$contentContentPartCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Content$contentContentPartCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Content$contentContentPartCollection$edges<
                      Fragment$Content$contentContentPartCollection$edges>>)
          _fn);
  CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Fragment$Content$contentContentPartCollection<TRes>
    implements CopyWith$Fragment$Content$contentContentPartCollection<TRes> {
  _CopyWithImpl$Fragment$Content$contentContentPartCollection(
    this._instance,
    this._then,
  );

  final Fragment$Content$contentContentPartCollection _instance;

  final TRes Function(Fragment$Content$contentContentPartCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Content$contentContentPartCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Fragment$Content$contentContentPartCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Fragment$Content$contentContentPartCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Content$contentContentPartCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Content$contentContentPartCollection$edges<
                          Fragment$Content$contentContentPartCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$Content$contentContentPartCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$Content$contentContentPartCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$Content$contentContentPartCollection<TRes>
    implements CopyWith$Fragment$Content$contentContentPartCollection<TRes> {
  _CopyWithStubImpl$Fragment$Content$contentContentPartCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Content$contentContentPartCollection$edges>? edges,
    Fragment$Content$contentContentPartCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Fragment$Content$contentContentPartCollection$pageInfo.stub(
              _res);
}

class Fragment$Content$contentContentPartCollection$edges {
  Fragment$Content$contentContentPartCollection$edges({
    required this.node,
    this.$__typename = 'ContentContentPartEdge',
  });

  factory Fragment$Content$contentContentPartCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Content$contentContentPartCollection$edges(
      node: Fragment$ContentContentPart.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentContentPart node;

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
    if (!(other is Fragment$Content$contentContentPartCollection$edges) ||
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

extension UtilityExtension$Fragment$Content$contentContentPartCollection$edges
    on Fragment$Content$contentContentPartCollection$edges {
  CopyWith$Fragment$Content$contentContentPartCollection$edges<
          Fragment$Content$contentContentPartCollection$edges>
      get copyWith =>
          CopyWith$Fragment$Content$contentContentPartCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Content$contentContentPartCollection$edges<
    TRes> {
  factory CopyWith$Fragment$Content$contentContentPartCollection$edges(
    Fragment$Content$contentContentPartCollection$edges instance,
    TRes Function(Fragment$Content$contentContentPartCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Content$contentContentPartCollection$edges;

  factory CopyWith$Fragment$Content$contentContentPartCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Content$contentContentPartCollection$edges;

  TRes call({
    Fragment$ContentContentPart? node,
    String? $__typename,
  });
  CopyWith$Fragment$ContentContentPart<TRes> get node;
}

class _CopyWithImpl$Fragment$Content$contentContentPartCollection$edges<TRes>
    implements
        CopyWith$Fragment$Content$contentContentPartCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Content$contentContentPartCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Content$contentContentPartCollection$edges _instance;

  final TRes Function(Fragment$Content$contentContentPartCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Content$contentContentPartCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ContentContentPart),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentContentPart<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ContentContentPart(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Content$contentContentPartCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$Content$contentContentPartCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Content$contentContentPartCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ContentContentPart? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentContentPart<TRes> get node =>
      CopyWith$Fragment$ContentContentPart.stub(_res);
}

class Fragment$Content$contentContentPartCollection$pageInfo {
  Fragment$Content$contentContentPartCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$Content$contentContentPartCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Fragment$Content$contentContentPartCollection$pageInfo(
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
    if (!(other is Fragment$Content$contentContentPartCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$Content$contentContentPartCollection$pageInfo
    on Fragment$Content$contentContentPartCollection$pageInfo {
  CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<
          Fragment$Content$contentContentPartCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$Content$contentContentPartCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$Content$contentContentPartCollection$pageInfo(
    Fragment$Content$contentContentPartCollection$pageInfo instance,
    TRes Function(Fragment$Content$contentContentPartCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$Content$contentContentPartCollection$pageInfo;

  factory CopyWith$Fragment$Content$contentContentPartCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Content$contentContentPartCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Content$contentContentPartCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$Content$contentContentPartCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$Content$contentContentPartCollection$pageInfo _instance;

  final TRes Function(Fragment$Content$contentContentPartCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Content$contentContentPartCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$Content$contentContentPartCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$Content$contentContentPartCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$Content$contentContentPartCollection$pageInfo(
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

class Fragment$CreationType {
  Fragment$CreationType({
    required this.id,
    required this.name,
    required this.key,
    required this.createdAt,
    this.$__typename = 'CreationType',
  });

  factory Fragment$CreationType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$CreationType(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

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
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$CreationType) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$CreationType on Fragment$CreationType {
  CopyWith$Fragment$CreationType<Fragment$CreationType> get copyWith =>
      CopyWith$Fragment$CreationType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CreationType<TRes> {
  factory CopyWith$Fragment$CreationType(
    Fragment$CreationType instance,
    TRes Function(Fragment$CreationType) then,
  ) = _CopyWithImpl$Fragment$CreationType;

  factory CopyWith$Fragment$CreationType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CreationType;

  TRes call({
    String? id,
    String? name,
    String? key,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$CreationType<TRes>
    implements CopyWith$Fragment$CreationType<TRes> {
  _CopyWithImpl$Fragment$CreationType(
    this._instance,
    this._then,
  );

  final Fragment$CreationType _instance;

  final TRes Function(Fragment$CreationType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CreationType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$CreationType<TRes>
    implements CopyWith$Fragment$CreationType<TRes> {
  _CopyWithStubImpl$Fragment$CreationType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionCreationType = FragmentDefinitionNode(
  name: NameNode(value: 'CreationType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CreationType'),
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
const documentNodeFragmentCreationType = DocumentNode(definitions: [
  fragmentDefinitionCreationType,
]);

extension ClientExtension$Fragment$CreationType on graphql.GraphQLClient {
  void writeFragment$CreationType({
    required Fragment$CreationType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CreationType',
            document: documentNodeFragmentCreationType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CreationType? readFragment$CreationType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CreationType',
          document: documentNodeFragmentCreationType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CreationType.fromJson(result);
  }
}

class Variables$Query$PublicationStateCollection {
  factory Variables$Query$PublicationStateCollection({
    Input$PublicationStateFilter? filter,
    List<Input$PublicationStateOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      Variables$Query$PublicationStateCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$PublicationStateCollection._(this._$data);

  factory Variables$Query$PublicationStateCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$PublicationStateFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$PublicationStateOrderBy.fromJson(
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
    return Variables$Query$PublicationStateCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PublicationStateFilter? get filter =>
      (_$data['filter'] as Input$PublicationStateFilter?);

  List<Input$PublicationStateOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$PublicationStateOrderBy>?);

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

  CopyWith$Variables$Query$PublicationStateCollection<
          Variables$Query$PublicationStateCollection>
      get copyWith => CopyWith$Variables$Query$PublicationStateCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PublicationStateCollection) ||
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

abstract class CopyWith$Variables$Query$PublicationStateCollection<TRes> {
  factory CopyWith$Variables$Query$PublicationStateCollection(
    Variables$Query$PublicationStateCollection instance,
    TRes Function(Variables$Query$PublicationStateCollection) then,
  ) = _CopyWithImpl$Variables$Query$PublicationStateCollection;

  factory CopyWith$Variables$Query$PublicationStateCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PublicationStateCollection;

  TRes call({
    Input$PublicationStateFilter? filter,
    List<Input$PublicationStateOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$PublicationStateCollection<TRes>
    implements CopyWith$Variables$Query$PublicationStateCollection<TRes> {
  _CopyWithImpl$Variables$Query$PublicationStateCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$PublicationStateCollection _instance;

  final TRes Function(Variables$Query$PublicationStateCollection) _then;

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
      _then(Variables$Query$PublicationStateCollection._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$PublicationStateFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$PublicationStateOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$PublicationStateCollection<TRes>
    implements CopyWith$Variables$Query$PublicationStateCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$PublicationStateCollection(this._res);

  TRes _res;

  call({
    Input$PublicationStateFilter? filter,
    List<Input$PublicationStateOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      _res;
}

class Query$PublicationStateCollection {
  Query$PublicationStateCollection({
    this.publicationStateCollection,
    this.$__typename = 'Query',
  });

  factory Query$PublicationStateCollection.fromJson(Map<String, dynamic> json) {
    final l$publicationStateCollection = json['publicationStateCollection'];
    final l$$__typename = json['__typename'];
    return Query$PublicationStateCollection(
      publicationStateCollection: l$publicationStateCollection == null
          ? null
          : Query$PublicationStateCollection$publicationStateCollection
              .fromJson((l$publicationStateCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PublicationStateCollection$publicationStateCollection?
      publicationStateCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$publicationStateCollection = publicationStateCollection;
    _resultData['publicationStateCollection'] =
        l$publicationStateCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$publicationStateCollection = publicationStateCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$publicationStateCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PublicationStateCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publicationStateCollection = publicationStateCollection;
    final lOther$publicationStateCollection = other.publicationStateCollection;
    if (l$publicationStateCollection != lOther$publicationStateCollection) {
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

extension UtilityExtension$Query$PublicationStateCollection
    on Query$PublicationStateCollection {
  CopyWith$Query$PublicationStateCollection<Query$PublicationStateCollection>
      get copyWith => CopyWith$Query$PublicationStateCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PublicationStateCollection<TRes> {
  factory CopyWith$Query$PublicationStateCollection(
    Query$PublicationStateCollection instance,
    TRes Function(Query$PublicationStateCollection) then,
  ) = _CopyWithImpl$Query$PublicationStateCollection;

  factory CopyWith$Query$PublicationStateCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$PublicationStateCollection;

  TRes call({
    Query$PublicationStateCollection$publicationStateCollection?
        publicationStateCollection,
    String? $__typename,
  });
  CopyWith$Query$PublicationStateCollection$publicationStateCollection<TRes>
      get publicationStateCollection;
}

class _CopyWithImpl$Query$PublicationStateCollection<TRes>
    implements CopyWith$Query$PublicationStateCollection<TRes> {
  _CopyWithImpl$Query$PublicationStateCollection(
    this._instance,
    this._then,
  );

  final Query$PublicationStateCollection _instance;

  final TRes Function(Query$PublicationStateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publicationStateCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PublicationStateCollection(
        publicationStateCollection: publicationStateCollection == _undefined
            ? _instance.publicationStateCollection
            : (publicationStateCollection
                as Query$PublicationStateCollection$publicationStateCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PublicationStateCollection$publicationStateCollection<TRes>
      get publicationStateCollection {
    final local$publicationStateCollection =
        _instance.publicationStateCollection;
    return local$publicationStateCollection == null
        ? CopyWith$Query$PublicationStateCollection$publicationStateCollection
            .stub(_then(_instance))
        : CopyWith$Query$PublicationStateCollection$publicationStateCollection(
            local$publicationStateCollection,
            (e) => call(publicationStateCollection: e));
  }
}

class _CopyWithStubImpl$Query$PublicationStateCollection<TRes>
    implements CopyWith$Query$PublicationStateCollection<TRes> {
  _CopyWithStubImpl$Query$PublicationStateCollection(this._res);

  TRes _res;

  call({
    Query$PublicationStateCollection$publicationStateCollection?
        publicationStateCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PublicationStateCollection$publicationStateCollection<TRes>
      get publicationStateCollection =>
          CopyWith$Query$PublicationStateCollection$publicationStateCollection
              .stub(_res);
}

const documentNodeQueryPublicationStateCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PublicationStateCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'PublicationStateFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PublicationStateOrderBy'),
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
        name: NameNode(value: 'publicationStateCollection'),
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
                    name: NameNode(value: 'PublicationState'),
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
  fragmentDefinitionPublicationState,
]);
Query$PublicationStateCollection _parserFn$Query$PublicationStateCollection(
        Map<String, dynamic> data) =>
    Query$PublicationStateCollection.fromJson(data);
typedef OnQueryComplete$Query$PublicationStateCollection = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$PublicationStateCollection?,
);

class Options$Query$PublicationStateCollection
    extends graphql.QueryOptions<Query$PublicationStateCollection> {
  Options$Query$PublicationStateCollection({
    String? operationName,
    Variables$Query$PublicationStateCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PublicationStateCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PublicationStateCollection? onComplete,
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
                        : _parserFn$Query$PublicationStateCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryPublicationStateCollection,
          parserFn: _parserFn$Query$PublicationStateCollection,
        );

  final OnQueryComplete$Query$PublicationStateCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PublicationStateCollection
    extends graphql.WatchQueryOptions<Query$PublicationStateCollection> {
  WatchOptions$Query$PublicationStateCollection({
    String? operationName,
    Variables$Query$PublicationStateCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PublicationStateCollection? typedOptimisticResult,
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
          document: documentNodeQueryPublicationStateCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PublicationStateCollection,
        );
}

class FetchMoreOptions$Query$PublicationStateCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PublicationStateCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$PublicationStateCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryPublicationStateCollection,
        );
}

extension ClientExtension$Query$PublicationStateCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PublicationStateCollection>>
      query$PublicationStateCollection(
              [Options$Query$PublicationStateCollection? options]) async =>
          await this
              .query(options ?? Options$Query$PublicationStateCollection());
  graphql.ObservableQuery<Query$PublicationStateCollection>
      watchQuery$PublicationStateCollection(
              [WatchOptions$Query$PublicationStateCollection? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$PublicationStateCollection());
  void writeQuery$PublicationStateCollection({
    required Query$PublicationStateCollection data,
    Variables$Query$PublicationStateCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPublicationStateCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PublicationStateCollection? readQuery$PublicationStateCollection({
    Variables$Query$PublicationStateCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryPublicationStateCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$PublicationStateCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PublicationStateCollection>
    useQuery$PublicationStateCollection(
            [Options$Query$PublicationStateCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$PublicationStateCollection());
graphql.ObservableQuery<Query$PublicationStateCollection>
    useWatchQuery$PublicationStateCollection(
            [WatchOptions$Query$PublicationStateCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$PublicationStateCollection());

class Query$PublicationStateCollection$Widget
    extends graphql_flutter.Query<Query$PublicationStateCollection> {
  Query$PublicationStateCollection$Widget({
    widgets.Key? key,
    Options$Query$PublicationStateCollection? options,
    required graphql_flutter.QueryBuilder<Query$PublicationStateCollection>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PublicationStateCollection(),
          builder: builder,
        );
}

class Query$PublicationStateCollection$publicationStateCollection {
  Query$PublicationStateCollection$publicationStateCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'PublicationStateConnection',
  });

  factory Query$PublicationStateCollection$publicationStateCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$PublicationStateCollection$publicationStateCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$PublicationStateCollection$publicationStateCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$PublicationStateCollection$publicationStateCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PublicationStateCollection$publicationStateCollection$edges>
      edges;

  final Query$PublicationStateCollection$publicationStateCollection$pageInfo
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
    if (!(other
            is Query$PublicationStateCollection$publicationStateCollection) ||
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

extension UtilityExtension$Query$PublicationStateCollection$publicationStateCollection
    on Query$PublicationStateCollection$publicationStateCollection {
  CopyWith$Query$PublicationStateCollection$publicationStateCollection<
          Query$PublicationStateCollection$publicationStateCollection>
      get copyWith =>
          CopyWith$Query$PublicationStateCollection$publicationStateCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PublicationStateCollection$publicationStateCollection<
    TRes> {
  factory CopyWith$Query$PublicationStateCollection$publicationStateCollection(
    Query$PublicationStateCollection$publicationStateCollection instance,
    TRes Function(Query$PublicationStateCollection$publicationStateCollection)
        then,
  ) = _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection;

  factory CopyWith$Query$PublicationStateCollection$publicationStateCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection;

  TRes call({
    List<Query$PublicationStateCollection$publicationStateCollection$edges>?
        edges,
    Query$PublicationStateCollection$publicationStateCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$PublicationStateCollection$publicationStateCollection$edges> Function(
              Iterable<
                  CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges<
                      Query$PublicationStateCollection$publicationStateCollection$edges>>)
          _fn);
  CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection<
        TRes>
    implements
        CopyWith$Query$PublicationStateCollection$publicationStateCollection<
            TRes> {
  _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection(
    this._instance,
    this._then,
  );

  final Query$PublicationStateCollection$publicationStateCollection _instance;

  final TRes Function(
      Query$PublicationStateCollection$publicationStateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PublicationStateCollection$publicationStateCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$PublicationStateCollection$publicationStateCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$PublicationStateCollection$publicationStateCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$PublicationStateCollection$publicationStateCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges<
                          Query$PublicationStateCollection$publicationStateCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection<
        TRes>
    implements
        CopyWith$Query$PublicationStateCollection$publicationStateCollection<
            TRes> {
  _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection(
      this._res);

  TRes _res;

  call({
    List<Query$PublicationStateCollection$publicationStateCollection$edges>?
        edges,
    Query$PublicationStateCollection$publicationStateCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo
              .stub(_res);
}

class Query$PublicationStateCollection$publicationStateCollection$edges {
  Query$PublicationStateCollection$publicationStateCollection$edges({
    required this.node,
    this.$__typename = 'PublicationStateEdge',
  });

  factory Query$PublicationStateCollection$publicationStateCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$PublicationStateCollection$publicationStateCollection$edges(
      node:
          Fragment$PublicationState.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PublicationState node;

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
            is Query$PublicationStateCollection$publicationStateCollection$edges) ||
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

extension UtilityExtension$Query$PublicationStateCollection$publicationStateCollection$edges
    on Query$PublicationStateCollection$publicationStateCollection$edges {
  CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges<
          Query$PublicationStateCollection$publicationStateCollection$edges>
      get copyWith =>
          CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges<
    TRes> {
  factory CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges(
    Query$PublicationStateCollection$publicationStateCollection$edges instance,
    TRes Function(
            Query$PublicationStateCollection$publicationStateCollection$edges)
        then,
  ) = _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection$edges;

  factory CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection$edges;

  TRes call({
    Fragment$PublicationState? node,
    String? $__typename,
  });
  CopyWith$Fragment$PublicationState<TRes> get node;
}

class _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection$edges<
        TRes>
    implements
        CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges<
            TRes> {
  _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection$edges(
    this._instance,
    this._then,
  );

  final Query$PublicationStateCollection$publicationStateCollection$edges
      _instance;

  final TRes Function(
      Query$PublicationStateCollection$publicationStateCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PublicationStateCollection$publicationStateCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$PublicationState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PublicationState<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$PublicationState(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection$edges<
        TRes>
    implements
        CopyWith$Query$PublicationStateCollection$publicationStateCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$PublicationState? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PublicationState<TRes> get node =>
      CopyWith$Fragment$PublicationState.stub(_res);
}

class Query$PublicationStateCollection$publicationStateCollection$pageInfo {
  Query$PublicationStateCollection$publicationStateCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$PublicationStateCollection$publicationStateCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$PublicationStateCollection$publicationStateCollection$pageInfo(
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
            is Query$PublicationStateCollection$publicationStateCollection$pageInfo) ||
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

extension UtilityExtension$Query$PublicationStateCollection$publicationStateCollection$pageInfo
    on Query$PublicationStateCollection$publicationStateCollection$pageInfo {
  CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
          Query$PublicationStateCollection$publicationStateCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo(
    Query$PublicationStateCollection$publicationStateCollection$pageInfo
        instance,
    TRes Function(
            Query$PublicationStateCollection$publicationStateCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection$pageInfo;

  factory CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$PublicationStateCollection$publicationStateCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$PublicationStateCollection$publicationStateCollection$pageInfo
      _instance;

  final TRes Function(
          Query$PublicationStateCollection$publicationStateCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PublicationStateCollection$publicationStateCollection$pageInfo(
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

class _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$PublicationStateCollection$publicationStateCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$PublicationStateCollection$publicationStateCollection$pageInfo(
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

class Variables$Query$PublicationState {
  factory Variables$Query$PublicationState({required String id}) =>
      Variables$Query$PublicationState._({
        r'id': id,
      });

  Variables$Query$PublicationState._(this._$data);

  factory Variables$Query$PublicationState.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$PublicationState._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$PublicationState<Variables$Query$PublicationState>
      get copyWith => CopyWith$Variables$Query$PublicationState(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PublicationState) ||
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

abstract class CopyWith$Variables$Query$PublicationState<TRes> {
  factory CopyWith$Variables$Query$PublicationState(
    Variables$Query$PublicationState instance,
    TRes Function(Variables$Query$PublicationState) then,
  ) = _CopyWithImpl$Variables$Query$PublicationState;

  factory CopyWith$Variables$Query$PublicationState.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PublicationState;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$PublicationState<TRes>
    implements CopyWith$Variables$Query$PublicationState<TRes> {
  _CopyWithImpl$Variables$Query$PublicationState(
    this._instance,
    this._then,
  );

  final Variables$Query$PublicationState _instance;

  final TRes Function(Variables$Query$PublicationState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$PublicationState._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$PublicationState<TRes>
    implements CopyWith$Variables$Query$PublicationState<TRes> {
  _CopyWithStubImpl$Variables$Query$PublicationState(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$PublicationState {
  Query$PublicationState({
    this.publicationStateCollection,
    this.$__typename = 'Query',
  });

  factory Query$PublicationState.fromJson(Map<String, dynamic> json) {
    final l$publicationStateCollection = json['publicationStateCollection'];
    final l$$__typename = json['__typename'];
    return Query$PublicationState(
      publicationStateCollection: l$publicationStateCollection == null
          ? null
          : Query$PublicationState$publicationStateCollection.fromJson(
              (l$publicationStateCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PublicationState$publicationStateCollection?
      publicationStateCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$publicationStateCollection = publicationStateCollection;
    _resultData['publicationStateCollection'] =
        l$publicationStateCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$publicationStateCollection = publicationStateCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$publicationStateCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PublicationState) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$publicationStateCollection = publicationStateCollection;
    final lOther$publicationStateCollection = other.publicationStateCollection;
    if (l$publicationStateCollection != lOther$publicationStateCollection) {
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

extension UtilityExtension$Query$PublicationState on Query$PublicationState {
  CopyWith$Query$PublicationState<Query$PublicationState> get copyWith =>
      CopyWith$Query$PublicationState(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PublicationState<TRes> {
  factory CopyWith$Query$PublicationState(
    Query$PublicationState instance,
    TRes Function(Query$PublicationState) then,
  ) = _CopyWithImpl$Query$PublicationState;

  factory CopyWith$Query$PublicationState.stub(TRes res) =
      _CopyWithStubImpl$Query$PublicationState;

  TRes call({
    Query$PublicationState$publicationStateCollection?
        publicationStateCollection,
    String? $__typename,
  });
  CopyWith$Query$PublicationState$publicationStateCollection<TRes>
      get publicationStateCollection;
}

class _CopyWithImpl$Query$PublicationState<TRes>
    implements CopyWith$Query$PublicationState<TRes> {
  _CopyWithImpl$Query$PublicationState(
    this._instance,
    this._then,
  );

  final Query$PublicationState _instance;

  final TRes Function(Query$PublicationState) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? publicationStateCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PublicationState(
        publicationStateCollection: publicationStateCollection == _undefined
            ? _instance.publicationStateCollection
            : (publicationStateCollection
                as Query$PublicationState$publicationStateCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PublicationState$publicationStateCollection<TRes>
      get publicationStateCollection {
    final local$publicationStateCollection =
        _instance.publicationStateCollection;
    return local$publicationStateCollection == null
        ? CopyWith$Query$PublicationState$publicationStateCollection.stub(
            _then(_instance))
        : CopyWith$Query$PublicationState$publicationStateCollection(
            local$publicationStateCollection,
            (e) => call(publicationStateCollection: e));
  }
}

class _CopyWithStubImpl$Query$PublicationState<TRes>
    implements CopyWith$Query$PublicationState<TRes> {
  _CopyWithStubImpl$Query$PublicationState(this._res);

  TRes _res;

  call({
    Query$PublicationState$publicationStateCollection?
        publicationStateCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PublicationState$publicationStateCollection<TRes>
      get publicationStateCollection =>
          CopyWith$Query$PublicationState$publicationStateCollection.stub(_res);
}

const documentNodeQueryPublicationState = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PublicationState'),
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
        name: NameNode(value: 'publicationStateCollection'),
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
                    name: NameNode(value: 'PublicationState'),
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
  fragmentDefinitionPublicationState,
]);
Query$PublicationState _parserFn$Query$PublicationState(
        Map<String, dynamic> data) =>
    Query$PublicationState.fromJson(data);
typedef OnQueryComplete$Query$PublicationState = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PublicationState?,
);

class Options$Query$PublicationState
    extends graphql.QueryOptions<Query$PublicationState> {
  Options$Query$PublicationState({
    String? operationName,
    required Variables$Query$PublicationState variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PublicationState? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PublicationState? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$PublicationState(data),
                  ),
          onError: onError,
          document: documentNodeQueryPublicationState,
          parserFn: _parserFn$Query$PublicationState,
        );

  final OnQueryComplete$Query$PublicationState? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PublicationState
    extends graphql.WatchQueryOptions<Query$PublicationState> {
  WatchOptions$Query$PublicationState({
    String? operationName,
    required Variables$Query$PublicationState variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PublicationState? typedOptimisticResult,
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
          document: documentNodeQueryPublicationState,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PublicationState,
        );
}

class FetchMoreOptions$Query$PublicationState extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PublicationState({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PublicationState variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPublicationState,
        );
}

extension ClientExtension$Query$PublicationState on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PublicationState>> query$PublicationState(
          Options$Query$PublicationState options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$PublicationState> watchQuery$PublicationState(
          WatchOptions$Query$PublicationState options) =>
      this.watchQuery(options);
  void writeQuery$PublicationState({
    required Query$PublicationState data,
    required Variables$Query$PublicationState variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPublicationState),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PublicationState? readQuery$PublicationState({
    required Variables$Query$PublicationState variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryPublicationState),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PublicationState.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PublicationState>
    useQuery$PublicationState(Options$Query$PublicationState options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$PublicationState> useWatchQuery$PublicationState(
        WatchOptions$Query$PublicationState options) =>
    graphql_flutter.useWatchQuery(options);

class Query$PublicationState$Widget
    extends graphql_flutter.Query<Query$PublicationState> {
  Query$PublicationState$Widget({
    widgets.Key? key,
    required Options$Query$PublicationState options,
    required graphql_flutter.QueryBuilder<Query$PublicationState> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$PublicationState$publicationStateCollection {
  Query$PublicationState$publicationStateCollection({
    required this.edges,
    this.$__typename = 'PublicationStateConnection',
  });

  factory Query$PublicationState$publicationStateCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$PublicationState$publicationStateCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$PublicationState$publicationStateCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PublicationState$publicationStateCollection$edges> edges;

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
    if (!(other is Query$PublicationState$publicationStateCollection) ||
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

extension UtilityExtension$Query$PublicationState$publicationStateCollection
    on Query$PublicationState$publicationStateCollection {
  CopyWith$Query$PublicationState$publicationStateCollection<
          Query$PublicationState$publicationStateCollection>
      get copyWith =>
          CopyWith$Query$PublicationState$publicationStateCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PublicationState$publicationStateCollection<
    TRes> {
  factory CopyWith$Query$PublicationState$publicationStateCollection(
    Query$PublicationState$publicationStateCollection instance,
    TRes Function(Query$PublicationState$publicationStateCollection) then,
  ) = _CopyWithImpl$Query$PublicationState$publicationStateCollection;

  factory CopyWith$Query$PublicationState$publicationStateCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PublicationState$publicationStateCollection;

  TRes call({
    List<Query$PublicationState$publicationStateCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$PublicationState$publicationStateCollection$edges> Function(
              Iterable<
                  CopyWith$Query$PublicationState$publicationStateCollection$edges<
                      Query$PublicationState$publicationStateCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$PublicationState$publicationStateCollection<TRes>
    implements
        CopyWith$Query$PublicationState$publicationStateCollection<TRes> {
  _CopyWithImpl$Query$PublicationState$publicationStateCollection(
    this._instance,
    this._then,
  );

  final Query$PublicationState$publicationStateCollection _instance;

  final TRes Function(Query$PublicationState$publicationStateCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PublicationState$publicationStateCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$PublicationState$publicationStateCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$PublicationState$publicationStateCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$PublicationState$publicationStateCollection$edges<
                          Query$PublicationState$publicationStateCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$PublicationState$publicationStateCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PublicationState$publicationStateCollection<TRes>
    implements
        CopyWith$Query$PublicationState$publicationStateCollection<TRes> {
  _CopyWithStubImpl$Query$PublicationState$publicationStateCollection(
      this._res);

  TRes _res;

  call({
    List<Query$PublicationState$publicationStateCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$PublicationState$publicationStateCollection$edges {
  Query$PublicationState$publicationStateCollection$edges({
    required this.node,
    this.$__typename = 'PublicationStateEdge',
  });

  factory Query$PublicationState$publicationStateCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$PublicationState$publicationStateCollection$edges(
      node:
          Fragment$PublicationState.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PublicationState node;

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
    if (!(other is Query$PublicationState$publicationStateCollection$edges) ||
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

extension UtilityExtension$Query$PublicationState$publicationStateCollection$edges
    on Query$PublicationState$publicationStateCollection$edges {
  CopyWith$Query$PublicationState$publicationStateCollection$edges<
          Query$PublicationState$publicationStateCollection$edges>
      get copyWith =>
          CopyWith$Query$PublicationState$publicationStateCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PublicationState$publicationStateCollection$edges<
    TRes> {
  factory CopyWith$Query$PublicationState$publicationStateCollection$edges(
    Query$PublicationState$publicationStateCollection$edges instance,
    TRes Function(Query$PublicationState$publicationStateCollection$edges) then,
  ) = _CopyWithImpl$Query$PublicationState$publicationStateCollection$edges;

  factory CopyWith$Query$PublicationState$publicationStateCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PublicationState$publicationStateCollection$edges;

  TRes call({
    Fragment$PublicationState? node,
    String? $__typename,
  });
  CopyWith$Fragment$PublicationState<TRes> get node;
}

class _CopyWithImpl$Query$PublicationState$publicationStateCollection$edges<
        TRes>
    implements
        CopyWith$Query$PublicationState$publicationStateCollection$edges<TRes> {
  _CopyWithImpl$Query$PublicationState$publicationStateCollection$edges(
    this._instance,
    this._then,
  );

  final Query$PublicationState$publicationStateCollection$edges _instance;

  final TRes Function(Query$PublicationState$publicationStateCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PublicationState$publicationStateCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$PublicationState),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PublicationState<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$PublicationState(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$PublicationState$publicationStateCollection$edges<
        TRes>
    implements
        CopyWith$Query$PublicationState$publicationStateCollection$edges<TRes> {
  _CopyWithStubImpl$Query$PublicationState$publicationStateCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$PublicationState? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PublicationState<TRes> get node =>
      CopyWith$Fragment$PublicationState.stub(_res);
}

class Variables$Query$ContentTypeCollection {
  factory Variables$Query$ContentTypeCollection({
    Input$ContentTypeFilter? filter,
    List<Input$ContentTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      Variables$Query$ContentTypeCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$ContentTypeCollection._(this._$data);

  factory Variables$Query$ContentTypeCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$ContentTypeFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ContentTypeOrderBy.fromJson((e as Map<String, dynamic>)))
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
    return Variables$Query$ContentTypeCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ContentTypeFilter? get filter =>
      (_$data['filter'] as Input$ContentTypeFilter?);

  List<Input$ContentTypeOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ContentTypeOrderBy>?);

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

  CopyWith$Variables$Query$ContentTypeCollection<
          Variables$Query$ContentTypeCollection>
      get copyWith => CopyWith$Variables$Query$ContentTypeCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ContentTypeCollection) ||
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

abstract class CopyWith$Variables$Query$ContentTypeCollection<TRes> {
  factory CopyWith$Variables$Query$ContentTypeCollection(
    Variables$Query$ContentTypeCollection instance,
    TRes Function(Variables$Query$ContentTypeCollection) then,
  ) = _CopyWithImpl$Variables$Query$ContentTypeCollection;

  factory CopyWith$Variables$Query$ContentTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ContentTypeCollection;

  TRes call({
    Input$ContentTypeFilter? filter,
    List<Input$ContentTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$ContentTypeCollection<TRes>
    implements CopyWith$Variables$Query$ContentTypeCollection<TRes> {
  _CopyWithImpl$Variables$Query$ContentTypeCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ContentTypeCollection _instance;

  final TRes Function(Variables$Query$ContentTypeCollection) _then;

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
      _then(Variables$Query$ContentTypeCollection._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$ContentTypeFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ContentTypeOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ContentTypeCollection<TRes>
    implements CopyWith$Variables$Query$ContentTypeCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ContentTypeCollection(this._res);

  TRes _res;

  call({
    Input$ContentTypeFilter? filter,
    List<Input$ContentTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      _res;
}

class Query$ContentTypeCollection {
  Query$ContentTypeCollection({
    this.contentTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$ContentTypeCollection.fromJson(Map<String, dynamic> json) {
    final l$contentTypeCollection = json['contentTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$ContentTypeCollection(
      contentTypeCollection: l$contentTypeCollection == null
          ? null
          : Query$ContentTypeCollection$contentTypeCollection.fromJson(
              (l$contentTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ContentTypeCollection$contentTypeCollection?
      contentTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contentTypeCollection = contentTypeCollection;
    _resultData['contentTypeCollection'] = l$contentTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contentTypeCollection = contentTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contentTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ContentTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentTypeCollection = contentTypeCollection;
    final lOther$contentTypeCollection = other.contentTypeCollection;
    if (l$contentTypeCollection != lOther$contentTypeCollection) {
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

extension UtilityExtension$Query$ContentTypeCollection
    on Query$ContentTypeCollection {
  CopyWith$Query$ContentTypeCollection<Query$ContentTypeCollection>
      get copyWith => CopyWith$Query$ContentTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentTypeCollection<TRes> {
  factory CopyWith$Query$ContentTypeCollection(
    Query$ContentTypeCollection instance,
    TRes Function(Query$ContentTypeCollection) then,
  ) = _CopyWithImpl$Query$ContentTypeCollection;

  factory CopyWith$Query$ContentTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ContentTypeCollection;

  TRes call({
    Query$ContentTypeCollection$contentTypeCollection? contentTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$ContentTypeCollection$contentTypeCollection<TRes>
      get contentTypeCollection;
}

class _CopyWithImpl$Query$ContentTypeCollection<TRes>
    implements CopyWith$Query$ContentTypeCollection<TRes> {
  _CopyWithImpl$Query$ContentTypeCollection(
    this._instance,
    this._then,
  );

  final Query$ContentTypeCollection _instance;

  final TRes Function(Query$ContentTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contentTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentTypeCollection(
        contentTypeCollection: contentTypeCollection == _undefined
            ? _instance.contentTypeCollection
            : (contentTypeCollection
                as Query$ContentTypeCollection$contentTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ContentTypeCollection$contentTypeCollection<TRes>
      get contentTypeCollection {
    final local$contentTypeCollection = _instance.contentTypeCollection;
    return local$contentTypeCollection == null
        ? CopyWith$Query$ContentTypeCollection$contentTypeCollection.stub(
            _then(_instance))
        : CopyWith$Query$ContentTypeCollection$contentTypeCollection(
            local$contentTypeCollection, (e) => call(contentTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$ContentTypeCollection<TRes>
    implements CopyWith$Query$ContentTypeCollection<TRes> {
  _CopyWithStubImpl$Query$ContentTypeCollection(this._res);

  TRes _res;

  call({
    Query$ContentTypeCollection$contentTypeCollection? contentTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ContentTypeCollection$contentTypeCollection<TRes>
      get contentTypeCollection =>
          CopyWith$Query$ContentTypeCollection$contentTypeCollection.stub(_res);
}

const documentNodeQueryContentTypeCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ContentTypeCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ContentTypeFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ContentTypeOrderBy'),
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
        name: NameNode(value: 'contentTypeCollection'),
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
                    name: NameNode(value: 'ContentType'),
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
  fragmentDefinitionContentType,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);
Query$ContentTypeCollection _parserFn$Query$ContentTypeCollection(
        Map<String, dynamic> data) =>
    Query$ContentTypeCollection.fromJson(data);
typedef OnQueryComplete$Query$ContentTypeCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ContentTypeCollection?,
);

class Options$Query$ContentTypeCollection
    extends graphql.QueryOptions<Query$ContentTypeCollection> {
  Options$Query$ContentTypeCollection({
    String? operationName,
    Variables$Query$ContentTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ContentTypeCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ContentTypeCollection? onComplete,
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
                        : _parserFn$Query$ContentTypeCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryContentTypeCollection,
          parserFn: _parserFn$Query$ContentTypeCollection,
        );

  final OnQueryComplete$Query$ContentTypeCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ContentTypeCollection
    extends graphql.WatchQueryOptions<Query$ContentTypeCollection> {
  WatchOptions$Query$ContentTypeCollection({
    String? operationName,
    Variables$Query$ContentTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ContentTypeCollection? typedOptimisticResult,
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
          document: documentNodeQueryContentTypeCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ContentTypeCollection,
        );
}

class FetchMoreOptions$Query$ContentTypeCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ContentTypeCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ContentTypeCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryContentTypeCollection,
        );
}

extension ClientExtension$Query$ContentTypeCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ContentTypeCollection>>
      query$ContentTypeCollection(
              [Options$Query$ContentTypeCollection? options]) async =>
          await this.query(options ?? Options$Query$ContentTypeCollection());
  graphql.ObservableQuery<
      Query$ContentTypeCollection> watchQuery$ContentTypeCollection(
          [WatchOptions$Query$ContentTypeCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ContentTypeCollection());
  void writeQuery$ContentTypeCollection({
    required Query$ContentTypeCollection data,
    Variables$Query$ContentTypeCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryContentTypeCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ContentTypeCollection? readQuery$ContentTypeCollection({
    Variables$Query$ContentTypeCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryContentTypeCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ContentTypeCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ContentTypeCollection>
    useQuery$ContentTypeCollection(
            [Options$Query$ContentTypeCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$ContentTypeCollection());
graphql.ObservableQuery<Query$ContentTypeCollection>
    useWatchQuery$ContentTypeCollection(
            [WatchOptions$Query$ContentTypeCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$ContentTypeCollection());

class Query$ContentTypeCollection$Widget
    extends graphql_flutter.Query<Query$ContentTypeCollection> {
  Query$ContentTypeCollection$Widget({
    widgets.Key? key,
    Options$Query$ContentTypeCollection? options,
    required graphql_flutter.QueryBuilder<Query$ContentTypeCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ContentTypeCollection(),
          builder: builder,
        );
}

class Query$ContentTypeCollection$contentTypeCollection {
  Query$ContentTypeCollection$contentTypeCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ContentTypeConnection',
  });

  factory Query$ContentTypeCollection$contentTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ContentTypeCollection$contentTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$ContentTypeCollection$contentTypeCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$ContentTypeCollection$contentTypeCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ContentTypeCollection$contentTypeCollection$edges> edges;

  final Query$ContentTypeCollection$contentTypeCollection$pageInfo pageInfo;

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
    if (!(other is Query$ContentTypeCollection$contentTypeCollection) ||
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

extension UtilityExtension$Query$ContentTypeCollection$contentTypeCollection
    on Query$ContentTypeCollection$contentTypeCollection {
  CopyWith$Query$ContentTypeCollection$contentTypeCollection<
          Query$ContentTypeCollection$contentTypeCollection>
      get copyWith =>
          CopyWith$Query$ContentTypeCollection$contentTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentTypeCollection$contentTypeCollection<
    TRes> {
  factory CopyWith$Query$ContentTypeCollection$contentTypeCollection(
    Query$ContentTypeCollection$contentTypeCollection instance,
    TRes Function(Query$ContentTypeCollection$contentTypeCollection) then,
  ) = _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection;

  factory CopyWith$Query$ContentTypeCollection$contentTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection;

  TRes call({
    List<Query$ContentTypeCollection$contentTypeCollection$edges>? edges,
    Query$ContentTypeCollection$contentTypeCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ContentTypeCollection$contentTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges<
                      Query$ContentTypeCollection$contentTypeCollection$edges>>)
          _fn);
  CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection<TRes>
    implements
        CopyWith$Query$ContentTypeCollection$contentTypeCollection<TRes> {
  _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection(
    this._instance,
    this._then,
  );

  final Query$ContentTypeCollection$contentTypeCollection _instance;

  final TRes Function(Query$ContentTypeCollection$contentTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentTypeCollection$contentTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$ContentTypeCollection$contentTypeCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$ContentTypeCollection$contentTypeCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ContentTypeCollection$contentTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges<
                          Query$ContentTypeCollection$contentTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection<TRes>
    implements
        CopyWith$Query$ContentTypeCollection$contentTypeCollection<TRes> {
  _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection(
      this._res);

  TRes _res;

  call({
    List<Query$ContentTypeCollection$contentTypeCollection$edges>? edges,
    Query$ContentTypeCollection$contentTypeCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo
              .stub(_res);
}

class Query$ContentTypeCollection$contentTypeCollection$edges {
  Query$ContentTypeCollection$contentTypeCollection$edges({
    required this.node,
    this.$__typename = 'ContentTypeEdge',
  });

  factory Query$ContentTypeCollection$contentTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ContentTypeCollection$contentTypeCollection$edges(
      node: Fragment$ContentType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentType node;

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
    if (!(other is Query$ContentTypeCollection$contentTypeCollection$edges) ||
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

extension UtilityExtension$Query$ContentTypeCollection$contentTypeCollection$edges
    on Query$ContentTypeCollection$contentTypeCollection$edges {
  CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges<
          Query$ContentTypeCollection$contentTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges(
    Query$ContentTypeCollection$contentTypeCollection$edges instance,
    TRes Function(Query$ContentTypeCollection$contentTypeCollection$edges) then,
  ) = _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection$edges;

  factory CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection$edges;

  TRes call({
    Fragment$ContentType? node,
    String? $__typename,
  });
  CopyWith$Fragment$ContentType<TRes> get node;
}

class _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges<TRes> {
  _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ContentTypeCollection$contentTypeCollection$edges _instance;

  final TRes Function(Query$ContentTypeCollection$contentTypeCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentTypeCollection$contentTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ContentType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ContentType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$ContentTypeCollection$contentTypeCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ContentType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentType<TRes> get node =>
      CopyWith$Fragment$ContentType.stub(_res);
}

class Query$ContentTypeCollection$contentTypeCollection$pageInfo {
  Query$ContentTypeCollection$contentTypeCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ContentTypeCollection$contentTypeCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ContentTypeCollection$contentTypeCollection$pageInfo(
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
            is Query$ContentTypeCollection$contentTypeCollection$pageInfo) ||
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

extension UtilityExtension$Query$ContentTypeCollection$contentTypeCollection$pageInfo
    on Query$ContentTypeCollection$contentTypeCollection$pageInfo {
  CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<
          Query$ContentTypeCollection$contentTypeCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo(
    Query$ContentTypeCollection$contentTypeCollection$pageInfo instance,
    TRes Function(Query$ContentTypeCollection$contentTypeCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection$pageInfo;

  factory CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$ContentTypeCollection$contentTypeCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ContentTypeCollection$contentTypeCollection$pageInfo _instance;

  final TRes Function(
      Query$ContentTypeCollection$contentTypeCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentTypeCollection$contentTypeCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ContentTypeCollection$contentTypeCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$ContentTypeCollection$contentTypeCollection$pageInfo(
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

class Variables$Query$ContentType {
  factory Variables$Query$ContentType({required String id}) =>
      Variables$Query$ContentType._({
        r'id': id,
      });

  Variables$Query$ContentType._(this._$data);

  factory Variables$Query$ContentType.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$ContentType._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$ContentType<Variables$Query$ContentType>
      get copyWith => CopyWith$Variables$Query$ContentType(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ContentType) ||
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

abstract class CopyWith$Variables$Query$ContentType<TRes> {
  factory CopyWith$Variables$Query$ContentType(
    Variables$Query$ContentType instance,
    TRes Function(Variables$Query$ContentType) then,
  ) = _CopyWithImpl$Variables$Query$ContentType;

  factory CopyWith$Variables$Query$ContentType.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ContentType;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$ContentType<TRes>
    implements CopyWith$Variables$Query$ContentType<TRes> {
  _CopyWithImpl$Variables$Query$ContentType(
    this._instance,
    this._then,
  );

  final Variables$Query$ContentType _instance;

  final TRes Function(Variables$Query$ContentType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$ContentType._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$ContentType<TRes>
    implements CopyWith$Variables$Query$ContentType<TRes> {
  _CopyWithStubImpl$Variables$Query$ContentType(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$ContentType {
  Query$ContentType({
    this.contentTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$ContentType.fromJson(Map<String, dynamic> json) {
    final l$contentTypeCollection = json['contentTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$ContentType(
      contentTypeCollection: l$contentTypeCollection == null
          ? null
          : Query$ContentType$contentTypeCollection.fromJson(
              (l$contentTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ContentType$contentTypeCollection? contentTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contentTypeCollection = contentTypeCollection;
    _resultData['contentTypeCollection'] = l$contentTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contentTypeCollection = contentTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contentTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ContentType) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentTypeCollection = contentTypeCollection;
    final lOther$contentTypeCollection = other.contentTypeCollection;
    if (l$contentTypeCollection != lOther$contentTypeCollection) {
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

extension UtilityExtension$Query$ContentType on Query$ContentType {
  CopyWith$Query$ContentType<Query$ContentType> get copyWith =>
      CopyWith$Query$ContentType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ContentType<TRes> {
  factory CopyWith$Query$ContentType(
    Query$ContentType instance,
    TRes Function(Query$ContentType) then,
  ) = _CopyWithImpl$Query$ContentType;

  factory CopyWith$Query$ContentType.stub(TRes res) =
      _CopyWithStubImpl$Query$ContentType;

  TRes call({
    Query$ContentType$contentTypeCollection? contentTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$ContentType$contentTypeCollection<TRes>
      get contentTypeCollection;
}

class _CopyWithImpl$Query$ContentType<TRes>
    implements CopyWith$Query$ContentType<TRes> {
  _CopyWithImpl$Query$ContentType(
    this._instance,
    this._then,
  );

  final Query$ContentType _instance;

  final TRes Function(Query$ContentType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contentTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentType(
        contentTypeCollection: contentTypeCollection == _undefined
            ? _instance.contentTypeCollection
            : (contentTypeCollection
                as Query$ContentType$contentTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ContentType$contentTypeCollection<TRes>
      get contentTypeCollection {
    final local$contentTypeCollection = _instance.contentTypeCollection;
    return local$contentTypeCollection == null
        ? CopyWith$Query$ContentType$contentTypeCollection.stub(
            _then(_instance))
        : CopyWith$Query$ContentType$contentTypeCollection(
            local$contentTypeCollection, (e) => call(contentTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$ContentType<TRes>
    implements CopyWith$Query$ContentType<TRes> {
  _CopyWithStubImpl$Query$ContentType(this._res);

  TRes _res;

  call({
    Query$ContentType$contentTypeCollection? contentTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ContentType$contentTypeCollection<TRes>
      get contentTypeCollection =>
          CopyWith$Query$ContentType$contentTypeCollection.stub(_res);
}

const documentNodeQueryContentType = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ContentType'),
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
        name: NameNode(value: 'contentTypeCollection'),
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
                    name: NameNode(value: 'ContentType'),
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
  fragmentDefinitionContentType,
  fragmentDefinitionApplication,
  fragmentDefinitionApplicationType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);
Query$ContentType _parserFn$Query$ContentType(Map<String, dynamic> data) =>
    Query$ContentType.fromJson(data);
typedef OnQueryComplete$Query$ContentType = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ContentType?,
);

class Options$Query$ContentType
    extends graphql.QueryOptions<Query$ContentType> {
  Options$Query$ContentType({
    String? operationName,
    required Variables$Query$ContentType variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ContentType? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ContentType? onComplete,
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
                    data == null ? null : _parserFn$Query$ContentType(data),
                  ),
          onError: onError,
          document: documentNodeQueryContentType,
          parserFn: _parserFn$Query$ContentType,
        );

  final OnQueryComplete$Query$ContentType? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ContentType
    extends graphql.WatchQueryOptions<Query$ContentType> {
  WatchOptions$Query$ContentType({
    String? operationName,
    required Variables$Query$ContentType variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ContentType? typedOptimisticResult,
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
          document: documentNodeQueryContentType,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ContentType,
        );
}

class FetchMoreOptions$Query$ContentType extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ContentType({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ContentType variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryContentType,
        );
}

extension ClientExtension$Query$ContentType on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ContentType>> query$ContentType(
          Options$Query$ContentType options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ContentType> watchQuery$ContentType(
          WatchOptions$Query$ContentType options) =>
      this.watchQuery(options);
  void writeQuery$ContentType({
    required Query$ContentType data,
    required Variables$Query$ContentType variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryContentType),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ContentType? readQuery$ContentType({
    required Variables$Query$ContentType variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryContentType),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ContentType.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ContentType> useQuery$ContentType(
        Options$Query$ContentType options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$ContentType> useWatchQuery$ContentType(
        WatchOptions$Query$ContentType options) =>
    graphql_flutter.useWatchQuery(options);

class Query$ContentType$Widget
    extends graphql_flutter.Query<Query$ContentType> {
  Query$ContentType$Widget({
    widgets.Key? key,
    required Options$Query$ContentType options,
    required graphql_flutter.QueryBuilder<Query$ContentType> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$ContentType$contentTypeCollection {
  Query$ContentType$contentTypeCollection({
    required this.edges,
    this.$__typename = 'ContentTypeConnection',
  });

  factory Query$ContentType$contentTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$ContentType$contentTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ContentType$contentTypeCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ContentType$contentTypeCollection$edges> edges;

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
    if (!(other is Query$ContentType$contentTypeCollection) ||
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

extension UtilityExtension$Query$ContentType$contentTypeCollection
    on Query$ContentType$contentTypeCollection {
  CopyWith$Query$ContentType$contentTypeCollection<
          Query$ContentType$contentTypeCollection>
      get copyWith => CopyWith$Query$ContentType$contentTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentType$contentTypeCollection<TRes> {
  factory CopyWith$Query$ContentType$contentTypeCollection(
    Query$ContentType$contentTypeCollection instance,
    TRes Function(Query$ContentType$contentTypeCollection) then,
  ) = _CopyWithImpl$Query$ContentType$contentTypeCollection;

  factory CopyWith$Query$ContentType$contentTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ContentType$contentTypeCollection;

  TRes call({
    List<Query$ContentType$contentTypeCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ContentType$contentTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ContentType$contentTypeCollection$edges<
                      Query$ContentType$contentTypeCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$ContentType$contentTypeCollection<TRes>
    implements CopyWith$Query$ContentType$contentTypeCollection<TRes> {
  _CopyWithImpl$Query$ContentType$contentTypeCollection(
    this._instance,
    this._then,
  );

  final Query$ContentType$contentTypeCollection _instance;

  final TRes Function(Query$ContentType$contentTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentType$contentTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$ContentType$contentTypeCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ContentType$contentTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ContentType$contentTypeCollection$edges<
                          Query$ContentType$contentTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$ContentType$contentTypeCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$ContentType$contentTypeCollection<TRes>
    implements CopyWith$Query$ContentType$contentTypeCollection<TRes> {
  _CopyWithStubImpl$Query$ContentType$contentTypeCollection(this._res);

  TRes _res;

  call({
    List<Query$ContentType$contentTypeCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$ContentType$contentTypeCollection$edges {
  Query$ContentType$contentTypeCollection$edges({
    required this.node,
    this.$__typename = 'ContentTypeEdge',
  });

  factory Query$ContentType$contentTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ContentType$contentTypeCollection$edges(
      node: Fragment$ContentType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ContentType node;

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
    if (!(other is Query$ContentType$contentTypeCollection$edges) ||
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

extension UtilityExtension$Query$ContentType$contentTypeCollection$edges
    on Query$ContentType$contentTypeCollection$edges {
  CopyWith$Query$ContentType$contentTypeCollection$edges<
          Query$ContentType$contentTypeCollection$edges>
      get copyWith => CopyWith$Query$ContentType$contentTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentType$contentTypeCollection$edges<TRes> {
  factory CopyWith$Query$ContentType$contentTypeCollection$edges(
    Query$ContentType$contentTypeCollection$edges instance,
    TRes Function(Query$ContentType$contentTypeCollection$edges) then,
  ) = _CopyWithImpl$Query$ContentType$contentTypeCollection$edges;

  factory CopyWith$Query$ContentType$contentTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ContentType$contentTypeCollection$edges;

  TRes call({
    Fragment$ContentType? node,
    String? $__typename,
  });
  CopyWith$Fragment$ContentType<TRes> get node;
}

class _CopyWithImpl$Query$ContentType$contentTypeCollection$edges<TRes>
    implements CopyWith$Query$ContentType$contentTypeCollection$edges<TRes> {
  _CopyWithImpl$Query$ContentType$contentTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ContentType$contentTypeCollection$edges _instance;

  final TRes Function(Query$ContentType$contentTypeCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentType$contentTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ContentType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ContentType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ContentType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ContentType$contentTypeCollection$edges<TRes>
    implements CopyWith$Query$ContentType$contentTypeCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ContentType$contentTypeCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$ContentType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ContentType<TRes> get node =>
      CopyWith$Fragment$ContentType.stub(_res);
}

class Variables$Query$Content {
  factory Variables$Query$Content({required String id}) =>
      Variables$Query$Content._({
        r'id': id,
      });

  Variables$Query$Content._(this._$data);

  factory Variables$Query$Content.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Content._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Content<Variables$Query$Content> get copyWith =>
      CopyWith$Variables$Query$Content(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Content) ||
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

abstract class CopyWith$Variables$Query$Content<TRes> {
  factory CopyWith$Variables$Query$Content(
    Variables$Query$Content instance,
    TRes Function(Variables$Query$Content) then,
  ) = _CopyWithImpl$Variables$Query$Content;

  factory CopyWith$Variables$Query$Content.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Content;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Content<TRes>
    implements CopyWith$Variables$Query$Content<TRes> {
  _CopyWithImpl$Variables$Query$Content(
    this._instance,
    this._then,
  );

  final Variables$Query$Content _instance;

  final TRes Function(Variables$Query$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Content._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Content<TRes>
    implements CopyWith$Variables$Query$Content<TRes> {
  _CopyWithStubImpl$Variables$Query$Content(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Content {
  Query$Content({
    this.contentCollection,
    this.$__typename = 'Query',
  });

  factory Query$Content.fromJson(Map<String, dynamic> json) {
    final l$contentCollection = json['contentCollection'];
    final l$$__typename = json['__typename'];
    return Query$Content(
      contentCollection: l$contentCollection == null
          ? null
          : Query$Content$contentCollection.fromJson(
              (l$contentCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Content$contentCollection? contentCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contentCollection = contentCollection;
    _resultData['contentCollection'] = l$contentCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contentCollection = contentCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contentCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Content) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentCollection = contentCollection;
    final lOther$contentCollection = other.contentCollection;
    if (l$contentCollection != lOther$contentCollection) {
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

extension UtilityExtension$Query$Content on Query$Content {
  CopyWith$Query$Content<Query$Content> get copyWith => CopyWith$Query$Content(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Content<TRes> {
  factory CopyWith$Query$Content(
    Query$Content instance,
    TRes Function(Query$Content) then,
  ) = _CopyWithImpl$Query$Content;

  factory CopyWith$Query$Content.stub(TRes res) =
      _CopyWithStubImpl$Query$Content;

  TRes call({
    Query$Content$contentCollection? contentCollection,
    String? $__typename,
  });
  CopyWith$Query$Content$contentCollection<TRes> get contentCollection;
}

class _CopyWithImpl$Query$Content<TRes>
    implements CopyWith$Query$Content<TRes> {
  _CopyWithImpl$Query$Content(
    this._instance,
    this._then,
  );

  final Query$Content _instance;

  final TRes Function(Query$Content) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contentCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Content(
        contentCollection: contentCollection == _undefined
            ? _instance.contentCollection
            : (contentCollection as Query$Content$contentCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Content$contentCollection<TRes> get contentCollection {
    final local$contentCollection = _instance.contentCollection;
    return local$contentCollection == null
        ? CopyWith$Query$Content$contentCollection.stub(_then(_instance))
        : CopyWith$Query$Content$contentCollection(
            local$contentCollection, (e) => call(contentCollection: e));
  }
}

class _CopyWithStubImpl$Query$Content<TRes>
    implements CopyWith$Query$Content<TRes> {
  _CopyWithStubImpl$Query$Content(this._res);

  TRes _res;

  call({
    Query$Content$contentCollection? contentCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Content$contentCollection<TRes> get contentCollection =>
      CopyWith$Query$Content$contentCollection.stub(_res);
}

const documentNodeQueryContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Content'),
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
        name: NameNode(value: 'contentCollection'),
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
  fragmentDefinitionTemplateVariableType,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Query$Content _parserFn$Query$Content(Map<String, dynamic> data) =>
    Query$Content.fromJson(data);
typedef OnQueryComplete$Query$Content = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Content?,
);

class Options$Query$Content extends graphql.QueryOptions<Query$Content> {
  Options$Query$Content({
    String? operationName,
    required Variables$Query$Content variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Content? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Content? onComplete,
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
                    data == null ? null : _parserFn$Query$Content(data),
                  ),
          onError: onError,
          document: documentNodeQueryContent,
          parserFn: _parserFn$Query$Content,
        );

  final OnQueryComplete$Query$Content? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Content
    extends graphql.WatchQueryOptions<Query$Content> {
  WatchOptions$Query$Content({
    String? operationName,
    required Variables$Query$Content variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Content? typedOptimisticResult,
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
          document: documentNodeQueryContent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Content,
        );
}

class FetchMoreOptions$Query$Content extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Content({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Content variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryContent,
        );
}

extension ClientExtension$Query$Content on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Content>> query$Content(
          Options$Query$Content options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Content> watchQuery$Content(
          WatchOptions$Query$Content options) =>
      this.watchQuery(options);
  void writeQuery$Content({
    required Query$Content data,
    required Variables$Query$Content variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryContent),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Content? readQuery$Content({
    required Variables$Query$Content variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryContent),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Content.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Content> useQuery$Content(
        Options$Query$Content options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Content> useWatchQuery$Content(
        WatchOptions$Query$Content options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Content$Widget extends graphql_flutter.Query<Query$Content> {
  Query$Content$Widget({
    widgets.Key? key,
    required Options$Query$Content options,
    required graphql_flutter.QueryBuilder<Query$Content> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Content$contentCollection {
  Query$Content$contentCollection({
    required this.edges,
    this.$__typename = 'ContentConnection',
  });

  factory Query$Content$contentCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Content$contentCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Content$contentCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Content$contentCollection$edges> edges;

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
    if (!(other is Query$Content$contentCollection) ||
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

extension UtilityExtension$Query$Content$contentCollection
    on Query$Content$contentCollection {
  CopyWith$Query$Content$contentCollection<Query$Content$contentCollection>
      get copyWith => CopyWith$Query$Content$contentCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Content$contentCollection<TRes> {
  factory CopyWith$Query$Content$contentCollection(
    Query$Content$contentCollection instance,
    TRes Function(Query$Content$contentCollection) then,
  ) = _CopyWithImpl$Query$Content$contentCollection;

  factory CopyWith$Query$Content$contentCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Content$contentCollection;

  TRes call({
    List<Query$Content$contentCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Content$contentCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Content$contentCollection$edges<
                      Query$Content$contentCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Content$contentCollection<TRes>
    implements CopyWith$Query$Content$contentCollection<TRes> {
  _CopyWithImpl$Query$Content$contentCollection(
    this._instance,
    this._then,
  );

  final Query$Content$contentCollection _instance;

  final TRes Function(Query$Content$contentCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Content$contentCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Content$contentCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Content$contentCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Content$contentCollection$edges<
                          Query$Content$contentCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Content$contentCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Content$contentCollection<TRes>
    implements CopyWith$Query$Content$contentCollection<TRes> {
  _CopyWithStubImpl$Query$Content$contentCollection(this._res);

  TRes _res;

  call({
    List<Query$Content$contentCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Content$contentCollection$edges {
  Query$Content$contentCollection$edges({
    required this.node,
    this.$__typename = 'ContentEdge',
  });

  factory Query$Content$contentCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Content$contentCollection$edges(
      node: Fragment$Content.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Content node;

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
    if (!(other is Query$Content$contentCollection$edges) ||
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

extension UtilityExtension$Query$Content$contentCollection$edges
    on Query$Content$contentCollection$edges {
  CopyWith$Query$Content$contentCollection$edges<
          Query$Content$contentCollection$edges>
      get copyWith => CopyWith$Query$Content$contentCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Content$contentCollection$edges<TRes> {
  factory CopyWith$Query$Content$contentCollection$edges(
    Query$Content$contentCollection$edges instance,
    TRes Function(Query$Content$contentCollection$edges) then,
  ) = _CopyWithImpl$Query$Content$contentCollection$edges;

  factory CopyWith$Query$Content$contentCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Content$contentCollection$edges;

  TRes call({
    Fragment$Content? node,
    String? $__typename,
  });
  CopyWith$Fragment$Content<TRes> get node;
}

class _CopyWithImpl$Query$Content$contentCollection$edges<TRes>
    implements CopyWith$Query$Content$contentCollection$edges<TRes> {
  _CopyWithImpl$Query$Content$contentCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Content$contentCollection$edges _instance;

  final TRes Function(Query$Content$contentCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Content$contentCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Content),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Content<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Content(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Content$contentCollection$edges<TRes>
    implements CopyWith$Query$Content$contentCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Content$contentCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Content? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Content<TRes> get node =>
      CopyWith$Fragment$Content.stub(_res);
}

class Variables$Query$ContentCollection {
  factory Variables$Query$ContentCollection({
    Input$ContentFilter? filter,
    List<Input$ContentOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      Variables$Query$ContentCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$ContentCollection._(this._$data);

  factory Variables$Query$ContentCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$ContentFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$ContentOrderBy.fromJson((e as Map<String, dynamic>)))
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
    return Variables$Query$ContentCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ContentFilter? get filter => (_$data['filter'] as Input$ContentFilter?);

  List<Input$ContentOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ContentOrderBy>?);

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

  CopyWith$Variables$Query$ContentCollection<Variables$Query$ContentCollection>
      get copyWith => CopyWith$Variables$Query$ContentCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ContentCollection) ||
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

abstract class CopyWith$Variables$Query$ContentCollection<TRes> {
  factory CopyWith$Variables$Query$ContentCollection(
    Variables$Query$ContentCollection instance,
    TRes Function(Variables$Query$ContentCollection) then,
  ) = _CopyWithImpl$Variables$Query$ContentCollection;

  factory CopyWith$Variables$Query$ContentCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ContentCollection;

  TRes call({
    Input$ContentFilter? filter,
    List<Input$ContentOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$ContentCollection<TRes>
    implements CopyWith$Variables$Query$ContentCollection<TRes> {
  _CopyWithImpl$Variables$Query$ContentCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ContentCollection _instance;

  final TRes Function(Variables$Query$ContentCollection) _then;

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
      _then(Variables$Query$ContentCollection._({
        ..._instance._$data,
        if (filter != _undefined) 'filter': (filter as Input$ContentFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ContentOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ContentCollection<TRes>
    implements CopyWith$Variables$Query$ContentCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ContentCollection(this._res);

  TRes _res;

  call({
    Input$ContentFilter? filter,
    List<Input$ContentOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      _res;
}

class Query$ContentCollection {
  Query$ContentCollection({
    this.contentCollection,
    this.$__typename = 'Query',
  });

  factory Query$ContentCollection.fromJson(Map<String, dynamic> json) {
    final l$contentCollection = json['contentCollection'];
    final l$$__typename = json['__typename'];
    return Query$ContentCollection(
      contentCollection: l$contentCollection == null
          ? null
          : Query$ContentCollection$contentCollection.fromJson(
              (l$contentCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ContentCollection$contentCollection? contentCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$contentCollection = contentCollection;
    _resultData['contentCollection'] = l$contentCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$contentCollection = contentCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$contentCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ContentCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$contentCollection = contentCollection;
    final lOther$contentCollection = other.contentCollection;
    if (l$contentCollection != lOther$contentCollection) {
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

extension UtilityExtension$Query$ContentCollection on Query$ContentCollection {
  CopyWith$Query$ContentCollection<Query$ContentCollection> get copyWith =>
      CopyWith$Query$ContentCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ContentCollection<TRes> {
  factory CopyWith$Query$ContentCollection(
    Query$ContentCollection instance,
    TRes Function(Query$ContentCollection) then,
  ) = _CopyWithImpl$Query$ContentCollection;

  factory CopyWith$Query$ContentCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ContentCollection;

  TRes call({
    Query$ContentCollection$contentCollection? contentCollection,
    String? $__typename,
  });
  CopyWith$Query$ContentCollection$contentCollection<TRes>
      get contentCollection;
}

class _CopyWithImpl$Query$ContentCollection<TRes>
    implements CopyWith$Query$ContentCollection<TRes> {
  _CopyWithImpl$Query$ContentCollection(
    this._instance,
    this._then,
  );

  final Query$ContentCollection _instance;

  final TRes Function(Query$ContentCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? contentCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentCollection(
        contentCollection: contentCollection == _undefined
            ? _instance.contentCollection
            : (contentCollection as Query$ContentCollection$contentCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ContentCollection$contentCollection<TRes>
      get contentCollection {
    final local$contentCollection = _instance.contentCollection;
    return local$contentCollection == null
        ? CopyWith$Query$ContentCollection$contentCollection.stub(
            _then(_instance))
        : CopyWith$Query$ContentCollection$contentCollection(
            local$contentCollection, (e) => call(contentCollection: e));
  }
}

class _CopyWithStubImpl$Query$ContentCollection<TRes>
    implements CopyWith$Query$ContentCollection<TRes> {
  _CopyWithStubImpl$Query$ContentCollection(this._res);

  TRes _res;

  call({
    Query$ContentCollection$contentCollection? contentCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ContentCollection$contentCollection<TRes>
      get contentCollection =>
          CopyWith$Query$ContentCollection$contentCollection.stub(_res);
}

const documentNodeQueryContentCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ContentCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'ContentFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ContentOrderBy'),
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
        name: NameNode(value: 'contentCollection'),
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
  fragmentDefinitionTemplateVariableType,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Query$ContentCollection _parserFn$Query$ContentCollection(
        Map<String, dynamic> data) =>
    Query$ContentCollection.fromJson(data);
typedef OnQueryComplete$Query$ContentCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ContentCollection?,
);

class Options$Query$ContentCollection
    extends graphql.QueryOptions<Query$ContentCollection> {
  Options$Query$ContentCollection({
    String? operationName,
    Variables$Query$ContentCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ContentCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ContentCollection? onComplete,
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
                        : _parserFn$Query$ContentCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryContentCollection,
          parserFn: _parserFn$Query$ContentCollection,
        );

  final OnQueryComplete$Query$ContentCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ContentCollection
    extends graphql.WatchQueryOptions<Query$ContentCollection> {
  WatchOptions$Query$ContentCollection({
    String? operationName,
    Variables$Query$ContentCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ContentCollection? typedOptimisticResult,
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
          document: documentNodeQueryContentCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ContentCollection,
        );
}

class FetchMoreOptions$Query$ContentCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ContentCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ContentCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryContentCollection,
        );
}

extension ClientExtension$Query$ContentCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ContentCollection>> query$ContentCollection(
          [Options$Query$ContentCollection? options]) async =>
      await this.query(options ?? Options$Query$ContentCollection());
  graphql.ObservableQuery<Query$ContentCollection> watchQuery$ContentCollection(
          [WatchOptions$Query$ContentCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ContentCollection());
  void writeQuery$ContentCollection({
    required Query$ContentCollection data,
    Variables$Query$ContentCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryContentCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ContentCollection? readQuery$ContentCollection({
    Variables$Query$ContentCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryContentCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ContentCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ContentCollection>
    useQuery$ContentCollection([Options$Query$ContentCollection? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$ContentCollection());
graphql.ObservableQuery<Query$ContentCollection>
    useWatchQuery$ContentCollection(
            [WatchOptions$Query$ContentCollection? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$ContentCollection());

class Query$ContentCollection$Widget
    extends graphql_flutter.Query<Query$ContentCollection> {
  Query$ContentCollection$Widget({
    widgets.Key? key,
    Options$Query$ContentCollection? options,
    required graphql_flutter.QueryBuilder<Query$ContentCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ContentCollection(),
          builder: builder,
        );
}

class Query$ContentCollection$contentCollection {
  Query$ContentCollection$contentCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ContentConnection',
  });

  factory Query$ContentCollection$contentCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ContentCollection$contentCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ContentCollection$contentCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$ContentCollection$contentCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ContentCollection$contentCollection$edges> edges;

  final Query$ContentCollection$contentCollection$pageInfo pageInfo;

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
    if (!(other is Query$ContentCollection$contentCollection) ||
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

extension UtilityExtension$Query$ContentCollection$contentCollection
    on Query$ContentCollection$contentCollection {
  CopyWith$Query$ContentCollection$contentCollection<
          Query$ContentCollection$contentCollection>
      get copyWith => CopyWith$Query$ContentCollection$contentCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentCollection$contentCollection<TRes> {
  factory CopyWith$Query$ContentCollection$contentCollection(
    Query$ContentCollection$contentCollection instance,
    TRes Function(Query$ContentCollection$contentCollection) then,
  ) = _CopyWithImpl$Query$ContentCollection$contentCollection;

  factory CopyWith$Query$ContentCollection$contentCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ContentCollection$contentCollection;

  TRes call({
    List<Query$ContentCollection$contentCollection$edges>? edges,
    Query$ContentCollection$contentCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ContentCollection$contentCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ContentCollection$contentCollection$edges<
                      Query$ContentCollection$contentCollection$edges>>)
          _fn);
  CopyWith$Query$ContentCollection$contentCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ContentCollection$contentCollection<TRes>
    implements CopyWith$Query$ContentCollection$contentCollection<TRes> {
  _CopyWithImpl$Query$ContentCollection$contentCollection(
    this._instance,
    this._then,
  );

  final Query$ContentCollection$contentCollection _instance;

  final TRes Function(Query$ContentCollection$contentCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentCollection$contentCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$ContentCollection$contentCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$ContentCollection$contentCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ContentCollection$contentCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ContentCollection$contentCollection$edges<
                          Query$ContentCollection$contentCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$ContentCollection$contentCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$ContentCollection$contentCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ContentCollection$contentCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ContentCollection$contentCollection<TRes>
    implements CopyWith$Query$ContentCollection$contentCollection<TRes> {
  _CopyWithStubImpl$Query$ContentCollection$contentCollection(this._res);

  TRes _res;

  call({
    List<Query$ContentCollection$contentCollection$edges>? edges,
    Query$ContentCollection$contentCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ContentCollection$contentCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ContentCollection$contentCollection$pageInfo.stub(
              _res);
}

class Query$ContentCollection$contentCollection$edges {
  Query$ContentCollection$contentCollection$edges({
    required this.node,
    this.$__typename = 'ContentEdge',
  });

  factory Query$ContentCollection$contentCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ContentCollection$contentCollection$edges(
      node: Fragment$Content.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Content node;

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
    if (!(other is Query$ContentCollection$contentCollection$edges) ||
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

extension UtilityExtension$Query$ContentCollection$contentCollection$edges
    on Query$ContentCollection$contentCollection$edges {
  CopyWith$Query$ContentCollection$contentCollection$edges<
          Query$ContentCollection$contentCollection$edges>
      get copyWith => CopyWith$Query$ContentCollection$contentCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentCollection$contentCollection$edges<TRes> {
  factory CopyWith$Query$ContentCollection$contentCollection$edges(
    Query$ContentCollection$contentCollection$edges instance,
    TRes Function(Query$ContentCollection$contentCollection$edges) then,
  ) = _CopyWithImpl$Query$ContentCollection$contentCollection$edges;

  factory CopyWith$Query$ContentCollection$contentCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ContentCollection$contentCollection$edges;

  TRes call({
    Fragment$Content? node,
    String? $__typename,
  });
  CopyWith$Fragment$Content<TRes> get node;
}

class _CopyWithImpl$Query$ContentCollection$contentCollection$edges<TRes>
    implements CopyWith$Query$ContentCollection$contentCollection$edges<TRes> {
  _CopyWithImpl$Query$ContentCollection$contentCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ContentCollection$contentCollection$edges _instance;

  final TRes Function(Query$ContentCollection$contentCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentCollection$contentCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Content),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Content<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Content(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ContentCollection$contentCollection$edges<TRes>
    implements CopyWith$Query$ContentCollection$contentCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ContentCollection$contentCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Content? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Content<TRes> get node =>
      CopyWith$Fragment$Content.stub(_res);
}

class Query$ContentCollection$contentCollection$pageInfo {
  Query$ContentCollection$contentCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$ContentCollection$contentCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$ContentCollection$contentCollection$pageInfo(
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
    if (!(other is Query$ContentCollection$contentCollection$pageInfo) ||
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

extension UtilityExtension$Query$ContentCollection$contentCollection$pageInfo
    on Query$ContentCollection$contentCollection$pageInfo {
  CopyWith$Query$ContentCollection$contentCollection$pageInfo<
          Query$ContentCollection$contentCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ContentCollection$contentCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ContentCollection$contentCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ContentCollection$contentCollection$pageInfo(
    Query$ContentCollection$contentCollection$pageInfo instance,
    TRes Function(Query$ContentCollection$contentCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$ContentCollection$contentCollection$pageInfo;

  factory CopyWith$Query$ContentCollection$contentCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ContentCollection$contentCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ContentCollection$contentCollection$pageInfo<TRes>
    implements
        CopyWith$Query$ContentCollection$contentCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$ContentCollection$contentCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ContentCollection$contentCollection$pageInfo _instance;

  final TRes Function(Query$ContentCollection$contentCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ContentCollection$contentCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ContentCollection$contentCollection$pageInfo<TRes>
    implements
        CopyWith$Query$ContentCollection$contentCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ContentCollection$contentCollection$pageInfo(
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

class Variables$Query$CreationTypeCollection {
  factory Variables$Query$CreationTypeCollection({
    Input$CreationTypeFilter? filter,
    List<Input$CreationTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      Variables$Query$CreationTypeCollection._({
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
      });

  Variables$Query$CreationTypeCollection._(this._$data);

  factory Variables$Query$CreationTypeCollection.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$CreationTypeFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$CreationTypeOrderBy.fromJson((e as Map<String, dynamic>)))
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
    return Variables$Query$CreationTypeCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreationTypeFilter? get filter =>
      (_$data['filter'] as Input$CreationTypeFilter?);

  List<Input$CreationTypeOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$CreationTypeOrderBy>?);

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

  CopyWith$Variables$Query$CreationTypeCollection<
          Variables$Query$CreationTypeCollection>
      get copyWith => CopyWith$Variables$Query$CreationTypeCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$CreationTypeCollection) ||
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

abstract class CopyWith$Variables$Query$CreationTypeCollection<TRes> {
  factory CopyWith$Variables$Query$CreationTypeCollection(
    Variables$Query$CreationTypeCollection instance,
    TRes Function(Variables$Query$CreationTypeCollection) then,
  ) = _CopyWithImpl$Variables$Query$CreationTypeCollection;

  factory CopyWith$Variables$Query$CreationTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CreationTypeCollection;

  TRes call({
    Input$CreationTypeFilter? filter,
    List<Input$CreationTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  });
}

class _CopyWithImpl$Variables$Query$CreationTypeCollection<TRes>
    implements CopyWith$Variables$Query$CreationTypeCollection<TRes> {
  _CopyWithImpl$Variables$Query$CreationTypeCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$CreationTypeCollection _instance;

  final TRes Function(Variables$Query$CreationTypeCollection) _then;

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
      _then(Variables$Query$CreationTypeCollection._({
        ..._instance._$data,
        if (filter != _undefined)
          'filter': (filter as Input$CreationTypeFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$CreationTypeOrderBy>?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Variables$Query$CreationTypeCollection<TRes>
    implements CopyWith$Variables$Query$CreationTypeCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$CreationTypeCollection(this._res);

  TRes _res;

  call({
    Input$CreationTypeFilter? filter,
    List<Input$CreationTypeOrderBy>? orderBy,
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
  }) =>
      _res;
}

class Query$CreationTypeCollection {
  Query$CreationTypeCollection({
    this.creationTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$CreationTypeCollection.fromJson(Map<String, dynamic> json) {
    final l$creationTypeCollection = json['creationTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$CreationTypeCollection(
      creationTypeCollection: l$creationTypeCollection == null
          ? null
          : Query$CreationTypeCollection$creationTypeCollection.fromJson(
              (l$creationTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CreationTypeCollection$creationTypeCollection?
      creationTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$creationTypeCollection = creationTypeCollection;
    _resultData['creationTypeCollection'] = l$creationTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$creationTypeCollection = creationTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$creationTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$CreationTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$creationTypeCollection = creationTypeCollection;
    final lOther$creationTypeCollection = other.creationTypeCollection;
    if (l$creationTypeCollection != lOther$creationTypeCollection) {
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

extension UtilityExtension$Query$CreationTypeCollection
    on Query$CreationTypeCollection {
  CopyWith$Query$CreationTypeCollection<Query$CreationTypeCollection>
      get copyWith => CopyWith$Query$CreationTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CreationTypeCollection<TRes> {
  factory CopyWith$Query$CreationTypeCollection(
    Query$CreationTypeCollection instance,
    TRes Function(Query$CreationTypeCollection) then,
  ) = _CopyWithImpl$Query$CreationTypeCollection;

  factory CopyWith$Query$CreationTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$CreationTypeCollection;

  TRes call({
    Query$CreationTypeCollection$creationTypeCollection? creationTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$CreationTypeCollection$creationTypeCollection<TRes>
      get creationTypeCollection;
}

class _CopyWithImpl$Query$CreationTypeCollection<TRes>
    implements CopyWith$Query$CreationTypeCollection<TRes> {
  _CopyWithImpl$Query$CreationTypeCollection(
    this._instance,
    this._then,
  );

  final Query$CreationTypeCollection _instance;

  final TRes Function(Query$CreationTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? creationTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CreationTypeCollection(
        creationTypeCollection: creationTypeCollection == _undefined
            ? _instance.creationTypeCollection
            : (creationTypeCollection
                as Query$CreationTypeCollection$creationTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CreationTypeCollection$creationTypeCollection<TRes>
      get creationTypeCollection {
    final local$creationTypeCollection = _instance.creationTypeCollection;
    return local$creationTypeCollection == null
        ? CopyWith$Query$CreationTypeCollection$creationTypeCollection.stub(
            _then(_instance))
        : CopyWith$Query$CreationTypeCollection$creationTypeCollection(
            local$creationTypeCollection,
            (e) => call(creationTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$CreationTypeCollection<TRes>
    implements CopyWith$Query$CreationTypeCollection<TRes> {
  _CopyWithStubImpl$Query$CreationTypeCollection(this._res);

  TRes _res;

  call({
    Query$CreationTypeCollection$creationTypeCollection? creationTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CreationTypeCollection$creationTypeCollection<TRes>
      get creationTypeCollection =>
          CopyWith$Query$CreationTypeCollection$creationTypeCollection.stub(
              _res);
}

const documentNodeQueryCreationTypeCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CreationTypeCollection'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreationTypeFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'CreationTypeOrderBy'),
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
        name: NameNode(value: 'creationTypeCollection'),
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
                    name: NameNode(value: 'CreationType'),
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
  fragmentDefinitionCreationType,
]);
Query$CreationTypeCollection _parserFn$Query$CreationTypeCollection(
        Map<String, dynamic> data) =>
    Query$CreationTypeCollection.fromJson(data);
typedef OnQueryComplete$Query$CreationTypeCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CreationTypeCollection?,
);

class Options$Query$CreationTypeCollection
    extends graphql.QueryOptions<Query$CreationTypeCollection> {
  Options$Query$CreationTypeCollection({
    String? operationName,
    Variables$Query$CreationTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CreationTypeCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CreationTypeCollection? onComplete,
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
                        : _parserFn$Query$CreationTypeCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryCreationTypeCollection,
          parserFn: _parserFn$Query$CreationTypeCollection,
        );

  final OnQueryComplete$Query$CreationTypeCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CreationTypeCollection
    extends graphql.WatchQueryOptions<Query$CreationTypeCollection> {
  WatchOptions$Query$CreationTypeCollection({
    String? operationName,
    Variables$Query$CreationTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CreationTypeCollection? typedOptimisticResult,
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
          document: documentNodeQueryCreationTypeCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CreationTypeCollection,
        );
}

class FetchMoreOptions$Query$CreationTypeCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CreationTypeCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$CreationTypeCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryCreationTypeCollection,
        );
}

extension ClientExtension$Query$CreationTypeCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CreationTypeCollection>>
      query$CreationTypeCollection(
              [Options$Query$CreationTypeCollection? options]) async =>
          await this.query(options ?? Options$Query$CreationTypeCollection());
  graphql.ObservableQuery<
      Query$CreationTypeCollection> watchQuery$CreationTypeCollection(
          [WatchOptions$Query$CreationTypeCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CreationTypeCollection());
  void writeQuery$CreationTypeCollection({
    required Query$CreationTypeCollection data,
    Variables$Query$CreationTypeCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryCreationTypeCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CreationTypeCollection? readQuery$CreationTypeCollection({
    Variables$Query$CreationTypeCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryCreationTypeCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$CreationTypeCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$CreationTypeCollection>
    useQuery$CreationTypeCollection(
            [Options$Query$CreationTypeCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$CreationTypeCollection());
graphql.ObservableQuery<Query$CreationTypeCollection>
    useWatchQuery$CreationTypeCollection(
            [WatchOptions$Query$CreationTypeCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$CreationTypeCollection());

class Query$CreationTypeCollection$Widget
    extends graphql_flutter.Query<Query$CreationTypeCollection> {
  Query$CreationTypeCollection$Widget({
    widgets.Key? key,
    Options$Query$CreationTypeCollection? options,
    required graphql_flutter.QueryBuilder<Query$CreationTypeCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$CreationTypeCollection(),
          builder: builder,
        );
}

class Query$CreationTypeCollection$creationTypeCollection {
  Query$CreationTypeCollection$creationTypeCollection({
    required this.edges,
    this.$__typename = 'CreationTypeConnection',
  });

  factory Query$CreationTypeCollection$creationTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$CreationTypeCollection$creationTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$CreationTypeCollection$creationTypeCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CreationTypeCollection$creationTypeCollection$edges> edges;

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
    if (!(other is Query$CreationTypeCollection$creationTypeCollection) ||
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

extension UtilityExtension$Query$CreationTypeCollection$creationTypeCollection
    on Query$CreationTypeCollection$creationTypeCollection {
  CopyWith$Query$CreationTypeCollection$creationTypeCollection<
          Query$CreationTypeCollection$creationTypeCollection>
      get copyWith =>
          CopyWith$Query$CreationTypeCollection$creationTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CreationTypeCollection$creationTypeCollection<
    TRes> {
  factory CopyWith$Query$CreationTypeCollection$creationTypeCollection(
    Query$CreationTypeCollection$creationTypeCollection instance,
    TRes Function(Query$CreationTypeCollection$creationTypeCollection) then,
  ) = _CopyWithImpl$Query$CreationTypeCollection$creationTypeCollection;

  factory CopyWith$Query$CreationTypeCollection$creationTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$CreationTypeCollection$creationTypeCollection;

  TRes call({
    List<Query$CreationTypeCollection$creationTypeCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$CreationTypeCollection$creationTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges<
                      Query$CreationTypeCollection$creationTypeCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$CreationTypeCollection$creationTypeCollection<TRes>
    implements
        CopyWith$Query$CreationTypeCollection$creationTypeCollection<TRes> {
  _CopyWithImpl$Query$CreationTypeCollection$creationTypeCollection(
    this._instance,
    this._then,
  );

  final Query$CreationTypeCollection$creationTypeCollection _instance;

  final TRes Function(Query$CreationTypeCollection$creationTypeCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CreationTypeCollection$creationTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$CreationTypeCollection$creationTypeCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$CreationTypeCollection$creationTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges<
                          Query$CreationTypeCollection$creationTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$CreationTypeCollection$creationTypeCollection<
        TRes>
    implements
        CopyWith$Query$CreationTypeCollection$creationTypeCollection<TRes> {
  _CopyWithStubImpl$Query$CreationTypeCollection$creationTypeCollection(
      this._res);

  TRes _res;

  call({
    List<Query$CreationTypeCollection$creationTypeCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$CreationTypeCollection$creationTypeCollection$edges {
  Query$CreationTypeCollection$creationTypeCollection$edges({
    required this.node,
    this.$__typename = 'CreationTypeEdge',
  });

  factory Query$CreationTypeCollection$creationTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$CreationTypeCollection$creationTypeCollection$edges(
      node: Fragment$CreationType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CreationType node;

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
    if (!(other is Query$CreationTypeCollection$creationTypeCollection$edges) ||
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

extension UtilityExtension$Query$CreationTypeCollection$creationTypeCollection$edges
    on Query$CreationTypeCollection$creationTypeCollection$edges {
  CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges<
          Query$CreationTypeCollection$creationTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges(
    Query$CreationTypeCollection$creationTypeCollection$edges instance,
    TRes Function(Query$CreationTypeCollection$creationTypeCollection$edges)
        then,
  ) = _CopyWithImpl$Query$CreationTypeCollection$creationTypeCollection$edges;

  factory CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$CreationTypeCollection$creationTypeCollection$edges;

  TRes call({
    Fragment$CreationType? node,
    String? $__typename,
  });
  CopyWith$Fragment$CreationType<TRes> get node;
}

class _CopyWithImpl$Query$CreationTypeCollection$creationTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges<
            TRes> {
  _CopyWithImpl$Query$CreationTypeCollection$creationTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$CreationTypeCollection$creationTypeCollection$edges _instance;

  final TRes Function(Query$CreationTypeCollection$creationTypeCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CreationTypeCollection$creationTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$CreationType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CreationType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$CreationType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$CreationTypeCollection$creationTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$CreationTypeCollection$creationTypeCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$CreationTypeCollection$creationTypeCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$CreationType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CreationType<TRes> get node =>
      CopyWith$Fragment$CreationType.stub(_res);
}

class Variables$Mutation$CreateContent {
  factory Variables$Mutation$CreateContent(
          {required List<Input$ContentInsertInput> objects}) =>
      Variables$Mutation$CreateContent._({
        r'objects': objects,
      });

  Variables$Mutation$CreateContent._(this._$data);

  factory Variables$Mutation$CreateContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$objects = data['objects'];
    result$data['objects'] = (l$objects as List<dynamic>)
        .map((e) =>
            Input$ContentInsertInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$CreateContent._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ContentInsertInput> get objects =>
      (_$data['objects'] as List<Input$ContentInsertInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$objects = objects;
    result$data['objects'] = l$objects.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateContent<Variables$Mutation$CreateContent>
      get copyWith => CopyWith$Variables$Mutation$CreateContent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$objects = objects;
    final lOther$objects = other.objects;
    if (l$objects.length != lOther$objects.length) {
      return false;
    }
    for (int i = 0; i < l$objects.length; i++) {
      final l$objects$entry = l$objects[i];
      final lOther$objects$entry = lOther$objects[i];
      if (l$objects$entry != lOther$objects$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$objects = objects;
    return Object.hashAll([Object.hashAll(l$objects.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateContent<TRes> {
  factory CopyWith$Variables$Mutation$CreateContent(
    Variables$Mutation$CreateContent instance,
    TRes Function(Variables$Mutation$CreateContent) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateContent;

  factory CopyWith$Variables$Mutation$CreateContent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateContent;

  TRes call({List<Input$ContentInsertInput>? objects});
}

class _CopyWithImpl$Variables$Mutation$CreateContent<TRes>
    implements CopyWith$Variables$Mutation$CreateContent<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateContent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateContent _instance;

  final TRes Function(Variables$Mutation$CreateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? objects = _undefined}) =>
      _then(Variables$Mutation$CreateContent._({
        ..._instance._$data,
        if (objects != _undefined && objects != null)
          'objects': (objects as List<Input$ContentInsertInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateContent<TRes>
    implements CopyWith$Variables$Mutation$CreateContent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateContent(this._res);

  TRes _res;

  call({List<Input$ContentInsertInput>? objects}) => _res;
}

class Mutation$CreateContent {
  Mutation$CreateContent({
    this.insertIntoContentCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateContent.fromJson(Map<String, dynamic> json) {
    final l$insertIntoContentCollection = json['insertIntoContentCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateContent(
      insertIntoContentCollection: l$insertIntoContentCollection == null
          ? null
          : Mutation$CreateContent$insertIntoContentCollection.fromJson(
              (l$insertIntoContentCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateContent$insertIntoContentCollection?
      insertIntoContentCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoContentCollection = insertIntoContentCollection;
    _resultData['insertIntoContentCollection'] =
        l$insertIntoContentCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoContentCollection = insertIntoContentCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoContentCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoContentCollection = insertIntoContentCollection;
    final lOther$insertIntoContentCollection =
        other.insertIntoContentCollection;
    if (l$insertIntoContentCollection != lOther$insertIntoContentCollection) {
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

extension UtilityExtension$Mutation$CreateContent on Mutation$CreateContent {
  CopyWith$Mutation$CreateContent<Mutation$CreateContent> get copyWith =>
      CopyWith$Mutation$CreateContent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateContent<TRes> {
  factory CopyWith$Mutation$CreateContent(
    Mutation$CreateContent instance,
    TRes Function(Mutation$CreateContent) then,
  ) = _CopyWithImpl$Mutation$CreateContent;

  factory CopyWith$Mutation$CreateContent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateContent;

  TRes call({
    Mutation$CreateContent$insertIntoContentCollection?
        insertIntoContentCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateContent$insertIntoContentCollection<TRes>
      get insertIntoContentCollection;
}

class _CopyWithImpl$Mutation$CreateContent<TRes>
    implements CopyWith$Mutation$CreateContent<TRes> {
  _CopyWithImpl$Mutation$CreateContent(
    this._instance,
    this._then,
  );

  final Mutation$CreateContent _instance;

  final TRes Function(Mutation$CreateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoContentCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateContent(
        insertIntoContentCollection: insertIntoContentCollection == _undefined
            ? _instance.insertIntoContentCollection
            : (insertIntoContentCollection
                as Mutation$CreateContent$insertIntoContentCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateContent$insertIntoContentCollection<TRes>
      get insertIntoContentCollection {
    final local$insertIntoContentCollection =
        _instance.insertIntoContentCollection;
    return local$insertIntoContentCollection == null
        ? CopyWith$Mutation$CreateContent$insertIntoContentCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateContent$insertIntoContentCollection(
            local$insertIntoContentCollection,
            (e) => call(insertIntoContentCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateContent<TRes>
    implements CopyWith$Mutation$CreateContent<TRes> {
  _CopyWithStubImpl$Mutation$CreateContent(this._res);

  TRes _res;

  call({
    Mutation$CreateContent$insertIntoContentCollection?
        insertIntoContentCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateContent$insertIntoContentCollection<TRes>
      get insertIntoContentCollection =>
          CopyWith$Mutation$CreateContent$insertIntoContentCollection.stub(
              _res);
}

const documentNodeMutationCreateContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateContent'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'objects')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ContentInsertInput'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoContentCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'objects')),
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
  fragmentDefinitionTemplateVariableType,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Mutation$CreateContent _parserFn$Mutation$CreateContent(
        Map<String, dynamic> data) =>
    Mutation$CreateContent.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateContent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateContent?,
);

class Options$Mutation$CreateContent
    extends graphql.MutationOptions<Mutation$CreateContent> {
  Options$Mutation$CreateContent({
    String? operationName,
    required Variables$Mutation$CreateContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateContent>? update,
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
                        : _parserFn$Mutation$CreateContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateContent,
          parserFn: _parserFn$Mutation$CreateContent,
        );

  final OnMutationCompleted$Mutation$CreateContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateContent
    extends graphql.WatchQueryOptions<Mutation$CreateContent> {
  WatchOptions$Mutation$CreateContent({
    String? operationName,
    required Variables$Mutation$CreateContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateContent? typedOptimisticResult,
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
          document: documentNodeMutationCreateContent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateContent,
        );
}

extension ClientExtension$Mutation$CreateContent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateContent>> mutate$CreateContent(
          Options$Mutation$CreateContent options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateContent> watchMutation$CreateContent(
          WatchOptions$Mutation$CreateContent options) =>
      this.watchMutation(options);
}

class Mutation$CreateContent$HookResult {
  Mutation$CreateContent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateContent runMutation;

  final graphql.QueryResult<Mutation$CreateContent> result;
}

Mutation$CreateContent$HookResult useMutation$CreateContent(
    [WidgetOptions$Mutation$CreateContent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateContent());
  return Mutation$CreateContent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateContent> useWatchMutation$CreateContent(
        WatchOptions$Mutation$CreateContent options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateContent
    extends graphql.MutationOptions<Mutation$CreateContent> {
  WidgetOptions$Mutation$CreateContent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateContent>? update,
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
                        : _parserFn$Mutation$CreateContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateContent,
          parserFn: _parserFn$Mutation$CreateContent,
        );

  final OnMutationCompleted$Mutation$CreateContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateContent
    = graphql.MultiSourceResult<Mutation$CreateContent> Function(
  Variables$Mutation$CreateContent, {
  Object? optimisticResult,
  Mutation$CreateContent? typedOptimisticResult,
});
typedef Builder$Mutation$CreateContent = widgets.Widget Function(
  RunMutation$Mutation$CreateContent,
  graphql.QueryResult<Mutation$CreateContent>?,
);

class Mutation$CreateContent$Widget
    extends graphql_flutter.Mutation<Mutation$CreateContent> {
  Mutation$CreateContent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateContent? options,
    required Builder$Mutation$CreateContent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateContent(),
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

class Mutation$CreateContent$insertIntoContentCollection {
  Mutation$CreateContent$insertIntoContentCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ContentInsertResponse',
  });

  factory Mutation$CreateContent$insertIntoContentCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateContent$insertIntoContentCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Content.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Content> records;

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
    if (!(other is Mutation$CreateContent$insertIntoContentCollection) ||
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

extension UtilityExtension$Mutation$CreateContent$insertIntoContentCollection
    on Mutation$CreateContent$insertIntoContentCollection {
  CopyWith$Mutation$CreateContent$insertIntoContentCollection<
          Mutation$CreateContent$insertIntoContentCollection>
      get copyWith =>
          CopyWith$Mutation$CreateContent$insertIntoContentCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateContent$insertIntoContentCollection<
    TRes> {
  factory CopyWith$Mutation$CreateContent$insertIntoContentCollection(
    Mutation$CreateContent$insertIntoContentCollection instance,
    TRes Function(Mutation$CreateContent$insertIntoContentCollection) then,
  ) = _CopyWithImpl$Mutation$CreateContent$insertIntoContentCollection;

  factory CopyWith$Mutation$CreateContent$insertIntoContentCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateContent$insertIntoContentCollection;

  TRes call({
    List<Fragment$Content>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Content> Function(
              Iterable<CopyWith$Fragment$Content<Fragment$Content>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateContent$insertIntoContentCollection<TRes>
    implements
        CopyWith$Mutation$CreateContent$insertIntoContentCollection<TRes> {
  _CopyWithImpl$Mutation$CreateContent$insertIntoContentCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateContent$insertIntoContentCollection _instance;

  final TRes Function(Mutation$CreateContent$insertIntoContentCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateContent$insertIntoContentCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Content>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Content> Function(
                  Iterable<CopyWith$Fragment$Content<Fragment$Content>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Content(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateContent$insertIntoContentCollection<TRes>
    implements
        CopyWith$Mutation$CreateContent$insertIntoContentCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateContent$insertIntoContentCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Content>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateContent {
  factory Variables$Mutation$UpdateContent({
    required String id,
    required Input$ContentUpdateInput content,
  }) =>
      Variables$Mutation$UpdateContent._({
        r'id': id,
        r'content': content,
      });

  Variables$Mutation$UpdateContent._(this._$data);

  factory Variables$Mutation$UpdateContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$content = data['content'];
    result$data['content'] =
        Input$ContentUpdateInput.fromJson((l$content as Map<String, dynamic>));
    return Variables$Mutation$UpdateContent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ContentUpdateInput get content =>
      (_$data['content'] as Input$ContentUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$content = content;
    result$data['content'] = l$content.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateContent<Variables$Mutation$UpdateContent>
      get copyWith => CopyWith$Variables$Mutation$UpdateContent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$content = content;
    return Object.hashAll([
      l$id,
      l$content,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateContent<TRes> {
  factory CopyWith$Variables$Mutation$UpdateContent(
    Variables$Mutation$UpdateContent instance,
    TRes Function(Variables$Mutation$UpdateContent) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateContent;

  factory CopyWith$Variables$Mutation$UpdateContent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateContent;

  TRes call({
    String? id,
    Input$ContentUpdateInput? content,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateContent<TRes>
    implements CopyWith$Variables$Mutation$UpdateContent<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateContent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateContent _instance;

  final TRes Function(Variables$Mutation$UpdateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateContent._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (content != _undefined && content != null)
          'content': (content as Input$ContentUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateContent<TRes>
    implements CopyWith$Variables$Mutation$UpdateContent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateContent(this._res);

  TRes _res;

  call({
    String? id,
    Input$ContentUpdateInput? content,
  }) =>
      _res;
}

class Mutation$UpdateContent {
  Mutation$UpdateContent({
    required this.updateContentCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateContent.fromJson(Map<String, dynamic> json) {
    final l$updateContentCollection = json['updateContentCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateContent(
      updateContentCollection:
          Mutation$UpdateContent$updateContentCollection.fromJson(
              (l$updateContentCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateContent$updateContentCollection updateContentCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateContentCollection = updateContentCollection;
    _resultData['updateContentCollection'] = l$updateContentCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateContentCollection = updateContentCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateContentCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateContentCollection = updateContentCollection;
    final lOther$updateContentCollection = other.updateContentCollection;
    if (l$updateContentCollection != lOther$updateContentCollection) {
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

extension UtilityExtension$Mutation$UpdateContent on Mutation$UpdateContent {
  CopyWith$Mutation$UpdateContent<Mutation$UpdateContent> get copyWith =>
      CopyWith$Mutation$UpdateContent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateContent<TRes> {
  factory CopyWith$Mutation$UpdateContent(
    Mutation$UpdateContent instance,
    TRes Function(Mutation$UpdateContent) then,
  ) = _CopyWithImpl$Mutation$UpdateContent;

  factory CopyWith$Mutation$UpdateContent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateContent;

  TRes call({
    Mutation$UpdateContent$updateContentCollection? updateContentCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateContent$updateContentCollection<TRes>
      get updateContentCollection;
}

class _CopyWithImpl$Mutation$UpdateContent<TRes>
    implements CopyWith$Mutation$UpdateContent<TRes> {
  _CopyWithImpl$Mutation$UpdateContent(
    this._instance,
    this._then,
  );

  final Mutation$UpdateContent _instance;

  final TRes Function(Mutation$UpdateContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateContentCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateContent(
        updateContentCollection: updateContentCollection == _undefined ||
                updateContentCollection == null
            ? _instance.updateContentCollection
            : (updateContentCollection
                as Mutation$UpdateContent$updateContentCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateContent$updateContentCollection<TRes>
      get updateContentCollection {
    final local$updateContentCollection = _instance.updateContentCollection;
    return CopyWith$Mutation$UpdateContent$updateContentCollection(
        local$updateContentCollection, (e) => call(updateContentCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateContent<TRes>
    implements CopyWith$Mutation$UpdateContent<TRes> {
  _CopyWithStubImpl$Mutation$UpdateContent(this._res);

  TRes _res;

  call({
    Mutation$UpdateContent$updateContentCollection? updateContentCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateContent$updateContentCollection<TRes>
      get updateContentCollection =>
          CopyWith$Mutation$UpdateContent$updateContentCollection.stub(_res);
}

const documentNodeMutationUpdateContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateContent'),
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
        variable: VariableNode(name: NameNode(value: 'content')),
        type: NamedTypeNode(
          name: NameNode(value: 'ContentUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateContentCollection'),
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
            value: VariableNode(name: NameNode(value: 'content')),
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
  fragmentDefinitionTemplateVariableType,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Mutation$UpdateContent _parserFn$Mutation$UpdateContent(
        Map<String, dynamic> data) =>
    Mutation$UpdateContent.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateContent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateContent?,
);

class Options$Mutation$UpdateContent
    extends graphql.MutationOptions<Mutation$UpdateContent> {
  Options$Mutation$UpdateContent({
    String? operationName,
    required Variables$Mutation$UpdateContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateContent>? update,
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
                        : _parserFn$Mutation$UpdateContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateContent,
          parserFn: _parserFn$Mutation$UpdateContent,
        );

  final OnMutationCompleted$Mutation$UpdateContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateContent
    extends graphql.WatchQueryOptions<Mutation$UpdateContent> {
  WatchOptions$Mutation$UpdateContent({
    String? operationName,
    required Variables$Mutation$UpdateContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateContent? typedOptimisticResult,
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
          document: documentNodeMutationUpdateContent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateContent,
        );
}

extension ClientExtension$Mutation$UpdateContent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateContent>> mutate$UpdateContent(
          Options$Mutation$UpdateContent options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateContent> watchMutation$UpdateContent(
          WatchOptions$Mutation$UpdateContent options) =>
      this.watchMutation(options);
}

class Mutation$UpdateContent$HookResult {
  Mutation$UpdateContent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateContent runMutation;

  final graphql.QueryResult<Mutation$UpdateContent> result;
}

Mutation$UpdateContent$HookResult useMutation$UpdateContent(
    [WidgetOptions$Mutation$UpdateContent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateContent());
  return Mutation$UpdateContent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateContent> useWatchMutation$UpdateContent(
        WatchOptions$Mutation$UpdateContent options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateContent
    extends graphql.MutationOptions<Mutation$UpdateContent> {
  WidgetOptions$Mutation$UpdateContent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateContent>? update,
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
                        : _parserFn$Mutation$UpdateContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateContent,
          parserFn: _parserFn$Mutation$UpdateContent,
        );

  final OnMutationCompleted$Mutation$UpdateContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateContent
    = graphql.MultiSourceResult<Mutation$UpdateContent> Function(
  Variables$Mutation$UpdateContent, {
  Object? optimisticResult,
  Mutation$UpdateContent? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateContent = widgets.Widget Function(
  RunMutation$Mutation$UpdateContent,
  graphql.QueryResult<Mutation$UpdateContent>?,
);

class Mutation$UpdateContent$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateContent> {
  Mutation$UpdateContent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateContent? options,
    required Builder$Mutation$UpdateContent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateContent(),
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

class Mutation$UpdateContent$updateContentCollection {
  Mutation$UpdateContent$updateContentCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ContentUpdateResponse',
  });

  factory Mutation$UpdateContent$updateContentCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateContent$updateContentCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Content.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Content> records;

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
    if (!(other is Mutation$UpdateContent$updateContentCollection) ||
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

extension UtilityExtension$Mutation$UpdateContent$updateContentCollection
    on Mutation$UpdateContent$updateContentCollection {
  CopyWith$Mutation$UpdateContent$updateContentCollection<
          Mutation$UpdateContent$updateContentCollection>
      get copyWith => CopyWith$Mutation$UpdateContent$updateContentCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateContent$updateContentCollection<TRes> {
  factory CopyWith$Mutation$UpdateContent$updateContentCollection(
    Mutation$UpdateContent$updateContentCollection instance,
    TRes Function(Mutation$UpdateContent$updateContentCollection) then,
  ) = _CopyWithImpl$Mutation$UpdateContent$updateContentCollection;

  factory CopyWith$Mutation$UpdateContent$updateContentCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateContent$updateContentCollection;

  TRes call({
    List<Fragment$Content>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Content> Function(
              Iterable<CopyWith$Fragment$Content<Fragment$Content>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateContent$updateContentCollection<TRes>
    implements CopyWith$Mutation$UpdateContent$updateContentCollection<TRes> {
  _CopyWithImpl$Mutation$UpdateContent$updateContentCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateContent$updateContentCollection _instance;

  final TRes Function(Mutation$UpdateContent$updateContentCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateContent$updateContentCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Content>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Content> Function(
                  Iterable<CopyWith$Fragment$Content<Fragment$Content>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Content(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateContent$updateContentCollection<TRes>
    implements CopyWith$Mutation$UpdateContent$updateContentCollection<TRes> {
  _CopyWithStubImpl$Mutation$UpdateContent$updateContentCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Content>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteContent {
  factory Variables$Mutation$DeleteContent({required String id}) =>
      Variables$Mutation$DeleteContent._({
        r'id': id,
      });

  Variables$Mutation$DeleteContent._(this._$data);

  factory Variables$Mutation$DeleteContent.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteContent._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteContent<Variables$Mutation$DeleteContent>
      get copyWith => CopyWith$Variables$Mutation$DeleteContent(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteContent) ||
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

abstract class CopyWith$Variables$Mutation$DeleteContent<TRes> {
  factory CopyWith$Variables$Mutation$DeleteContent(
    Variables$Mutation$DeleteContent instance,
    TRes Function(Variables$Mutation$DeleteContent) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteContent;

  factory CopyWith$Variables$Mutation$DeleteContent.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteContent;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteContent<TRes>
    implements CopyWith$Variables$Mutation$DeleteContent<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteContent(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteContent _instance;

  final TRes Function(Variables$Mutation$DeleteContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteContent._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteContent<TRes>
    implements CopyWith$Variables$Mutation$DeleteContent<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteContent(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteContent {
  Mutation$DeleteContent({
    required this.deleteFromContentCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteContent.fromJson(Map<String, dynamic> json) {
    final l$deleteFromContentCollection = json['deleteFromContentCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContent(
      deleteFromContentCollection:
          Mutation$DeleteContent$deleteFromContentCollection.fromJson(
              (l$deleteFromContentCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteContent$deleteFromContentCollection
      deleteFromContentCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromContentCollection = deleteFromContentCollection;
    _resultData['deleteFromContentCollection'] =
        l$deleteFromContentCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromContentCollection = deleteFromContentCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromContentCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteContent) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromContentCollection = deleteFromContentCollection;
    final lOther$deleteFromContentCollection =
        other.deleteFromContentCollection;
    if (l$deleteFromContentCollection != lOther$deleteFromContentCollection) {
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

extension UtilityExtension$Mutation$DeleteContent on Mutation$DeleteContent {
  CopyWith$Mutation$DeleteContent<Mutation$DeleteContent> get copyWith =>
      CopyWith$Mutation$DeleteContent(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteContent<TRes> {
  factory CopyWith$Mutation$DeleteContent(
    Mutation$DeleteContent instance,
    TRes Function(Mutation$DeleteContent) then,
  ) = _CopyWithImpl$Mutation$DeleteContent;

  factory CopyWith$Mutation$DeleteContent.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteContent;

  TRes call({
    Mutation$DeleteContent$deleteFromContentCollection?
        deleteFromContentCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteContent$deleteFromContentCollection<TRes>
      get deleteFromContentCollection;
}

class _CopyWithImpl$Mutation$DeleteContent<TRes>
    implements CopyWith$Mutation$DeleteContent<TRes> {
  _CopyWithImpl$Mutation$DeleteContent(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContent _instance;

  final TRes Function(Mutation$DeleteContent) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromContentCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteContent(
        deleteFromContentCollection:
            deleteFromContentCollection == _undefined ||
                    deleteFromContentCollection == null
                ? _instance.deleteFromContentCollection
                : (deleteFromContentCollection
                    as Mutation$DeleteContent$deleteFromContentCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteContent$deleteFromContentCollection<TRes>
      get deleteFromContentCollection {
    final local$deleteFromContentCollection =
        _instance.deleteFromContentCollection;
    return CopyWith$Mutation$DeleteContent$deleteFromContentCollection(
        local$deleteFromContentCollection,
        (e) => call(deleteFromContentCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteContent<TRes>
    implements CopyWith$Mutation$DeleteContent<TRes> {
  _CopyWithStubImpl$Mutation$DeleteContent(this._res);

  TRes _res;

  call({
    Mutation$DeleteContent$deleteFromContentCollection?
        deleteFromContentCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteContent$deleteFromContentCollection<TRes>
      get deleteFromContentCollection =>
          CopyWith$Mutation$DeleteContent$deleteFromContentCollection.stub(
              _res);
}

const documentNodeMutationDeleteContent = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteContent'),
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
        name: NameNode(value: 'deleteFromContentCollection'),
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
  fragmentDefinitionTemplateVariableType,
  fragmentDefinitionCreationType,
  fragmentDefinitionContentContentPart,
  fragmentDefinitionContentPart,
]);
Mutation$DeleteContent _parserFn$Mutation$DeleteContent(
        Map<String, dynamic> data) =>
    Mutation$DeleteContent.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteContent = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteContent?,
);

class Options$Mutation$DeleteContent
    extends graphql.MutationOptions<Mutation$DeleteContent> {
  Options$Mutation$DeleteContent({
    String? operationName,
    required Variables$Mutation$DeleteContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteContent>? update,
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
                        : _parserFn$Mutation$DeleteContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteContent,
          parserFn: _parserFn$Mutation$DeleteContent,
        );

  final OnMutationCompleted$Mutation$DeleteContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteContent
    extends graphql.WatchQueryOptions<Mutation$DeleteContent> {
  WatchOptions$Mutation$DeleteContent({
    String? operationName,
    required Variables$Mutation$DeleteContent variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteContent? typedOptimisticResult,
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
          document: documentNodeMutationDeleteContent,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteContent,
        );
}

extension ClientExtension$Mutation$DeleteContent on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteContent>> mutate$DeleteContent(
          Options$Mutation$DeleteContent options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteContent> watchMutation$DeleteContent(
          WatchOptions$Mutation$DeleteContent options) =>
      this.watchMutation(options);
}

class Mutation$DeleteContent$HookResult {
  Mutation$DeleteContent$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteContent runMutation;

  final graphql.QueryResult<Mutation$DeleteContent> result;
}

Mutation$DeleteContent$HookResult useMutation$DeleteContent(
    [WidgetOptions$Mutation$DeleteContent? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteContent());
  return Mutation$DeleteContent$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteContent> useWatchMutation$DeleteContent(
        WatchOptions$Mutation$DeleteContent options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteContent
    extends graphql.MutationOptions<Mutation$DeleteContent> {
  WidgetOptions$Mutation$DeleteContent({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteContent? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteContent? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteContent>? update,
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
                        : _parserFn$Mutation$DeleteContent(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteContent,
          parserFn: _parserFn$Mutation$DeleteContent,
        );

  final OnMutationCompleted$Mutation$DeleteContent? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteContent
    = graphql.MultiSourceResult<Mutation$DeleteContent> Function(
  Variables$Mutation$DeleteContent, {
  Object? optimisticResult,
  Mutation$DeleteContent? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteContent = widgets.Widget Function(
  RunMutation$Mutation$DeleteContent,
  graphql.QueryResult<Mutation$DeleteContent>?,
);

class Mutation$DeleteContent$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteContent> {
  Mutation$DeleteContent$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteContent? options,
    required Builder$Mutation$DeleteContent builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteContent(),
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

class Mutation$DeleteContent$deleteFromContentCollection {
  Mutation$DeleteContent$deleteFromContentCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ContentDeleteResponse',
  });

  factory Mutation$DeleteContent$deleteFromContentCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteContent$deleteFromContentCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Content.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Content> records;

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
    if (!(other is Mutation$DeleteContent$deleteFromContentCollection) ||
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

extension UtilityExtension$Mutation$DeleteContent$deleteFromContentCollection
    on Mutation$DeleteContent$deleteFromContentCollection {
  CopyWith$Mutation$DeleteContent$deleteFromContentCollection<
          Mutation$DeleteContent$deleteFromContentCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteContent$deleteFromContentCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteContent$deleteFromContentCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteContent$deleteFromContentCollection(
    Mutation$DeleteContent$deleteFromContentCollection instance,
    TRes Function(Mutation$DeleteContent$deleteFromContentCollection) then,
  ) = _CopyWithImpl$Mutation$DeleteContent$deleteFromContentCollection;

  factory CopyWith$Mutation$DeleteContent$deleteFromContentCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteContent$deleteFromContentCollection;

  TRes call({
    List<Fragment$Content>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Content> Function(
              Iterable<CopyWith$Fragment$Content<Fragment$Content>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteContent$deleteFromContentCollection<TRes>
    implements
        CopyWith$Mutation$DeleteContent$deleteFromContentCollection<TRes> {
  _CopyWithImpl$Mutation$DeleteContent$deleteFromContentCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteContent$deleteFromContentCollection _instance;

  final TRes Function(Mutation$DeleteContent$deleteFromContentCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteContent$deleteFromContentCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Content>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Content> Function(
                  Iterable<CopyWith$Fragment$Content<Fragment$Content>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Content(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteContent$deleteFromContentCollection<TRes>
    implements
        CopyWith$Mutation$DeleteContent$deleteFromContentCollection<TRes> {
  _CopyWithStubImpl$Mutation$DeleteContent$deleteFromContentCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Content>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
