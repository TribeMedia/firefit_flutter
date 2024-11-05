import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$OrderType {
  Fragment$OrderType({
    required this.id,
    required this.name,
    required this.key,
    this.description,
    this.schema,
    this.iconUrl,
    this.coverUrl,
    this.$__typename = 'OrderType',
  });

  factory Fragment$OrderType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$description = json['description'];
    final l$schema = json['schema'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderType(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      description: (l$description as String?),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

  final String? description;

  final Map<String, dynamic>? schema;

  final String? iconUrl;

  final String? coverUrl;

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
    final l$schema = schema;
    _resultData['schema'] = l$schema == null ? null : jsonFieldToJson(l$schema);
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
    final l$name = name;
    final l$key = key;
    final l$description = description;
    final l$schema = schema;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$description,
      l$schema,
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
    if (!(other is Fragment$OrderType) || runtimeType != other.runtimeType) {
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
    final l$schema = schema;
    final lOther$schema = other.schema;
    if (l$schema != lOther$schema) {
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

extension UtilityExtension$Fragment$OrderType on Fragment$OrderType {
  CopyWith$Fragment$OrderType<Fragment$OrderType> get copyWith =>
      CopyWith$Fragment$OrderType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$OrderType<TRes> {
  factory CopyWith$Fragment$OrderType(
    Fragment$OrderType instance,
    TRes Function(Fragment$OrderType) then,
  ) = _CopyWithImpl$Fragment$OrderType;

  factory CopyWith$Fragment$OrderType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderType;

  TRes call({
    String? id,
    String? name,
    String? key,
    String? description,
    Map<String, dynamic>? schema,
    String? iconUrl,
    String? coverUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$OrderType<TRes>
    implements CopyWith$Fragment$OrderType<TRes> {
  _CopyWithImpl$Fragment$OrderType(
    this._instance,
    this._then,
  );

  final Fragment$OrderType _instance;

  final TRes Function(Fragment$OrderType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? description = _undefined,
    Object? schema = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$OrderType<TRes>
    implements CopyWith$Fragment$OrderType<TRes> {
  _CopyWithStubImpl$Fragment$OrderType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    String? description,
    Map<String, dynamic>? schema,
    String? iconUrl,
    String? coverUrl,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionOrderType = FragmentDefinitionNode(
  name: NameNode(value: 'OrderType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderType'),
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
      name: NameNode(value: 'schema'),
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
const documentNodeFragmentOrderType = DocumentNode(definitions: [
  fragmentDefinitionOrderType,
]);

extension ClientExtension$Fragment$OrderType on graphql.GraphQLClient {
  void writeFragment$OrderType({
    required Fragment$OrderType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OrderType',
            document: documentNodeFragmentOrderType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OrderType? readFragment$OrderType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OrderType',
          document: documentNodeFragmentOrderType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OrderType.fromJson(result);
  }
}

class Fragment$Order {
  Fragment$Order({
    required this.id,
    required this.orderTypeId,
    required this.orderType,
    required this.userId,
    required this.user,
    required this.orderStatusId,
    required this.orderStatus,
    this.orderItemCollection,
    this.data,
    this.notes,
    required this.units,
    required this.pricePerUnit,
    this.updatedAt,
    this.$__typename = 'Order',
  });

  factory Fragment$Order.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$orderTypeId = json['orderTypeId'];
    final l$orderType = json['orderType'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$orderStatusId = json['orderStatusId'];
    final l$orderStatus = json['orderStatus'];
    final l$orderItemCollection = json['orderItemCollection'];
    final l$data = json['data'];
    final l$notes = json['notes'];
    final l$units = json['units'];
    final l$pricePerUnit = json['pricePerUnit'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Order(
      id: (l$id as String),
      orderTypeId: (l$orderTypeId as String),
      orderType:
          Fragment$OrderType.fromJson((l$orderType as Map<String, dynamic>)),
      userId: (l$userId as String),
      user: Fragment$Order$user.fromJson((l$user as Map<String, dynamic>)),
      orderStatusId: (l$orderStatusId as String),
      orderStatus: Fragment$Order$orderStatus.fromJson(
          (l$orderStatus as Map<String, dynamic>)),
      orderItemCollection: l$orderItemCollection == null
          ? null
          : Fragment$Order$orderItemCollection.fromJson(
              (l$orderItemCollection as Map<String, dynamic>)),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      notes: (l$notes as String?),
      units: (l$units as int),
      pricePerUnit: (l$pricePerUnit as num).toDouble(),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String orderTypeId;

  final Fragment$OrderType orderType;

  final String userId;

  final Fragment$Order$user user;

  final String orderStatusId;

  final Fragment$Order$orderStatus orderStatus;

  final Fragment$Order$orderItemCollection? orderItemCollection;

  final Map<String, dynamic>? data;

  final String? notes;

  final int units;

  final double pricePerUnit;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$orderTypeId = orderTypeId;
    _resultData['orderTypeId'] = l$orderTypeId;
    final l$orderType = orderType;
    _resultData['orderType'] = l$orderType.toJson();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$orderStatusId = orderStatusId;
    _resultData['orderStatusId'] = l$orderStatusId;
    final l$orderStatus = orderStatus;
    _resultData['orderStatus'] = l$orderStatus.toJson();
    final l$orderItemCollection = orderItemCollection;
    _resultData['orderItemCollection'] = l$orderItemCollection?.toJson();
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$units = units;
    _resultData['units'] = l$units;
    final l$pricePerUnit = pricePerUnit;
    _resultData['pricePerUnit'] = l$pricePerUnit;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$orderTypeId = orderTypeId;
    final l$orderType = orderType;
    final l$userId = userId;
    final l$user = user;
    final l$orderStatusId = orderStatusId;
    final l$orderStatus = orderStatus;
    final l$orderItemCollection = orderItemCollection;
    final l$data = data;
    final l$notes = notes;
    final l$units = units;
    final l$pricePerUnit = pricePerUnit;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$orderTypeId,
      l$orderType,
      l$userId,
      l$user,
      l$orderStatusId,
      l$orderStatus,
      l$orderItemCollection,
      l$data,
      l$notes,
      l$units,
      l$pricePerUnit,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Order) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$orderTypeId = orderTypeId;
    final lOther$orderTypeId = other.orderTypeId;
    if (l$orderTypeId != lOther$orderTypeId) {
      return false;
    }
    final l$orderType = orderType;
    final lOther$orderType = other.orderType;
    if (l$orderType != lOther$orderType) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$orderStatusId = orderStatusId;
    final lOther$orderStatusId = other.orderStatusId;
    if (l$orderStatusId != lOther$orderStatusId) {
      return false;
    }
    final l$orderStatus = orderStatus;
    final lOther$orderStatus = other.orderStatus;
    if (l$orderStatus != lOther$orderStatus) {
      return false;
    }
    final l$orderItemCollection = orderItemCollection;
    final lOther$orderItemCollection = other.orderItemCollection;
    if (l$orderItemCollection != lOther$orderItemCollection) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$units = units;
    final lOther$units = other.units;
    if (l$units != lOther$units) {
      return false;
    }
    final l$pricePerUnit = pricePerUnit;
    final lOther$pricePerUnit = other.pricePerUnit;
    if (l$pricePerUnit != lOther$pricePerUnit) {
      return false;
    }
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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

extension UtilityExtension$Fragment$Order on Fragment$Order {
  CopyWith$Fragment$Order<Fragment$Order> get copyWith =>
      CopyWith$Fragment$Order(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Order<TRes> {
  factory CopyWith$Fragment$Order(
    Fragment$Order instance,
    TRes Function(Fragment$Order) then,
  ) = _CopyWithImpl$Fragment$Order;

  factory CopyWith$Fragment$Order.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order;

  TRes call({
    String? id,
    String? orderTypeId,
    Fragment$OrderType? orderType,
    String? userId,
    Fragment$Order$user? user,
    String? orderStatusId,
    Fragment$Order$orderStatus? orderStatus,
    Fragment$Order$orderItemCollection? orderItemCollection,
    Map<String, dynamic>? data,
    String? notes,
    int? units,
    double? pricePerUnit,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Fragment$OrderType<TRes> get orderType;
  CopyWith$Fragment$Order$user<TRes> get user;
  CopyWith$Fragment$Order$orderStatus<TRes> get orderStatus;
  CopyWith$Fragment$Order$orderItemCollection<TRes> get orderItemCollection;
}

class _CopyWithImpl$Fragment$Order<TRes>
    implements CopyWith$Fragment$Order<TRes> {
  _CopyWithImpl$Fragment$Order(
    this._instance,
    this._then,
  );

  final Fragment$Order _instance;

  final TRes Function(Fragment$Order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? orderTypeId = _undefined,
    Object? orderType = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? orderStatusId = _undefined,
    Object? orderStatus = _undefined,
    Object? orderItemCollection = _undefined,
    Object? data = _undefined,
    Object? notes = _undefined,
    Object? units = _undefined,
    Object? pricePerUnit = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        orderTypeId: orderTypeId == _undefined || orderTypeId == null
            ? _instance.orderTypeId
            : (orderTypeId as String),
        orderType: orderType == _undefined || orderType == null
            ? _instance.orderType
            : (orderType as Fragment$OrderType),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$Order$user),
        orderStatusId: orderStatusId == _undefined || orderStatusId == null
            ? _instance.orderStatusId
            : (orderStatusId as String),
        orderStatus: orderStatus == _undefined || orderStatus == null
            ? _instance.orderStatus
            : (orderStatus as Fragment$Order$orderStatus),
        orderItemCollection: orderItemCollection == _undefined
            ? _instance.orderItemCollection
            : (orderItemCollection as Fragment$Order$orderItemCollection?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        units: units == _undefined || units == null
            ? _instance.units
            : (units as int),
        pricePerUnit: pricePerUnit == _undefined || pricePerUnit == null
            ? _instance.pricePerUnit
            : (pricePerUnit as double),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderType<TRes> get orderType {
    final local$orderType = _instance.orderType;
    return CopyWith$Fragment$OrderType(
        local$orderType, (e) => call(orderType: e));
  }

  CopyWith$Fragment$Order$user<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$Order$user(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$Order$orderStatus<TRes> get orderStatus {
    final local$orderStatus = _instance.orderStatus;
    return CopyWith$Fragment$Order$orderStatus(
        local$orderStatus, (e) => call(orderStatus: e));
  }

  CopyWith$Fragment$Order$orderItemCollection<TRes> get orderItemCollection {
    final local$orderItemCollection = _instance.orderItemCollection;
    return local$orderItemCollection == null
        ? CopyWith$Fragment$Order$orderItemCollection.stub(_then(_instance))
        : CopyWith$Fragment$Order$orderItemCollection(
            local$orderItemCollection, (e) => call(orderItemCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Order<TRes>
    implements CopyWith$Fragment$Order<TRes> {
  _CopyWithStubImpl$Fragment$Order(this._res);

  TRes _res;

  call({
    String? id,
    String? orderTypeId,
    Fragment$OrderType? orderType,
    String? userId,
    Fragment$Order$user? user,
    String? orderStatusId,
    Fragment$Order$orderStatus? orderStatus,
    Fragment$Order$orderItemCollection? orderItemCollection,
    Map<String, dynamic>? data,
    String? notes,
    int? units,
    double? pricePerUnit,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderType<TRes> get orderType =>
      CopyWith$Fragment$OrderType.stub(_res);

  CopyWith$Fragment$Order$user<TRes> get user =>
      CopyWith$Fragment$Order$user.stub(_res);

  CopyWith$Fragment$Order$orderStatus<TRes> get orderStatus =>
      CopyWith$Fragment$Order$orderStatus.stub(_res);

  CopyWith$Fragment$Order$orderItemCollection<TRes> get orderItemCollection =>
      CopyWith$Fragment$Order$orderItemCollection.stub(_res);
}

const fragmentDefinitionOrder = FragmentDefinitionNode(
  name: NameNode(value: 'Order'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
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
      name: NameNode(value: 'orderTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'orderType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'OrderType'),
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
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
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
      name: NameNode(value: 'orderStatusId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'orderStatus'),
      alias: null,
      arguments: [],
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
    ),
    FieldNode(
      name: NameNode(value: 'orderItemCollection'),
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
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'orderItemMenuItemCollection'),
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
                            FieldNode(
                              name: NameNode(value: 'orderItemId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'menuItemId'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: null,
                            ),
                            FieldNode(
                              name: NameNode(value: 'menuItem'),
                              alias: null,
                              arguments: [],
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
                                  name: NameNode(value: 'menuId'),
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
                                  name: NameNode(value: 'data'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null,
                                ),
                                FieldNode(
                                  name: NameNode(value: 'notes'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null,
                                ),
                                FieldNode(
                                  name: NameNode(value: 'imageUrl'),
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
                                  name: NameNode(value: 'price'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null,
                                ),
                                FieldNode(
                                  name: NameNode(value: 'isAvailable'),
                                  alias: null,
                                  arguments: [],
                                  directives: [],
                                  selectionSet: null,
                                ),
                                FieldNode(
                                  name: NameNode(value: 'categories'),
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
                              name: NameNode(value: 'notes'),
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
                FieldNode(
                  name: NameNode(value: 'units'),
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
    FieldNode(
      name: NameNode(value: 'data'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'notes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'units'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'pricePerUnit'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentOrder = DocumentNode(definitions: [
  fragmentDefinitionOrder,
  fragmentDefinitionOrderType,
]);

extension ClientExtension$Fragment$Order on graphql.GraphQLClient {
  void writeFragment$Order({
    required Fragment$Order data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Order',
            document: documentNodeFragmentOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Order? readFragment$Order({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Order',
          document: documentNodeFragmentOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Order.fromJson(result);
  }
}

class Fragment$Order$user {
  Fragment$Order$user({
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

  factory Fragment$Order$user.fromJson(Map<String, dynamic> json) {
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
    return Fragment$Order$user(
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
          : Fragment$Order$user$userRoleCollection.fromJson(
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

  final Fragment$Order$user$userRoleCollection? userRoleCollection;

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
    if (!(other is Fragment$Order$user) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Order$user on Fragment$Order$user {
  CopyWith$Fragment$Order$user<Fragment$Order$user> get copyWith =>
      CopyWith$Fragment$Order$user(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Order$user<TRes> {
  factory CopyWith$Fragment$Order$user(
    Fragment$Order$user instance,
    TRes Function(Fragment$Order$user) then,
  ) = _CopyWithImpl$Fragment$Order$user;

  factory CopyWith$Fragment$Order$user.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$user;

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
    Fragment$Order$user$userRoleCollection? userRoleCollection,
    String? $__typename,
  });
  CopyWith$Fragment$Order$user$userRoleCollection<TRes> get userRoleCollection;
}

class _CopyWithImpl$Fragment$Order$user<TRes>
    implements CopyWith$Fragment$Order$user<TRes> {
  _CopyWithImpl$Fragment$Order$user(
    this._instance,
    this._then,
  );

  final Fragment$Order$user _instance;

  final TRes Function(Fragment$Order$user) _then;

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
      _then(Fragment$Order$user(
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
            : (userRoleCollection as Fragment$Order$user$userRoleCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$user$userRoleCollection<TRes> get userRoleCollection {
    final local$userRoleCollection = _instance.userRoleCollection;
    return local$userRoleCollection == null
        ? CopyWith$Fragment$Order$user$userRoleCollection.stub(_then(_instance))
        : CopyWith$Fragment$Order$user$userRoleCollection(
            local$userRoleCollection, (e) => call(userRoleCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$user<TRes>
    implements CopyWith$Fragment$Order$user<TRes> {
  _CopyWithStubImpl$Fragment$Order$user(this._res);

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
    Fragment$Order$user$userRoleCollection? userRoleCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$user$userRoleCollection<TRes>
      get userRoleCollection =>
          CopyWith$Fragment$Order$user$userRoleCollection.stub(_res);
}

class Fragment$Order$user$userRoleCollection {
  Fragment$Order$user$userRoleCollection({
    required this.edges,
    this.$__typename = 'UserRoleConnection',
  });

  factory Fragment$Order$user$userRoleCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$user$userRoleCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Order$user$userRoleCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Order$user$userRoleCollection$edges> edges;

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
    if (!(other is Fragment$Order$user$userRoleCollection) ||
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

extension UtilityExtension$Fragment$Order$user$userRoleCollection
    on Fragment$Order$user$userRoleCollection {
  CopyWith$Fragment$Order$user$userRoleCollection<
          Fragment$Order$user$userRoleCollection>
      get copyWith => CopyWith$Fragment$Order$user$userRoleCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$user$userRoleCollection<TRes> {
  factory CopyWith$Fragment$Order$user$userRoleCollection(
    Fragment$Order$user$userRoleCollection instance,
    TRes Function(Fragment$Order$user$userRoleCollection) then,
  ) = _CopyWithImpl$Fragment$Order$user$userRoleCollection;

  factory CopyWith$Fragment$Order$user$userRoleCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$user$userRoleCollection;

  TRes call({
    List<Fragment$Order$user$userRoleCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$user$userRoleCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$user$userRoleCollection$edges<
                      Fragment$Order$user$userRoleCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$Order$user$userRoleCollection<TRes>
    implements CopyWith$Fragment$Order$user$userRoleCollection<TRes> {
  _CopyWithImpl$Fragment$Order$user$userRoleCollection(
    this._instance,
    this._then,
  );

  final Fragment$Order$user$userRoleCollection _instance;

  final TRes Function(Fragment$Order$user$userRoleCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$user$userRoleCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Order$user$userRoleCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Order$user$userRoleCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Order$user$userRoleCollection$edges<
                          Fragment$Order$user$userRoleCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$Order$user$userRoleCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Order$user$userRoleCollection<TRes>
    implements CopyWith$Fragment$Order$user$userRoleCollection<TRes> {
  _CopyWithStubImpl$Fragment$Order$user$userRoleCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order$user$userRoleCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$Order$user$userRoleCollection$edges {
  Fragment$Order$user$userRoleCollection$edges({
    required this.node,
    this.$__typename = 'UserRoleEdge',
  });

  factory Fragment$Order$user$userRoleCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$user$userRoleCollection$edges(
      node: Fragment$Order$user$userRoleCollection$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Order$user$userRoleCollection$edges$node node;

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
    if (!(other is Fragment$Order$user$userRoleCollection$edges) ||
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

extension UtilityExtension$Fragment$Order$user$userRoleCollection$edges
    on Fragment$Order$user$userRoleCollection$edges {
  CopyWith$Fragment$Order$user$userRoleCollection$edges<
          Fragment$Order$user$userRoleCollection$edges>
      get copyWith => CopyWith$Fragment$Order$user$userRoleCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$user$userRoleCollection$edges<TRes> {
  factory CopyWith$Fragment$Order$user$userRoleCollection$edges(
    Fragment$Order$user$userRoleCollection$edges instance,
    TRes Function(Fragment$Order$user$userRoleCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges;

  factory CopyWith$Fragment$Order$user$userRoleCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges;

  TRes call({
    Fragment$Order$user$userRoleCollection$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order$user$userRoleCollection$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges<TRes>
    implements CopyWith$Fragment$Order$user$userRoleCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Order$user$userRoleCollection$edges _instance;

  final TRes Function(Fragment$Order$user$userRoleCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$user$userRoleCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Order$user$userRoleCollection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$user$userRoleCollection$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Order$user$userRoleCollection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges<TRes>
    implements CopyWith$Fragment$Order$user$userRoleCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order$user$userRoleCollection$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$user$userRoleCollection$edges$node<TRes> get node =>
      CopyWith$Fragment$Order$user$userRoleCollection$edges$node.stub(_res);
}

class Fragment$Order$user$userRoleCollection$edges$node {
  Fragment$Order$user$userRoleCollection$edges$node({
    required this.id,
    required this.roleId,
    required this.role,
    required this.userId,
    this.$__typename = 'UserRole',
  });

  factory Fragment$Order$user$userRoleCollection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$roleId = json['roleId'];
    final l$role = json['role'];
    final l$userId = json['userId'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$user$userRoleCollection$edges$node(
      id: (l$id as String),
      roleId: (l$roleId as String),
      role: Fragment$Order$user$userRoleCollection$edges$node$role.fromJson(
          (l$role as Map<String, dynamic>)),
      userId: (l$userId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String roleId;

  final Fragment$Order$user$userRoleCollection$edges$node$role role;

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
    if (!(other is Fragment$Order$user$userRoleCollection$edges$node) ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Order$user$userRoleCollection$edges$node
    on Fragment$Order$user$userRoleCollection$edges$node {
  CopyWith$Fragment$Order$user$userRoleCollection$edges$node<
          Fragment$Order$user$userRoleCollection$edges$node>
      get copyWith =>
          CopyWith$Fragment$Order$user$userRoleCollection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$user$userRoleCollection$edges$node<
    TRes> {
  factory CopyWith$Fragment$Order$user$userRoleCollection$edges$node(
    Fragment$Order$user$userRoleCollection$edges$node instance,
    TRes Function(Fragment$Order$user$userRoleCollection$edges$node) then,
  ) = _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges$node;

  factory CopyWith$Fragment$Order$user$userRoleCollection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges$node;

  TRes call({
    String? id,
    String? roleId,
    Fragment$Order$user$userRoleCollection$edges$node$role? role,
    String? userId,
    String? $__typename,
  });
  CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<TRes>
      get role;
}

class _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges$node<TRes>
    implements
        CopyWith$Fragment$Order$user$userRoleCollection$edges$node<TRes> {
  _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$Order$user$userRoleCollection$edges$node _instance;

  final TRes Function(Fragment$Order$user$userRoleCollection$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? roleId = _undefined,
    Object? role = _undefined,
    Object? userId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$user$userRoleCollection$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        roleId: roleId == _undefined || roleId == null
            ? _instance.roleId
            : (roleId as String),
        role: role == _undefined || role == null
            ? _instance.role
            : (role as Fragment$Order$user$userRoleCollection$edges$node$role),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<TRes>
      get role {
    final local$role = _instance.role;
    return CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role(
        local$role, (e) => call(role: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges$node<TRes>
    implements
        CopyWith$Fragment$Order$user$userRoleCollection$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges$node(
      this._res);

  TRes _res;

  call({
    String? id,
    String? roleId,
    Fragment$Order$user$userRoleCollection$edges$node$role? role,
    String? userId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<TRes>
      get role =>
          CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role.stub(
              _res);
}

class Fragment$Order$user$userRoleCollection$edges$node$role {
  Fragment$Order$user$userRoleCollection$edges$node$role({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    this.$__typename = 'Role',
  });

  factory Fragment$Order$user$userRoleCollection$edges$node$role.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$user$userRoleCollection$edges$node$role(
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
    if (!(other is Fragment$Order$user$userRoleCollection$edges$node$role) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Order$user$userRoleCollection$edges$node$role
    on Fragment$Order$user$userRoleCollection$edges$node$role {
  CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<
          Fragment$Order$user$userRoleCollection$edges$node$role>
      get copyWith =>
          CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<
    TRes> {
  factory CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role(
    Fragment$Order$user$userRoleCollection$edges$node$role instance,
    TRes Function(Fragment$Order$user$userRoleCollection$edges$node$role) then,
  ) = _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges$node$role;

  factory CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges$node$role;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges$node$role<TRes>
    implements
        CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<TRes> {
  _CopyWithImpl$Fragment$Order$user$userRoleCollection$edges$node$role(
    this._instance,
    this._then,
  );

  final Fragment$Order$user$userRoleCollection$edges$node$role _instance;

  final TRes Function(Fragment$Order$user$userRoleCollection$edges$node$role)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$user$userRoleCollection$edges$node$role(
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

class _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges$node$role<
        TRes>
    implements
        CopyWith$Fragment$Order$user$userRoleCollection$edges$node$role<TRes> {
  _CopyWithStubImpl$Fragment$Order$user$userRoleCollection$edges$node$role(
      this._res);

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

class Fragment$Order$orderStatus {
  Fragment$Order$orderStatus({
    required this.id,
    required this.name,
    required this.key,
    this.$__typename = 'OrderStatus',
  });

  factory Fragment$Order$orderStatus.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderStatus(
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
    if (!(other is Fragment$Order$orderStatus) ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Order$orderStatus
    on Fragment$Order$orderStatus {
  CopyWith$Fragment$Order$orderStatus<Fragment$Order$orderStatus>
      get copyWith => CopyWith$Fragment$Order$orderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderStatus<TRes> {
  factory CopyWith$Fragment$Order$orderStatus(
    Fragment$Order$orderStatus instance,
    TRes Function(Fragment$Order$orderStatus) then,
  ) = _CopyWithImpl$Fragment$Order$orderStatus;

  factory CopyWith$Fragment$Order$orderStatus.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderStatus;

  TRes call({
    String? id,
    String? name,
    String? key,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Order$orderStatus<TRes>
    implements CopyWith$Fragment$Order$orderStatus<TRes> {
  _CopyWithImpl$Fragment$Order$orderStatus(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderStatus _instance;

  final TRes Function(Fragment$Order$orderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderStatus(
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

class _CopyWithStubImpl$Fragment$Order$orderStatus<TRes>
    implements CopyWith$Fragment$Order$orderStatus<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderStatus(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Order$orderItemCollection {
  Fragment$Order$orderItemCollection({
    required this.edges,
    this.$__typename = 'OrderItemConnection',
  });

  factory Fragment$Order$orderItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Order$orderItemCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Order$orderItemCollection$edges> edges;

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
    if (!(other is Fragment$Order$orderItemCollection) ||
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

extension UtilityExtension$Fragment$Order$orderItemCollection
    on Fragment$Order$orderItemCollection {
  CopyWith$Fragment$Order$orderItemCollection<
          Fragment$Order$orderItemCollection>
      get copyWith => CopyWith$Fragment$Order$orderItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection<TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection(
    Fragment$Order$orderItemCollection instance,
    TRes Function(Fragment$Order$orderItemCollection) then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection;

  factory CopyWith$Fragment$Order$orderItemCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection;

  TRes call({
    List<Fragment$Order$orderItemCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$orderItemCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$orderItemCollection$edges<
                      Fragment$Order$orderItemCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$Order$orderItemCollection<TRes>
    implements CopyWith$Fragment$Order$orderItemCollection<TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection _instance;

  final TRes Function(Fragment$Order$orderItemCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Order$orderItemCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Order$orderItemCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Order$orderItemCollection$edges<
                          Fragment$Order$orderItemCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$Order$orderItemCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection<TRes>
    implements CopyWith$Fragment$Order$orderItemCollection<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order$orderItemCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$Order$orderItemCollection$edges {
  Fragment$Order$orderItemCollection$edges({
    required this.node,
    this.$__typename = 'OrderItemEdge',
  });

  factory Fragment$Order$orderItemCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges(
      node: Fragment$Order$orderItemCollection$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Order$orderItemCollection$edges$node node;

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
    if (!(other is Fragment$Order$orderItemCollection$edges) ||
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges
    on Fragment$Order$orderItemCollection$edges {
  CopyWith$Fragment$Order$orderItemCollection$edges<
          Fragment$Order$orderItemCollection$edges>
      get copyWith => CopyWith$Fragment$Order$orderItemCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges<TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges(
    Fragment$Order$orderItemCollection$edges instance,
    TRes Function(Fragment$Order$orderItemCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges;

  factory CopyWith$Fragment$Order$orderItemCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges;

  TRes call({
    Fragment$Order$orderItemCollection$edges$node? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order$orderItemCollection$edges$node<TRes> get node;
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderItemCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges _instance;

  final TRes Function(Fragment$Order$orderItemCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderItemCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Order$orderItemCollection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$orderItemCollection$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Order$orderItemCollection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderItemCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order$orderItemCollection$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$orderItemCollection$edges$node<TRes> get node =>
      CopyWith$Fragment$Order$orderItemCollection$edges$node.stub(_res);
}

class Fragment$Order$orderItemCollection$edges$node {
  Fragment$Order$orderItemCollection$edges$node({
    required this.id,
    this.orderItemMenuItemCollection,
    required this.units,
    this.$__typename = 'OrderItem',
  });

  factory Fragment$Order$orderItemCollection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$orderItemMenuItemCollection = json['orderItemMenuItemCollection'];
    final l$units = json['units'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node(
      id: (l$id as String),
      orderItemMenuItemCollection: l$orderItemMenuItemCollection == null
          ? null
          : Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection
              .fromJson(
                  (l$orderItemMenuItemCollection as Map<String, dynamic>)),
      units: (l$units as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection?
      orderItemMenuItemCollection;

  final int units;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$orderItemMenuItemCollection = orderItemMenuItemCollection;
    _resultData['orderItemMenuItemCollection'] =
        l$orderItemMenuItemCollection?.toJson();
    final l$units = units;
    _resultData['units'] = l$units;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$orderItemMenuItemCollection = orderItemMenuItemCollection;
    final l$units = units;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$orderItemMenuItemCollection,
      l$units,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Order$orderItemCollection$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$orderItemMenuItemCollection = orderItemMenuItemCollection;
    final lOther$orderItemMenuItemCollection =
        other.orderItemMenuItemCollection;
    if (l$orderItemMenuItemCollection != lOther$orderItemMenuItemCollection) {
      return false;
    }
    final l$units = units;
    final lOther$units = other.units;
    if (l$units != lOther$units) {
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges$node
    on Fragment$Order$orderItemCollection$edges$node {
  CopyWith$Fragment$Order$orderItemCollection$edges$node<
          Fragment$Order$orderItemCollection$edges$node>
      get copyWith => CopyWith$Fragment$Order$orderItemCollection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges$node<TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges$node(
    Fragment$Order$orderItemCollection$edges$node instance,
    TRes Function(Fragment$Order$orderItemCollection$edges$node) then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node;

  factory CopyWith$Fragment$Order$orderItemCollection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node;

  TRes call({
    String? id,
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection?
        orderItemMenuItemCollection,
    int? units,
    String? $__typename,
  });
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
      TRes> get orderItemMenuItemCollection;
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node<TRes>
    implements CopyWith$Fragment$Order$orderItemCollection$edges$node<TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges$node _instance;

  final TRes Function(Fragment$Order$orderItemCollection$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? orderItemMenuItemCollection = _undefined,
    Object? units = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderItemCollection$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        orderItemMenuItemCollection: orderItemMenuItemCollection == _undefined
            ? _instance.orderItemMenuItemCollection
            : (orderItemMenuItemCollection
                as Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection?),
        units: units == _undefined || units == null
            ? _instance.units
            : (units as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
      TRes> get orderItemMenuItemCollection {
    final local$orderItemMenuItemCollection =
        _instance.orderItemMenuItemCollection;
    return local$orderItemMenuItemCollection == null
        ? CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection
            .stub(_then(_instance))
        : CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
            local$orderItemMenuItemCollection,
            (e) => call(orderItemMenuItemCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node<TRes>
    implements CopyWith$Fragment$Order$orderItemCollection$edges$node<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection?
        orderItemMenuItemCollection,
    int? units,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
          TRes>
      get orderItemMenuItemCollection =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection
              .stub(_res);
}

class Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection {
  Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection({
    required this.edges,
    this.$__typename = 'OrderItemMenuItemConnection',
  });

  factory Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>
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
            is Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection) ||
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection
    on Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection {
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection>
      get copyWith =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
    TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection
        instance,
    TRes Function(
            Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection)
        then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection;

  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection;

  TRes call({
    List<Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>?
        edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
                      Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
            TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection
      _instance;

  final TRes Function(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
                          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection<
            TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>?
        edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges {
  Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges({
    required this.node,
    this.$__typename = 'OrderItemMenuItemEdge',
  });

  factory Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
      node:
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node
              .fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node
      node;

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
            is Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges) ||
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges
    on Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges {
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>
      get copyWith =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
    TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges
        instance,
    TRes Function(
            Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges)
        then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges;

  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges;

  TRes call({
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node?
        node,
    String? $__typename,
  });
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
      TRes> get node;
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
            TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges
      _instance;

  final TRes Function(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node
                as Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
      TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
            TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node?
        node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
          TRes>
      get node =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node
              .stub(_res);
}

class Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node {
  Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node({
    required this.orderItemId,
    required this.menuItemId,
    required this.menuItem,
    this.notes,
    this.$__typename = 'OrderItemMenuItem',
  });

  factory Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$orderItemId = json['orderItemId'];
    final l$menuItemId = json['menuItemId'];
    final l$menuItem = json['menuItem'];
    final l$notes = json['notes'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
      orderItemId: (l$orderItemId as String),
      menuItemId: (l$menuItemId as String),
      menuItem:
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem
              .fromJson((l$menuItem as Map<String, dynamic>)),
      notes: (l$notes as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String orderItemId;

  final String menuItemId;

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem
      menuItem;

  final String? notes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderItemId = orderItemId;
    _resultData['orderItemId'] = l$orderItemId;
    final l$menuItemId = menuItemId;
    _resultData['menuItemId'] = l$menuItemId;
    final l$menuItem = menuItem;
    _resultData['menuItem'] = l$menuItem.toJson();
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderItemId = orderItemId;
    final l$menuItemId = menuItemId;
    final l$menuItem = menuItem;
    final l$notes = notes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderItemId,
      l$menuItemId,
      l$menuItem,
      l$notes,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderItemId = orderItemId;
    final lOther$orderItemId = other.orderItemId;
    if (l$orderItemId != lOther$orderItemId) {
      return false;
    }
    final l$menuItemId = menuItemId;
    final lOther$menuItemId = other.menuItemId;
    if (l$menuItemId != lOther$menuItemId) {
      return false;
    }
    final l$menuItem = menuItem;
    final lOther$menuItem = other.menuItem;
    if (l$menuItem != lOther$menuItem) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node
    on Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node {
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node>
      get copyWith =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
    TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node
        instance,
    TRes Function(
            Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node)
        then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node;

  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node;

  TRes call({
    String? orderItemId,
    String? menuItemId,
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem?
        menuItem,
    String? notes,
    String? $__typename,
  });
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
      TRes> get menuItem;
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
            TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node
      _instance;

  final TRes Function(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderItemId = _undefined,
    Object? menuItemId = _undefined,
    Object? menuItem = _undefined,
    Object? notes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
        orderItemId: orderItemId == _undefined || orderItemId == null
            ? _instance.orderItemId
            : (orderItemId as String),
        menuItemId: menuItemId == _undefined || menuItemId == null
            ? _instance.menuItemId
            : (menuItemId as String),
        menuItem: menuItem == _undefined || menuItem == null
            ? _instance.menuItem
            : (menuItem
                as Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
      TRes> get menuItem {
    final local$menuItem = _instance.menuItem;
    return CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
        local$menuItem, (e) => call(menuItem: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node<
            TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node(
      this._res);

  TRes _res;

  call({
    String? orderItemId,
    String? menuItemId,
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem?
        menuItem,
    String? notes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
          TRes>
      get menuItem =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem
              .stub(_res);
}

class Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem {
  Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem({
    required this.id,
    this.menuId,
    required this.name,
    this.data,
    this.notes,
    this.imageUrl,
    this.coverUrl,
    required this.price,
    required this.isAvailable,
    required this.categories,
    this.$__typename = 'MenuItem',
  });

  factory Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$menuId = json['menuId'];
    final l$name = json['name'];
    final l$data = json['data'];
    final l$notes = json['notes'];
    final l$imageUrl = json['imageUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$price = json['price'];
    final l$isAvailable = json['isAvailable'];
    final l$categories = json['categories'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
      id: (l$id as String),
      menuId: (l$menuId as String?),
      name: (l$name as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      notes: (l$notes as String?),
      imageUrl: (l$imageUrl as String?),
      coverUrl: (l$coverUrl as String?),
      price: (l$price as num).toDouble(),
      isAvailable: (l$isAvailable as bool),
      categories:
          (l$categories as List<dynamic>).map((e) => (e as String?)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? menuId;

  final String name;

  final Map<String, dynamic>? data;

  final String? notes;

  final String? imageUrl;

  final String? coverUrl;

  final double price;

  final bool isAvailable;

  final List<String?> categories;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$menuId = menuId;
    _resultData['menuId'] = l$menuId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$isAvailable = isAvailable;
    _resultData['isAvailable'] = l$isAvailable;
    final l$categories = categories;
    _resultData['categories'] = l$categories.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$menuId = menuId;
    final l$name = name;
    final l$data = data;
    final l$notes = notes;
    final l$imageUrl = imageUrl;
    final l$coverUrl = coverUrl;
    final l$price = price;
    final l$isAvailable = isAvailable;
    final l$categories = categories;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$menuId,
      l$name,
      l$data,
      l$notes,
      l$imageUrl,
      l$coverUrl,
      l$price,
      l$isAvailable,
      Object.hashAll(l$categories.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$menuId = menuId;
    final lOther$menuId = other.menuId;
    if (l$menuId != lOther$menuId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$data = data;
    final lOther$data = other.data;
    if (l$data != lOther$data) {
      return false;
    }
    final l$notes = notes;
    final lOther$notes = other.notes;
    if (l$notes != lOther$notes) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$coverUrl = coverUrl;
    final lOther$coverUrl = other.coverUrl;
    if (l$coverUrl != lOther$coverUrl) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$isAvailable = isAvailable;
    final lOther$isAvailable = other.isAvailable;
    if (l$isAvailable != lOther$isAvailable) {
      return false;
    }
    final l$categories = categories;
    final lOther$categories = other.categories;
    if (l$categories.length != lOther$categories.length) {
      return false;
    }
    for (int i = 0; i < l$categories.length; i++) {
      final l$categories$entry = l$categories[i];
      final lOther$categories$entry = lOther$categories[i];
      if (l$categories$entry != lOther$categories$entry) {
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem
    on Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem {
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem>
      get copyWith =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
    TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem
        instance,
    TRes Function(
            Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem)
        then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem;

  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem;

  TRes call({
    String? id,
    String? menuId,
    String? name,
    Map<String, dynamic>? data,
    String? notes,
    String? imageUrl,
    String? coverUrl,
    double? price,
    bool? isAvailable,
    List<String?>? categories,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
            TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem
      _instance;

  final TRes Function(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? menuId = _undefined,
    Object? name = _undefined,
    Object? data = _undefined,
    Object? notes = _undefined,
    Object? imageUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? price = _undefined,
    Object? isAvailable = _undefined,
    Object? categories = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        menuId: menuId == _undefined ? _instance.menuId : (menuId as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        imageUrl:
            imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        isAvailable: isAvailable == _undefined || isAvailable == null
            ? _instance.isAvailable
            : (isAvailable as bool),
        categories: categories == _undefined || categories == null
            ? _instance.categories
            : (categories as List<String?>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem<
            TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges$node$menuItem(
      this._res);

  TRes _res;

  call({
    String? id,
    String? menuId,
    String? name,
    Map<String, dynamic>? data,
    String? notes,
    String? imageUrl,
    String? coverUrl,
    double? price,
    bool? isAvailable,
    List<String?>? categories,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$OrderById {
  factory Variables$Query$OrderById({required String id}) =>
      Variables$Query$OrderById._({
        r'id': id,
      });

  Variables$Query$OrderById._(this._$data);

  factory Variables$Query$OrderById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$OrderById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$OrderById<Variables$Query$OrderById> get copyWith =>
      CopyWith$Variables$Query$OrderById(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$OrderById) ||
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

abstract class CopyWith$Variables$Query$OrderById<TRes> {
  factory CopyWith$Variables$Query$OrderById(
    Variables$Query$OrderById instance,
    TRes Function(Variables$Query$OrderById) then,
  ) = _CopyWithImpl$Variables$Query$OrderById;

  factory CopyWith$Variables$Query$OrderById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$OrderById<TRes>
    implements CopyWith$Variables$Query$OrderById<TRes> {
  _CopyWithImpl$Variables$Query$OrderById(
    this._instance,
    this._then,
  );

  final Variables$Query$OrderById _instance;

  final TRes Function(Variables$Query$OrderById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$OrderById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$OrderById<TRes>
    implements CopyWith$Variables$Query$OrderById<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$OrderById {
  Query$OrderById({
    this.orderCollection,
    this.$__typename = 'Query',
  });

  factory Query$OrderById.fromJson(Map<String, dynamic> json) {
    final l$orderCollection = json['orderCollection'];
    final l$$__typename = json['__typename'];
    return Query$OrderById(
      orderCollection: l$orderCollection == null
          ? null
          : Query$OrderById$orderCollection.fromJson(
              (l$orderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderById$orderCollection? orderCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCollection = orderCollection;
    _resultData['orderCollection'] = l$orderCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCollection = orderCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$OrderById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCollection = orderCollection;
    final lOther$orderCollection = other.orderCollection;
    if (l$orderCollection != lOther$orderCollection) {
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

extension UtilityExtension$Query$OrderById on Query$OrderById {
  CopyWith$Query$OrderById<Query$OrderById> get copyWith =>
      CopyWith$Query$OrderById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderById<TRes> {
  factory CopyWith$Query$OrderById(
    Query$OrderById instance,
    TRes Function(Query$OrderById) then,
  ) = _CopyWithImpl$Query$OrderById;

  factory CopyWith$Query$OrderById.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderById;

  TRes call({
    Query$OrderById$orderCollection? orderCollection,
    String? $__typename,
  });
  CopyWith$Query$OrderById$orderCollection<TRes> get orderCollection;
}

class _CopyWithImpl$Query$OrderById<TRes>
    implements CopyWith$Query$OrderById<TRes> {
  _CopyWithImpl$Query$OrderById(
    this._instance,
    this._then,
  );

  final Query$OrderById _instance;

  final TRes Function(Query$OrderById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderById(
        orderCollection: orderCollection == _undefined
            ? _instance.orderCollection
            : (orderCollection as Query$OrderById$orderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$OrderById$orderCollection<TRes> get orderCollection {
    final local$orderCollection = _instance.orderCollection;
    return local$orderCollection == null
        ? CopyWith$Query$OrderById$orderCollection.stub(_then(_instance))
        : CopyWith$Query$OrderById$orderCollection(
            local$orderCollection, (e) => call(orderCollection: e));
  }
}

class _CopyWithStubImpl$Query$OrderById<TRes>
    implements CopyWith$Query$OrderById<TRes> {
  _CopyWithStubImpl$Query$OrderById(this._res);

  TRes _res;

  call({
    Query$OrderById$orderCollection? orderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$OrderById$orderCollection<TRes> get orderCollection =>
      CopyWith$Query$OrderById$orderCollection.stub(_res);
}

const documentNodeQueryOrderById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'OrderById'),
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
        name: NameNode(value: 'orderCollection'),
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
                    name: NameNode(value: 'Order'),
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
  fragmentDefinitionOrder,
  fragmentDefinitionOrderType,
]);
Query$OrderById _parserFn$Query$OrderById(Map<String, dynamic> data) =>
    Query$OrderById.fromJson(data);
typedef OnQueryComplete$Query$OrderById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$OrderById?,
);

class Options$Query$OrderById extends graphql.QueryOptions<Query$OrderById> {
  Options$Query$OrderById({
    String? operationName,
    required Variables$Query$OrderById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderById? onComplete,
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
                    data == null ? null : _parserFn$Query$OrderById(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrderById,
          parserFn: _parserFn$Query$OrderById,
        );

  final OnQueryComplete$Query$OrderById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$OrderById
    extends graphql.WatchQueryOptions<Query$OrderById> {
  WatchOptions$Query$OrderById({
    String? operationName,
    required Variables$Query$OrderById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderById? typedOptimisticResult,
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
          document: documentNodeQueryOrderById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$OrderById,
        );
}

class FetchMoreOptions$Query$OrderById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$OrderById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryOrderById,
        );
}

extension ClientExtension$Query$OrderById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderById>> query$OrderById(
          Options$Query$OrderById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$OrderById> watchQuery$OrderById(
          WatchOptions$Query$OrderById options) =>
      this.watchQuery(options);
  void writeQuery$OrderById({
    required Query$OrderById data,
    required Variables$Query$OrderById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryOrderById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$OrderById? readQuery$OrderById({
    required Variables$Query$OrderById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrderById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrderById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderById> useQuery$OrderById(
        Options$Query$OrderById options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$OrderById> useWatchQuery$OrderById(
        WatchOptions$Query$OrderById options) =>
    graphql_flutter.useWatchQuery(options);

class Query$OrderById$Widget extends graphql_flutter.Query<Query$OrderById> {
  Query$OrderById$Widget({
    widgets.Key? key,
    required Options$Query$OrderById options,
    required graphql_flutter.QueryBuilder<Query$OrderById> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$OrderById$orderCollection {
  Query$OrderById$orderCollection({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$OrderById$orderCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$OrderById$orderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$OrderById$orderCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$OrderById$orderCollection$edges> edges;

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
    if (!(other is Query$OrderById$orderCollection) ||
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

extension UtilityExtension$Query$OrderById$orderCollection
    on Query$OrderById$orderCollection {
  CopyWith$Query$OrderById$orderCollection<Query$OrderById$orderCollection>
      get copyWith => CopyWith$Query$OrderById$orderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderById$orderCollection<TRes> {
  factory CopyWith$Query$OrderById$orderCollection(
    Query$OrderById$orderCollection instance,
    TRes Function(Query$OrderById$orderCollection) then,
  ) = _CopyWithImpl$Query$OrderById$orderCollection;

  factory CopyWith$Query$OrderById$orderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderById$orderCollection;

  TRes call({
    List<Query$OrderById$orderCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$OrderById$orderCollection$edges> Function(
              Iterable<
                  CopyWith$Query$OrderById$orderCollection$edges<
                      Query$OrderById$orderCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$OrderById$orderCollection<TRes>
    implements CopyWith$Query$OrderById$orderCollection<TRes> {
  _CopyWithImpl$Query$OrderById$orderCollection(
    this._instance,
    this._then,
  );

  final Query$OrderById$orderCollection _instance;

  final TRes Function(Query$OrderById$orderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderById$orderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$OrderById$orderCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$OrderById$orderCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$OrderById$orderCollection$edges<
                          Query$OrderById$orderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$OrderById$orderCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$OrderById$orderCollection<TRes>
    implements CopyWith$Query$OrderById$orderCollection<TRes> {
  _CopyWithStubImpl$Query$OrderById$orderCollection(this._res);

  TRes _res;

  call({
    List<Query$OrderById$orderCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$OrderById$orderCollection$edges {
  Query$OrderById$orderCollection$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$OrderById$orderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$OrderById$orderCollection$edges(
      node: Fragment$Order.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Order node;

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
    if (!(other is Query$OrderById$orderCollection$edges) ||
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

extension UtilityExtension$Query$OrderById$orderCollection$edges
    on Query$OrderById$orderCollection$edges {
  CopyWith$Query$OrderById$orderCollection$edges<
          Query$OrderById$orderCollection$edges>
      get copyWith => CopyWith$Query$OrderById$orderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderById$orderCollection$edges<TRes> {
  factory CopyWith$Query$OrderById$orderCollection$edges(
    Query$OrderById$orderCollection$edges instance,
    TRes Function(Query$OrderById$orderCollection$edges) then,
  ) = _CopyWithImpl$Query$OrderById$orderCollection$edges;

  factory CopyWith$Query$OrderById$orderCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderById$orderCollection$edges;

  TRes call({
    Fragment$Order? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order<TRes> get node;
}

class _CopyWithImpl$Query$OrderById$orderCollection$edges<TRes>
    implements CopyWith$Query$OrderById$orderCollection$edges<TRes> {
  _CopyWithImpl$Query$OrderById$orderCollection$edges(
    this._instance,
    this._then,
  );

  final Query$OrderById$orderCollection$edges _instance;

  final TRes Function(Query$OrderById$orderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderById$orderCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Order),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Order(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$OrderById$orderCollection$edges<TRes>
    implements CopyWith$Query$OrderById$orderCollection$edges<TRes> {
  _CopyWithStubImpl$Query$OrderById$orderCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order<TRes> get node => CopyWith$Fragment$Order.stub(_res);
}

class Variables$Query$Orders {
  factory Variables$Query$Orders({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderFilter? filter,
    List<Input$OrderOrderBy>? orderBy,
  }) =>
      Variables$Query$Orders._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$Orders._(this._$data);

  factory Variables$Query$Orders.fromJson(Map<String, dynamic> data) {
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
          : Input$OrderFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$OrderOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$Orders._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$OrderFilter? get filter => (_$data['filter'] as Input$OrderFilter?);

  List<Input$OrderOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$OrderOrderBy>?);

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

  CopyWith$Variables$Query$Orders<Variables$Query$Orders> get copyWith =>
      CopyWith$Variables$Query$Orders(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Orders) ||
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

abstract class CopyWith$Variables$Query$Orders<TRes> {
  factory CopyWith$Variables$Query$Orders(
    Variables$Query$Orders instance,
    TRes Function(Variables$Query$Orders) then,
  ) = _CopyWithImpl$Variables$Query$Orders;

  factory CopyWith$Variables$Query$Orders.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Orders;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderFilter? filter,
    List<Input$OrderOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$Orders<TRes>
    implements CopyWith$Variables$Query$Orders<TRes> {
  _CopyWithImpl$Variables$Query$Orders(
    this._instance,
    this._then,
  );

  final Variables$Query$Orders _instance;

  final TRes Function(Variables$Query$Orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$Orders._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined) 'filter': (filter as Input$OrderFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$OrderOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Orders<TRes>
    implements CopyWith$Variables$Query$Orders<TRes> {
  _CopyWithStubImpl$Variables$Query$Orders(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderFilter? filter,
    List<Input$OrderOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$Orders {
  Query$Orders({
    this.orderCollection,
    this.$__typename = 'Query',
  });

  factory Query$Orders.fromJson(Map<String, dynamic> json) {
    final l$orderCollection = json['orderCollection'];
    final l$$__typename = json['__typename'];
    return Query$Orders(
      orderCollection: l$orderCollection == null
          ? null
          : Query$Orders$orderCollection.fromJson(
              (l$orderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Orders$orderCollection? orderCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCollection = orderCollection;
    _resultData['orderCollection'] = l$orderCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCollection = orderCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Orders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCollection = orderCollection;
    final lOther$orderCollection = other.orderCollection;
    if (l$orderCollection != lOther$orderCollection) {
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

extension UtilityExtension$Query$Orders on Query$Orders {
  CopyWith$Query$Orders<Query$Orders> get copyWith => CopyWith$Query$Orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Orders<TRes> {
  factory CopyWith$Query$Orders(
    Query$Orders instance,
    TRes Function(Query$Orders) then,
  ) = _CopyWithImpl$Query$Orders;

  factory CopyWith$Query$Orders.stub(TRes res) = _CopyWithStubImpl$Query$Orders;

  TRes call({
    Query$Orders$orderCollection? orderCollection,
    String? $__typename,
  });
  CopyWith$Query$Orders$orderCollection<TRes> get orderCollection;
}

class _CopyWithImpl$Query$Orders<TRes> implements CopyWith$Query$Orders<TRes> {
  _CopyWithImpl$Query$Orders(
    this._instance,
    this._then,
  );

  final Query$Orders _instance;

  final TRes Function(Query$Orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders(
        orderCollection: orderCollection == _undefined
            ? _instance.orderCollection
            : (orderCollection as Query$Orders$orderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Orders$orderCollection<TRes> get orderCollection {
    final local$orderCollection = _instance.orderCollection;
    return local$orderCollection == null
        ? CopyWith$Query$Orders$orderCollection.stub(_then(_instance))
        : CopyWith$Query$Orders$orderCollection(
            local$orderCollection, (e) => call(orderCollection: e));
  }
}

class _CopyWithStubImpl$Query$Orders<TRes>
    implements CopyWith$Query$Orders<TRes> {
  _CopyWithStubImpl$Query$Orders(this._res);

  TRes _res;

  call({
    Query$Orders$orderCollection? orderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Orders$orderCollection<TRes> get orderCollection =>
      CopyWith$Query$Orders$orderCollection.stub(_res);
}

const documentNodeQueryOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Orders'),
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
          name: NameNode(value: 'OrderFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'OrderOrderBy'),
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
        name: NameNode(value: 'orderCollection'),
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
                    name: NameNode(value: 'Order'),
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
  fragmentDefinitionOrder,
  fragmentDefinitionOrderType,
]);
Query$Orders _parserFn$Query$Orders(Map<String, dynamic> data) =>
    Query$Orders.fromJson(data);
typedef OnQueryComplete$Query$Orders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Orders?,
);

class Options$Query$Orders extends graphql.QueryOptions<Query$Orders> {
  Options$Query$Orders({
    String? operationName,
    Variables$Query$Orders? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Orders? onComplete,
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
                    data == null ? null : _parserFn$Query$Orders(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrders,
          parserFn: _parserFn$Query$Orders,
        );

  final OnQueryComplete$Query$Orders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Orders
    extends graphql.WatchQueryOptions<Query$Orders> {
  WatchOptions$Query$Orders({
    String? operationName,
    Variables$Query$Orders? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Orders? typedOptimisticResult,
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
          document: documentNodeQueryOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Orders,
        );
}

class FetchMoreOptions$Query$Orders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Orders({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Orders? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryOrders,
        );
}

extension ClientExtension$Query$Orders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Orders>> query$Orders(
          [Options$Query$Orders? options]) async =>
      await this.query(options ?? Options$Query$Orders());
  graphql.ObservableQuery<Query$Orders> watchQuery$Orders(
          [WatchOptions$Query$Orders? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Orders());
  void writeQuery$Orders({
    required Query$Orders data,
    Variables$Query$Orders? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryOrders),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Orders? readQuery$Orders({
    Variables$Query$Orders? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrders),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Orders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Orders> useQuery$Orders(
        [Options$Query$Orders? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Orders());
graphql.ObservableQuery<Query$Orders> useWatchQuery$Orders(
        [WatchOptions$Query$Orders? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Orders());

class Query$Orders$Widget extends graphql_flutter.Query<Query$Orders> {
  Query$Orders$Widget({
    widgets.Key? key,
    Options$Query$Orders? options,
    required graphql_flutter.QueryBuilder<Query$Orders> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Orders(),
          builder: builder,
        );
}

class Query$Orders$orderCollection {
  Query$Orders$orderCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderConnection',
  });

  factory Query$Orders$orderCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Orders$orderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Orders$orderCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Orders$orderCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Orders$orderCollection$edges> edges;

  final Query$Orders$orderCollection$pageInfo pageInfo;

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
    if (!(other is Query$Orders$orderCollection) ||
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

extension UtilityExtension$Query$Orders$orderCollection
    on Query$Orders$orderCollection {
  CopyWith$Query$Orders$orderCollection<Query$Orders$orderCollection>
      get copyWith => CopyWith$Query$Orders$orderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders$orderCollection<TRes> {
  factory CopyWith$Query$Orders$orderCollection(
    Query$Orders$orderCollection instance,
    TRes Function(Query$Orders$orderCollection) then,
  ) = _CopyWithImpl$Query$Orders$orderCollection;

  factory CopyWith$Query$Orders$orderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders$orderCollection;

  TRes call({
    List<Query$Orders$orderCollection$edges>? edges,
    Query$Orders$orderCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Orders$orderCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Orders$orderCollection$edges<
                      Query$Orders$orderCollection$edges>>)
          _fn);
  CopyWith$Query$Orders$orderCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Orders$orderCollection<TRes>
    implements CopyWith$Query$Orders$orderCollection<TRes> {
  _CopyWithImpl$Query$Orders$orderCollection(
    this._instance,
    this._then,
  );

  final Query$Orders$orderCollection _instance;

  final TRes Function(Query$Orders$orderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders$orderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Orders$orderCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Orders$orderCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Orders$orderCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Orders$orderCollection$edges<
                          Query$Orders$orderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Orders$orderCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$Orders$orderCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Orders$orderCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Orders$orderCollection<TRes>
    implements CopyWith$Query$Orders$orderCollection<TRes> {
  _CopyWithStubImpl$Query$Orders$orderCollection(this._res);

  TRes _res;

  call({
    List<Query$Orders$orderCollection$edges>? edges,
    Query$Orders$orderCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$Orders$orderCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Orders$orderCollection$pageInfo.stub(_res);
}

class Query$Orders$orderCollection$edges {
  Query$Orders$orderCollection$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$Orders$orderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Orders$orderCollection$edges(
      node: Fragment$Order.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Order node;

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
    if (!(other is Query$Orders$orderCollection$edges) ||
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

extension UtilityExtension$Query$Orders$orderCollection$edges
    on Query$Orders$orderCollection$edges {
  CopyWith$Query$Orders$orderCollection$edges<
          Query$Orders$orderCollection$edges>
      get copyWith => CopyWith$Query$Orders$orderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders$orderCollection$edges<TRes> {
  factory CopyWith$Query$Orders$orderCollection$edges(
    Query$Orders$orderCollection$edges instance,
    TRes Function(Query$Orders$orderCollection$edges) then,
  ) = _CopyWithImpl$Query$Orders$orderCollection$edges;

  factory CopyWith$Query$Orders$orderCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders$orderCollection$edges;

  TRes call({
    Fragment$Order? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order<TRes> get node;
}

class _CopyWithImpl$Query$Orders$orderCollection$edges<TRes>
    implements CopyWith$Query$Orders$orderCollection$edges<TRes> {
  _CopyWithImpl$Query$Orders$orderCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Orders$orderCollection$edges _instance;

  final TRes Function(Query$Orders$orderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders$orderCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Order),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Order<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Order(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Orders$orderCollection$edges<TRes>
    implements CopyWith$Query$Orders$orderCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Orders$orderCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order<TRes> get node => CopyWith$Fragment$Order.stub(_res);
}

class Query$Orders$orderCollection$pageInfo {
  Query$Orders$orderCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Orders$orderCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$Orders$orderCollection$pageInfo(
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
    if (!(other is Query$Orders$orderCollection$pageInfo) ||
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

extension UtilityExtension$Query$Orders$orderCollection$pageInfo
    on Query$Orders$orderCollection$pageInfo {
  CopyWith$Query$Orders$orderCollection$pageInfo<
          Query$Orders$orderCollection$pageInfo>
      get copyWith => CopyWith$Query$Orders$orderCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Orders$orderCollection$pageInfo<TRes> {
  factory CopyWith$Query$Orders$orderCollection$pageInfo(
    Query$Orders$orderCollection$pageInfo instance,
    TRes Function(Query$Orders$orderCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$Orders$orderCollection$pageInfo;

  factory CopyWith$Query$Orders$orderCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Orders$orderCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Orders$orderCollection$pageInfo<TRes>
    implements CopyWith$Query$Orders$orderCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$Orders$orderCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Orders$orderCollection$pageInfo _instance;

  final TRes Function(Query$Orders$orderCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Orders$orderCollection$pageInfo(
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

class _CopyWithStubImpl$Query$Orders$orderCollection$pageInfo<TRes>
    implements CopyWith$Query$Orders$orderCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Orders$orderCollection$pageInfo(this._res);

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
