import '../../commerce/graphql/orders.graphql.dart';
import '../../commerce/graphql/products.graphql.dart';
import '../../schema.graphql.dart';
import '../../stations/graphql/stations.graphql.dart';
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
    this.$__typename = 'Roles',
  });

  factory Fragment$Role.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Fragment$Role(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$key = key;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Role || runtimeType != other.runtimeType) {
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
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Role(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
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
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionRole = FragmentDefinitionNode(
  name: NameNode(value: 'Role'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Roles'),
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
    this.$__typename = 'UserRoles',
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
    if (other is! Fragment$UserRole || runtimeType != other.runtimeType) {
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
    name: NameNode(value: 'UserRoles'),
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
    required this.firstName,
    required this.lastName,
    this.metadata,
    required this.did,
    required this.handle,
    required this.pdsUrl,
    required this.createdAt,
    this.userRolesCollection,
    this.primaryStationId,
    this.primaryStation,
    this.userStationsCollection,
    this.shoppingCartsCollection,
    this.$__typename = 'Users',
  });

  factory Fragment$User.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$email = json['email'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$metadata = json['metadata'];
    final l$did = json['did'];
    final l$handle = json['handle'];
    final l$pdsUrl = json['pdsUrl'];
    final l$createdAt = json['createdAt'];
    final l$userRolesCollection = json['userRolesCollection'];
    final l$primaryStationId = json['primaryStationId'];
    final l$primaryStation = json['primaryStation'];
    final l$userStationsCollection = json['userStationsCollection'];
    final l$shoppingCartsCollection = json['shoppingCartsCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$User(
      id: (l$id as String),
      email: (l$email as String),
      firstName: (l$firstName as String),
      lastName: (l$lastName as String),
      metadata: l$metadata == null ? null : jsonFieldFromJson(l$metadata),
      did: (l$did as String),
      handle: (l$handle as String),
      pdsUrl: (l$pdsUrl as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      userRolesCollection: l$userRolesCollection == null
          ? null
          : Fragment$User$userRolesCollection.fromJson(
              (l$userRolesCollection as Map<String, dynamic>)),
      primaryStationId: (l$primaryStationId as String?),
      primaryStation: l$primaryStation == null
          ? null
          : Fragment$Station.fromJson(
              (l$primaryStation as Map<String, dynamic>)),
      userStationsCollection: l$userStationsCollection == null
          ? null
          : Fragment$User$userStationsCollection.fromJson(
              (l$userStationsCollection as Map<String, dynamic>)),
      shoppingCartsCollection: l$shoppingCartsCollection == null
          ? null
          : Fragment$User$shoppingCartsCollection.fromJson(
              (l$shoppingCartsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String email;

  final String firstName;

  final String lastName;

  final Map<String, dynamic>? metadata;

  final String did;

  final String handle;

  final String pdsUrl;

  final DateTime createdAt;

  final Fragment$User$userRolesCollection? userRolesCollection;

  final String? primaryStationId;

  final Fragment$Station? primaryStation;

  final Fragment$User$userStationsCollection? userStationsCollection;

  final Fragment$User$shoppingCartsCollection? shoppingCartsCollection;

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
    final l$metadata = metadata;
    _resultData['metadata'] =
        l$metadata == null ? null : jsonFieldToJson(l$metadata);
    final l$did = did;
    _resultData['did'] = l$did;
    final l$handle = handle;
    _resultData['handle'] = l$handle;
    final l$pdsUrl = pdsUrl;
    _resultData['pdsUrl'] = l$pdsUrl;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$userRolesCollection = userRolesCollection;
    _resultData['userRolesCollection'] = l$userRolesCollection?.toJson();
    final l$primaryStationId = primaryStationId;
    _resultData['primaryStationId'] = l$primaryStationId;
    final l$primaryStation = primaryStation;
    _resultData['primaryStation'] = l$primaryStation?.toJson();
    final l$userStationsCollection = userStationsCollection;
    _resultData['userStationsCollection'] = l$userStationsCollection?.toJson();
    final l$shoppingCartsCollection = shoppingCartsCollection;
    _resultData['shoppingCartsCollection'] =
        l$shoppingCartsCollection?.toJson();
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
    final l$metadata = metadata;
    final l$did = did;
    final l$handle = handle;
    final l$pdsUrl = pdsUrl;
    final l$createdAt = createdAt;
    final l$userRolesCollection = userRolesCollection;
    final l$primaryStationId = primaryStationId;
    final l$primaryStation = primaryStation;
    final l$userStationsCollection = userStationsCollection;
    final l$shoppingCartsCollection = shoppingCartsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$email,
      l$firstName,
      l$lastName,
      l$metadata,
      l$did,
      l$handle,
      l$pdsUrl,
      l$createdAt,
      l$userRolesCollection,
      l$primaryStationId,
      l$primaryStation,
      l$userStationsCollection,
      l$shoppingCartsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$User || runtimeType != other.runtimeType) {
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
    final l$metadata = metadata;
    final lOther$metadata = other.metadata;
    if (l$metadata != lOther$metadata) {
      return false;
    }
    final l$did = did;
    final lOther$did = other.did;
    if (l$did != lOther$did) {
      return false;
    }
    final l$handle = handle;
    final lOther$handle = other.handle;
    if (l$handle != lOther$handle) {
      return false;
    }
    final l$pdsUrl = pdsUrl;
    final lOther$pdsUrl = other.pdsUrl;
    if (l$pdsUrl != lOther$pdsUrl) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$userRolesCollection = userRolesCollection;
    final lOther$userRolesCollection = other.userRolesCollection;
    if (l$userRolesCollection != lOther$userRolesCollection) {
      return false;
    }
    final l$primaryStationId = primaryStationId;
    final lOther$primaryStationId = other.primaryStationId;
    if (l$primaryStationId != lOther$primaryStationId) {
      return false;
    }
    final l$primaryStation = primaryStation;
    final lOther$primaryStation = other.primaryStation;
    if (l$primaryStation != lOther$primaryStation) {
      return false;
    }
    final l$userStationsCollection = userStationsCollection;
    final lOther$userStationsCollection = other.userStationsCollection;
    if (l$userStationsCollection != lOther$userStationsCollection) {
      return false;
    }
    final l$shoppingCartsCollection = shoppingCartsCollection;
    final lOther$shoppingCartsCollection = other.shoppingCartsCollection;
    if (l$shoppingCartsCollection != lOther$shoppingCartsCollection) {
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
    Map<String, dynamic>? metadata,
    String? did,
    String? handle,
    String? pdsUrl,
    DateTime? createdAt,
    Fragment$User$userRolesCollection? userRolesCollection,
    String? primaryStationId,
    Fragment$Station? primaryStation,
    Fragment$User$userStationsCollection? userStationsCollection,
    Fragment$User$shoppingCartsCollection? shoppingCartsCollection,
    String? $__typename,
  });
  CopyWith$Fragment$User$userRolesCollection<TRes> get userRolesCollection;
  CopyWith$Fragment$Station<TRes> get primaryStation;
  CopyWith$Fragment$User$userStationsCollection<TRes>
      get userStationsCollection;
  CopyWith$Fragment$User$shoppingCartsCollection<TRes>
      get shoppingCartsCollection;
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
    Object? metadata = _undefined,
    Object? did = _undefined,
    Object? handle = _undefined,
    Object? pdsUrl = _undefined,
    Object? createdAt = _undefined,
    Object? userRolesCollection = _undefined,
    Object? primaryStationId = _undefined,
    Object? primaryStation = _undefined,
    Object? userStationsCollection = _undefined,
    Object? shoppingCartsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        email: email == _undefined || email == null
            ? _instance.email
            : (email as String),
        firstName: firstName == _undefined || firstName == null
            ? _instance.firstName
            : (firstName as String),
        lastName: lastName == _undefined || lastName == null
            ? _instance.lastName
            : (lastName as String),
        metadata: metadata == _undefined
            ? _instance.metadata
            : (metadata as Map<String, dynamic>?),
        did: did == _undefined || did == null ? _instance.did : (did as String),
        handle: handle == _undefined || handle == null
            ? _instance.handle
            : (handle as String),
        pdsUrl: pdsUrl == _undefined || pdsUrl == null
            ? _instance.pdsUrl
            : (pdsUrl as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        userRolesCollection: userRolesCollection == _undefined
            ? _instance.userRolesCollection
            : (userRolesCollection as Fragment$User$userRolesCollection?),
        primaryStationId: primaryStationId == _undefined
            ? _instance.primaryStationId
            : (primaryStationId as String?),
        primaryStation: primaryStation == _undefined
            ? _instance.primaryStation
            : (primaryStation as Fragment$Station?),
        userStationsCollection: userStationsCollection == _undefined
            ? _instance.userStationsCollection
            : (userStationsCollection as Fragment$User$userStationsCollection?),
        shoppingCartsCollection: shoppingCartsCollection == _undefined
            ? _instance.shoppingCartsCollection
            : (shoppingCartsCollection
                as Fragment$User$shoppingCartsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User$userRolesCollection<TRes> get userRolesCollection {
    final local$userRolesCollection = _instance.userRolesCollection;
    return local$userRolesCollection == null
        ? CopyWith$Fragment$User$userRolesCollection.stub(_then(_instance))
        : CopyWith$Fragment$User$userRolesCollection(
            local$userRolesCollection, (e) => call(userRolesCollection: e));
  }

  CopyWith$Fragment$Station<TRes> get primaryStation {
    final local$primaryStation = _instance.primaryStation;
    return local$primaryStation == null
        ? CopyWith$Fragment$Station.stub(_then(_instance))
        : CopyWith$Fragment$Station(
            local$primaryStation, (e) => call(primaryStation: e));
  }

  CopyWith$Fragment$User$userStationsCollection<TRes>
      get userStationsCollection {
    final local$userStationsCollection = _instance.userStationsCollection;
    return local$userStationsCollection == null
        ? CopyWith$Fragment$User$userStationsCollection.stub(_then(_instance))
        : CopyWith$Fragment$User$userStationsCollection(
            local$userStationsCollection,
            (e) => call(userStationsCollection: e));
  }

  CopyWith$Fragment$User$shoppingCartsCollection<TRes>
      get shoppingCartsCollection {
    final local$shoppingCartsCollection = _instance.shoppingCartsCollection;
    return local$shoppingCartsCollection == null
        ? CopyWith$Fragment$User$shoppingCartsCollection.stub(_then(_instance))
        : CopyWith$Fragment$User$shoppingCartsCollection(
            local$shoppingCartsCollection,
            (e) => call(shoppingCartsCollection: e));
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
    Map<String, dynamic>? metadata,
    String? did,
    String? handle,
    String? pdsUrl,
    DateTime? createdAt,
    Fragment$User$userRolesCollection? userRolesCollection,
    String? primaryStationId,
    Fragment$Station? primaryStation,
    Fragment$User$userStationsCollection? userStationsCollection,
    Fragment$User$shoppingCartsCollection? shoppingCartsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User$userRolesCollection<TRes> get userRolesCollection =>
      CopyWith$Fragment$User$userRolesCollection.stub(_res);

  CopyWith$Fragment$Station<TRes> get primaryStation =>
      CopyWith$Fragment$Station.stub(_res);

  CopyWith$Fragment$User$userStationsCollection<TRes>
      get userStationsCollection =>
          CopyWith$Fragment$User$userStationsCollection.stub(_res);

  CopyWith$Fragment$User$shoppingCartsCollection<TRes>
      get shoppingCartsCollection =>
          CopyWith$Fragment$User$shoppingCartsCollection.stub(_res);
}

const fragmentDefinitionUser = FragmentDefinitionNode(
  name: NameNode(value: 'User'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Users'),
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
      name: NameNode(value: 'metadata'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'did'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'handle'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'pdsUrl'),
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
      name: NameNode(value: 'userRolesCollection'),
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
      name: NameNode(value: 'primaryStationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'primaryStation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Station'),
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
      name: NameNode(value: 'userStationsCollection'),
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
                  name: NameNode(value: 'UserStation'),
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
      name: NameNode(value: 'shoppingCartsCollection'),
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
                  name: NameNode(value: 'ShoppingCart'),
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
  fragmentDefinitionStation,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Fragment$User$userRolesCollection {
  Fragment$User$userRolesCollection({
    required this.edges,
    this.$__typename = 'UserRolesConnection',
  });

  factory Fragment$User$userRolesCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userRolesCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$User$userRolesCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User$userRolesCollection$edges> edges;

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
    if (other is! Fragment$User$userRolesCollection ||
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

extension UtilityExtension$Fragment$User$userRolesCollection
    on Fragment$User$userRolesCollection {
  CopyWith$Fragment$User$userRolesCollection<Fragment$User$userRolesCollection>
      get copyWith => CopyWith$Fragment$User$userRolesCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userRolesCollection<TRes> {
  factory CopyWith$Fragment$User$userRolesCollection(
    Fragment$User$userRolesCollection instance,
    TRes Function(Fragment$User$userRolesCollection) then,
  ) = _CopyWithImpl$Fragment$User$userRolesCollection;

  factory CopyWith$Fragment$User$userRolesCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userRolesCollection;

  TRes call({
    List<Fragment$User$userRolesCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$User$userRolesCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$User$userRolesCollection$edges<
                      Fragment$User$userRolesCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$User$userRolesCollection<TRes>
    implements CopyWith$Fragment$User$userRolesCollection<TRes> {
  _CopyWithImpl$Fragment$User$userRolesCollection(
    this._instance,
    this._then,
  );

  final Fragment$User$userRolesCollection _instance;

  final TRes Function(Fragment$User$userRolesCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userRolesCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$User$userRolesCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$User$userRolesCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$User$userRolesCollection$edges<
                          Fragment$User$userRolesCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$User$userRolesCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$User$userRolesCollection<TRes>
    implements CopyWith$Fragment$User$userRolesCollection<TRes> {
  _CopyWithStubImpl$Fragment$User$userRolesCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User$userRolesCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$User$userRolesCollection$edges {
  Fragment$User$userRolesCollection$edges({
    required this.node,
    this.$__typename = 'UserRolesEdge',
  });

  factory Fragment$User$userRolesCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userRolesCollection$edges(
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
    if (other is! Fragment$User$userRolesCollection$edges ||
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

extension UtilityExtension$Fragment$User$userRolesCollection$edges
    on Fragment$User$userRolesCollection$edges {
  CopyWith$Fragment$User$userRolesCollection$edges<
          Fragment$User$userRolesCollection$edges>
      get copyWith => CopyWith$Fragment$User$userRolesCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userRolesCollection$edges<TRes> {
  factory CopyWith$Fragment$User$userRolesCollection$edges(
    Fragment$User$userRolesCollection$edges instance,
    TRes Function(Fragment$User$userRolesCollection$edges) then,
  ) = _CopyWithImpl$Fragment$User$userRolesCollection$edges;

  factory CopyWith$Fragment$User$userRolesCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userRolesCollection$edges;

  TRes call({
    Fragment$UserRole? node,
    String? $__typename,
  });
  CopyWith$Fragment$UserRole<TRes> get node;
}

class _CopyWithImpl$Fragment$User$userRolesCollection$edges<TRes>
    implements CopyWith$Fragment$User$userRolesCollection$edges<TRes> {
  _CopyWithImpl$Fragment$User$userRolesCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$User$userRolesCollection$edges _instance;

  final TRes Function(Fragment$User$userRolesCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userRolesCollection$edges(
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

class _CopyWithStubImpl$Fragment$User$userRolesCollection$edges<TRes>
    implements CopyWith$Fragment$User$userRolesCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$User$userRolesCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$UserRole? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserRole<TRes> get node =>
      CopyWith$Fragment$UserRole.stub(_res);
}

class Fragment$User$userStationsCollection {
  Fragment$User$userStationsCollection({
    required this.edges,
    this.$__typename = 'UserStationsConnection',
  });

  factory Fragment$User$userStationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userStationsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$User$userStationsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User$userStationsCollection$edges> edges;

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
    if (other is! Fragment$User$userStationsCollection ||
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

extension UtilityExtension$Fragment$User$userStationsCollection
    on Fragment$User$userStationsCollection {
  CopyWith$Fragment$User$userStationsCollection<
          Fragment$User$userStationsCollection>
      get copyWith => CopyWith$Fragment$User$userStationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userStationsCollection<TRes> {
  factory CopyWith$Fragment$User$userStationsCollection(
    Fragment$User$userStationsCollection instance,
    TRes Function(Fragment$User$userStationsCollection) then,
  ) = _CopyWithImpl$Fragment$User$userStationsCollection;

  factory CopyWith$Fragment$User$userStationsCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userStationsCollection;

  TRes call({
    List<Fragment$User$userStationsCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$User$userStationsCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$User$userStationsCollection$edges<
                      Fragment$User$userStationsCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$User$userStationsCollection<TRes>
    implements CopyWith$Fragment$User$userStationsCollection<TRes> {
  _CopyWithImpl$Fragment$User$userStationsCollection(
    this._instance,
    this._then,
  );

  final Fragment$User$userStationsCollection _instance;

  final TRes Function(Fragment$User$userStationsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userStationsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$User$userStationsCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$User$userStationsCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$User$userStationsCollection$edges<
                          Fragment$User$userStationsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$User$userStationsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$User$userStationsCollection<TRes>
    implements CopyWith$Fragment$User$userStationsCollection<TRes> {
  _CopyWithStubImpl$Fragment$User$userStationsCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User$userStationsCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$User$userStationsCollection$edges {
  Fragment$User$userStationsCollection$edges({
    required this.node,
    this.$__typename = 'UserStationsEdge',
  });

  factory Fragment$User$userStationsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$User$userStationsCollection$edges(
      node: Fragment$UserStation.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$UserStation node;

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
    if (other is! Fragment$User$userStationsCollection$edges ||
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

extension UtilityExtension$Fragment$User$userStationsCollection$edges
    on Fragment$User$userStationsCollection$edges {
  CopyWith$Fragment$User$userStationsCollection$edges<
          Fragment$User$userStationsCollection$edges>
      get copyWith => CopyWith$Fragment$User$userStationsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$userStationsCollection$edges<TRes> {
  factory CopyWith$Fragment$User$userStationsCollection$edges(
    Fragment$User$userStationsCollection$edges instance,
    TRes Function(Fragment$User$userStationsCollection$edges) then,
  ) = _CopyWithImpl$Fragment$User$userStationsCollection$edges;

  factory CopyWith$Fragment$User$userStationsCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$userStationsCollection$edges;

  TRes call({
    Fragment$UserStation? node,
    String? $__typename,
  });
  CopyWith$Fragment$UserStation<TRes> get node;
}

class _CopyWithImpl$Fragment$User$userStationsCollection$edges<TRes>
    implements CopyWith$Fragment$User$userStationsCollection$edges<TRes> {
  _CopyWithImpl$Fragment$User$userStationsCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$User$userStationsCollection$edges _instance;

  final TRes Function(Fragment$User$userStationsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$userStationsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$UserStation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$UserStation<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$UserStation(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$User$userStationsCollection$edges<TRes>
    implements CopyWith$Fragment$User$userStationsCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$User$userStationsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$UserStation? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$UserStation<TRes> get node =>
      CopyWith$Fragment$UserStation.stub(_res);
}

class Fragment$User$shoppingCartsCollection {
  Fragment$User$shoppingCartsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ShoppingCartsConnection',
  });

  factory Fragment$User$shoppingCartsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$User$shoppingCartsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$User$shoppingCartsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$User$shoppingCartsCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$User$shoppingCartsCollection$edges> edges;

  final Fragment$User$shoppingCartsCollection$pageInfo pageInfo;

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
    if (other is! Fragment$User$shoppingCartsCollection ||
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

extension UtilityExtension$Fragment$User$shoppingCartsCollection
    on Fragment$User$shoppingCartsCollection {
  CopyWith$Fragment$User$shoppingCartsCollection<
          Fragment$User$shoppingCartsCollection>
      get copyWith => CopyWith$Fragment$User$shoppingCartsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$shoppingCartsCollection<TRes> {
  factory CopyWith$Fragment$User$shoppingCartsCollection(
    Fragment$User$shoppingCartsCollection instance,
    TRes Function(Fragment$User$shoppingCartsCollection) then,
  ) = _CopyWithImpl$Fragment$User$shoppingCartsCollection;

  factory CopyWith$Fragment$User$shoppingCartsCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$shoppingCartsCollection;

  TRes call({
    List<Fragment$User$shoppingCartsCollection$edges>? edges,
    Fragment$User$shoppingCartsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$User$shoppingCartsCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$User$shoppingCartsCollection$edges<
                      Fragment$User$shoppingCartsCollection$edges>>)
          _fn);
  CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Fragment$User$shoppingCartsCollection<TRes>
    implements CopyWith$Fragment$User$shoppingCartsCollection<TRes> {
  _CopyWithImpl$Fragment$User$shoppingCartsCollection(
    this._instance,
    this._then,
  );

  final Fragment$User$shoppingCartsCollection _instance;

  final TRes Function(Fragment$User$shoppingCartsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$shoppingCartsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$User$shoppingCartsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$User$shoppingCartsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$User$shoppingCartsCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$User$shoppingCartsCollection$edges<
                          Fragment$User$shoppingCartsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$User$shoppingCartsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$User$shoppingCartsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$User$shoppingCartsCollection<TRes>
    implements CopyWith$Fragment$User$shoppingCartsCollection<TRes> {
  _CopyWithStubImpl$Fragment$User$shoppingCartsCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User$shoppingCartsCollection$edges>? edges,
    Fragment$User$shoppingCartsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$User$shoppingCartsCollection$pageInfo.stub(_res);
}

class Fragment$User$shoppingCartsCollection$edges {
  Fragment$User$shoppingCartsCollection$edges({
    required this.node,
    this.$__typename = 'ShoppingCartsEdge',
  });

  factory Fragment$User$shoppingCartsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$User$shoppingCartsCollection$edges(
      node: Fragment$ShoppingCart.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ShoppingCart node;

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
    if (other is! Fragment$User$shoppingCartsCollection$edges ||
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

extension UtilityExtension$Fragment$User$shoppingCartsCollection$edges
    on Fragment$User$shoppingCartsCollection$edges {
  CopyWith$Fragment$User$shoppingCartsCollection$edges<
          Fragment$User$shoppingCartsCollection$edges>
      get copyWith => CopyWith$Fragment$User$shoppingCartsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$shoppingCartsCollection$edges<TRes> {
  factory CopyWith$Fragment$User$shoppingCartsCollection$edges(
    Fragment$User$shoppingCartsCollection$edges instance,
    TRes Function(Fragment$User$shoppingCartsCollection$edges) then,
  ) = _CopyWithImpl$Fragment$User$shoppingCartsCollection$edges;

  factory CopyWith$Fragment$User$shoppingCartsCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$User$shoppingCartsCollection$edges;

  TRes call({
    Fragment$ShoppingCart? node,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCart<TRes> get node;
}

class _CopyWithImpl$Fragment$User$shoppingCartsCollection$edges<TRes>
    implements CopyWith$Fragment$User$shoppingCartsCollection$edges<TRes> {
  _CopyWithImpl$Fragment$User$shoppingCartsCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$User$shoppingCartsCollection$edges _instance;

  final TRes Function(Fragment$User$shoppingCartsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$shoppingCartsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ShoppingCart),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCart<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ShoppingCart(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$User$shoppingCartsCollection$edges<TRes>
    implements CopyWith$Fragment$User$shoppingCartsCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$User$shoppingCartsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$ShoppingCart? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCart<TRes> get node =>
      CopyWith$Fragment$ShoppingCart.stub(_res);
}

class Fragment$User$shoppingCartsCollection$pageInfo {
  Fragment$User$shoppingCartsCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$User$shoppingCartsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$User$shoppingCartsCollection$pageInfo(
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
    if (other is! Fragment$User$shoppingCartsCollection$pageInfo ||
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

extension UtilityExtension$Fragment$User$shoppingCartsCollection$pageInfo
    on Fragment$User$shoppingCartsCollection$pageInfo {
  CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<
          Fragment$User$shoppingCartsCollection$pageInfo>
      get copyWith => CopyWith$Fragment$User$shoppingCartsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<TRes> {
  factory CopyWith$Fragment$User$shoppingCartsCollection$pageInfo(
    Fragment$User$shoppingCartsCollection$pageInfo instance,
    TRes Function(Fragment$User$shoppingCartsCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$User$shoppingCartsCollection$pageInfo;

  factory CopyWith$Fragment$User$shoppingCartsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$User$shoppingCartsCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$User$shoppingCartsCollection$pageInfo<TRes>
    implements CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$User$shoppingCartsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$User$shoppingCartsCollection$pageInfo _instance;

  final TRes Function(Fragment$User$shoppingCartsCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$User$shoppingCartsCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$User$shoppingCartsCollection$pageInfo<TRes>
    implements CopyWith$Fragment$User$shoppingCartsCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$User$shoppingCartsCollection$pageInfo(this._res);

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

class Fragment$UserStation {
  Fragment$UserStation({
    required this.id,
    required this.userId,
    required this.stationId,
    required this.station,
    required this.createdAt,
    this.$__typename = 'UserStations',
  });

  factory Fragment$UserStation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$stationId = json['stationId'];
    final l$station = json['station'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$UserStation(
      id: (l$id as String),
      userId: (l$userId as String),
      stationId: (l$stationId as String),
      station: Fragment$Station.fromJson((l$station as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String stationId;

  final Fragment$Station station;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
    final l$station = station;
    _resultData['station'] = l$station.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$stationId = stationId;
    final l$station = station;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$stationId,
      l$station,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$UserStation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
      return false;
    }
    final l$station = station;
    final lOther$station = other.station;
    if (l$station != lOther$station) {
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

extension UtilityExtension$Fragment$UserStation on Fragment$UserStation {
  CopyWith$Fragment$UserStation<Fragment$UserStation> get copyWith =>
      CopyWith$Fragment$UserStation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$UserStation<TRes> {
  factory CopyWith$Fragment$UserStation(
    Fragment$UserStation instance,
    TRes Function(Fragment$UserStation) then,
  ) = _CopyWithImpl$Fragment$UserStation;

  factory CopyWith$Fragment$UserStation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$UserStation;

  TRes call({
    String? id,
    String? userId,
    String? stationId,
    Fragment$Station? station,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$Station<TRes> get station;
}

class _CopyWithImpl$Fragment$UserStation<TRes>
    implements CopyWith$Fragment$UserStation<TRes> {
  _CopyWithImpl$Fragment$UserStation(
    this._instance,
    this._then,
  );

  final Fragment$UserStation _instance;

  final TRes Function(Fragment$UserStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? stationId = _undefined,
    Object? station = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$UserStation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        stationId: stationId == _undefined || stationId == null
            ? _instance.stationId
            : (stationId as String),
        station: station == _undefined || station == null
            ? _instance.station
            : (station as Fragment$Station),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Station<TRes> get station {
    final local$station = _instance.station;
    return CopyWith$Fragment$Station(local$station, (e) => call(station: e));
  }
}

class _CopyWithStubImpl$Fragment$UserStation<TRes>
    implements CopyWith$Fragment$UserStation<TRes> {
  _CopyWithStubImpl$Fragment$UserStation(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? stationId,
    Fragment$Station? station,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station<TRes> get station =>
      CopyWith$Fragment$Station.stub(_res);
}

const fragmentDefinitionUserStation = FragmentDefinitionNode(
  name: NameNode(value: 'UserStation'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'UserStations'),
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
      name: NameNode(value: 'userId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'stationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'station'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Station'),
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
const documentNodeFragmentUserStation = DocumentNode(definitions: [
  fragmentDefinitionUserStation,
  fragmentDefinitionStation,
]);

extension ClientExtension$Fragment$UserStation on graphql.GraphQLClient {
  void writeFragment$UserStation({
    required Fragment$UserStation data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'UserStation',
            document: documentNodeFragmentUserStation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$UserStation? readFragment$UserStation({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'UserStation',
          document: documentNodeFragmentUserStation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$UserStation.fromJson(result);
  }
}

class Variables$Query$UserCollection {
  factory Variables$Query$UserCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$UsersFilter? filter,
    List<Input$UsersOrderBy>? orderBy,
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
          : Input$UsersFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$UsersOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$UserCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$UsersFilter? get filter => (_$data['filter'] as Input$UsersFilter?);

  List<Input$UsersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$UsersOrderBy>?);

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
    if (other is! Variables$Query$UserCollection ||
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
    Input$UsersFilter? filter,
    List<Input$UsersOrderBy>? orderBy,
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
        if (filter != _undefined) 'filter': (filter as Input$UsersFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$UsersOrderBy>?),
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
    Input$UsersFilter? filter,
    List<Input$UsersOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$UserCollection {
  Query$UserCollection({
    this.usersCollection,
    this.$__typename = 'Query',
  });

  factory Query$UserCollection.fromJson(Map<String, dynamic> json) {
    final l$usersCollection = json['usersCollection'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection(
      usersCollection: l$usersCollection == null
          ? null
          : Query$UserCollection$usersCollection.fromJson(
              (l$usersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$UserCollection$usersCollection? usersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$usersCollection = usersCollection;
    _resultData['usersCollection'] = l$usersCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$usersCollection = usersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$usersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$UserCollection || runtimeType != other.runtimeType) {
      return false;
    }
    final l$usersCollection = usersCollection;
    final lOther$usersCollection = other.usersCollection;
    if (l$usersCollection != lOther$usersCollection) {
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
    Query$UserCollection$usersCollection? usersCollection,
    String? $__typename,
  });
  CopyWith$Query$UserCollection$usersCollection<TRes> get usersCollection;
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
    Object? usersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection(
        usersCollection: usersCollection == _undefined
            ? _instance.usersCollection
            : (usersCollection as Query$UserCollection$usersCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$UserCollection$usersCollection<TRes> get usersCollection {
    final local$usersCollection = _instance.usersCollection;
    return local$usersCollection == null
        ? CopyWith$Query$UserCollection$usersCollection.stub(_then(_instance))
        : CopyWith$Query$UserCollection$usersCollection(
            local$usersCollection, (e) => call(usersCollection: e));
  }
}

class _CopyWithStubImpl$Query$UserCollection<TRes>
    implements CopyWith$Query$UserCollection<TRes> {
  _CopyWithStubImpl$Query$UserCollection(this._res);

  TRes _res;

  call({
    Query$UserCollection$usersCollection? usersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$UserCollection$usersCollection<TRes> get usersCollection =>
      CopyWith$Query$UserCollection$usersCollection.stub(_res);
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
          name: NameNode(value: 'UsersFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'UsersOrderBy'),
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
        name: NameNode(value: 'usersCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Query$UserCollection$usersCollection {
  Query$UserCollection$usersCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'UsersConnection',
  });

  factory Query$UserCollection$usersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection$usersCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$UserCollection$usersCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$UserCollection$usersCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$UserCollection$usersCollection$edges> edges;

  final Query$UserCollection$usersCollection$pageInfo pageInfo;

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
    if (other is! Query$UserCollection$usersCollection ||
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

extension UtilityExtension$Query$UserCollection$usersCollection
    on Query$UserCollection$usersCollection {
  CopyWith$Query$UserCollection$usersCollection<
          Query$UserCollection$usersCollection>
      get copyWith => CopyWith$Query$UserCollection$usersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserCollection$usersCollection<TRes> {
  factory CopyWith$Query$UserCollection$usersCollection(
    Query$UserCollection$usersCollection instance,
    TRes Function(Query$UserCollection$usersCollection) then,
  ) = _CopyWithImpl$Query$UserCollection$usersCollection;

  factory CopyWith$Query$UserCollection$usersCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$UserCollection$usersCollection;

  TRes call({
    List<Query$UserCollection$usersCollection$edges>? edges,
    Query$UserCollection$usersCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$UserCollection$usersCollection$edges> Function(
              Iterable<
                  CopyWith$Query$UserCollection$usersCollection$edges<
                      Query$UserCollection$usersCollection$edges>>)
          _fn);
  CopyWith$Query$UserCollection$usersCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$UserCollection$usersCollection<TRes>
    implements CopyWith$Query$UserCollection$usersCollection<TRes> {
  _CopyWithImpl$Query$UserCollection$usersCollection(
    this._instance,
    this._then,
  );

  final Query$UserCollection$usersCollection _instance;

  final TRes Function(Query$UserCollection$usersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection$usersCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$UserCollection$usersCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$UserCollection$usersCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$UserCollection$usersCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$UserCollection$usersCollection$edges<
                          Query$UserCollection$usersCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$UserCollection$usersCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$UserCollection$usersCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$UserCollection$usersCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$UserCollection$usersCollection<TRes>
    implements CopyWith$Query$UserCollection$usersCollection<TRes> {
  _CopyWithStubImpl$Query$UserCollection$usersCollection(this._res);

  TRes _res;

  call({
    List<Query$UserCollection$usersCollection$edges>? edges,
    Query$UserCollection$usersCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$UserCollection$usersCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$UserCollection$usersCollection$pageInfo.stub(_res);
}

class Query$UserCollection$usersCollection$edges {
  Query$UserCollection$usersCollection$edges({
    required this.node,
    this.$__typename = 'UsersEdge',
  });

  factory Query$UserCollection$usersCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection$usersCollection$edges(
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
    if (other is! Query$UserCollection$usersCollection$edges ||
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

extension UtilityExtension$Query$UserCollection$usersCollection$edges
    on Query$UserCollection$usersCollection$edges {
  CopyWith$Query$UserCollection$usersCollection$edges<
          Query$UserCollection$usersCollection$edges>
      get copyWith => CopyWith$Query$UserCollection$usersCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserCollection$usersCollection$edges<TRes> {
  factory CopyWith$Query$UserCollection$usersCollection$edges(
    Query$UserCollection$usersCollection$edges instance,
    TRes Function(Query$UserCollection$usersCollection$edges) then,
  ) = _CopyWithImpl$Query$UserCollection$usersCollection$edges;

  factory CopyWith$Query$UserCollection$usersCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$UserCollection$usersCollection$edges;

  TRes call({
    Fragment$User? node,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get node;
}

class _CopyWithImpl$Query$UserCollection$usersCollection$edges<TRes>
    implements CopyWith$Query$UserCollection$usersCollection$edges<TRes> {
  _CopyWithImpl$Query$UserCollection$usersCollection$edges(
    this._instance,
    this._then,
  );

  final Query$UserCollection$usersCollection$edges _instance;

  final TRes Function(Query$UserCollection$usersCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection$usersCollection$edges(
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

class _CopyWithStubImpl$Query$UserCollection$usersCollection$edges<TRes>
    implements CopyWith$Query$UserCollection$usersCollection$edges<TRes> {
  _CopyWithStubImpl$Query$UserCollection$usersCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$User? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get node => CopyWith$Fragment$User.stub(_res);
}

class Query$UserCollection$usersCollection$pageInfo {
  Query$UserCollection$usersCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$UserCollection$usersCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$UserCollection$usersCollection$pageInfo(
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
    if (other is! Query$UserCollection$usersCollection$pageInfo ||
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

extension UtilityExtension$Query$UserCollection$usersCollection$pageInfo
    on Query$UserCollection$usersCollection$pageInfo {
  CopyWith$Query$UserCollection$usersCollection$pageInfo<
          Query$UserCollection$usersCollection$pageInfo>
      get copyWith => CopyWith$Query$UserCollection$usersCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$UserCollection$usersCollection$pageInfo<TRes> {
  factory CopyWith$Query$UserCollection$usersCollection$pageInfo(
    Query$UserCollection$usersCollection$pageInfo instance,
    TRes Function(Query$UserCollection$usersCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$UserCollection$usersCollection$pageInfo;

  factory CopyWith$Query$UserCollection$usersCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$UserCollection$usersCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$UserCollection$usersCollection$pageInfo<TRes>
    implements CopyWith$Query$UserCollection$usersCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$UserCollection$usersCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$UserCollection$usersCollection$pageInfo _instance;

  final TRes Function(Query$UserCollection$usersCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$UserCollection$usersCollection$pageInfo(
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

class _CopyWithStubImpl$Query$UserCollection$usersCollection$pageInfo<TRes>
    implements CopyWith$Query$UserCollection$usersCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$UserCollection$usersCollection$pageInfo(this._res);

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
    if (other is! Variables$Query$User || runtimeType != other.runtimeType) {
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
    this.usersCollection,
    this.$__typename = 'Query',
  });

  factory Query$User.fromJson(Map<String, dynamic> json) {
    final l$usersCollection = json['usersCollection'];
    final l$$__typename = json['__typename'];
    return Query$User(
      usersCollection: l$usersCollection == null
          ? null
          : Query$User$usersCollection.fromJson(
              (l$usersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$User$usersCollection? usersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$usersCollection = usersCollection;
    _resultData['usersCollection'] = l$usersCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$usersCollection = usersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$usersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$User || runtimeType != other.runtimeType) {
      return false;
    }
    final l$usersCollection = usersCollection;
    final lOther$usersCollection = other.usersCollection;
    if (l$usersCollection != lOther$usersCollection) {
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
    Query$User$usersCollection? usersCollection,
    String? $__typename,
  });
  CopyWith$Query$User$usersCollection<TRes> get usersCollection;
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
    Object? usersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User(
        usersCollection: usersCollection == _undefined
            ? _instance.usersCollection
            : (usersCollection as Query$User$usersCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$User$usersCollection<TRes> get usersCollection {
    final local$usersCollection = _instance.usersCollection;
    return local$usersCollection == null
        ? CopyWith$Query$User$usersCollection.stub(_then(_instance))
        : CopyWith$Query$User$usersCollection(
            local$usersCollection, (e) => call(usersCollection: e));
  }
}

class _CopyWithStubImpl$Query$User<TRes> implements CopyWith$Query$User<TRes> {
  _CopyWithStubImpl$Query$User(this._res);

  TRes _res;

  call({
    Query$User$usersCollection? usersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$User$usersCollection<TRes> get usersCollection =>
      CopyWith$Query$User$usersCollection.stub(_res);
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
        name: NameNode(value: 'usersCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Query$User$usersCollection {
  Query$User$usersCollection({
    required this.edges,
    this.$__typename = 'UsersConnection',
  });

  factory Query$User$usersCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$User$usersCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$User$usersCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$User$usersCollection$edges> edges;

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
    if (other is! Query$User$usersCollection ||
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

extension UtilityExtension$Query$User$usersCollection
    on Query$User$usersCollection {
  CopyWith$Query$User$usersCollection<Query$User$usersCollection>
      get copyWith => CopyWith$Query$User$usersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$usersCollection<TRes> {
  factory CopyWith$Query$User$usersCollection(
    Query$User$usersCollection instance,
    TRes Function(Query$User$usersCollection) then,
  ) = _CopyWithImpl$Query$User$usersCollection;

  factory CopyWith$Query$User$usersCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$User$usersCollection;

  TRes call({
    List<Query$User$usersCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$User$usersCollection$edges> Function(
              Iterable<
                  CopyWith$Query$User$usersCollection$edges<
                      Query$User$usersCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$User$usersCollection<TRes>
    implements CopyWith$Query$User$usersCollection<TRes> {
  _CopyWithImpl$Query$User$usersCollection(
    this._instance,
    this._then,
  );

  final Query$User$usersCollection _instance;

  final TRes Function(Query$User$usersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$usersCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$User$usersCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$User$usersCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$User$usersCollection$edges<
                          Query$User$usersCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$User$usersCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$User$usersCollection<TRes>
    implements CopyWith$Query$User$usersCollection<TRes> {
  _CopyWithStubImpl$Query$User$usersCollection(this._res);

  TRes _res;

  call({
    List<Query$User$usersCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$User$usersCollection$edges {
  Query$User$usersCollection$edges({
    required this.node,
    this.$__typename = 'UsersEdge',
  });

  factory Query$User$usersCollection$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$User$usersCollection$edges(
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
    if (other is! Query$User$usersCollection$edges ||
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

extension UtilityExtension$Query$User$usersCollection$edges
    on Query$User$usersCollection$edges {
  CopyWith$Query$User$usersCollection$edges<Query$User$usersCollection$edges>
      get copyWith => CopyWith$Query$User$usersCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$User$usersCollection$edges<TRes> {
  factory CopyWith$Query$User$usersCollection$edges(
    Query$User$usersCollection$edges instance,
    TRes Function(Query$User$usersCollection$edges) then,
  ) = _CopyWithImpl$Query$User$usersCollection$edges;

  factory CopyWith$Query$User$usersCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$User$usersCollection$edges;

  TRes call({
    Fragment$User? node,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get node;
}

class _CopyWithImpl$Query$User$usersCollection$edges<TRes>
    implements CopyWith$Query$User$usersCollection$edges<TRes> {
  _CopyWithImpl$Query$User$usersCollection$edges(
    this._instance,
    this._then,
  );

  final Query$User$usersCollection$edges _instance;

  final TRes Function(Query$User$usersCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$User$usersCollection$edges(
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

class _CopyWithStubImpl$Query$User$usersCollection$edges<TRes>
    implements CopyWith$Query$User$usersCollection$edges<TRes> {
  _CopyWithStubImpl$Query$User$usersCollection$edges(this._res);

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
          {required Input$UsersInsertInput input}) =>
      Variables$Mutation$CreateUser._({
        r'input': input,
      });

  Variables$Mutation$CreateUser._(this._$data);

  factory Variables$Mutation$CreateUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$UsersInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$UsersInsertInput get input =>
      (_$data['input'] as Input$UsersInsertInput);

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
    if (other is! Variables$Mutation$CreateUser ||
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

  TRes call({Input$UsersInsertInput? input});
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
          'input': (input as Input$UsersInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateUser<TRes>
    implements CopyWith$Variables$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateUser(this._res);

  TRes _res;

  call({Input$UsersInsertInput? input}) => _res;
}

class Mutation$CreateUser {
  Mutation$CreateUser({
    this.insertIntoUsersCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateUser.fromJson(Map<String, dynamic> json) {
    final l$insertIntoUsersCollection = json['insertIntoUsersCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser(
      insertIntoUsersCollection: l$insertIntoUsersCollection == null
          ? null
          : Mutation$CreateUser$insertIntoUsersCollection.fromJson(
              (l$insertIntoUsersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateUser$insertIntoUsersCollection?
      insertIntoUsersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoUsersCollection = insertIntoUsersCollection;
    _resultData['insertIntoUsersCollection'] =
        l$insertIntoUsersCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoUsersCollection = insertIntoUsersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoUsersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoUsersCollection = insertIntoUsersCollection;
    final lOther$insertIntoUsersCollection = other.insertIntoUsersCollection;
    if (l$insertIntoUsersCollection != lOther$insertIntoUsersCollection) {
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
    Mutation$CreateUser$insertIntoUsersCollection? insertIntoUsersCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateUser$insertIntoUsersCollection<TRes>
      get insertIntoUsersCollection;
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
    Object? insertIntoUsersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUser(
        insertIntoUsersCollection: insertIntoUsersCollection == _undefined
            ? _instance.insertIntoUsersCollection
            : (insertIntoUsersCollection
                as Mutation$CreateUser$insertIntoUsersCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateUser$insertIntoUsersCollection<TRes>
      get insertIntoUsersCollection {
    final local$insertIntoUsersCollection = _instance.insertIntoUsersCollection;
    return local$insertIntoUsersCollection == null
        ? CopyWith$Mutation$CreateUser$insertIntoUsersCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateUser$insertIntoUsersCollection(
            local$insertIntoUsersCollection,
            (e) => call(insertIntoUsersCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateUser<TRes>
    implements CopyWith$Mutation$CreateUser<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser(this._res);

  TRes _res;

  call({
    Mutation$CreateUser$insertIntoUsersCollection? insertIntoUsersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateUser$insertIntoUsersCollection<TRes>
      get insertIntoUsersCollection =>
          CopyWith$Mutation$CreateUser$insertIntoUsersCollection.stub(_res);
}

const documentNodeMutationCreateUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateUser'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'UsersInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoUsersCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Mutation$CreateUser$insertIntoUsersCollection {
  Mutation$CreateUser$insertIntoUsersCollection({
    required this.records,
    this.$__typename = 'UsersInsertResponse',
  });

  factory Mutation$CreateUser$insertIntoUsersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateUser$insertIntoUsersCollection(
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
    if (other is! Mutation$CreateUser$insertIntoUsersCollection ||
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

extension UtilityExtension$Mutation$CreateUser$insertIntoUsersCollection
    on Mutation$CreateUser$insertIntoUsersCollection {
  CopyWith$Mutation$CreateUser$insertIntoUsersCollection<
          Mutation$CreateUser$insertIntoUsersCollection>
      get copyWith => CopyWith$Mutation$CreateUser$insertIntoUsersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateUser$insertIntoUsersCollection<TRes> {
  factory CopyWith$Mutation$CreateUser$insertIntoUsersCollection(
    Mutation$CreateUser$insertIntoUsersCollection instance,
    TRes Function(Mutation$CreateUser$insertIntoUsersCollection) then,
  ) = _CopyWithImpl$Mutation$CreateUser$insertIntoUsersCollection;

  factory CopyWith$Mutation$CreateUser$insertIntoUsersCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateUser$insertIntoUsersCollection;

  TRes call({
    List<Fragment$User>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$User> Function(
              Iterable<CopyWith$Fragment$User<Fragment$User>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateUser$insertIntoUsersCollection<TRes>
    implements CopyWith$Mutation$CreateUser$insertIntoUsersCollection<TRes> {
  _CopyWithImpl$Mutation$CreateUser$insertIntoUsersCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateUser$insertIntoUsersCollection _instance;

  final TRes Function(Mutation$CreateUser$insertIntoUsersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateUser$insertIntoUsersCollection(
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

class _CopyWithStubImpl$Mutation$CreateUser$insertIntoUsersCollection<TRes>
    implements CopyWith$Mutation$CreateUser$insertIntoUsersCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateUser$insertIntoUsersCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteUser {
  factory Variables$Mutation$DeleteUser({required String id}) =>
      Variables$Mutation$DeleteUser._({
        r'id': id,
      });

  Variables$Mutation$DeleteUser._(this._$data);

  factory Variables$Mutation$DeleteUser.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteUser<Variables$Mutation$DeleteUser>
      get copyWith => CopyWith$Variables$Mutation$DeleteUser(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteUser ||
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

abstract class CopyWith$Variables$Mutation$DeleteUser<TRes> {
  factory CopyWith$Variables$Mutation$DeleteUser(
    Variables$Mutation$DeleteUser instance,
    TRes Function(Variables$Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteUser;

  factory CopyWith$Variables$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteUser;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteUser _instance;

  final TRes Function(Variables$Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteUser._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteUser<TRes>
    implements CopyWith$Variables$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteUser(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteUser {
  Mutation$DeleteUser({
    required this.deleteFromUsersCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteUser.fromJson(Map<String, dynamic> json) {
    final l$deleteFromUsersCollection = json['deleteFromUsersCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteUser(
      deleteFromUsersCollection:
          Mutation$DeleteUser$deleteFromUsersCollection.fromJson(
              (l$deleteFromUsersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteUser$deleteFromUsersCollection deleteFromUsersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromUsersCollection = deleteFromUsersCollection;
    _resultData['deleteFromUsersCollection'] =
        l$deleteFromUsersCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromUsersCollection = deleteFromUsersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromUsersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromUsersCollection = deleteFromUsersCollection;
    final lOther$deleteFromUsersCollection = other.deleteFromUsersCollection;
    if (l$deleteFromUsersCollection != lOther$deleteFromUsersCollection) {
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

extension UtilityExtension$Mutation$DeleteUser on Mutation$DeleteUser {
  CopyWith$Mutation$DeleteUser<Mutation$DeleteUser> get copyWith =>
      CopyWith$Mutation$DeleteUser(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteUser<TRes> {
  factory CopyWith$Mutation$DeleteUser(
    Mutation$DeleteUser instance,
    TRes Function(Mutation$DeleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteUser;

  factory CopyWith$Mutation$DeleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser;

  TRes call({
    Mutation$DeleteUser$deleteFromUsersCollection? deleteFromUsersCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<TRes>
      get deleteFromUsersCollection;
}

class _CopyWithImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser _instance;

  final TRes Function(Mutation$DeleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromUsersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteUser(
        deleteFromUsersCollection: deleteFromUsersCollection == _undefined ||
                deleteFromUsersCollection == null
            ? _instance.deleteFromUsersCollection
            : (deleteFromUsersCollection
                as Mutation$DeleteUser$deleteFromUsersCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<TRes>
      get deleteFromUsersCollection {
    final local$deleteFromUsersCollection = _instance.deleteFromUsersCollection;
    return CopyWith$Mutation$DeleteUser$deleteFromUsersCollection(
        local$deleteFromUsersCollection,
        (e) => call(deleteFromUsersCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteUser<TRes>
    implements CopyWith$Mutation$DeleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser(this._res);

  TRes _res;

  call({
    Mutation$DeleteUser$deleteFromUsersCollection? deleteFromUsersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<TRes>
      get deleteFromUsersCollection =>
          CopyWith$Mutation$DeleteUser$deleteFromUsersCollection.stub(_res);
}

const documentNodeMutationDeleteUser = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteUser'),
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
        name: NameNode(value: 'deleteFromUsersCollection'),
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
            name: NameNode(value: 'affectedCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
  fragmentDefinitionStation,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);
Mutation$DeleteUser _parserFn$Mutation$DeleteUser(Map<String, dynamic> data) =>
    Mutation$DeleteUser.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteUser = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteUser?,
);

class Options$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  Options$Mutation$DeleteUser({
    String? operationName,
    required Variables$Mutation$DeleteUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteUser>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteUser
    extends graphql.WatchQueryOptions<Mutation$DeleteUser> {
  WatchOptions$Mutation$DeleteUser({
    String? operationName,
    required Variables$Mutation$DeleteUser variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
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
          document: documentNodeMutationDeleteUser,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteUser,
        );
}

extension ClientExtension$Mutation$DeleteUser on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteUser>> mutate$DeleteUser(
          Options$Mutation$DeleteUser options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteUser> watchMutation$DeleteUser(
          WatchOptions$Mutation$DeleteUser options) =>
      this.watchMutation(options);
}

class Mutation$DeleteUser$HookResult {
  Mutation$DeleteUser$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteUser runMutation;

  final graphql.QueryResult<Mutation$DeleteUser> result;
}

Mutation$DeleteUser$HookResult useMutation$DeleteUser(
    [WidgetOptions$Mutation$DeleteUser? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteUser());
  return Mutation$DeleteUser$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteUser> useWatchMutation$DeleteUser(
        WatchOptions$Mutation$DeleteUser options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteUser
    extends graphql.MutationOptions<Mutation$DeleteUser> {
  WidgetOptions$Mutation$DeleteUser({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteUser? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteUser? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteUser>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteUser(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteUser,
          parserFn: _parserFn$Mutation$DeleteUser,
        );

  final OnMutationCompleted$Mutation$DeleteUser? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteUser
    = graphql.MultiSourceResult<Mutation$DeleteUser> Function(
  Variables$Mutation$DeleteUser, {
  Object? optimisticResult,
  Mutation$DeleteUser? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteUser = widgets.Widget Function(
  RunMutation$Mutation$DeleteUser,
  graphql.QueryResult<Mutation$DeleteUser>?,
);

class Mutation$DeleteUser$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteUser> {
  Mutation$DeleteUser$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteUser? options,
    required Builder$Mutation$DeleteUser builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteUser(),
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

class Mutation$DeleteUser$deleteFromUsersCollection {
  Mutation$DeleteUser$deleteFromUsersCollection({
    required this.affectedCount,
    required this.records,
    this.$__typename = 'UsersDeleteResponse',
  });

  factory Mutation$DeleteUser$deleteFromUsersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$affectedCount = json['affectedCount'];
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteUser$deleteFromUsersCollection(
      affectedCount: (l$affectedCount as int),
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$User.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedCount;

  final List<Fragment$User> records;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedCount = affectedCount;
    final l$records = records;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedCount,
      Object.hashAll(l$records.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteUser$deleteFromUsersCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedCount = affectedCount;
    final lOther$affectedCount = other.affectedCount;
    if (l$affectedCount != lOther$affectedCount) {
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

extension UtilityExtension$Mutation$DeleteUser$deleteFromUsersCollection
    on Mutation$DeleteUser$deleteFromUsersCollection {
  CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<
          Mutation$DeleteUser$deleteFromUsersCollection>
      get copyWith => CopyWith$Mutation$DeleteUser$deleteFromUsersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<TRes> {
  factory CopyWith$Mutation$DeleteUser$deleteFromUsersCollection(
    Mutation$DeleteUser$deleteFromUsersCollection instance,
    TRes Function(Mutation$DeleteUser$deleteFromUsersCollection) then,
  ) = _CopyWithImpl$Mutation$DeleteUser$deleteFromUsersCollection;

  factory CopyWith$Mutation$DeleteUser$deleteFromUsersCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteUser$deleteFromUsersCollection;

  TRes call({
    int? affectedCount,
    List<Fragment$User>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$User> Function(
              Iterable<CopyWith$Fragment$User<Fragment$User>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteUser$deleteFromUsersCollection<TRes>
    implements CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<TRes> {
  _CopyWithImpl$Mutation$DeleteUser$deleteFromUsersCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteUser$deleteFromUsersCollection _instance;

  final TRes Function(Mutation$DeleteUser$deleteFromUsersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedCount = _undefined,
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteUser$deleteFromUsersCollection(
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
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

class _CopyWithStubImpl$Mutation$DeleteUser$deleteFromUsersCollection<TRes>
    implements CopyWith$Mutation$DeleteUser$deleteFromUsersCollection<TRes> {
  _CopyWithStubImpl$Mutation$DeleteUser$deleteFromUsersCollection(this._res);

  TRes _res;

  call({
    int? affectedCount,
    List<Fragment$User>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$AddUserToStation {
  factory Variables$Mutation$AddUserToStation({
    required String userId,
    required String stationId,
  }) =>
      Variables$Mutation$AddUserToStation._({
        r'userId': userId,
        r'stationId': stationId,
      });

  Variables$Mutation$AddUserToStation._(this._$data);

  factory Variables$Mutation$AddUserToStation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$stationId = data['stationId'];
    result$data['stationId'] = (l$stationId as String);
    return Variables$Mutation$AddUserToStation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get stationId => (_$data['stationId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$stationId = stationId;
    result$data['stationId'] = l$stationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$AddUserToStation<
          Variables$Mutation$AddUserToStation>
      get copyWith => CopyWith$Variables$Mutation$AddUserToStation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddUserToStation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$stationId = stationId;
    return Object.hashAll([
      l$userId,
      l$stationId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddUserToStation<TRes> {
  factory CopyWith$Variables$Mutation$AddUserToStation(
    Variables$Mutation$AddUserToStation instance,
    TRes Function(Variables$Mutation$AddUserToStation) then,
  ) = _CopyWithImpl$Variables$Mutation$AddUserToStation;

  factory CopyWith$Variables$Mutation$AddUserToStation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddUserToStation;

  TRes call({
    String? userId,
    String? stationId,
  });
}

class _CopyWithImpl$Variables$Mutation$AddUserToStation<TRes>
    implements CopyWith$Variables$Mutation$AddUserToStation<TRes> {
  _CopyWithImpl$Variables$Mutation$AddUserToStation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddUserToStation _instance;

  final TRes Function(Variables$Mutation$AddUserToStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? stationId = _undefined,
  }) =>
      _then(Variables$Mutation$AddUserToStation._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (stationId != _undefined && stationId != null)
          'stationId': (stationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddUserToStation<TRes>
    implements CopyWith$Variables$Mutation$AddUserToStation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddUserToStation(this._res);

  TRes _res;

  call({
    String? userId,
    String? stationId,
  }) =>
      _res;
}

class Mutation$AddUserToStation {
  Mutation$AddUserToStation({
    this.insertIntoUserStationsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddUserToStation.fromJson(Map<String, dynamic> json) {
    final l$insertIntoUserStationsCollection =
        json['insertIntoUserStationsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$AddUserToStation(
      insertIntoUserStationsCollection: l$insertIntoUserStationsCollection ==
              null
          ? null
          : Mutation$AddUserToStation$insertIntoUserStationsCollection.fromJson(
              (l$insertIntoUserStationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddUserToStation$insertIntoUserStationsCollection?
      insertIntoUserStationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoUserStationsCollection = insertIntoUserStationsCollection;
    _resultData['insertIntoUserStationsCollection'] =
        l$insertIntoUserStationsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoUserStationsCollection = insertIntoUserStationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoUserStationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddUserToStation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoUserStationsCollection = insertIntoUserStationsCollection;
    final lOther$insertIntoUserStationsCollection =
        other.insertIntoUserStationsCollection;
    if (l$insertIntoUserStationsCollection !=
        lOther$insertIntoUserStationsCollection) {
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

extension UtilityExtension$Mutation$AddUserToStation
    on Mutation$AddUserToStation {
  CopyWith$Mutation$AddUserToStation<Mutation$AddUserToStation> get copyWith =>
      CopyWith$Mutation$AddUserToStation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddUserToStation<TRes> {
  factory CopyWith$Mutation$AddUserToStation(
    Mutation$AddUserToStation instance,
    TRes Function(Mutation$AddUserToStation) then,
  ) = _CopyWithImpl$Mutation$AddUserToStation;

  factory CopyWith$Mutation$AddUserToStation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddUserToStation;

  TRes call({
    Mutation$AddUserToStation$insertIntoUserStationsCollection?
        insertIntoUserStationsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<TRes>
      get insertIntoUserStationsCollection;
}

class _CopyWithImpl$Mutation$AddUserToStation<TRes>
    implements CopyWith$Mutation$AddUserToStation<TRes> {
  _CopyWithImpl$Mutation$AddUserToStation(
    this._instance,
    this._then,
  );

  final Mutation$AddUserToStation _instance;

  final TRes Function(Mutation$AddUserToStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoUserStationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddUserToStation(
        insertIntoUserStationsCollection: insertIntoUserStationsCollection ==
                _undefined
            ? _instance.insertIntoUserStationsCollection
            : (insertIntoUserStationsCollection
                as Mutation$AddUserToStation$insertIntoUserStationsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<TRes>
      get insertIntoUserStationsCollection {
    final local$insertIntoUserStationsCollection =
        _instance.insertIntoUserStationsCollection;
    return local$insertIntoUserStationsCollection == null
        ? CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection(
            local$insertIntoUserStationsCollection,
            (e) => call(insertIntoUserStationsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$AddUserToStation<TRes>
    implements CopyWith$Mutation$AddUserToStation<TRes> {
  _CopyWithStubImpl$Mutation$AddUserToStation(this._res);

  TRes _res;

  call({
    Mutation$AddUserToStation$insertIntoUserStationsCollection?
        insertIntoUserStationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<TRes>
      get insertIntoUserStationsCollection =>
          CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection
              .stub(_res);
}

const documentNodeMutationAddUserToStation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddUserToStation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoUserStationsCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: ListValueNode(values: [
              ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')),
                ),
                ObjectFieldNode(
                  name: NameNode(value: 'stationId'),
                  value: VariableNode(name: NameNode(value: 'stationId')),
                ),
              ])
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
                name: NameNode(value: 'UserStation'),
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
  fragmentDefinitionUserStation,
  fragmentDefinitionStation,
]);
Mutation$AddUserToStation _parserFn$Mutation$AddUserToStation(
        Map<String, dynamic> data) =>
    Mutation$AddUserToStation.fromJson(data);
typedef OnMutationCompleted$Mutation$AddUserToStation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$AddUserToStation?,
);

class Options$Mutation$AddUserToStation
    extends graphql.MutationOptions<Mutation$AddUserToStation> {
  Options$Mutation$AddUserToStation({
    String? operationName,
    required Variables$Mutation$AddUserToStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddUserToStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddUserToStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddUserToStation>? update,
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
                        : _parserFn$Mutation$AddUserToStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddUserToStation,
          parserFn: _parserFn$Mutation$AddUserToStation,
        );

  final OnMutationCompleted$Mutation$AddUserToStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddUserToStation
    extends graphql.WatchQueryOptions<Mutation$AddUserToStation> {
  WatchOptions$Mutation$AddUserToStation({
    String? operationName,
    required Variables$Mutation$AddUserToStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddUserToStation? typedOptimisticResult,
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
          document: documentNodeMutationAddUserToStation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddUserToStation,
        );
}

extension ClientExtension$Mutation$AddUserToStation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddUserToStation>>
      mutate$AddUserToStation(
              Options$Mutation$AddUserToStation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddUserToStation>
      watchMutation$AddUserToStation(
              WatchOptions$Mutation$AddUserToStation options) =>
          this.watchMutation(options);
}

class Mutation$AddUserToStation$HookResult {
  Mutation$AddUserToStation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddUserToStation runMutation;

  final graphql.QueryResult<Mutation$AddUserToStation> result;
}

Mutation$AddUserToStation$HookResult useMutation$AddUserToStation(
    [WidgetOptions$Mutation$AddUserToStation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddUserToStation());
  return Mutation$AddUserToStation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddUserToStation>
    useWatchMutation$AddUserToStation(
            WatchOptions$Mutation$AddUserToStation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddUserToStation
    extends graphql.MutationOptions<Mutation$AddUserToStation> {
  WidgetOptions$Mutation$AddUserToStation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddUserToStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddUserToStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddUserToStation>? update,
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
                        : _parserFn$Mutation$AddUserToStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddUserToStation,
          parserFn: _parserFn$Mutation$AddUserToStation,
        );

  final OnMutationCompleted$Mutation$AddUserToStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AddUserToStation
    = graphql.MultiSourceResult<Mutation$AddUserToStation> Function(
  Variables$Mutation$AddUserToStation, {
  Object? optimisticResult,
  Mutation$AddUserToStation? typedOptimisticResult,
});
typedef Builder$Mutation$AddUserToStation = widgets.Widget Function(
  RunMutation$Mutation$AddUserToStation,
  graphql.QueryResult<Mutation$AddUserToStation>?,
);

class Mutation$AddUserToStation$Widget
    extends graphql_flutter.Mutation<Mutation$AddUserToStation> {
  Mutation$AddUserToStation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddUserToStation? options,
    required Builder$Mutation$AddUserToStation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$AddUserToStation(),
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

class Mutation$AddUserToStation$insertIntoUserStationsCollection {
  Mutation$AddUserToStation$insertIntoUserStationsCollection({
    required this.records,
    this.$__typename = 'UserStationsInsertResponse',
  });

  factory Mutation$AddUserToStation$insertIntoUserStationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$AddUserToStation$insertIntoUserStationsCollection(
      records: (l$records as List<dynamic>)
          .map(
              (e) => Fragment$UserStation.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$UserStation> records;

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
    if (other is! Mutation$AddUserToStation$insertIntoUserStationsCollection ||
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

extension UtilityExtension$Mutation$AddUserToStation$insertIntoUserStationsCollection
    on Mutation$AddUserToStation$insertIntoUserStationsCollection {
  CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<
          Mutation$AddUserToStation$insertIntoUserStationsCollection>
      get copyWith =>
          CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<
    TRes> {
  factory CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection(
    Mutation$AddUserToStation$insertIntoUserStationsCollection instance,
    TRes Function(Mutation$AddUserToStation$insertIntoUserStationsCollection)
        then,
  ) = _CopyWithImpl$Mutation$AddUserToStation$insertIntoUserStationsCollection;

  factory CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddUserToStation$insertIntoUserStationsCollection;

  TRes call({
    List<Fragment$UserStation>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$UserStation> Function(
              Iterable<CopyWith$Fragment$UserStation<Fragment$UserStation>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddUserToStation$insertIntoUserStationsCollection<
        TRes>
    implements
        CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<
            TRes> {
  _CopyWithImpl$Mutation$AddUserToStation$insertIntoUserStationsCollection(
    this._instance,
    this._then,
  );

  final Mutation$AddUserToStation$insertIntoUserStationsCollection _instance;

  final TRes Function(
      Mutation$AddUserToStation$insertIntoUserStationsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddUserToStation$insertIntoUserStationsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$UserStation>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$UserStation> Function(
                  Iterable<CopyWith$Fragment$UserStation<Fragment$UserStation>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$UserStation(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$AddUserToStation$insertIntoUserStationsCollection<
        TRes>
    implements
        CopyWith$Mutation$AddUserToStation$insertIntoUserStationsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$AddUserToStation$insertIntoUserStationsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$UserStation>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$RemoveUserFromStation {
  factory Variables$Mutation$RemoveUserFromStation({
    required String userId,
    required String stationId,
  }) =>
      Variables$Mutation$RemoveUserFromStation._({
        r'userId': userId,
        r'stationId': stationId,
      });

  Variables$Mutation$RemoveUserFromStation._(this._$data);

  factory Variables$Mutation$RemoveUserFromStation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$stationId = data['stationId'];
    result$data['stationId'] = (l$stationId as String);
    return Variables$Mutation$RemoveUserFromStation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get stationId => (_$data['stationId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$stationId = stationId;
    result$data['stationId'] = l$stationId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveUserFromStation<
          Variables$Mutation$RemoveUserFromStation>
      get copyWith => CopyWith$Variables$Mutation$RemoveUserFromStation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RemoveUserFromStation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$stationId = stationId;
    return Object.hashAll([
      l$userId,
      l$stationId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveUserFromStation<TRes> {
  factory CopyWith$Variables$Mutation$RemoveUserFromStation(
    Variables$Mutation$RemoveUserFromStation instance,
    TRes Function(Variables$Mutation$RemoveUserFromStation) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveUserFromStation;

  factory CopyWith$Variables$Mutation$RemoveUserFromStation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveUserFromStation;

  TRes call({
    String? userId,
    String? stationId,
  });
}

class _CopyWithImpl$Variables$Mutation$RemoveUserFromStation<TRes>
    implements CopyWith$Variables$Mutation$RemoveUserFromStation<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveUserFromStation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveUserFromStation _instance;

  final TRes Function(Variables$Mutation$RemoveUserFromStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? stationId = _undefined,
  }) =>
      _then(Variables$Mutation$RemoveUserFromStation._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (stationId != _undefined && stationId != null)
          'stationId': (stationId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RemoveUserFromStation<TRes>
    implements CopyWith$Variables$Mutation$RemoveUserFromStation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveUserFromStation(this._res);

  TRes _res;

  call({
    String? userId,
    String? stationId,
  }) =>
      _res;
}

class Mutation$RemoveUserFromStation {
  Mutation$RemoveUserFromStation({
    required this.deleteFromUserStationsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RemoveUserFromStation.fromJson(Map<String, dynamic> json) {
    final l$deleteFromUserStationsCollection =
        json['deleteFromUserStationsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveUserFromStation(
      deleteFromUserStationsCollection:
          Mutation$RemoveUserFromStation$deleteFromUserStationsCollection
              .fromJson(
                  (l$deleteFromUserStationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveUserFromStation$deleteFromUserStationsCollection
      deleteFromUserStationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromUserStationsCollection = deleteFromUserStationsCollection;
    _resultData['deleteFromUserStationsCollection'] =
        l$deleteFromUserStationsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromUserStationsCollection = deleteFromUserStationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromUserStationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveUserFromStation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromUserStationsCollection = deleteFromUserStationsCollection;
    final lOther$deleteFromUserStationsCollection =
        other.deleteFromUserStationsCollection;
    if (l$deleteFromUserStationsCollection !=
        lOther$deleteFromUserStationsCollection) {
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

extension UtilityExtension$Mutation$RemoveUserFromStation
    on Mutation$RemoveUserFromStation {
  CopyWith$Mutation$RemoveUserFromStation<Mutation$RemoveUserFromStation>
      get copyWith => CopyWith$Mutation$RemoveUserFromStation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveUserFromStation<TRes> {
  factory CopyWith$Mutation$RemoveUserFromStation(
    Mutation$RemoveUserFromStation instance,
    TRes Function(Mutation$RemoveUserFromStation) then,
  ) = _CopyWithImpl$Mutation$RemoveUserFromStation;

  factory CopyWith$Mutation$RemoveUserFromStation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveUserFromStation;

  TRes call({
    Mutation$RemoveUserFromStation$deleteFromUserStationsCollection?
        deleteFromUserStationsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<TRes>
      get deleteFromUserStationsCollection;
}

class _CopyWithImpl$Mutation$RemoveUserFromStation<TRes>
    implements CopyWith$Mutation$RemoveUserFromStation<TRes> {
  _CopyWithImpl$Mutation$RemoveUserFromStation(
    this._instance,
    this._then,
  );

  final Mutation$RemoveUserFromStation _instance;

  final TRes Function(Mutation$RemoveUserFromStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromUserStationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveUserFromStation(
        deleteFromUserStationsCollection: deleteFromUserStationsCollection ==
                    _undefined ||
                deleteFromUserStationsCollection == null
            ? _instance.deleteFromUserStationsCollection
            : (deleteFromUserStationsCollection
                as Mutation$RemoveUserFromStation$deleteFromUserStationsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<TRes>
      get deleteFromUserStationsCollection {
    final local$deleteFromUserStationsCollection =
        _instance.deleteFromUserStationsCollection;
    return CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
        local$deleteFromUserStationsCollection,
        (e) => call(deleteFromUserStationsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveUserFromStation<TRes>
    implements CopyWith$Mutation$RemoveUserFromStation<TRes> {
  _CopyWithStubImpl$Mutation$RemoveUserFromStation(this._res);

  TRes _res;

  call({
    Mutation$RemoveUserFromStation$deleteFromUserStationsCollection?
        deleteFromUserStationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<TRes>
      get deleteFromUserStationsCollection =>
          CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection
              .stub(_res);
}

const documentNodeMutationRemoveUserFromStation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RemoveUserFromStation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'stationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteFromUserStationsCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'userId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'userId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'stationId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'stationId')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'records'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'UserStation'),
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
  fragmentDefinitionUserStation,
  fragmentDefinitionStation,
]);
Mutation$RemoveUserFromStation _parserFn$Mutation$RemoveUserFromStation(
        Map<String, dynamic> data) =>
    Mutation$RemoveUserFromStation.fromJson(data);
typedef OnMutationCompleted$Mutation$RemoveUserFromStation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$RemoveUserFromStation?,
);

class Options$Mutation$RemoveUserFromStation
    extends graphql.MutationOptions<Mutation$RemoveUserFromStation> {
  Options$Mutation$RemoveUserFromStation({
    String? operationName,
    required Variables$Mutation$RemoveUserFromStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RemoveUserFromStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RemoveUserFromStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$RemoveUserFromStation>? update,
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
                        : _parserFn$Mutation$RemoveUserFromStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRemoveUserFromStation,
          parserFn: _parserFn$Mutation$RemoveUserFromStation,
        );

  final OnMutationCompleted$Mutation$RemoveUserFromStation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RemoveUserFromStation
    extends graphql.WatchQueryOptions<Mutation$RemoveUserFromStation> {
  WatchOptions$Mutation$RemoveUserFromStation({
    String? operationName,
    required Variables$Mutation$RemoveUserFromStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RemoveUserFromStation? typedOptimisticResult,
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
          document: documentNodeMutationRemoveUserFromStation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RemoveUserFromStation,
        );
}

extension ClientExtension$Mutation$RemoveUserFromStation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RemoveUserFromStation>>
      mutate$RemoveUserFromStation(
              Options$Mutation$RemoveUserFromStation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$RemoveUserFromStation>
      watchMutation$RemoveUserFromStation(
              WatchOptions$Mutation$RemoveUserFromStation options) =>
          this.watchMutation(options);
}

class Mutation$RemoveUserFromStation$HookResult {
  Mutation$RemoveUserFromStation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$RemoveUserFromStation runMutation;

  final graphql.QueryResult<Mutation$RemoveUserFromStation> result;
}

Mutation$RemoveUserFromStation$HookResult useMutation$RemoveUserFromStation(
    [WidgetOptions$Mutation$RemoveUserFromStation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RemoveUserFromStation());
  return Mutation$RemoveUserFromStation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RemoveUserFromStation>
    useWatchMutation$RemoveUserFromStation(
            WatchOptions$Mutation$RemoveUserFromStation options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$RemoveUserFromStation
    extends graphql.MutationOptions<Mutation$RemoveUserFromStation> {
  WidgetOptions$Mutation$RemoveUserFromStation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RemoveUserFromStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RemoveUserFromStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$RemoveUserFromStation>? update,
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
                        : _parserFn$Mutation$RemoveUserFromStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRemoveUserFromStation,
          parserFn: _parserFn$Mutation$RemoveUserFromStation,
        );

  final OnMutationCompleted$Mutation$RemoveUserFromStation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RemoveUserFromStation
    = graphql.MultiSourceResult<Mutation$RemoveUserFromStation> Function(
  Variables$Mutation$RemoveUserFromStation, {
  Object? optimisticResult,
  Mutation$RemoveUserFromStation? typedOptimisticResult,
});
typedef Builder$Mutation$RemoveUserFromStation = widgets.Widget Function(
  RunMutation$Mutation$RemoveUserFromStation,
  graphql.QueryResult<Mutation$RemoveUserFromStation>?,
);

class Mutation$RemoveUserFromStation$Widget
    extends graphql_flutter.Mutation<Mutation$RemoveUserFromStation> {
  Mutation$RemoveUserFromStation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RemoveUserFromStation? options,
    required Builder$Mutation$RemoveUserFromStation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$RemoveUserFromStation(),
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

class Mutation$RemoveUserFromStation$deleteFromUserStationsCollection {
  Mutation$RemoveUserFromStation$deleteFromUserStationsCollection({
    required this.affectedCount,
    required this.records,
    this.$__typename = 'UserStationsDeleteResponse',
  });

  factory Mutation$RemoveUserFromStation$deleteFromUserStationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$affectedCount = json['affectedCount'];
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
      affectedCount: (l$affectedCount as int),
      records: (l$records as List<dynamic>)
          .map(
              (e) => Fragment$UserStation.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedCount;

  final List<Fragment$UserStation> records;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedCount = affectedCount;
    final l$records = records;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedCount,
      Object.hashAll(l$records.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$RemoveUserFromStation$deleteFromUserStationsCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedCount = affectedCount;
    final lOther$affectedCount = other.affectedCount;
    if (l$affectedCount != lOther$affectedCount) {
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

extension UtilityExtension$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection
    on Mutation$RemoveUserFromStation$deleteFromUserStationsCollection {
  CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<
          Mutation$RemoveUserFromStation$deleteFromUserStationsCollection>
      get copyWith =>
          CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<
    TRes> {
  factory CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
    Mutation$RemoveUserFromStation$deleteFromUserStationsCollection instance,
    TRes Function(
            Mutation$RemoveUserFromStation$deleteFromUserStationsCollection)
        then,
  ) = _CopyWithImpl$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection;

  factory CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection;

  TRes call({
    int? affectedCount,
    List<Fragment$UserStation>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$UserStation> Function(
              Iterable<CopyWith$Fragment$UserStation<Fragment$UserStation>>)
          _fn);
}

class _CopyWithImpl$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<
        TRes>
    implements
        CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<
            TRes> {
  _CopyWithImpl$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
    this._instance,
    this._then,
  );

  final Mutation$RemoveUserFromStation$deleteFromUserStationsCollection
      _instance;

  final TRes Function(
      Mutation$RemoveUserFromStation$deleteFromUserStationsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedCount = _undefined,
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$UserStation>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$UserStation> Function(
                  Iterable<CopyWith$Fragment$UserStation<Fragment$UserStation>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$UserStation(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<
        TRes>
    implements
        CopyWith$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveUserFromStation$deleteFromUserStationsCollection(
      this._res);

  TRes _res;

  call({
    int? affectedCount,
    List<Fragment$UserStation>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$AddUserToRole {
  factory Variables$Mutation$AddUserToRole({
    required String userId,
    required String roleId,
  }) =>
      Variables$Mutation$AddUserToRole._({
        r'userId': userId,
        r'roleId': roleId,
      });

  Variables$Mutation$AddUserToRole._(this._$data);

  factory Variables$Mutation$AddUserToRole.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$roleId = data['roleId'];
    result$data['roleId'] = (l$roleId as String);
    return Variables$Mutation$AddUserToRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get roleId => (_$data['roleId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$roleId = roleId;
    result$data['roleId'] = l$roleId;
    return result$data;
  }

  CopyWith$Variables$Mutation$AddUserToRole<Variables$Mutation$AddUserToRole>
      get copyWith => CopyWith$Variables$Mutation$AddUserToRole(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddUserToRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$roleId = roleId;
    final lOther$roleId = other.roleId;
    if (l$roleId != lOther$roleId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$roleId = roleId;
    return Object.hashAll([
      l$userId,
      l$roleId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddUserToRole<TRes> {
  factory CopyWith$Variables$Mutation$AddUserToRole(
    Variables$Mutation$AddUserToRole instance,
    TRes Function(Variables$Mutation$AddUserToRole) then,
  ) = _CopyWithImpl$Variables$Mutation$AddUserToRole;

  factory CopyWith$Variables$Mutation$AddUserToRole.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddUserToRole;

  TRes call({
    String? userId,
    String? roleId,
  });
}

class _CopyWithImpl$Variables$Mutation$AddUserToRole<TRes>
    implements CopyWith$Variables$Mutation$AddUserToRole<TRes> {
  _CopyWithImpl$Variables$Mutation$AddUserToRole(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddUserToRole _instance;

  final TRes Function(Variables$Mutation$AddUserToRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? roleId = _undefined,
  }) =>
      _then(Variables$Mutation$AddUserToRole._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (roleId != _undefined && roleId != null)
          'roleId': (roleId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddUserToRole<TRes>
    implements CopyWith$Variables$Mutation$AddUserToRole<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddUserToRole(this._res);

  TRes _res;

  call({
    String? userId,
    String? roleId,
  }) =>
      _res;
}

class Mutation$AddUserToRole {
  Mutation$AddUserToRole({
    this.insertIntoUserRolesCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddUserToRole.fromJson(Map<String, dynamic> json) {
    final l$insertIntoUserRolesCollection =
        json['insertIntoUserRolesCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$AddUserToRole(
      insertIntoUserRolesCollection: l$insertIntoUserRolesCollection == null
          ? null
          : Mutation$AddUserToRole$insertIntoUserRolesCollection.fromJson(
              (l$insertIntoUserRolesCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddUserToRole$insertIntoUserRolesCollection?
      insertIntoUserRolesCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoUserRolesCollection = insertIntoUserRolesCollection;
    _resultData['insertIntoUserRolesCollection'] =
        l$insertIntoUserRolesCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoUserRolesCollection = insertIntoUserRolesCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoUserRolesCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddUserToRole || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoUserRolesCollection = insertIntoUserRolesCollection;
    final lOther$insertIntoUserRolesCollection =
        other.insertIntoUserRolesCollection;
    if (l$insertIntoUserRolesCollection !=
        lOther$insertIntoUserRolesCollection) {
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

extension UtilityExtension$Mutation$AddUserToRole on Mutation$AddUserToRole {
  CopyWith$Mutation$AddUserToRole<Mutation$AddUserToRole> get copyWith =>
      CopyWith$Mutation$AddUserToRole(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddUserToRole<TRes> {
  factory CopyWith$Mutation$AddUserToRole(
    Mutation$AddUserToRole instance,
    TRes Function(Mutation$AddUserToRole) then,
  ) = _CopyWithImpl$Mutation$AddUserToRole;

  factory CopyWith$Mutation$AddUserToRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddUserToRole;

  TRes call({
    Mutation$AddUserToRole$insertIntoUserRolesCollection?
        insertIntoUserRolesCollection,
    String? $__typename,
  });
  CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<TRes>
      get insertIntoUserRolesCollection;
}

class _CopyWithImpl$Mutation$AddUserToRole<TRes>
    implements CopyWith$Mutation$AddUserToRole<TRes> {
  _CopyWithImpl$Mutation$AddUserToRole(
    this._instance,
    this._then,
  );

  final Mutation$AddUserToRole _instance;

  final TRes Function(Mutation$AddUserToRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoUserRolesCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddUserToRole(
        insertIntoUserRolesCollection:
            insertIntoUserRolesCollection == _undefined
                ? _instance.insertIntoUserRolesCollection
                : (insertIntoUserRolesCollection
                    as Mutation$AddUserToRole$insertIntoUserRolesCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<TRes>
      get insertIntoUserRolesCollection {
    final local$insertIntoUserRolesCollection =
        _instance.insertIntoUserRolesCollection;
    return local$insertIntoUserRolesCollection == null
        ? CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection(
            local$insertIntoUserRolesCollection,
            (e) => call(insertIntoUserRolesCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$AddUserToRole<TRes>
    implements CopyWith$Mutation$AddUserToRole<TRes> {
  _CopyWithStubImpl$Mutation$AddUserToRole(this._res);

  TRes _res;

  call({
    Mutation$AddUserToRole$insertIntoUserRolesCollection?
        insertIntoUserRolesCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<TRes>
      get insertIntoUserRolesCollection =>
          CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection.stub(
              _res);
}

const documentNodeMutationAddUserToRole = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddUserToRole'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roleId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoUserRolesCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: ListValueNode(values: [
              ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'userId'),
                  value: VariableNode(name: NameNode(value: 'userId')),
                ),
                ObjectFieldNode(
                  name: NameNode(value: 'roleId'),
                  value: VariableNode(name: NameNode(value: 'roleId')),
                ),
              ])
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
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);
Mutation$AddUserToRole _parserFn$Mutation$AddUserToRole(
        Map<String, dynamic> data) =>
    Mutation$AddUserToRole.fromJson(data);
typedef OnMutationCompleted$Mutation$AddUserToRole = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$AddUserToRole?,
);

class Options$Mutation$AddUserToRole
    extends graphql.MutationOptions<Mutation$AddUserToRole> {
  Options$Mutation$AddUserToRole({
    String? operationName,
    required Variables$Mutation$AddUserToRole variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddUserToRole? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddUserToRole? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddUserToRole>? update,
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
                        : _parserFn$Mutation$AddUserToRole(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddUserToRole,
          parserFn: _parserFn$Mutation$AddUserToRole,
        );

  final OnMutationCompleted$Mutation$AddUserToRole? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddUserToRole
    extends graphql.WatchQueryOptions<Mutation$AddUserToRole> {
  WatchOptions$Mutation$AddUserToRole({
    String? operationName,
    required Variables$Mutation$AddUserToRole variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddUserToRole? typedOptimisticResult,
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
          document: documentNodeMutationAddUserToRole,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddUserToRole,
        );
}

extension ClientExtension$Mutation$AddUserToRole on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddUserToRole>> mutate$AddUserToRole(
          Options$Mutation$AddUserToRole options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddUserToRole> watchMutation$AddUserToRole(
          WatchOptions$Mutation$AddUserToRole options) =>
      this.watchMutation(options);
}

class Mutation$AddUserToRole$HookResult {
  Mutation$AddUserToRole$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddUserToRole runMutation;

  final graphql.QueryResult<Mutation$AddUserToRole> result;
}

Mutation$AddUserToRole$HookResult useMutation$AddUserToRole(
    [WidgetOptions$Mutation$AddUserToRole? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddUserToRole());
  return Mutation$AddUserToRole$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddUserToRole> useWatchMutation$AddUserToRole(
        WatchOptions$Mutation$AddUserToRole options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddUserToRole
    extends graphql.MutationOptions<Mutation$AddUserToRole> {
  WidgetOptions$Mutation$AddUserToRole({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddUserToRole? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddUserToRole? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddUserToRole>? update,
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
                        : _parserFn$Mutation$AddUserToRole(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddUserToRole,
          parserFn: _parserFn$Mutation$AddUserToRole,
        );

  final OnMutationCompleted$Mutation$AddUserToRole? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AddUserToRole
    = graphql.MultiSourceResult<Mutation$AddUserToRole> Function(
  Variables$Mutation$AddUserToRole, {
  Object? optimisticResult,
  Mutation$AddUserToRole? typedOptimisticResult,
});
typedef Builder$Mutation$AddUserToRole = widgets.Widget Function(
  RunMutation$Mutation$AddUserToRole,
  graphql.QueryResult<Mutation$AddUserToRole>?,
);

class Mutation$AddUserToRole$Widget
    extends graphql_flutter.Mutation<Mutation$AddUserToRole> {
  Mutation$AddUserToRole$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddUserToRole? options,
    required Builder$Mutation$AddUserToRole builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$AddUserToRole(),
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

class Mutation$AddUserToRole$insertIntoUserRolesCollection {
  Mutation$AddUserToRole$insertIntoUserRolesCollection({
    required this.records,
    this.$__typename = 'UserRolesInsertResponse',
  });

  factory Mutation$AddUserToRole$insertIntoUserRolesCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$AddUserToRole$insertIntoUserRolesCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$UserRole.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$UserRole> records;

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
    if (other is! Mutation$AddUserToRole$insertIntoUserRolesCollection ||
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

extension UtilityExtension$Mutation$AddUserToRole$insertIntoUserRolesCollection
    on Mutation$AddUserToRole$insertIntoUserRolesCollection {
  CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<
          Mutation$AddUserToRole$insertIntoUserRolesCollection>
      get copyWith =>
          CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<
    TRes> {
  factory CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection(
    Mutation$AddUserToRole$insertIntoUserRolesCollection instance,
    TRes Function(Mutation$AddUserToRole$insertIntoUserRolesCollection) then,
  ) = _CopyWithImpl$Mutation$AddUserToRole$insertIntoUserRolesCollection;

  factory CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddUserToRole$insertIntoUserRolesCollection;

  TRes call({
    List<Fragment$UserRole>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$UserRole> Function(
              Iterable<CopyWith$Fragment$UserRole<Fragment$UserRole>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddUserToRole$insertIntoUserRolesCollection<TRes>
    implements
        CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<TRes> {
  _CopyWithImpl$Mutation$AddUserToRole$insertIntoUserRolesCollection(
    this._instance,
    this._then,
  );

  final Mutation$AddUserToRole$insertIntoUserRolesCollection _instance;

  final TRes Function(Mutation$AddUserToRole$insertIntoUserRolesCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddUserToRole$insertIntoUserRolesCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$UserRole>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$UserRole> Function(
                  Iterable<CopyWith$Fragment$UserRole<Fragment$UserRole>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$UserRole(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$AddUserToRole$insertIntoUserRolesCollection<
        TRes>
    implements
        CopyWith$Mutation$AddUserToRole$insertIntoUserRolesCollection<TRes> {
  _CopyWithStubImpl$Mutation$AddUserToRole$insertIntoUserRolesCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$UserRole>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$RemoveUserFromRole {
  factory Variables$Mutation$RemoveUserFromRole({
    required String userId,
    required String roleId,
  }) =>
      Variables$Mutation$RemoveUserFromRole._({
        r'userId': userId,
        r'roleId': roleId,
      });

  Variables$Mutation$RemoveUserFromRole._(this._$data);

  factory Variables$Mutation$RemoveUserFromRole.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$userId = data['userId'];
    result$data['userId'] = (l$userId as String);
    final l$roleId = data['roleId'];
    result$data['roleId'] = (l$roleId as String);
    return Variables$Mutation$RemoveUserFromRole._(result$data);
  }

  Map<String, dynamic> _$data;

  String get userId => (_$data['userId'] as String);

  String get roleId => (_$data['roleId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$userId = userId;
    result$data['userId'] = l$userId;
    final l$roleId = roleId;
    result$data['roleId'] = l$roleId;
    return result$data;
  }

  CopyWith$Variables$Mutation$RemoveUserFromRole<
          Variables$Mutation$RemoveUserFromRole>
      get copyWith => CopyWith$Variables$Mutation$RemoveUserFromRole(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RemoveUserFromRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$roleId = roleId;
    final lOther$roleId = other.roleId;
    if (l$roleId != lOther$roleId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$userId = userId;
    final l$roleId = roleId;
    return Object.hashAll([
      l$userId,
      l$roleId,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$RemoveUserFromRole<TRes> {
  factory CopyWith$Variables$Mutation$RemoveUserFromRole(
    Variables$Mutation$RemoveUserFromRole instance,
    TRes Function(Variables$Mutation$RemoveUserFromRole) then,
  ) = _CopyWithImpl$Variables$Mutation$RemoveUserFromRole;

  factory CopyWith$Variables$Mutation$RemoveUserFromRole.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RemoveUserFromRole;

  TRes call({
    String? userId,
    String? roleId,
  });
}

class _CopyWithImpl$Variables$Mutation$RemoveUserFromRole<TRes>
    implements CopyWith$Variables$Mutation$RemoveUserFromRole<TRes> {
  _CopyWithImpl$Variables$Mutation$RemoveUserFromRole(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RemoveUserFromRole _instance;

  final TRes Function(Variables$Mutation$RemoveUserFromRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? userId = _undefined,
    Object? roleId = _undefined,
  }) =>
      _then(Variables$Mutation$RemoveUserFromRole._({
        ..._instance._$data,
        if (userId != _undefined && userId != null)
          'userId': (userId as String),
        if (roleId != _undefined && roleId != null)
          'roleId': (roleId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RemoveUserFromRole<TRes>
    implements CopyWith$Variables$Mutation$RemoveUserFromRole<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RemoveUserFromRole(this._res);

  TRes _res;

  call({
    String? userId,
    String? roleId,
  }) =>
      _res;
}

class Mutation$RemoveUserFromRole {
  Mutation$RemoveUserFromRole({
    required this.deleteFromUserRolesCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RemoveUserFromRole.fromJson(Map<String, dynamic> json) {
    final l$deleteFromUserRolesCollection =
        json['deleteFromUserRolesCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveUserFromRole(
      deleteFromUserRolesCollection:
          Mutation$RemoveUserFromRole$deleteFromUserRolesCollection.fromJson(
              (l$deleteFromUserRolesCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RemoveUserFromRole$deleteFromUserRolesCollection
      deleteFromUserRolesCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromUserRolesCollection = deleteFromUserRolesCollection;
    _resultData['deleteFromUserRolesCollection'] =
        l$deleteFromUserRolesCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromUserRolesCollection = deleteFromUserRolesCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromUserRolesCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveUserFromRole ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromUserRolesCollection = deleteFromUserRolesCollection;
    final lOther$deleteFromUserRolesCollection =
        other.deleteFromUserRolesCollection;
    if (l$deleteFromUserRolesCollection !=
        lOther$deleteFromUserRolesCollection) {
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

extension UtilityExtension$Mutation$RemoveUserFromRole
    on Mutation$RemoveUserFromRole {
  CopyWith$Mutation$RemoveUserFromRole<Mutation$RemoveUserFromRole>
      get copyWith => CopyWith$Mutation$RemoveUserFromRole(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveUserFromRole<TRes> {
  factory CopyWith$Mutation$RemoveUserFromRole(
    Mutation$RemoveUserFromRole instance,
    TRes Function(Mutation$RemoveUserFromRole) then,
  ) = _CopyWithImpl$Mutation$RemoveUserFromRole;

  factory CopyWith$Mutation$RemoveUserFromRole.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RemoveUserFromRole;

  TRes call({
    Mutation$RemoveUserFromRole$deleteFromUserRolesCollection?
        deleteFromUserRolesCollection,
    String? $__typename,
  });
  CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<TRes>
      get deleteFromUserRolesCollection;
}

class _CopyWithImpl$Mutation$RemoveUserFromRole<TRes>
    implements CopyWith$Mutation$RemoveUserFromRole<TRes> {
  _CopyWithImpl$Mutation$RemoveUserFromRole(
    this._instance,
    this._then,
  );

  final Mutation$RemoveUserFromRole _instance;

  final TRes Function(Mutation$RemoveUserFromRole) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromUserRolesCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveUserFromRole(
        deleteFromUserRolesCollection: deleteFromUserRolesCollection ==
                    _undefined ||
                deleteFromUserRolesCollection == null
            ? _instance.deleteFromUserRolesCollection
            : (deleteFromUserRolesCollection
                as Mutation$RemoveUserFromRole$deleteFromUserRolesCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<TRes>
      get deleteFromUserRolesCollection {
    final local$deleteFromUserRolesCollection =
        _instance.deleteFromUserRolesCollection;
    return CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
        local$deleteFromUserRolesCollection,
        (e) => call(deleteFromUserRolesCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$RemoveUserFromRole<TRes>
    implements CopyWith$Mutation$RemoveUserFromRole<TRes> {
  _CopyWithStubImpl$Mutation$RemoveUserFromRole(this._res);

  TRes _res;

  call({
    Mutation$RemoveUserFromRole$deleteFromUserRolesCollection?
        deleteFromUserRolesCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<TRes>
      get deleteFromUserRolesCollection =>
          CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection
              .stub(_res);
}

const documentNodeMutationRemoveUserFromRole = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RemoveUserFromRole'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'userId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'roleId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteFromUserRolesCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'userId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'userId')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'roleId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'roleId')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affectedCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'records'),
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
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
]);
Mutation$RemoveUserFromRole _parserFn$Mutation$RemoveUserFromRole(
        Map<String, dynamic> data) =>
    Mutation$RemoveUserFromRole.fromJson(data);
typedef OnMutationCompleted$Mutation$RemoveUserFromRole = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$RemoveUserFromRole?,
);

class Options$Mutation$RemoveUserFromRole
    extends graphql.MutationOptions<Mutation$RemoveUserFromRole> {
  Options$Mutation$RemoveUserFromRole({
    String? operationName,
    required Variables$Mutation$RemoveUserFromRole variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RemoveUserFromRole? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RemoveUserFromRole? onCompleted,
    graphql.OnMutationUpdate<Mutation$RemoveUserFromRole>? update,
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
                        : _parserFn$Mutation$RemoveUserFromRole(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRemoveUserFromRole,
          parserFn: _parserFn$Mutation$RemoveUserFromRole,
        );

  final OnMutationCompleted$Mutation$RemoveUserFromRole? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RemoveUserFromRole
    extends graphql.WatchQueryOptions<Mutation$RemoveUserFromRole> {
  WatchOptions$Mutation$RemoveUserFromRole({
    String? operationName,
    required Variables$Mutation$RemoveUserFromRole variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RemoveUserFromRole? typedOptimisticResult,
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
          document: documentNodeMutationRemoveUserFromRole,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RemoveUserFromRole,
        );
}

extension ClientExtension$Mutation$RemoveUserFromRole on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RemoveUserFromRole>>
      mutate$RemoveUserFromRole(
              Options$Mutation$RemoveUserFromRole options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$RemoveUserFromRole>
      watchMutation$RemoveUserFromRole(
              WatchOptions$Mutation$RemoveUserFromRole options) =>
          this.watchMutation(options);
}

class Mutation$RemoveUserFromRole$HookResult {
  Mutation$RemoveUserFromRole$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$RemoveUserFromRole runMutation;

  final graphql.QueryResult<Mutation$RemoveUserFromRole> result;
}

Mutation$RemoveUserFromRole$HookResult useMutation$RemoveUserFromRole(
    [WidgetOptions$Mutation$RemoveUserFromRole? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$RemoveUserFromRole());
  return Mutation$RemoveUserFromRole$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$RemoveUserFromRole>
    useWatchMutation$RemoveUserFromRole(
            WatchOptions$Mutation$RemoveUserFromRole options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$RemoveUserFromRole
    extends graphql.MutationOptions<Mutation$RemoveUserFromRole> {
  WidgetOptions$Mutation$RemoveUserFromRole({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RemoveUserFromRole? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RemoveUserFromRole? onCompleted,
    graphql.OnMutationUpdate<Mutation$RemoveUserFromRole>? update,
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
                        : _parserFn$Mutation$RemoveUserFromRole(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRemoveUserFromRole,
          parserFn: _parserFn$Mutation$RemoveUserFromRole,
        );

  final OnMutationCompleted$Mutation$RemoveUserFromRole? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$RemoveUserFromRole
    = graphql.MultiSourceResult<Mutation$RemoveUserFromRole> Function(
  Variables$Mutation$RemoveUserFromRole, {
  Object? optimisticResult,
  Mutation$RemoveUserFromRole? typedOptimisticResult,
});
typedef Builder$Mutation$RemoveUserFromRole = widgets.Widget Function(
  RunMutation$Mutation$RemoveUserFromRole,
  graphql.QueryResult<Mutation$RemoveUserFromRole>?,
);

class Mutation$RemoveUserFromRole$Widget
    extends graphql_flutter.Mutation<Mutation$RemoveUserFromRole> {
  Mutation$RemoveUserFromRole$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$RemoveUserFromRole? options,
    required Builder$Mutation$RemoveUserFromRole builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$RemoveUserFromRole(),
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

class Mutation$RemoveUserFromRole$deleteFromUserRolesCollection {
  Mutation$RemoveUserFromRole$deleteFromUserRolesCollection({
    required this.affectedCount,
    required this.records,
    this.$__typename = 'UserRolesDeleteResponse',
  });

  factory Mutation$RemoveUserFromRole$deleteFromUserRolesCollection.fromJson(
      Map<String, dynamic> json) {
    final l$affectedCount = json['affectedCount'];
    final l$records = json['records'];
    final l$$__typename = json['__typename'];
    return Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
      affectedCount: (l$affectedCount as int),
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$UserRole.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedCount;

  final List<Fragment$UserRole> records;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$records = records;
    _resultData['records'] = l$records.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedCount = affectedCount;
    final l$records = records;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedCount,
      Object.hashAll(l$records.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RemoveUserFromRole$deleteFromUserRolesCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affectedCount = affectedCount;
    final lOther$affectedCount = other.affectedCount;
    if (l$affectedCount != lOther$affectedCount) {
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

extension UtilityExtension$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection
    on Mutation$RemoveUserFromRole$deleteFromUserRolesCollection {
  CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<
          Mutation$RemoveUserFromRole$deleteFromUserRolesCollection>
      get copyWith =>
          CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<
    TRes> {
  factory CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
    Mutation$RemoveUserFromRole$deleteFromUserRolesCollection instance,
    TRes Function(Mutation$RemoveUserFromRole$deleteFromUserRolesCollection)
        then,
  ) = _CopyWithImpl$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection;

  factory CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection;

  TRes call({
    int? affectedCount,
    List<Fragment$UserRole>? records,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$UserRole> Function(
              Iterable<CopyWith$Fragment$UserRole<Fragment$UserRole>>)
          _fn);
}

class _CopyWithImpl$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<
        TRes>
    implements
        CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<
            TRes> {
  _CopyWithImpl$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
    this._instance,
    this._then,
  );

  final Mutation$RemoveUserFromRole$deleteFromUserRolesCollection _instance;

  final TRes Function(Mutation$RemoveUserFromRole$deleteFromUserRolesCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedCount = _undefined,
    Object? records = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$UserRole>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$UserRole> Function(
                  Iterable<CopyWith$Fragment$UserRole<Fragment$UserRole>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$UserRole(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<
        TRes>
    implements
        CopyWith$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$RemoveUserFromRole$deleteFromUserRolesCollection(
      this._res);

  TRes _res;

  call({
    int? affectedCount,
    List<Fragment$UserRole>? records,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateUser {
  factory Variables$Mutation$UpdateUser({
    required String id,
    required Input$UsersUpdateInput user,
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
        Input$UsersUpdateInput.fromJson((l$user as Map<String, dynamic>));
    return Variables$Mutation$UpdateUser._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UsersUpdateInput get user => (_$data['user'] as Input$UsersUpdateInput);

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
    if (other is! Variables$Mutation$UpdateUser ||
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
    Input$UsersUpdateInput? user,
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
          'user': (user as Input$UsersUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateUser<TRes>
    implements CopyWith$Variables$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    String? id,
    Input$UsersUpdateInput? user,
  }) =>
      _res;
}

class Mutation$UpdateUser {
  Mutation$UpdateUser({
    required this.updateUsersCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateUser.fromJson(Map<String, dynamic> json) {
    final l$updateUsersCollection = json['updateUsersCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser(
      updateUsersCollection: Mutation$UpdateUser$updateUsersCollection.fromJson(
          (l$updateUsersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateUser$updateUsersCollection updateUsersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateUsersCollection = updateUsersCollection;
    _resultData['updateUsersCollection'] = l$updateUsersCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateUsersCollection = updateUsersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateUsersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateUser || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateUsersCollection = updateUsersCollection;
    final lOther$updateUsersCollection = other.updateUsersCollection;
    if (l$updateUsersCollection != lOther$updateUsersCollection) {
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
    Mutation$UpdateUser$updateUsersCollection? updateUsersCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateUser$updateUsersCollection<TRes>
      get updateUsersCollection;
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
    Object? updateUsersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser(
        updateUsersCollection:
            updateUsersCollection == _undefined || updateUsersCollection == null
                ? _instance.updateUsersCollection
                : (updateUsersCollection
                    as Mutation$UpdateUser$updateUsersCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateUser$updateUsersCollection<TRes>
      get updateUsersCollection {
    final local$updateUsersCollection = _instance.updateUsersCollection;
    return CopyWith$Mutation$UpdateUser$updateUsersCollection(
        local$updateUsersCollection, (e) => call(updateUsersCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateUser<TRes>
    implements CopyWith$Mutation$UpdateUser<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser(this._res);

  TRes _res;

  call({
    Mutation$UpdateUser$updateUsersCollection? updateUsersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateUser$updateUsersCollection<TRes>
      get updateUsersCollection =>
          CopyWith$Mutation$UpdateUser$updateUsersCollection.stub(_res);
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
          name: NameNode(value: 'UsersUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateUsersCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Mutation$UpdateUser$updateUsersCollection {
  Mutation$UpdateUser$updateUsersCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'UsersUpdateResponse',
  });

  factory Mutation$UpdateUser$updateUsersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateUser$updateUsersCollection(
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
    if (other is! Mutation$UpdateUser$updateUsersCollection ||
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

extension UtilityExtension$Mutation$UpdateUser$updateUsersCollection
    on Mutation$UpdateUser$updateUsersCollection {
  CopyWith$Mutation$UpdateUser$updateUsersCollection<
          Mutation$UpdateUser$updateUsersCollection>
      get copyWith => CopyWith$Mutation$UpdateUser$updateUsersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateUser$updateUsersCollection<TRes> {
  factory CopyWith$Mutation$UpdateUser$updateUsersCollection(
    Mutation$UpdateUser$updateUsersCollection instance,
    TRes Function(Mutation$UpdateUser$updateUsersCollection) then,
  ) = _CopyWithImpl$Mutation$UpdateUser$updateUsersCollection;

  factory CopyWith$Mutation$UpdateUser$updateUsersCollection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateUser$updateUsersCollection;

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

class _CopyWithImpl$Mutation$UpdateUser$updateUsersCollection<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUsersCollection<TRes> {
  _CopyWithImpl$Mutation$UpdateUser$updateUsersCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateUser$updateUsersCollection _instance;

  final TRes Function(Mutation$UpdateUser$updateUsersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateUser$updateUsersCollection(
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

class _CopyWithStubImpl$Mutation$UpdateUser$updateUsersCollection<TRes>
    implements CopyWith$Mutation$UpdateUser$updateUsersCollection<TRes> {
  _CopyWithStubImpl$Mutation$UpdateUser$updateUsersCollection(this._res);

  TRes _res;

  call({
    List<Fragment$User>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
