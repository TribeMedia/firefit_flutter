import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$Role {
  Fragment$Role({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    this.$__typename = 'Role',
  });

  factory Fragment$Role.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$$__typename = json['__typename'];
    return Fragment$Role(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

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
    final l$schema = schema;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$schema,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Role) || runtimeType != other.runtimeType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Role on Fragment$Role {
  CopyWith$Fragment$Role<Fragment$Role> get copyWith => CopyWith$Fragment$Role(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Role<TRes> {
  factory CopyWith$Fragment$Role(
    Fragment$Role instance,
    TRes Function(Fragment$Role) then,
  ) = _CopyWithImpl$Fragment$Role;

  factory CopyWith$Fragment$Role.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Role;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Role<TRes>
    implements CopyWith$Fragment$Role<TRes> {
  _CopyWithImpl$Fragment$Role(
    this._instance,
    this._then,
  );

  final Fragment$Role _instance;

  final TRes Function(Fragment$Role) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Role(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Role<TRes>
    implements CopyWith$Fragment$Role<TRes> {
  _CopyWithStubImpl$Fragment$Role(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionRole = FragmentDefinitionNode(
  name: NameNode(value: 'Role'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Role'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentRole = DocumentNode(definitions: [
  fragmentDefinitionRole,
]);

extension ClientExtension$Fragment$Role on graphql.GraphQLClient {
  void writeFragment$Role({
    required Fragment$Role data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Role',
            document: documentNodeFragmentRole,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Role? readFragment$Role({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Role',
          document: documentNodeFragmentRole,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Role.fromJson(result);
  }
}

class Fragment$UserRole {
  Fragment$UserRole({
    required this.id,
    required this.roleId,
    required this.role,
    required this.userId,
    this.$__typename = 'UserRole',
  });

  factory Fragment$UserRole.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$roleId = json['roleId'];
    final l$role = json['role'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Fragment$UserRole(
      id: (l$id as String),
      roleId: (l$roleId as String),
      role: Fragment$Role.fromJson((l$role as Map<String, dynamic>)),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String roleId;

  final Fragment$Role role;

  final String userId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$roleId = roleId;
    _resultData['roleId'] = l$roleId;
    final l$role = role;
    _resultData['role'] = l$role.toJson();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$roleId = roleId;
    final l$role = role;
    final l$userId = userId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$roleId,
      l$role,
      l$userId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$UserRole) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$roleId = roleId;
    final lOther$roleId = other.roleId;
    if (l$roleId != lOther$roleId) {
      return false;
    }
    final l$role = role;
    final lOther$role = other.role;
    if (l$role != lOther$role) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
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

extension UtilityExtension$Fragment$UserRole on Fragment$UserRole {
  CopyWith$Fragment$UserRole<Fragment$UserRole> get copyWith =>
      CopyWith$Fragment$UserRole(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserRole<TRes> {
  factory CopyWith$Fragment$UserRole(
    Fragment$UserRole instance,
    TRes Function(Fragment$UserRole) then,
  ) = _CopyWithImpl$Fragment$UserRole;

  factory CopyWith$Fragment$UserRole.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserRole;

  TRes call({
    String? id,
    String? roleId,
    Fragment$Role? role,
    String? userId,
    String? $__typename,
  });
  CopyWith$Fragment$Role<TRes> get role;
}

class _CopyWithImpl$Fragment$UserRole<TRes>
    implements CopyWith$Fragment$UserRole<TRes> {
  _CopyWithImpl$Fragment$UserRole(
    this._instance,
    this._then,
  );

  final Fragment$UserRole _instance;

  final TRes Function(Fragment$UserRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? roleId = _undefined,
    Object? role = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserRole(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roleId: roleId == _undefined || roleId == null
            ? _instance.roleId
            : (roleId as String),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Fragment$Role),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Role<TRes> get role {
    final local$role = _instance.role;
    return CopyWith$Fragment$Role(local$role, (e) => call(role: e));
  }
}

class _CopyWithStubImpl$Fragment$UserRole<TRes>
    implements CopyWith$Fragment$UserRole<TRes> {
  _CopyWithStubImpl$Fragment$UserRole(this._res);

  TRes _res;

  call({
    String? id,
    String? roleId,
    Fragment$Role? role,
    String? userId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Role<TRes> get role => CopyWith$Fragment$Role.stub(_res);
}

const fragmentDefinitionUserRole = FragmentDefinitionNode(
  name: NameNode(value: 'UserRole'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserRole'),
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
      name: NameNode(value: 'roleId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'role'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Role'),
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
      name: NameNode(value: 'userId'),
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
const documentNodeFragmentUserRole = DocumentNode(definitions: [
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);

extension ClientExtension$Fragment$UserRole on graphql.GraphQLClient {
  void writeFragment$UserRole({
    required Fragment$UserRole data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserRole',
            document: documentNodeFragmentUserRole,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserRole? readFragment$UserRole({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserRole',
          document: documentNodeFragmentUserRole,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserRole.fromJson(result);
  }
}

class Fragment$User {
  Fragment$User({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.displayName,
    this.data,
    this.avatarUrl,
    this.kratosId,
    this.supabaseUserId,
    this.userRoleCollection,
    this.$__typename = 'User',
  });

  factory Fragment$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$displayName = json['displayName'];
    final l$data = json['data'];
    final l$avatarUrl = json['avatarUrl'];
    final l$kratosId = json['kratosId'];
    final l$supabaseUserId = json['supabaseUserId'];
    final l$userRoleCollection = json['userRoleCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$User(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      displayName: (l$displayName as String?),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      avatarUrl: (l$avatarUrl as String?),
      kratosId: (l$kratosId as String?),
      supabaseUserId: (l$supabaseUserId as String?),
      userRoleCollection: l$userRoleCollection == null
          ? null
          : Fragment$User$userRoleCollection.fromJson(
              (l$userRoleCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String? firstName;

  final String? lastName;

  final String? displayName;

  final Map<String, dynamic>? data;

  final String? avatarUrl;

  final String? kratosId;

  final String? supabaseUserId;

  final Fragment$User$userRoleCollection? userRoleCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$displayName = displayName;
    _resultData['displayName'] = l$displayName;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$avatarUrl = avatarUrl;
    _resultData['avatarUrl'] = l$avatarUrl;
    final l$kratosId = kratosId;
    _resultData['kratosId'] = l$kratosId;
    final l$supabaseUserId = supabaseUserId;
    _resultData['supabaseUserId'] = l$supabaseUserId;
    final l$userRoleCollection = userRoleCollection;
    _resultData['userRoleCollection'] = l$userRoleCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$email = email;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$displayName = displayName;
    final l$data = data;
    final l$avatarUrl = avatarUrl;
    final l$kratosId = kratosId;
    final l$supabaseUserId = supabaseUserId;
    final l$userRoleCollection = userRoleCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$displayName,
      l$data,
      l$avatarUrl,
      l$kratosId,
      l$supabaseUserId,
      l$userRoleCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$User) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$displayName = displayName;
    final lOther$displayName = other.displayName;
    if (l$displayName != lOther$displayName) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$avatarUrl = avatarUrl;
    final lOther$avatarUrl = other.avatarUrl;
    if (l$avatarUrl != lOther$avatarUrl) {
      return false;
    }
    final l$kratosId = kratosId;
    final lOther$kratosId = other.kratosId;
    if (l$kratosId != lOther$kratosId) {
      return false;
    }
    final l$supabaseUserId = supabaseUserId;
    final lOther$supabaseUserId = other.supabaseUserId;
    if (l$supabaseUserId != lOther$supabaseUserId) {
      return false;
    }
    final l$userRoleCollection = userRoleCollection;
    final lOther$userRoleCollection = other.userRoleCollection;
    if (l$userRoleCollection != lOther$userRoleCollection) {
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

extension UtilityExtension$Fragment$User on Fragment$User {
  CopyWith$Fragment$User<Fragment$User> get copyWith => CopyWith$Fragment$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$User<TRes> {
  factory CopyWith$Fragment$User(
    Fragment$User instance,
    TRes Function(Fragment$User) then,
  ) = _CopyWithImpl$Fragment$User;

  factory CopyWith$Fragment$User.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User;

  TRes call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? displayName,
    Map<String, dynamic>? data,
    String? avatarUrl,
    String? kratosId,
    String? supabaseUserId,
    Fragment$User$userRoleCollection? userRoleCollection,
    String? $__typename,
  });
  CopyWith$Fragment$User$userRoleCollection<TRes> get userRoleCollection;
}

class _CopyWithImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithImpl$Fragment$User(
    this._instance,
    this._then,
  );

  final Fragment$User _instance;

  final TRes Function(Fragment$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? email = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? displayName = _undefined,
    Object? data = _undefined,
    Object? avatarUrl = _undefined,
    Object? kratosId = _undefined,
    Object? supabaseUserId = _undefined,
    Object? userRoleCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        displayName: displayName == _undefined
            ? _instance.displayName
            : (displayName as String?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        avatarUrl: avatarUrl == _undefined
            ? _instance.avatarUrl
            : (avatarUrl as String?),
        kratosId:
            kratosId == _undefined ? _instance.kratosId : (kratosId as String?),
        supabaseUserId: supabaseUserId == _undefined
            ? _instance.supabaseUserId
            : (supabaseUserId as String?),
        userRoleCollection: userRoleCollection == _undefined
            ? _instance.userRoleCollection
            : (userRoleCollection as Fragment$User$userRoleCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User$userRoleCollection<TRes> get userRoleCollection {
    final local$userRoleCollection = _instance.userRoleCollection;
    return local$userRoleCollection == null
        ? CopyWith$Fragment$User$userRoleCollection.stub(_then(_instance))
        : CopyWith$Fragment$User$userRoleCollection(
            local$userRoleCollection, (e) => call(userRoleCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$User<TRes>
    implements CopyWith$Fragment$User<TRes> {
  _CopyWithStubImpl$Fragment$User(this._res);

  TRes _res;

  call({
    String? id,
    String? email,
    String? firstName,
    String? lastName,
    String? displayName,
    Map<String, dynamic>? data,
    String? avatarUrl,
    String? kratosId,
    String? supabaseUserId,
    Fragment$User$userRoleCollection? userRoleCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User$userRoleCollection<TRes> get userRoleCollection =>
      CopyWith$Fragment$User$userRoleCollection.stub(_res);
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'User'),
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
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'displayName'),
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
      name: NameNode(value: 'avatarUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'kratosId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'supabaseUserId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'userRoleCollection'),
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
                  name: NameNode(value: 'UserRole'),
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
const documentNodeFragmentUser = DocumentNode(definitions: [
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);

extension ClientExtension$Fragment$User on graphql.GraphQLClient {
  void writeFragment$User({
    required Fragment$User data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'User',
            document: documentNodeFragmentUser,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$User? readFragment$User({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'User',
          document: documentNodeFragmentUser,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$User.fromJson(result);
  }
}

class Fragment$User$userRoleCollection {
  Fragment$User$userRoleCollection({
    required this.edges,
    this.$__typename = 'UserRoleConnection',
  });

  factory Fragment$User$userRoleCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userRoleCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$User$userRoleCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User$userRoleCollection$edges> edges;

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
    if (!(other is Fragment$User$userRoleCollection) ||
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

extension UtilityExtension$Fragment$User$userRoleCollection
    on Fragment$User$userRoleCollection {
  CopyWith$Fragment$User$userRoleCollection<Fragment$User$userRoleCollection>
      get copyWith => CopyWith$Fragment$User$userRoleCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userRoleCollection<TRes> {
  factory CopyWith$Fragment$User$userRoleCollection(
    Fragment$User$userRoleCollection instance,
    TRes Function(Fragment$User$userRoleCollection) then,
  ) = _CopyWithImpl$Fragment$User$userRoleCollection;

  factory CopyWith$Fragment$User$userRoleCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userRoleCollection;

  TRes call({
    List<Fragment$User$userRoleCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$User$userRoleCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$User$userRoleCollection$edges<
                      Fragment$User$userRoleCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$User$userRoleCollection<TRes>
    implements CopyWith$Fragment$User$userRoleCollection<TRes> {
  _CopyWithImpl$Fragment$User$userRoleCollection(
    this._instance,
    this._then,
  );

  final Fragment$User$userRoleCollection _instance;

  final TRes Function(Fragment$User$userRoleCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userRoleCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$User$userRoleCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$User$userRoleCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$User$userRoleCollection$edges<
                          Fragment$User$userRoleCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$User$userRoleCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$User$userRoleCollection<TRes>
    implements CopyWith$Fragment$User$userRoleCollection<TRes> {
  _CopyWithStubImpl$Fragment$User$userRoleCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User$userRoleCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$User$userRoleCollection$edges {
  Fragment$User$userRoleCollection$edges({
    required this.node,
    this.$__typename = 'UserRoleEdge',
  });

  factory Fragment$User$userRoleCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userRoleCollection$edges(
      node: Fragment$UserRole.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserRole node;

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
    if (!(other is Fragment$User$userRoleCollection$edges) ||
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

extension UtilityExtension$Fragment$User$userRoleCollection$edges
    on Fragment$User$userRoleCollection$edges {
  CopyWith$Fragment$User$userRoleCollection$edges<
          Fragment$User$userRoleCollection$edges>
      get copyWith => CopyWith$Fragment$User$userRoleCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userRoleCollection$edges<TRes> {
  factory CopyWith$Fragment$User$userRoleCollection$edges(
    Fragment$User$userRoleCollection$edges instance,
    TRes Function(Fragment$User$userRoleCollection$edges) then,
  ) = _CopyWithImpl$Fragment$User$userRoleCollection$edges;

  factory CopyWith$Fragment$User$userRoleCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userRoleCollection$edges;

  TRes call({
    Fragment$UserRole? node,
    String? $__typename,
  });
  CopyWith$Fragment$UserRole<TRes> get node;
}

class _CopyWithImpl$Fragment$User$userRoleCollection$edges<TRes>
    implements CopyWith$Fragment$User$userRoleCollection$edges<TRes> {
  _CopyWithImpl$Fragment$User$userRoleCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$User$userRoleCollection$edges _instance;

  final TRes Function(Fragment$User$userRoleCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userRoleCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$UserRole),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserRole<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$UserRole(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$User$userRoleCollection$edges<TRes>
    implements CopyWith$Fragment$User$userRoleCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$User$userRoleCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$UserRole? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserRole<TRes> get node =>
      CopyWith$Fragment$UserRole.stub(_res);
}

class Variables$Query$Users {
  factory Variables$Query$Users({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  }) =>
      Variables$Query$Users._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$Users._(this._$data);

  factory Variables$Query$Users.fromJson(Map<String, dynamic> data) {
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
          : Input$UserFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$UserOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$Users._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$UserFilter? get filter => (_$data['filter'] as Input$UserFilter?);

  List<Input$UserOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$UserOrderBy>?);

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

  CopyWith$Variables$Query$Users<Variables$Query$Users> get copyWith =>
      CopyWith$Variables$Query$Users(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Users) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Users<TRes> {
  factory CopyWith$Variables$Query$Users(
    Variables$Query$Users instance,
    TRes Function(Variables$Query$Users) then,
  ) = _CopyWithImpl$Variables$Query$Users;

  factory CopyWith$Variables$Query$Users.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Users;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$Users<TRes>
    implements CopyWith$Variables$Query$Users<TRes> {
  _CopyWithImpl$Variables$Query$Users(
    this._instance,
    this._then,
  );

  final Variables$Query$Users _instance;

  final TRes Function(Variables$Query$Users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$Users._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined) 'filter': (filter as Input$UserFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$UserOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Users<TRes>
    implements CopyWith$Variables$Query$Users<TRes> {
  _CopyWithStubImpl$Variables$Query$Users(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$Users {
  Query$Users({
    this.userCollection,
    this.$__typename = 'Query',
  });

  factory Query$Users.fromJson(Map<String, dynamic> json) {
    final l$userCollection = json['userCollection'];
    final l$$__typename = json['__typename'];
    return Query$Users(
      userCollection: l$userCollection == null
          ? null
          : Query$Users$userCollection.fromJson(
              (l$userCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Users$userCollection? userCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$userCollection = userCollection;
    _resultData['userCollection'] = l$userCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$userCollection = userCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$userCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Users) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$userCollection = userCollection;
    final lOther$userCollection = other.userCollection;
    if (l$userCollection != lOther$userCollection) {
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

extension UtilityExtension$Query$Users on Query$Users {
  CopyWith$Query$Users<Query$Users> get copyWith => CopyWith$Query$Users(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Users<TRes> {
  factory CopyWith$Query$Users(
    Query$Users instance,
    TRes Function(Query$Users) then,
  ) = _CopyWithImpl$Query$Users;

  factory CopyWith$Query$Users.stub(TRes res) = _CopyWithStubImpl$Query$Users;

  TRes call({
    Query$Users$userCollection? userCollection,
    String? $__typename,
  });
  CopyWith$Query$Users$userCollection<TRes> get userCollection;
}

class _CopyWithImpl$Query$Users<TRes> implements CopyWith$Query$Users<TRes> {
  _CopyWithImpl$Query$Users(
    this._instance,
    this._then,
  );

  final Query$Users _instance;

  final TRes Function(Query$Users) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Users(
        userCollection: userCollection == _undefined
            ? _instance.userCollection
            : (userCollection as Query$Users$userCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Users$userCollection<TRes> get userCollection {
    final local$userCollection = _instance.userCollection;
    return local$userCollection == null
        ? CopyWith$Query$Users$userCollection.stub(_then(_instance))
        : CopyWith$Query$Users$userCollection(
            local$userCollection, (e) => call(userCollection: e));
  }
}

class _CopyWithStubImpl$Query$Users<TRes>
    implements CopyWith$Query$Users<TRes> {
  _CopyWithStubImpl$Query$Users(this._res);

  TRes _res;

  call({
    Query$Users$userCollection? userCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Users$userCollection<TRes> get userCollection =>
      CopyWith$Query$Users$userCollection.stub(_res);
}

const documentNodeQueryUsers = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Users'),
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
          name: NameNode(value: 'UserFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'UserOrderBy'),
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
        name: NameNode(value: 'userCollection'),
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
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);
Query$Users _parserFn$Query$Users(Map<String, dynamic> data) =>
    Query$Users.fromJson(data);
typedef OnQueryComplete$Query$Users = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Users?,
);

class Options$Query$Users extends graphql.QueryOptions<Query$Users> {
  Options$Query$Users({
    String? operationName,
    Variables$Query$Users? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Users? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Users? onComplete,
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
                    data == null ? null : _parserFn$Query$Users(data),
                  ),
          onError: onError,
          document: documentNodeQueryUsers,
          parserFn: _parserFn$Query$Users,
        );

  final OnQueryComplete$Query$Users? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Users extends graphql.WatchQueryOptions<Query$Users> {
  WatchOptions$Query$Users({
    String? operationName,
    Variables$Query$Users? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Users? typedOptimisticResult,
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
          document: documentNodeQueryUsers,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Users,
        );
}

class FetchMoreOptions$Query$Users extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Users({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Users? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUsers,
        );
}

extension ClientExtension$Query$Users on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Users>> query$Users(
          [Options$Query$Users? options]) async =>
      await this.query(options ?? Options$Query$Users());
  graphql.ObservableQuery<Query$Users> watchQuery$Users(
          [WatchOptions$Query$Users? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Users());
  void writeQuery$Users({
    required Query$Users data,
    Variables$Query$Users? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUsers),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Users? readQuery$Users({
    Variables$Query$Users? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUsers),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Users.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Users> useQuery$Users(
        [Options$Query$Users? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Users());
graphql.ObservableQuery<Query$Users> useWatchQuery$Users(
        [WatchOptions$Query$Users? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Users());

class Query$Users$Widget extends graphql_flutter.Query<Query$Users> {
  Query$Users$Widget({
    widgets.Key? key,
    Options$Query$Users? options,
    required graphql_flutter.QueryBuilder<Query$Users> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Users(),
          builder: builder,
        );
}

class Query$Users$userCollection {
  Query$Users$userCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'UserConnection',
  });

  factory Query$Users$userCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Users$userCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Users$userCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Users$userCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Users$userCollection$edges> edges;

  final Query$Users$userCollection$pageInfo pageInfo;

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
    if (!(other is Query$Users$userCollection) ||
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

extension UtilityExtension$Query$Users$userCollection
    on Query$Users$userCollection {
  CopyWith$Query$Users$userCollection<Query$Users$userCollection>
      get copyWith => CopyWith$Query$Users$userCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Users$userCollection<TRes> {
  factory CopyWith$Query$Users$userCollection(
    Query$Users$userCollection instance,
    TRes Function(Query$Users$userCollection) then,
  ) = _CopyWithImpl$Query$Users$userCollection;

  factory CopyWith$Query$Users$userCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Users$userCollection;

  TRes call({
    List<Query$Users$userCollection$edges>? edges,
    Query$Users$userCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Users$userCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Users$userCollection$edges<
                      Query$Users$userCollection$edges>>)
          _fn);
  CopyWith$Query$Users$userCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Users$userCollection<TRes>
    implements CopyWith$Query$Users$userCollection<TRes> {
  _CopyWithImpl$Query$Users$userCollection(
    this._instance,
    this._then,
  );

  final Query$Users$userCollection _instance;

  final TRes Function(Query$Users$userCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Users$userCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Users$userCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Users$userCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Users$userCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Users$userCollection$edges<
                          Query$Users$userCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Users$userCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$Users$userCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Users$userCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Users$userCollection<TRes>
    implements CopyWith$Query$Users$userCollection<TRes> {
  _CopyWithStubImpl$Query$Users$userCollection(this._res);

  TRes _res;

  call({
    List<Query$Users$userCollection$edges>? edges,
    Query$Users$userCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$Users$userCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Users$userCollection$pageInfo.stub(_res);
}

class Query$Users$userCollection$edges {
  Query$Users$userCollection$edges({
    required this.node,
    this.$__typename = 'UserEdge',
  });

  factory Query$Users$userCollection$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Users$userCollection$edges(
      node: Fragment$User.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User node;

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
    if (!(other is Query$Users$userCollection$edges) ||
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

extension UtilityExtension$Query$Users$userCollection$edges
    on Query$Users$userCollection$edges {
  CopyWith$Query$Users$userCollection$edges<Query$Users$userCollection$edges>
      get copyWith => CopyWith$Query$Users$userCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Users$userCollection$edges<TRes> {
  factory CopyWith$Query$Users$userCollection$edges(
    Query$Users$userCollection$edges instance,
    TRes Function(Query$Users$userCollection$edges) then,
  ) = _CopyWithImpl$Query$Users$userCollection$edges;

  factory CopyWith$Query$Users$userCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Users$userCollection$edges;

  TRes call({
    Fragment$User? node,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get node;
}

class _CopyWithImpl$Query$Users$userCollection$edges<TRes>
    implements CopyWith$Query$Users$userCollection$edges<TRes> {
  _CopyWithImpl$Query$Users$userCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Users$userCollection$edges _instance;

  final TRes Function(Query$Users$userCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Users$userCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$User),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$User(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Users$userCollection$edges<TRes>
    implements CopyWith$Query$Users$userCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Users$userCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$User? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get node => CopyWith$Fragment$User.stub(_res);
}

class Query$Users$userCollection$pageInfo {
  Query$Users$userCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Users$userCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$Users$userCollection$pageInfo(
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
    if (!(other is Query$Users$userCollection$pageInfo) ||
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

extension UtilityExtension$Query$Users$userCollection$pageInfo
    on Query$Users$userCollection$pageInfo {
  CopyWith$Query$Users$userCollection$pageInfo<
          Query$Users$userCollection$pageInfo>
      get copyWith => CopyWith$Query$Users$userCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Users$userCollection$pageInfo<TRes> {
  factory CopyWith$Query$Users$userCollection$pageInfo(
    Query$Users$userCollection$pageInfo instance,
    TRes Function(Query$Users$userCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$Users$userCollection$pageInfo;

  factory CopyWith$Query$Users$userCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Users$userCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Users$userCollection$pageInfo<TRes>
    implements CopyWith$Query$Users$userCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$Users$userCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Users$userCollection$pageInfo _instance;

  final TRes Function(Query$Users$userCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Users$userCollection$pageInfo(
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

class _CopyWithStubImpl$Query$Users$userCollection$pageInfo<TRes>
    implements CopyWith$Query$Users$userCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Users$userCollection$pageInfo(this._res);

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
