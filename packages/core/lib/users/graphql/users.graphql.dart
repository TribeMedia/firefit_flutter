import '../../providers/graphql/provider.graphql.dart';
import '../../schema.graphql.dart';
import '../../team/graphql/first_responders.graphql.dart';
import '../../team/graphql/stations.graphql.dart';
import 'dart:async';
import 'organizations.graphql.dart';
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
    this.firstResponderCollection,
    this.primaryOrganizationId,
    this.primaryOrganization,
    this.userOrganizationCollection,
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
    final l$firstResponderCollection = json['firstResponderCollection'];
    final l$primaryOrganizationId = json['primaryOrganizationId'];
    final l$primaryOrganization = json['primaryOrganization'];
    final l$userOrganizationCollection = json['userOrganizationCollection'];
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
      firstResponderCollection: l$firstResponderCollection == null
          ? null
          : Fragment$User$firstResponderCollection.fromJson(
              (l$firstResponderCollection as Map<String, dynamic>)),
      primaryOrganizationId: (l$primaryOrganizationId as String?),
      primaryOrganization: l$primaryOrganization == null
          ? null
          : Fragment$Organization.fromJson(
              (l$primaryOrganization as Map<String, dynamic>)),
      userOrganizationCollection: l$userOrganizationCollection == null
          ? null
          : Fragment$User$userOrganizationCollection.fromJson(
              (l$userOrganizationCollection as Map<String, dynamic>)),
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

  final Fragment$User$firstResponderCollection? firstResponderCollection;

  final String? primaryOrganizationId;

  final Fragment$Organization? primaryOrganization;

  final Fragment$User$userOrganizationCollection? userOrganizationCollection;

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
    final l$firstResponderCollection = firstResponderCollection;
    _resultData['firstResponderCollection'] =
        l$firstResponderCollection?.toJson();
    final l$primaryOrganizationId = primaryOrganizationId;
    _resultData['primaryOrganizationId'] = l$primaryOrganizationId;
    final l$primaryOrganization = primaryOrganization;
    _resultData['primaryOrganization'] = l$primaryOrganization?.toJson();
    final l$userOrganizationCollection = userOrganizationCollection;
    _resultData['userOrganizationCollection'] =
        l$userOrganizationCollection?.toJson();
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
    final l$firstResponderCollection = firstResponderCollection;
    final l$primaryOrganizationId = primaryOrganizationId;
    final l$primaryOrganization = primaryOrganization;
    final l$userOrganizationCollection = userOrganizationCollection;
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
      l$firstResponderCollection,
      l$primaryOrganizationId,
      l$primaryOrganization,
      l$userOrganizationCollection,
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
    final l$firstResponderCollection = firstResponderCollection;
    final lOther$firstResponderCollection = other.firstResponderCollection;
    if (l$firstResponderCollection != lOther$firstResponderCollection) {
      return false;
    }
    final l$primaryOrganizationId = primaryOrganizationId;
    final lOther$primaryOrganizationId = other.primaryOrganizationId;
    if (l$primaryOrganizationId != lOther$primaryOrganizationId) {
      return false;
    }
    final l$primaryOrganization = primaryOrganization;
    final lOther$primaryOrganization = other.primaryOrganization;
    if (l$primaryOrganization != lOther$primaryOrganization) {
      return false;
    }
    final l$userOrganizationCollection = userOrganizationCollection;
    final lOther$userOrganizationCollection = other.userOrganizationCollection;
    if (l$userOrganizationCollection != lOther$userOrganizationCollection) {
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
    Fragment$User$firstResponderCollection? firstResponderCollection,
    String? primaryOrganizationId,
    Fragment$Organization? primaryOrganization,
    Fragment$User$userOrganizationCollection? userOrganizationCollection,
    String? $__typename,
  });
  CopyWith$Fragment$User$userRoleCollection<TRes> get userRoleCollection;
  CopyWith$Fragment$User$firstResponderCollection<TRes>
      get firstResponderCollection;
  CopyWith$Fragment$Organization<TRes> get primaryOrganization;
  CopyWith$Fragment$User$userOrganizationCollection<TRes>
      get userOrganizationCollection;
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
    Object? firstResponderCollection = _undefined,
    Object? primaryOrganizationId = _undefined,
    Object? primaryOrganization = _undefined,
    Object? userOrganizationCollection = _undefined,
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
        firstResponderCollection: firstResponderCollection == _undefined
            ? _instance.firstResponderCollection
            : (firstResponderCollection
                as Fragment$User$firstResponderCollection?),
        primaryOrganizationId: primaryOrganizationId == _undefined
            ? _instance.primaryOrganizationId
            : (primaryOrganizationId as String?),
        primaryOrganization: primaryOrganization == _undefined
            ? _instance.primaryOrganization
            : (primaryOrganization as Fragment$Organization?),
        userOrganizationCollection: userOrganizationCollection == _undefined
            ? _instance.userOrganizationCollection
            : (userOrganizationCollection
                as Fragment$User$userOrganizationCollection?),
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

  CopyWith$Fragment$User$firstResponderCollection<TRes>
      get firstResponderCollection {
    final local$firstResponderCollection = _instance.firstResponderCollection;
    return local$firstResponderCollection == null
        ? CopyWith$Fragment$User$firstResponderCollection.stub(_then(_instance))
        : CopyWith$Fragment$User$firstResponderCollection(
            local$firstResponderCollection,
            (e) => call(firstResponderCollection: e));
  }

  CopyWith$Fragment$Organization<TRes> get primaryOrganization {
    final local$primaryOrganization = _instance.primaryOrganization;
    return local$primaryOrganization == null
        ? CopyWith$Fragment$Organization.stub(_then(_instance))
        : CopyWith$Fragment$Organization(
            local$primaryOrganization, (e) => call(primaryOrganization: e));
  }

  CopyWith$Fragment$User$userOrganizationCollection<TRes>
      get userOrganizationCollection {
    final local$userOrganizationCollection =
        _instance.userOrganizationCollection;
    return local$userOrganizationCollection == null
        ? CopyWith$Fragment$User$userOrganizationCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$User$userOrganizationCollection(
            local$userOrganizationCollection,
            (e) => call(userOrganizationCollection: e));
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
    Fragment$User$firstResponderCollection? firstResponderCollection,
    String? primaryOrganizationId,
    Fragment$Organization? primaryOrganization,
    Fragment$User$userOrganizationCollection? userOrganizationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User$userRoleCollection<TRes> get userRoleCollection =>
      CopyWith$Fragment$User$userRoleCollection.stub(_res);

  CopyWith$Fragment$User$firstResponderCollection<TRes>
      get firstResponderCollection =>
          CopyWith$Fragment$User$firstResponderCollection.stub(_res);

  CopyWith$Fragment$Organization<TRes> get primaryOrganization =>
      CopyWith$Fragment$Organization.stub(_res);

  CopyWith$Fragment$User$userOrganizationCollection<TRes>
      get userOrganizationCollection =>
          CopyWith$Fragment$User$userOrganizationCollection.stub(_res);
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
      name: NameNode(value: 'firstResponderCollection'),
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
                  name: NameNode(value: 'FirstResponder'),
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
      name: NameNode(value: 'primaryOrganizationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'primaryOrganization'),
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
      name: NameNode(value: 'userOrganizationCollection'),
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
);
const documentNodeFragmentUser = DocumentNode(definitions: [
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

class Fragment$User$firstResponderCollection {
  Fragment$User$firstResponderCollection({
    required this.edges,
    this.$__typename = 'FirstResponderConnection',
  });

  factory Fragment$User$firstResponderCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$User$firstResponderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$User$firstResponderCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User$firstResponderCollection$edges> edges;

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
    if (!(other is Fragment$User$firstResponderCollection) ||
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

extension UtilityExtension$Fragment$User$firstResponderCollection
    on Fragment$User$firstResponderCollection {
  CopyWith$Fragment$User$firstResponderCollection<
          Fragment$User$firstResponderCollection>
      get copyWith => CopyWith$Fragment$User$firstResponderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$firstResponderCollection<TRes> {
  factory CopyWith$Fragment$User$firstResponderCollection(
    Fragment$User$firstResponderCollection instance,
    TRes Function(Fragment$User$firstResponderCollection) then,
  ) = _CopyWithImpl$Fragment$User$firstResponderCollection;

  factory CopyWith$Fragment$User$firstResponderCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$firstResponderCollection;

  TRes call({
    List<Fragment$User$firstResponderCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$User$firstResponderCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$User$firstResponderCollection$edges<
                      Fragment$User$firstResponderCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$User$firstResponderCollection<TRes>
    implements CopyWith$Fragment$User$firstResponderCollection<TRes> {
  _CopyWithImpl$Fragment$User$firstResponderCollection(
    this._instance,
    this._then,
  );

  final Fragment$User$firstResponderCollection _instance;

  final TRes Function(Fragment$User$firstResponderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$firstResponderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$User$firstResponderCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$User$firstResponderCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$User$firstResponderCollection$edges<
                          Fragment$User$firstResponderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$User$firstResponderCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$User$firstResponderCollection<TRes>
    implements CopyWith$Fragment$User$firstResponderCollection<TRes> {
  _CopyWithStubImpl$Fragment$User$firstResponderCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User$firstResponderCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$User$firstResponderCollection$edges {
  Fragment$User$firstResponderCollection$edges({
    required this.node,
    this.$__typename = 'FirstResponderEdge',
  });

  factory Fragment$User$firstResponderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$User$firstResponderCollection$edges(
      node: Fragment$FirstResponder.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FirstResponder node;

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
    if (!(other is Fragment$User$firstResponderCollection$edges) ||
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

extension UtilityExtension$Fragment$User$firstResponderCollection$edges
    on Fragment$User$firstResponderCollection$edges {
  CopyWith$Fragment$User$firstResponderCollection$edges<
          Fragment$User$firstResponderCollection$edges>
      get copyWith => CopyWith$Fragment$User$firstResponderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$firstResponderCollection$edges<TRes> {
  factory CopyWith$Fragment$User$firstResponderCollection$edges(
    Fragment$User$firstResponderCollection$edges instance,
    TRes Function(Fragment$User$firstResponderCollection$edges) then,
  ) = _CopyWithImpl$Fragment$User$firstResponderCollection$edges;

  factory CopyWith$Fragment$User$firstResponderCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$firstResponderCollection$edges;

  TRes call({
    Fragment$FirstResponder? node,
    String? $__typename,
  });
  CopyWith$Fragment$FirstResponder<TRes> get node;
}

class _CopyWithImpl$Fragment$User$firstResponderCollection$edges<TRes>
    implements CopyWith$Fragment$User$firstResponderCollection$edges<TRes> {
  _CopyWithImpl$Fragment$User$firstResponderCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$User$firstResponderCollection$edges _instance;

  final TRes Function(Fragment$User$firstResponderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$firstResponderCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$FirstResponder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FirstResponder<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$FirstResponder(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$User$firstResponderCollection$edges<TRes>
    implements CopyWith$Fragment$User$firstResponderCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$User$firstResponderCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$FirstResponder? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FirstResponder<TRes> get node =>
      CopyWith$Fragment$FirstResponder.stub(_res);
}

class Fragment$User$userOrganizationCollection {
  Fragment$User$userOrganizationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'UserOrganizationConnection',
  });

  factory Fragment$User$userOrganizationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userOrganizationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$User$userOrganizationCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$User$userOrganizationCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User$userOrganizationCollection$edges> edges;

  final Fragment$User$userOrganizationCollection$pageInfo pageInfo;

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
    if (!(other is Fragment$User$userOrganizationCollection) ||
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

extension UtilityExtension$Fragment$User$userOrganizationCollection
    on Fragment$User$userOrganizationCollection {
  CopyWith$Fragment$User$userOrganizationCollection<
          Fragment$User$userOrganizationCollection>
      get copyWith => CopyWith$Fragment$User$userOrganizationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userOrganizationCollection<TRes> {
  factory CopyWith$Fragment$User$userOrganizationCollection(
    Fragment$User$userOrganizationCollection instance,
    TRes Function(Fragment$User$userOrganizationCollection) then,
  ) = _CopyWithImpl$Fragment$User$userOrganizationCollection;

  factory CopyWith$Fragment$User$userOrganizationCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userOrganizationCollection;

  TRes call({
    List<Fragment$User$userOrganizationCollection$edges>? edges,
    Fragment$User$userOrganizationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$User$userOrganizationCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$User$userOrganizationCollection$edges<
                      Fragment$User$userOrganizationCollection$edges>>)
          _fn);
  CopyWith$Fragment$User$userOrganizationCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Fragment$User$userOrganizationCollection<TRes>
    implements CopyWith$Fragment$User$userOrganizationCollection<TRes> {
  _CopyWithImpl$Fragment$User$userOrganizationCollection(
    this._instance,
    this._then,
  );

  final Fragment$User$userOrganizationCollection _instance;

  final TRes Function(Fragment$User$userOrganizationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userOrganizationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$User$userOrganizationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$User$userOrganizationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$User$userOrganizationCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$User$userOrganizationCollection$edges<
                          Fragment$User$userOrganizationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Fragment$User$userOrganizationCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$User$userOrganizationCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$User$userOrganizationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$User$userOrganizationCollection<TRes>
    implements CopyWith$Fragment$User$userOrganizationCollection<TRes> {
  _CopyWithStubImpl$Fragment$User$userOrganizationCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User$userOrganizationCollection$edges>? edges,
    Fragment$User$userOrganizationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$User$userOrganizationCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Fragment$User$userOrganizationCollection$pageInfo.stub(_res);
}

class Fragment$User$userOrganizationCollection$edges {
  Fragment$User$userOrganizationCollection$edges({
    required this.node,
    this.$__typename = 'UserOrganizationEdge',
  });

  factory Fragment$User$userOrganizationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userOrganizationCollection$edges(
      node: Fragment$User$userOrganizationCollection$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$User$userOrganizationCollection$edges$node node;

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
    if (!(other is Fragment$User$userOrganizationCollection$edges) ||
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

extension UtilityExtension$Fragment$User$userOrganizationCollection$edges
    on Fragment$User$userOrganizationCollection$edges {
  CopyWith$Fragment$User$userOrganizationCollection$edges<
          Fragment$User$userOrganizationCollection$edges>
      get copyWith => CopyWith$Fragment$User$userOrganizationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userOrganizationCollection$edges<TRes> {
  factory CopyWith$Fragment$User$userOrganizationCollection$edges(
    Fragment$User$userOrganizationCollection$edges instance,
    TRes Function(Fragment$User$userOrganizationCollection$edges) then,
  ) = _CopyWithImpl$Fragment$User$userOrganizationCollection$edges;

  factory CopyWith$Fragment$User$userOrganizationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$User$userOrganizationCollection$edges;

  TRes call({
    Fragment$User$userOrganizationCollection$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$User$userOrganizationCollection$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$User$userOrganizationCollection$edges<TRes>
    implements CopyWith$Fragment$User$userOrganizationCollection$edges<TRes> {
  _CopyWithImpl$Fragment$User$userOrganizationCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$User$userOrganizationCollection$edges _instance;

  final TRes Function(Fragment$User$userOrganizationCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userOrganizationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$User$userOrganizationCollection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User$userOrganizationCollection$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$User$userOrganizationCollection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$User$userOrganizationCollection$edges<TRes>
    implements CopyWith$Fragment$User$userOrganizationCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$User$userOrganizationCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$User$userOrganizationCollection$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User$userOrganizationCollection$edges$node<TRes> get node =>
      CopyWith$Fragment$User$userOrganizationCollection$edges$node.stub(_res);
}

class Fragment$User$userOrganizationCollection$edges$node {
  Fragment$User$userOrganizationCollection$edges$node(
      {this.$__typename = 'UserOrganization'});

  factory Fragment$User$userOrganizationCollection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Fragment$User$userOrganizationCollection$edges$node(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$User$userOrganizationCollection$edges$node) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$User$userOrganizationCollection$edges$node
    on Fragment$User$userOrganizationCollection$edges$node {
  CopyWith$Fragment$User$userOrganizationCollection$edges$node<
          Fragment$User$userOrganizationCollection$edges$node>
      get copyWith =>
          CopyWith$Fragment$User$userOrganizationCollection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userOrganizationCollection$edges$node<
    TRes> {
  factory CopyWith$Fragment$User$userOrganizationCollection$edges$node(
    Fragment$User$userOrganizationCollection$edges$node instance,
    TRes Function(Fragment$User$userOrganizationCollection$edges$node) then,
  ) = _CopyWithImpl$Fragment$User$userOrganizationCollection$edges$node;

  factory CopyWith$Fragment$User$userOrganizationCollection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$User$userOrganizationCollection$edges$node;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Fragment$User$userOrganizationCollection$edges$node<TRes>
    implements
        CopyWith$Fragment$User$userOrganizationCollection$edges$node<TRes> {
  _CopyWithImpl$Fragment$User$userOrganizationCollection$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$User$userOrganizationCollection$edges$node _instance;

  final TRes Function(Fragment$User$userOrganizationCollection$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Fragment$User$userOrganizationCollection$edges$node(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Fragment$User$userOrganizationCollection$edges$node<
        TRes>
    implements
        CopyWith$Fragment$User$userOrganizationCollection$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$User$userOrganizationCollection$edges$node(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Fragment$User$userOrganizationCollection$pageInfo {
  Fragment$User$userOrganizationCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$User$userOrganizationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userOrganizationCollection$pageInfo(
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
    if (!(other is Fragment$User$userOrganizationCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$User$userOrganizationCollection$pageInfo
    on Fragment$User$userOrganizationCollection$pageInfo {
  CopyWith$Fragment$User$userOrganizationCollection$pageInfo<
          Fragment$User$userOrganizationCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$User$userOrganizationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userOrganizationCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$User$userOrganizationCollection$pageInfo(
    Fragment$User$userOrganizationCollection$pageInfo instance,
    TRes Function(Fragment$User$userOrganizationCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$User$userOrganizationCollection$pageInfo;

  factory CopyWith$Fragment$User$userOrganizationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$User$userOrganizationCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$User$userOrganizationCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$User$userOrganizationCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$User$userOrganizationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$User$userOrganizationCollection$pageInfo _instance;

  final TRes Function(Fragment$User$userOrganizationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userOrganizationCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$User$userOrganizationCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$User$userOrganizationCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$User$userOrganizationCollection$pageInfo(
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

class Variables$Query$UserCollection {
  factory Variables$Query$UserCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  }) =>
      Variables$Query$UserCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$UserCollection._(this._$data);

  factory Variables$Query$UserCollection.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$UserCollection._(result$data);
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

  CopyWith$Variables$Query$UserCollection<Variables$Query$UserCollection>
      get copyWith => CopyWith$Variables$Query$UserCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$UserCollection) ||
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

abstract class CopyWith$Variables$Query$UserCollection<TRes> {
  factory CopyWith$Variables$Query$UserCollection(
    Variables$Query$UserCollection instance,
    TRes Function(Variables$Query$UserCollection) then,
  ) = _CopyWithImpl$Variables$Query$UserCollection;

  factory CopyWith$Variables$Query$UserCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$UserCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$UserFilter? filter,
    List<Input$UserOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$UserCollection<TRes>
    implements CopyWith$Variables$Query$UserCollection<TRes> {
  _CopyWithImpl$Variables$Query$UserCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$UserCollection _instance;

  final TRes Function(Variables$Query$UserCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$UserCollection._({
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

class _CopyWithStubImpl$Variables$Query$UserCollection<TRes>
    implements CopyWith$Variables$Query$UserCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$UserCollection(this._res);

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

class Query$UserCollection {
  Query$UserCollection({
    this.userCollection,
    this.$__typename = 'Query',
  });

  factory Query$UserCollection.fromJson(Map<String, dynamic> json) {
    final l$userCollection = json['userCollection'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection(
      userCollection: l$userCollection == null
          ? null
          : Query$UserCollection$userCollection.fromJson(
              (l$userCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserCollection$userCollection? userCollection;

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
    if (!(other is Query$UserCollection) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$UserCollection on Query$UserCollection {
  CopyWith$Query$UserCollection<Query$UserCollection> get copyWith =>
      CopyWith$Query$UserCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$UserCollection<TRes> {
  factory CopyWith$Query$UserCollection(
    Query$UserCollection instance,
    TRes Function(Query$UserCollection) then,
  ) = _CopyWithImpl$Query$UserCollection;

  factory CopyWith$Query$UserCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$UserCollection;

  TRes call({
    Query$UserCollection$userCollection? userCollection,
    String? $__typename,
  });
  CopyWith$Query$UserCollection$userCollection<TRes> get userCollection;
}

class _CopyWithImpl$Query$UserCollection<TRes>
    implements CopyWith$Query$UserCollection<TRes> {
  _CopyWithImpl$Query$UserCollection(
    this._instance,
    this._then,
  );

  final Query$UserCollection _instance;

  final TRes Function(Query$UserCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection(
        userCollection: userCollection == _undefined
            ? _instance.userCollection
            : (userCollection as Query$UserCollection$userCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserCollection$userCollection<TRes> get userCollection {
    final local$userCollection = _instance.userCollection;
    return local$userCollection == null
        ? CopyWith$Query$UserCollection$userCollection.stub(_then(_instance))
        : CopyWith$Query$UserCollection$userCollection(
            local$userCollection, (e) => call(userCollection: e));
  }
}

class _CopyWithStubImpl$Query$UserCollection<TRes>
    implements CopyWith$Query$UserCollection<TRes> {
  _CopyWithStubImpl$Query$UserCollection(this._res);

  TRes _res;

  call({
    Query$UserCollection$userCollection? userCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserCollection$userCollection<TRes> get userCollection =>
      CopyWith$Query$UserCollection$userCollection.stub(_res);
}

const documentNodeQueryUserCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'UserCollection'),
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
Query$UserCollection _parserFn$Query$UserCollection(
        Map<String, dynamic> data) =>
    Query$UserCollection.fromJson(data);
typedef OnQueryComplete$Query$UserCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$UserCollection?,
);

class Options$Query$UserCollection
    extends graphql.QueryOptions<Query$UserCollection> {
  Options$Query$UserCollection({
    String? operationName,
    Variables$Query$UserCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$UserCollection? onComplete,
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
                    data == null ? null : _parserFn$Query$UserCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryUserCollection,
          parserFn: _parserFn$Query$UserCollection,
        );

  final OnQueryComplete$Query$UserCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$UserCollection
    extends graphql.WatchQueryOptions<Query$UserCollection> {
  WatchOptions$Query$UserCollection({
    String? operationName,
    Variables$Query$UserCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$UserCollection? typedOptimisticResult,
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
          document: documentNodeQueryUserCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$UserCollection,
        );
}

class FetchMoreOptions$Query$UserCollection extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$UserCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$UserCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryUserCollection,
        );
}

extension ClientExtension$Query$UserCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$UserCollection>> query$UserCollection(
          [Options$Query$UserCollection? options]) async =>
      await this.query(options ?? Options$Query$UserCollection());
  graphql.ObservableQuery<Query$UserCollection> watchQuery$UserCollection(
          [WatchOptions$Query$UserCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$UserCollection());
  void writeQuery$UserCollection({
    required Query$UserCollection data,
    Variables$Query$UserCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryUserCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$UserCollection? readQuery$UserCollection({
    Variables$Query$UserCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUserCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$UserCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$UserCollection> useQuery$UserCollection(
        [Options$Query$UserCollection? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$UserCollection());
graphql.ObservableQuery<Query$UserCollection> useWatchQuery$UserCollection(
        [WatchOptions$Query$UserCollection? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$UserCollection());

class Query$UserCollection$Widget
    extends graphql_flutter.Query<Query$UserCollection> {
  Query$UserCollection$Widget({
    widgets.Key? key,
    Options$Query$UserCollection? options,
    required graphql_flutter.QueryBuilder<Query$UserCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$UserCollection(),
          builder: builder,
        );
}

class Query$UserCollection$userCollection {
  Query$UserCollection$userCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'UserConnection',
  });

  factory Query$UserCollection$userCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection$userCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$UserCollection$userCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$UserCollection$userCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$UserCollection$userCollection$edges> edges;

  final Query$UserCollection$userCollection$pageInfo pageInfo;

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
    if (!(other is Query$UserCollection$userCollection) ||
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

extension UtilityExtension$Query$UserCollection$userCollection
    on Query$UserCollection$userCollection {
  CopyWith$Query$UserCollection$userCollection<
          Query$UserCollection$userCollection>
      get copyWith => CopyWith$Query$UserCollection$userCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserCollection$userCollection<TRes> {
  factory CopyWith$Query$UserCollection$userCollection(
    Query$UserCollection$userCollection instance,
    TRes Function(Query$UserCollection$userCollection) then,
  ) = _CopyWithImpl$Query$UserCollection$userCollection;

  factory CopyWith$Query$UserCollection$userCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$UserCollection$userCollection;

  TRes call({
    List<Query$UserCollection$userCollection$edges>? edges,
    Query$UserCollection$userCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$UserCollection$userCollection$edges> Function(
              Iterable<
                  CopyWith$Query$UserCollection$userCollection$edges<
                      Query$UserCollection$userCollection$edges>>)
          _fn);
  CopyWith$Query$UserCollection$userCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$UserCollection$userCollection<TRes>
    implements CopyWith$Query$UserCollection$userCollection<TRes> {
  _CopyWithImpl$Query$UserCollection$userCollection(
    this._instance,
    this._then,
  );

  final Query$UserCollection$userCollection _instance;

  final TRes Function(Query$UserCollection$userCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection$userCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$UserCollection$userCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$UserCollection$userCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$UserCollection$userCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$UserCollection$userCollection$edges<
                          Query$UserCollection$userCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$UserCollection$userCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$UserCollection$userCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$UserCollection$userCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$UserCollection$userCollection<TRes>
    implements CopyWith$Query$UserCollection$userCollection<TRes> {
  _CopyWithStubImpl$Query$UserCollection$userCollection(this._res);

  TRes _res;

  call({
    List<Query$UserCollection$userCollection$edges>? edges,
    Query$UserCollection$userCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$UserCollection$userCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserCollection$userCollection$pageInfo.stub(_res);
}

class Query$UserCollection$userCollection$edges {
  Query$UserCollection$userCollection$edges({
    required this.node,
    this.$__typename = 'UserEdge',
  });

  factory Query$UserCollection$userCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection$userCollection$edges(
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
    if (!(other is Query$UserCollection$userCollection$edges) ||
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

extension UtilityExtension$Query$UserCollection$userCollection$edges
    on Query$UserCollection$userCollection$edges {
  CopyWith$Query$UserCollection$userCollection$edges<
          Query$UserCollection$userCollection$edges>
      get copyWith => CopyWith$Query$UserCollection$userCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserCollection$userCollection$edges<TRes> {
  factory CopyWith$Query$UserCollection$userCollection$edges(
    Query$UserCollection$userCollection$edges instance,
    TRes Function(Query$UserCollection$userCollection$edges) then,
  ) = _CopyWithImpl$Query$UserCollection$userCollection$edges;

  factory CopyWith$Query$UserCollection$userCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$UserCollection$userCollection$edges;

  TRes call({
    Fragment$User? node,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get node;
}

class _CopyWithImpl$Query$UserCollection$userCollection$edges<TRes>
    implements CopyWith$Query$UserCollection$userCollection$edges<TRes> {
  _CopyWithImpl$Query$UserCollection$userCollection$edges(
    this._instance,
    this._then,
  );

  final Query$UserCollection$userCollection$edges _instance;

  final TRes Function(Query$UserCollection$userCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection$userCollection$edges(
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

class _CopyWithStubImpl$Query$UserCollection$userCollection$edges<TRes>
    implements CopyWith$Query$UserCollection$userCollection$edges<TRes> {
  _CopyWithStubImpl$Query$UserCollection$userCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$User? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get node => CopyWith$Fragment$User.stub(_res);
}

class Query$UserCollection$userCollection$pageInfo {
  Query$UserCollection$userCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserCollection$userCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection$userCollection$pageInfo(
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
    if (!(other is Query$UserCollection$userCollection$pageInfo) ||
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

extension UtilityExtension$Query$UserCollection$userCollection$pageInfo
    on Query$UserCollection$userCollection$pageInfo {
  CopyWith$Query$UserCollection$userCollection$pageInfo<
          Query$UserCollection$userCollection$pageInfo>
      get copyWith => CopyWith$Query$UserCollection$userCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserCollection$userCollection$pageInfo<TRes> {
  factory CopyWith$Query$UserCollection$userCollection$pageInfo(
    Query$UserCollection$userCollection$pageInfo instance,
    TRes Function(Query$UserCollection$userCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$UserCollection$userCollection$pageInfo;

  factory CopyWith$Query$UserCollection$userCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$UserCollection$userCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserCollection$userCollection$pageInfo<TRes>
    implements CopyWith$Query$UserCollection$userCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$UserCollection$userCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserCollection$userCollection$pageInfo _instance;

  final TRes Function(Query$UserCollection$userCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection$userCollection$pageInfo(
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

class _CopyWithStubImpl$Query$UserCollection$userCollection$pageInfo<TRes>
    implements CopyWith$Query$UserCollection$userCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserCollection$userCollection$pageInfo(this._res);

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

class Variables$Query$User {
  factory Variables$Query$User({required String id}) => Variables$Query$User._({
        r'id': id,
      });

  Variables$Query$User._(this._$data);

  factory Variables$Query$User.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$User._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$User<Variables$Query$User> get copyWith =>
      CopyWith$Variables$Query$User(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$User) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$User<TRes> {
  factory CopyWith$Variables$Query$User(
    Variables$Query$User instance,
    TRes Function(Variables$Query$User) then,
  ) = _CopyWithImpl$Variables$Query$User;

  factory CopyWith$Variables$Query$User.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$User;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithImpl$Variables$Query$User(
    this._instance,
    this._then,
  );

  final Variables$Query$User _instance;

  final TRes Function(Variables$Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$User._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$User<TRes>
    implements CopyWith$Variables$Query$User<TRes> {
  _CopyWithStubImpl$Variables$Query$User(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$User {
  Query$User({
    this.userCollection,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$userCollection = json['userCollection'];
    final l$$__typename = json['__typename'];
    return Query$User(
      userCollection: l$userCollection == null
          ? null
          : Query$User$userCollection.fromJson(
              (l$userCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$userCollection? userCollection;

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
    if (!(other is Query$User) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$User on Query$User {
  CopyWith$Query$User<Query$User> get copyWith => CopyWith$Query$User(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User<TRes> {
  factory CopyWith$Query$User(
    Query$User instance,
    TRes Function(Query$User) then,
  ) = _CopyWithImpl$Query$User;

  factory CopyWith$Query$User.stub(TRes res) = _CopyWithStubImpl$Query$User;

  TRes call({
    Query$User$userCollection? userCollection,
    String? $__typename,
  });
  CopyWith$Query$User$userCollection<TRes> get userCollection;
}

class _CopyWithImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithImpl$Query$User(
    this._instance,
    this._then,
  );

  final Query$User _instance;

  final TRes Function(Query$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        userCollection: userCollection == _undefined
            ? _instance.userCollection
            : (userCollection as Query$User$userCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$userCollection<TRes> get userCollection {
    final local$userCollection = _instance.userCollection;
    return local$userCollection == null
        ? CopyWith$Query$User$userCollection.stub(_then(_instance))
        : CopyWith$Query$User$userCollection(
            local$userCollection, (e) => call(userCollection: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Query$User$userCollection? userCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$userCollection<TRes> get userCollection =>
      CopyWith$Query$User$userCollection.stub(_res);
}

const documentNodeQueryUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'User'),
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
        name: NameNode(value: 'userCollection'),
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
Query$User _parserFn$Query$User(Map<String, dynamic> data) =>
    Query$User.fromJson(data);
typedef OnQueryComplete$Query$User = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$User?,
);

class Options$Query$User extends graphql.QueryOptions<Query$User> {
  Options$Query$User({
    String? operationName,
    required Variables$Query$User variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$User? onComplete,
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
                    data == null ? null : _parserFn$Query$User(data),
                  ),
          onError: onError,
          document: documentNodeQueryUser,
          parserFn: _parserFn$Query$User,
        );

  final OnQueryComplete$Query$User? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$User extends graphql.WatchQueryOptions<Query$User> {
  WatchOptions$Query$User({
    String? operationName,
    required Variables$Query$User variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$User? typedOptimisticResult,
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
          document: documentNodeQueryUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$User,
        );
}

class FetchMoreOptions$Query$User extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$User({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$User variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryUser,
        );
}

extension ClientExtension$Query$User on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$User>> query$User(
          Options$Query$User options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$User> watchQuery$User(
          WatchOptions$Query$User options) =>
      this.watchQuery(options);
  void writeQuery$User({
    required Query$User data,
    required Variables$Query$User variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryUser),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$User? readQuery$User({
    required Variables$Query$User variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryUser),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$User.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$User> useQuery$User(
        Options$Query$User options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$User> useWatchQuery$User(
        WatchOptions$Query$User options) =>
    graphql_flutter.useWatchQuery(options);

class Query$User$Widget extends graphql_flutter.Query<Query$User> {
  Query$User$Widget({
    widgets.Key? key,
    required Options$Query$User options,
    required graphql_flutter.QueryBuilder<Query$User> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$User$userCollection {
  Query$User$userCollection({
    required this.edges,
    this.$__typename = 'UserConnection',
  });

  factory Query$User$userCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$User$userCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$User$userCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$User$userCollection$edges> edges;

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
    if (!(other is Query$User$userCollection) ||
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

extension UtilityExtension$Query$User$userCollection
    on Query$User$userCollection {
  CopyWith$Query$User$userCollection<Query$User$userCollection> get copyWith =>
      CopyWith$Query$User$userCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$User$userCollection<TRes> {
  factory CopyWith$Query$User$userCollection(
    Query$User$userCollection instance,
    TRes Function(Query$User$userCollection) then,
  ) = _CopyWithImpl$Query$User$userCollection;

  factory CopyWith$Query$User$userCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$User$userCollection;

  TRes call({
    List<Query$User$userCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$User$userCollection$edges> Function(
              Iterable<
                  CopyWith$Query$User$userCollection$edges<
                      Query$User$userCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$User$userCollection<TRes>
    implements CopyWith$Query$User$userCollection<TRes> {
  _CopyWithImpl$Query$User$userCollection(
    this._instance,
    this._then,
  );

  final Query$User$userCollection _instance;

  final TRes Function(Query$User$userCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$userCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$User$userCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$User$userCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$User$userCollection$edges<
                          Query$User$userCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$User$userCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$User$userCollection<TRes>
    implements CopyWith$Query$User$userCollection<TRes> {
  _CopyWithStubImpl$Query$User$userCollection(this._res);

  TRes _res;

  call({
    List<Query$User$userCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$User$userCollection$edges {
  Query$User$userCollection$edges({
    required this.node,
    this.$__typename = 'UserEdge',
  });

  factory Query$User$userCollection$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$User$userCollection$edges(
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
    if (!(other is Query$User$userCollection$edges) ||
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

extension UtilityExtension$Query$User$userCollection$edges
    on Query$User$userCollection$edges {
  CopyWith$Query$User$userCollection$edges<Query$User$userCollection$edges>
      get copyWith => CopyWith$Query$User$userCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$userCollection$edges<TRes> {
  factory CopyWith$Query$User$userCollection$edges(
    Query$User$userCollection$edges instance,
    TRes Function(Query$User$userCollection$edges) then,
  ) = _CopyWithImpl$Query$User$userCollection$edges;

  factory CopyWith$Query$User$userCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$User$userCollection$edges;

  TRes call({
    Fragment$User? node,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get node;
}

class _CopyWithImpl$Query$User$userCollection$edges<TRes>
    implements CopyWith$Query$User$userCollection$edges<TRes> {
  _CopyWithImpl$Query$User$userCollection$edges(
    this._instance,
    this._then,
  );

  final Query$User$userCollection$edges _instance;

  final TRes Function(Query$User$userCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$userCollection$edges(
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

class _CopyWithStubImpl$Query$User$userCollection$edges<TRes>
    implements CopyWith$Query$User$userCollection$edges<TRes> {
  _CopyWithStubImpl$Query$User$userCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$User? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get node => CopyWith$Fragment$User.stub(_res);
}

class Variables$Mutation$CreateUser {
  factory Variables$Mutation$CreateUser(
          {required Input$UserInsertInput input}) =>
      Variables$Mutation$CreateUser._({
        r'input': input,
      });

  Variables$Mutation$CreateUser._(this._$data);

  factory Variables$Mutation$CreateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UserInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UserInsertInput get input => (_$data['input'] as Input$UserInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateUser<Variables$Mutation$CreateUser>
      get copyWith => CopyWith$Variables$Mutation$CreateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateUser) ||
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

abstract class CopyWith$Variables$Mutation$CreateUser<TRes> {
  factory CopyWith$Variables$Mutation$CreateUser(
    Variables$Mutation$CreateUser instance,
    TRes Function(Variables$Mutation$CreateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateUser;

  factory CopyWith$Variables$Mutation$CreateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateUser;

  TRes call({Input$UserInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateUser _instance;

  final TRes Function(Variables$Mutation$CreateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateUser._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$UserInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateUser(this._res);

  TRes _res;

  call({Input$UserInsertInput? input}) => _res;
}

class Mutation$CreateUser {
  Mutation$CreateUser({
    this.insertIntoUserCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateUser.fromJson(Map<String, dynamic> json) {
    final l$insertIntoUserCollection = json['insertIntoUserCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser(
      insertIntoUserCollection: l$insertIntoUserCollection == null
          ? null
          : Mutation$CreateUser$insertIntoUserCollection.fromJson(
              (l$insertIntoUserCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateUser$insertIntoUserCollection? insertIntoUserCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoUserCollection = insertIntoUserCollection;
    _resultData['insertIntoUserCollection'] =
        l$insertIntoUserCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoUserCollection = insertIntoUserCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoUserCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoUserCollection = insertIntoUserCollection;
    final lOther$insertIntoUserCollection = other.insertIntoUserCollection;
    if (l$insertIntoUserCollection != lOther$insertIntoUserCollection) {
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

extension UtilityExtension$Mutation$CreateUser on Mutation$CreateUser {
  CopyWith$Mutation$CreateUser<Mutation$CreateUser> get copyWith =>
      CopyWith$Mutation$CreateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateUser<TRes> {
  factory CopyWith$Mutation$CreateUser(
    Mutation$CreateUser instance,
    TRes Function(Mutation$CreateUser) then,
  ) = _CopyWithImpl$Mutation$CreateUser;

  factory CopyWith$Mutation$CreateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser;

  TRes call({
    Mutation$CreateUser$insertIntoUserCollection? insertIntoUserCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateUser$insertIntoUserCollection<TRes>
      get insertIntoUserCollection;
}

class _CopyWithImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithImpl$Mutation$CreateUser(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser _instance;

  final TRes Function(Mutation$CreateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoUserCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUser(
        insertIntoUserCollection: insertIntoUserCollection == _undefined
            ? _instance.insertIntoUserCollection
            : (insertIntoUserCollection
                as Mutation$CreateUser$insertIntoUserCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateUser$insertIntoUserCollection<TRes>
      get insertIntoUserCollection {
    final local$insertIntoUserCollection = _instance.insertIntoUserCollection;
    return local$insertIntoUserCollection == null
        ? CopyWith$Mutation$CreateUser$insertIntoUserCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateUser$insertIntoUserCollection(
            local$insertIntoUserCollection,
            (e) => call(insertIntoUserCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser(this._res);

  TRes _res;

  call({
    Mutation$CreateUser$insertIntoUserCollection? insertIntoUserCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateUser$insertIntoUserCollection<TRes>
      get insertIntoUserCollection =>
          CopyWith$Mutation$CreateUser$insertIntoUserCollection.stub(_res);
}

const documentNodeMutationCreateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoUserCollection'),
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
Mutation$CreateUser _parserFn$Mutation$CreateUser(Map<String, dynamic> data) =>
    Mutation$CreateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateUser?,
);

class Options$Mutation$CreateUser
    extends graphql.MutationOptions<Mutation$CreateUser> {
  Options$Mutation$CreateUser({
    String? operationName,
    required Variables$Mutation$CreateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateUser,
          parserFn: _parserFn$Mutation$CreateUser,
        );

  final OnMutationCompleted$Mutation$CreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateUser
    extends graphql.WatchQueryOptions<Mutation$CreateUser> {
  WatchOptions$Mutation$CreateUser({
    String? operationName,
    required Variables$Mutation$CreateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateUser? typedOptimisticResult,
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
          document: documentNodeMutationCreateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateUser,
        );
}

extension ClientExtension$Mutation$CreateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateUser>> mutate$CreateUser(
          Options$Mutation$CreateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateUser> watchMutation$CreateUser(
          WatchOptions$Mutation$CreateUser options) =>
      this.watchMutation(options);
}

class Mutation$CreateUser$HookResult {
  Mutation$CreateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateUser runMutation;

  final graphql.QueryResult<Mutation$CreateUser> result;
}

Mutation$CreateUser$HookResult useMutation$CreateUser(
    [WidgetOptions$Mutation$CreateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateUser());
  return Mutation$CreateUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateUser> useWatchMutation$CreateUser(
        WatchOptions$Mutation$CreateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateUser
    extends graphql.MutationOptions<Mutation$CreateUser> {
  WidgetOptions$Mutation$CreateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateUser,
          parserFn: _parserFn$Mutation$CreateUser,
        );

  final OnMutationCompleted$Mutation$CreateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateUser
    = graphql.MultiSourceResult<Mutation$CreateUser> Function(
  Variables$Mutation$CreateUser, {
  Object? optimisticResult,
  Mutation$CreateUser? typedOptimisticResult,
});
typedef Builder$Mutation$CreateUser = widgets.Widget Function(
  RunMutation$Mutation$CreateUser,
  graphql.QueryResult<Mutation$CreateUser>?,
);

class Mutation$CreateUser$Widget
    extends graphql_flutter.Mutation<Mutation$CreateUser> {
  Mutation$CreateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateUser? options,
    required Builder$Mutation$CreateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateUser(),
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

class Mutation$CreateUser$insertIntoUserCollection {
  Mutation$CreateUser$insertIntoUserCollection({
    required this.records,
    this.$__typename = 'UserInsertResponse',
  });

  factory Mutation$CreateUser$insertIntoUserCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$insertIntoUserCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User> records;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$records = records;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$records.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateUser$insertIntoUserCollection) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateUser$insertIntoUserCollection
    on Mutation$CreateUser$insertIntoUserCollection {
  CopyWith$Mutation$CreateUser$insertIntoUserCollection<
          Mutation$CreateUser$insertIntoUserCollection>
      get copyWith => CopyWith$Mutation$CreateUser$insertIntoUserCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateUser$insertIntoUserCollection<TRes> {
  factory CopyWith$Mutation$CreateUser$insertIntoUserCollection(
    Mutation$CreateUser$insertIntoUserCollection instance,
    TRes Function(Mutation$CreateUser$insertIntoUserCollection) then,
  ) = _CopyWithImpl$Mutation$CreateUser$insertIntoUserCollection;

  factory CopyWith$Mutation$CreateUser$insertIntoUserCollection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser$insertIntoUserCollection;

  TRes call({
    List<Fragment$User>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$User> Function(
              Iterable<CopyWith$Fragment$User<Fragment$User>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateUser$insertIntoUserCollection<TRes>
    implements CopyWith$Mutation$CreateUser$insertIntoUserCollection<TRes> {
  _CopyWithImpl$Mutation$CreateUser$insertIntoUserCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$insertIntoUserCollection _instance;

  final TRes Function(Mutation$CreateUser$insertIntoUserCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUser$insertIntoUserCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$User>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$User> Function(
                  Iterable<CopyWith$Fragment$User<Fragment$User>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$User(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateUser$insertIntoUserCollection<TRes>
    implements CopyWith$Mutation$CreateUser$insertIntoUserCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$insertIntoUserCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({
    required String id,
    required Input$UserUpdateInput user,
  }) =>
      Variables$Mutation$UpdateUser._({
        r'id': id,
        r'user': user,
      });

  Variables$Mutation$UpdateUser._(this._$data);

  factory Variables$Mutation$UpdateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$user = data['user'];
    result$data['user'] =
        Input$UserUpdateInput.fromJson((l$user as Map<String, dynamic>));
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UserUpdateInput get user => (_$data['user'] as Input$UserUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$user = user;
    result$data['user'] = l$user.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateUser<Variables$Mutation$UpdateUser>
      get copyWith => CopyWith$Variables$Mutation$UpdateUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateUser) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$user = user;
    return Object.hashAll([
      l$id,
      l$user,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateUser<TRes> {
  factory CopyWith$Variables$Mutation$UpdateUser(
    Variables$Mutation$UpdateUser instance,
    TRes Function(Variables$Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateUser;

  factory CopyWith$Variables$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateUser;

  TRes call({
    String? id,
    Input$UserUpdateInput? user,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateUser _instance;

  final TRes Function(Variables$Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? user = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (user != _undefined && user != null)
          'user': (user as Input$UserUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    String? id,
    Input$UserUpdateInput? user,
  }) =>
      _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    required this.updateUserCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUserCollection = json['updateUserCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      updateUserCollection: Mutation$UpdateUser$updateUserCollection.fromJson(
          (l$updateUserCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUser$updateUserCollection updateUserCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUserCollection = updateUserCollection;
    _resultData['updateUserCollection'] = l$updateUserCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUserCollection = updateUserCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUserCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateUser) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUserCollection = updateUserCollection;
    final lOther$updateUserCollection = other.updateUserCollection;
    if (l$updateUserCollection != lOther$updateUserCollection) {
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

extension UtilityExtension$Mutation$UpdateUser on Mutation$UpdateUser {
  CopyWith$Mutation$UpdateUser<Mutation$UpdateUser> get copyWith =>
      CopyWith$Mutation$UpdateUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateUser<TRes> {
  factory CopyWith$Mutation$UpdateUser(
    Mutation$UpdateUser instance,
    TRes Function(Mutation$UpdateUser) then,
  ) = _CopyWithImpl$Mutation$UpdateUser;

  factory CopyWith$Mutation$UpdateUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser;

  TRes call({
    Mutation$UpdateUser$updateUserCollection? updateUserCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUser$updateUserCollection<TRes>
      get updateUserCollection;
}

class _CopyWithImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithImpl$Mutation$UpdateUser(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser _instance;

  final TRes Function(Mutation$UpdateUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateUserCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        updateUserCollection:
            updateUserCollection == _undefined || updateUserCollection == null
                ? _instance.updateUserCollection
                : (updateUserCollection
                    as Mutation$UpdateUser$updateUserCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateUser$updateUserCollection<TRes>
      get updateUserCollection {
    final local$updateUserCollection = _instance.updateUserCollection;
    return CopyWith$Mutation$UpdateUser$updateUserCollection(
        local$updateUserCollection, (e) => call(updateUserCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    Mutation$UpdateUser$updateUserCollection? updateUserCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateUser$updateUserCollection<TRes>
      get updateUserCollection =>
          CopyWith$Mutation$UpdateUser$updateUserCollection.stub(_res);
}

const documentNodeMutationUpdateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateUser'),
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
        variable: VariableNode(name: NameNode(value: 'user')),
        type: NamedTypeNode(
          name: NameNode(value: 'UserUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUserCollection'),
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
            value: VariableNode(name: NameNode(value: 'user')),
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
Mutation$UpdateUser _parserFn$Mutation$UpdateUser(Map<String, dynamic> data) =>
    Mutation$UpdateUser.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateUser?,
);

class Options$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  Options$Mutation$UpdateUser({
    String? operationName,
    required Variables$Mutation$UpdateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateUser
    extends graphql.WatchQueryOptions<Mutation$UpdateUser> {
  WatchOptions$Mutation$UpdateUser({
    String? operationName,
    required Variables$Mutation$UpdateUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
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
          document: documentNodeMutationUpdateUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateUser,
        );
}

extension ClientExtension$Mutation$UpdateUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateUser>> mutate$UpdateUser(
          Options$Mutation$UpdateUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateUser> watchMutation$UpdateUser(
          WatchOptions$Mutation$UpdateUser options) =>
      this.watchMutation(options);
}

class Mutation$UpdateUser$HookResult {
  Mutation$UpdateUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateUser runMutation;

  final graphql.QueryResult<Mutation$UpdateUser> result;
}

Mutation$UpdateUser$HookResult useMutation$UpdateUser(
    [WidgetOptions$Mutation$UpdateUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateUser());
  return Mutation$UpdateUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateUser> useWatchMutation$UpdateUser(
        WatchOptions$Mutation$UpdateUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateUser
    extends graphql.MutationOptions<Mutation$UpdateUser> {
  WidgetOptions$Mutation$UpdateUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateUser>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateUser,
          parserFn: _parserFn$Mutation$UpdateUser,
        );

  final OnMutationCompleted$Mutation$UpdateUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateUser
    = graphql.MultiSourceResult<Mutation$UpdateUser> Function(
  Variables$Mutation$UpdateUser, {
  Object? optimisticResult,
  Mutation$UpdateUser? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateUser = widgets.Widget Function(
  RunMutation$Mutation$UpdateUser,
  graphql.QueryResult<Mutation$UpdateUser>?,
);

class Mutation$UpdateUser$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateUser> {
  Mutation$UpdateUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateUser? options,
    required Builder$Mutation$UpdateUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateUser(),
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

class Mutation$UpdateUser$updateUserCollection {
  Mutation$UpdateUser$updateUserCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'UserUpdateResponse',
  });

  factory Mutation$UpdateUser$updateUserCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUserCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User> records;

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
    if (!(other is Mutation$UpdateUser$updateUserCollection) ||
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

extension UtilityExtension$Mutation$UpdateUser$updateUserCollection
    on Mutation$UpdateUser$updateUserCollection {
  CopyWith$Mutation$UpdateUser$updateUserCollection<
          Mutation$UpdateUser$updateUserCollection>
      get copyWith => CopyWith$Mutation$UpdateUser$updateUserCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUser$updateUserCollection<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUserCollection(
    Mutation$UpdateUser$updateUserCollection instance,
    TRes Function(Mutation$UpdateUser$updateUserCollection) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUserCollection;

  factory CopyWith$Mutation$UpdateUser$updateUserCollection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUserCollection;

  TRes call({
    List<Fragment$User>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$User> Function(
              Iterable<CopyWith$Fragment$User<Fragment$User>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateUser$updateUserCollection<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUserCollection<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUserCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUserCollection _instance;

  final TRes Function(Mutation$UpdateUser$updateUserCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser$updateUserCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$User>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$User> Function(
                  Iterable<CopyWith$Fragment$User<Fragment$User>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$User(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateUser$updateUserCollection<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUserCollection<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUserCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
