import '../../providers/graphql/provider.graphql.dart';
import '../../schema.graphql.dart';
import '../../users/graphql/users.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'stations.graphql.dart';

class Fragment$FirstResponderType {
  Fragment$FirstResponderType({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    required this.createdAt,
    this.$__typename = 'FirstResponderType',
  });

  factory Fragment$FirstResponderType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$FirstResponderType(
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
    if (!(other is Fragment$FirstResponderType) ||
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

extension UtilityExtension$Fragment$FirstResponderType
    on Fragment$FirstResponderType {
  CopyWith$Fragment$FirstResponderType<Fragment$FirstResponderType>
      get copyWith => CopyWith$Fragment$FirstResponderType(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FirstResponderType<TRes> {
  factory CopyWith$Fragment$FirstResponderType(
    Fragment$FirstResponderType instance,
    TRes Function(Fragment$FirstResponderType) then,
  ) = _CopyWithImpl$Fragment$FirstResponderType;

  factory CopyWith$Fragment$FirstResponderType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FirstResponderType;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FirstResponderType<TRes>
    implements CopyWith$Fragment$FirstResponderType<TRes> {
  _CopyWithImpl$Fragment$FirstResponderType(
    this._instance,
    this._then,
  );

  final Fragment$FirstResponderType _instance;

  final TRes Function(Fragment$FirstResponderType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FirstResponderType(
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

class _CopyWithStubImpl$Fragment$FirstResponderType<TRes>
    implements CopyWith$Fragment$FirstResponderType<TRes> {
  _CopyWithStubImpl$Fragment$FirstResponderType(this._res);

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

const fragmentDefinitionFirstResponderType = FragmentDefinitionNode(
  name: NameNode(value: 'FirstResponderType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FirstResponderType'),
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
const documentNodeFragmentFirstResponderType = DocumentNode(definitions: [
  fragmentDefinitionFirstResponderType,
]);

extension ClientExtension$Fragment$FirstResponderType on graphql.GraphQLClient {
  void writeFragment$FirstResponderType({
    required Fragment$FirstResponderType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FirstResponderType',
            document: documentNodeFragmentFirstResponderType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FirstResponderType? readFragment$FirstResponderType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FirstResponderType',
          document: documentNodeFragmentFirstResponderType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FirstResponderType.fromJson(result);
  }
}

class Fragment$FirstResponderStation {
  Fragment$FirstResponderStation({
    required this.id,
    required this.firstResponderId,
    required this.stationId,
    required this.station,
    required this.createdAt,
    this.$__typename = 'FirstResponderStation',
  });

  factory Fragment$FirstResponderStation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstResponderId = json['firstResponderId'];
    final l$stationId = json['stationId'];
    final l$station = json['station'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$FirstResponderStation(
      id: (l$id as String),
      firstResponderId: (l$firstResponderId as String),
      stationId: (l$stationId as String),
      station: Fragment$Station.fromJson((l$station as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String firstResponderId;

  final String stationId;

  final Fragment$Station station;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstResponderId = firstResponderId;
    _resultData['firstResponderId'] = l$firstResponderId;
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
    final l$firstResponderId = firstResponderId;
    final l$stationId = stationId;
    final l$station = station;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstResponderId,
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
    if (!(other is Fragment$FirstResponderStation) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstResponderId = firstResponderId;
    final lOther$firstResponderId = other.firstResponderId;
    if (l$firstResponderId != lOther$firstResponderId) {
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

extension UtilityExtension$Fragment$FirstResponderStation
    on Fragment$FirstResponderStation {
  CopyWith$Fragment$FirstResponderStation<Fragment$FirstResponderStation>
      get copyWith => CopyWith$Fragment$FirstResponderStation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FirstResponderStation<TRes> {
  factory CopyWith$Fragment$FirstResponderStation(
    Fragment$FirstResponderStation instance,
    TRes Function(Fragment$FirstResponderStation) then,
  ) = _CopyWithImpl$Fragment$FirstResponderStation;

  factory CopyWith$Fragment$FirstResponderStation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FirstResponderStation;

  TRes call({
    String? id,
    String? firstResponderId,
    String? stationId,
    Fragment$Station? station,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$Station<TRes> get station;
}

class _CopyWithImpl$Fragment$FirstResponderStation<TRes>
    implements CopyWith$Fragment$FirstResponderStation<TRes> {
  _CopyWithImpl$Fragment$FirstResponderStation(
    this._instance,
    this._then,
  );

  final Fragment$FirstResponderStation _instance;

  final TRes Function(Fragment$FirstResponderStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstResponderId = _undefined,
    Object? stationId = _undefined,
    Object? station = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FirstResponderStation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstResponderId:
            firstResponderId == _undefined || firstResponderId == null
                ? _instance.firstResponderId
                : (firstResponderId as String),
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

class _CopyWithStubImpl$Fragment$FirstResponderStation<TRes>
    implements CopyWith$Fragment$FirstResponderStation<TRes> {
  _CopyWithStubImpl$Fragment$FirstResponderStation(this._res);

  TRes _res;

  call({
    String? id,
    String? firstResponderId,
    String? stationId,
    Fragment$Station? station,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station<TRes> get station =>
      CopyWith$Fragment$Station.stub(_res);
}

const fragmentDefinitionFirstResponderStation = FragmentDefinitionNode(
  name: NameNode(value: 'FirstResponderStation'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FirstResponderStation'),
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
      name: NameNode(value: 'firstResponderId'),
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
const documentNodeFragmentFirstResponderStation = DocumentNode(definitions: [
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
]);

extension ClientExtension$Fragment$FirstResponderStation
    on graphql.GraphQLClient {
  void writeFragment$FirstResponderStation({
    required Fragment$FirstResponderStation data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FirstResponderStation',
            document: documentNodeFragmentFirstResponderStation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FirstResponderStation? readFragment$FirstResponderStation({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FirstResponderStation',
          document: documentNodeFragmentFirstResponderStation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$FirstResponderStation.fromJson(result);
  }
}

class Fragment$FirstResponder {
  Fragment$FirstResponder({
    required this.id,
    required this.userId,
    this.user,
    required this.firstResponderTypeId,
    this.firstResponderType,
    this.currentStationId,
    this.currentStation,
    this.firstResponderStationCollection,
    this.imageUrl,
    this.badgeNumber,
    this.data,
    required this.createdAt,
    this.updatedAt,
    this.$__typename = 'FirstResponder',
  });

  factory Fragment$FirstResponder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$firstResponderTypeId = json['firstResponderTypeId'];
    final l$firstResponderType = json['firstResponderType'];
    final l$currentStationId = json['currentStationId'];
    final l$currentStation = json['currentStation'];
    final l$firstResponderStationCollection =
        json['firstResponderStationCollection'];
    final l$imageUrl = json['imageUrl'];
    final l$badgeNumber = json['badgeNumber'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$$__typename = json['__typename'];
    return Fragment$FirstResponder(
      id: (l$id as String),
      userId: (l$userId as String),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      firstResponderTypeId: (l$firstResponderTypeId as String),
      firstResponderType: l$firstResponderType == null
          ? null
          : Fragment$FirstResponderType.fromJson(
              (l$firstResponderType as Map<String, dynamic>)),
      currentStationId: (l$currentStationId as String?),
      currentStation: l$currentStation == null
          ? null
          : Fragment$Station.fromJson(
              (l$currentStation as Map<String, dynamic>)),
      firstResponderStationCollection: l$firstResponderStationCollection == null
          ? null
          : Fragment$FirstResponder$firstResponderStationCollection.fromJson(
              (l$firstResponderStationCollection as Map<String, dynamic>)),
      imageUrl: (l$imageUrl as String?),
      badgeNumber: (l$badgeNumber as String?),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Fragment$User? user;

  final String firstResponderTypeId;

  final Fragment$FirstResponderType? firstResponderType;

  final String? currentStationId;

  final Fragment$Station? currentStation;

  final Fragment$FirstResponder$firstResponderStationCollection?
      firstResponderStationCollection;

  final String? imageUrl;

  final String? badgeNumber;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$firstResponderTypeId = firstResponderTypeId;
    _resultData['firstResponderTypeId'] = l$firstResponderTypeId;
    final l$firstResponderType = firstResponderType;
    _resultData['firstResponderType'] = l$firstResponderType?.toJson();
    final l$currentStationId = currentStationId;
    _resultData['currentStationId'] = l$currentStationId;
    final l$currentStation = currentStation;
    _resultData['currentStation'] = l$currentStation?.toJson();
    final l$firstResponderStationCollection = firstResponderStationCollection;
    _resultData['firstResponderStationCollection'] =
        l$firstResponderStationCollection?.toJson();
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$badgeNumber = badgeNumber;
    _resultData['badgeNumber'] = l$badgeNumber;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$user = user;
    final l$firstResponderTypeId = firstResponderTypeId;
    final l$firstResponderType = firstResponderType;
    final l$currentStationId = currentStationId;
    final l$currentStation = currentStation;
    final l$firstResponderStationCollection = firstResponderStationCollection;
    final l$imageUrl = imageUrl;
    final l$badgeNumber = badgeNumber;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$user,
      l$firstResponderTypeId,
      l$firstResponderType,
      l$currentStationId,
      l$currentStation,
      l$firstResponderStationCollection,
      l$imageUrl,
      l$badgeNumber,
      l$data,
      l$createdAt,
      l$updatedAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$FirstResponder) ||
        runtimeType != other.runtimeType) {
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
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$firstResponderTypeId = firstResponderTypeId;
    final lOther$firstResponderTypeId = other.firstResponderTypeId;
    if (l$firstResponderTypeId != lOther$firstResponderTypeId) {
      return false;
    }
    final l$firstResponderType = firstResponderType;
    final lOther$firstResponderType = other.firstResponderType;
    if (l$firstResponderType != lOther$firstResponderType) {
      return false;
    }
    final l$currentStationId = currentStationId;
    final lOther$currentStationId = other.currentStationId;
    if (l$currentStationId != lOther$currentStationId) {
      return false;
    }
    final l$currentStation = currentStation;
    final lOther$currentStation = other.currentStation;
    if (l$currentStation != lOther$currentStation) {
      return false;
    }
    final l$firstResponderStationCollection = firstResponderStationCollection;
    final lOther$firstResponderStationCollection =
        other.firstResponderStationCollection;
    if (l$firstResponderStationCollection !=
        lOther$firstResponderStationCollection) {
      return false;
    }
    final l$imageUrl = imageUrl;
    final lOther$imageUrl = other.imageUrl;
    if (l$imageUrl != lOther$imageUrl) {
      return false;
    }
    final l$badgeNumber = badgeNumber;
    final lOther$badgeNumber = other.badgeNumber;
    if (l$badgeNumber != lOther$badgeNumber) {
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

extension UtilityExtension$Fragment$FirstResponder on Fragment$FirstResponder {
  CopyWith$Fragment$FirstResponder<Fragment$FirstResponder> get copyWith =>
      CopyWith$Fragment$FirstResponder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FirstResponder<TRes> {
  factory CopyWith$Fragment$FirstResponder(
    Fragment$FirstResponder instance,
    TRes Function(Fragment$FirstResponder) then,
  ) = _CopyWithImpl$Fragment$FirstResponder;

  factory CopyWith$Fragment$FirstResponder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FirstResponder;

  TRes call({
    String? id,
    String? userId,
    Fragment$User? user,
    String? firstResponderTypeId,
    Fragment$FirstResponderType? firstResponderType,
    String? currentStationId,
    Fragment$Station? currentStation,
    Fragment$FirstResponder$firstResponderStationCollection?
        firstResponderStationCollection,
    String? imageUrl,
    String? badgeNumber,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
  CopyWith$Fragment$FirstResponderType<TRes> get firstResponderType;
  CopyWith$Fragment$Station<TRes> get currentStation;
  CopyWith$Fragment$FirstResponder$firstResponderStationCollection<TRes>
      get firstResponderStationCollection;
}

class _CopyWithImpl$Fragment$FirstResponder<TRes>
    implements CopyWith$Fragment$FirstResponder<TRes> {
  _CopyWithImpl$Fragment$FirstResponder(
    this._instance,
    this._then,
  );

  final Fragment$FirstResponder _instance;

  final TRes Function(Fragment$FirstResponder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? firstResponderTypeId = _undefined,
    Object? firstResponderType = _undefined,
    Object? currentStationId = _undefined,
    Object? currentStation = _undefined,
    Object? firstResponderStationCollection = _undefined,
    Object? imageUrl = _undefined,
    Object? badgeNumber = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FirstResponder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined ? _instance.user : (user as Fragment$User?),
        firstResponderTypeId:
            firstResponderTypeId == _undefined || firstResponderTypeId == null
                ? _instance.firstResponderTypeId
                : (firstResponderTypeId as String),
        firstResponderType: firstResponderType == _undefined
            ? _instance.firstResponderType
            : (firstResponderType as Fragment$FirstResponderType?),
        currentStationId: currentStationId == _undefined
            ? _instance.currentStationId
            : (currentStationId as String?),
        currentStation: currentStation == _undefined
            ? _instance.currentStation
            : (currentStation as Fragment$Station?),
        firstResponderStationCollection: firstResponderStationCollection ==
                _undefined
            ? _instance.firstResponderStationCollection
            : (firstResponderStationCollection
                as Fragment$FirstResponder$firstResponderStationCollection?),
        imageUrl:
            imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
        badgeNumber: badgeNumber == _undefined
            ? _instance.badgeNumber
            : (badgeNumber as String?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$FirstResponderType<TRes> get firstResponderType {
    final local$firstResponderType = _instance.firstResponderType;
    return local$firstResponderType == null
        ? CopyWith$Fragment$FirstResponderType.stub(_then(_instance))
        : CopyWith$Fragment$FirstResponderType(
            local$firstResponderType, (e) => call(firstResponderType: e));
  }

  CopyWith$Fragment$Station<TRes> get currentStation {
    final local$currentStation = _instance.currentStation;
    return local$currentStation == null
        ? CopyWith$Fragment$Station.stub(_then(_instance))
        : CopyWith$Fragment$Station(
            local$currentStation, (e) => call(currentStation: e));
  }

  CopyWith$Fragment$FirstResponder$firstResponderStationCollection<TRes>
      get firstResponderStationCollection {
    final local$firstResponderStationCollection =
        _instance.firstResponderStationCollection;
    return local$firstResponderStationCollection == null
        ? CopyWith$Fragment$FirstResponder$firstResponderStationCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$FirstResponder$firstResponderStationCollection(
            local$firstResponderStationCollection,
            (e) => call(firstResponderStationCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$FirstResponder<TRes>
    implements CopyWith$Fragment$FirstResponder<TRes> {
  _CopyWithStubImpl$Fragment$FirstResponder(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Fragment$User? user,
    String? firstResponderTypeId,
    Fragment$FirstResponderType? firstResponderType,
    String? currentStationId,
    Fragment$Station? currentStation,
    Fragment$FirstResponder$firstResponderStationCollection?
        firstResponderStationCollection,
    String? imageUrl,
    String? badgeNumber,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);

  CopyWith$Fragment$FirstResponderType<TRes> get firstResponderType =>
      CopyWith$Fragment$FirstResponderType.stub(_res);

  CopyWith$Fragment$Station<TRes> get currentStation =>
      CopyWith$Fragment$Station.stub(_res);

  CopyWith$Fragment$FirstResponder$firstResponderStationCollection<TRes>
      get firstResponderStationCollection =>
          CopyWith$Fragment$FirstResponder$firstResponderStationCollection.stub(
              _res);
}

const fragmentDefinitionFirstResponder = FragmentDefinitionNode(
  name: NameNode(value: 'FirstResponder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'FirstResponder'),
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
      name: NameNode(value: 'user'),
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
      name: NameNode(value: 'firstResponderTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'firstResponderType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FirstResponderType'),
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
      name: NameNode(value: 'currentStationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currentStation'),
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
      name: NameNode(value: 'firstResponderStationCollection'),
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
                  name: NameNode(value: 'FirstResponderStation'),
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
      name: NameNode(value: 'imageUrl'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'badgeNumber'),
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
const documentNodeFragmentFirstResponder = DocumentNode(definitions: [
  fragmentDefinitionFirstResponder,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionFirstResponderStation,
]);

extension ClientExtension$Fragment$FirstResponder on graphql.GraphQLClient {
  void writeFragment$FirstResponder({
    required Fragment$FirstResponder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FirstResponder',
            document: documentNodeFragmentFirstResponder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FirstResponder? readFragment$FirstResponder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FirstResponder',
          document: documentNodeFragmentFirstResponder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FirstResponder.fromJson(result);
  }
}

class Fragment$FirstResponder$firstResponderStationCollection {
  Fragment$FirstResponder$firstResponderStationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'FirstResponderStationConnection',
  });

  factory Fragment$FirstResponder$firstResponderStationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$FirstResponder$firstResponderStationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$FirstResponder$firstResponderStationCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$FirstResponder$firstResponderStationCollection$pageInfo
          .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$FirstResponder$firstResponderStationCollection$edges>
      edges;

  final Fragment$FirstResponder$firstResponderStationCollection$pageInfo
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
    if (!(other is Fragment$FirstResponder$firstResponderStationCollection) ||
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

extension UtilityExtension$Fragment$FirstResponder$firstResponderStationCollection
    on Fragment$FirstResponder$firstResponderStationCollection {
  CopyWith$Fragment$FirstResponder$firstResponderStationCollection<
          Fragment$FirstResponder$firstResponderStationCollection>
      get copyWith =>
          CopyWith$Fragment$FirstResponder$firstResponderStationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FirstResponder$firstResponderStationCollection<
    TRes> {
  factory CopyWith$Fragment$FirstResponder$firstResponderStationCollection(
    Fragment$FirstResponder$firstResponderStationCollection instance,
    TRes Function(Fragment$FirstResponder$firstResponderStationCollection) then,
  ) = _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection;

  factory CopyWith$Fragment$FirstResponder$firstResponderStationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection;

  TRes call({
    List<Fragment$FirstResponder$firstResponderStationCollection$edges>? edges,
    Fragment$FirstResponder$firstResponderStationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$FirstResponder$firstResponderStationCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges<
                      Fragment$FirstResponder$firstResponderStationCollection$edges>>)
          _fn);
  CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection<
        TRes>
    implements
        CopyWith$Fragment$FirstResponder$firstResponderStationCollection<TRes> {
  _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection(
    this._instance,
    this._then,
  );

  final Fragment$FirstResponder$firstResponderStationCollection _instance;

  final TRes Function(Fragment$FirstResponder$firstResponderStationCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FirstResponder$firstResponderStationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$FirstResponder$firstResponderStationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Fragment$FirstResponder$firstResponderStationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$FirstResponder$firstResponderStationCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges<
                          Fragment$FirstResponder$firstResponderStationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection<
        TRes>
    implements
        CopyWith$Fragment$FirstResponder$firstResponderStationCollection<TRes> {
  _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$FirstResponder$firstResponderStationCollection$edges>? edges,
    Fragment$FirstResponder$firstResponderStationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo
              .stub(_res);
}

class Fragment$FirstResponder$firstResponderStationCollection$edges {
  Fragment$FirstResponder$firstResponderStationCollection$edges({
    required this.node,
    this.$__typename = 'FirstResponderStationEdge',
  });

  factory Fragment$FirstResponder$firstResponderStationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$FirstResponder$firstResponderStationCollection$edges(
      node: Fragment$FirstResponderStation.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$FirstResponderStation node;

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
            is Fragment$FirstResponder$firstResponderStationCollection$edges) ||
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

extension UtilityExtension$Fragment$FirstResponder$firstResponderStationCollection$edges
    on Fragment$FirstResponder$firstResponderStationCollection$edges {
  CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges<
          Fragment$FirstResponder$firstResponderStationCollection$edges>
      get copyWith =>
          CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges<
    TRes> {
  factory CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges(
    Fragment$FirstResponder$firstResponderStationCollection$edges instance,
    TRes Function(Fragment$FirstResponder$firstResponderStationCollection$edges)
        then,
  ) = _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection$edges;

  factory CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection$edges;

  TRes call({
    Fragment$FirstResponderStation? node,
    String? $__typename,
  });
  CopyWith$Fragment$FirstResponderStation<TRes> get node;
}

class _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges<
            TRes> {
  _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$FirstResponder$firstResponderStationCollection$edges _instance;

  final TRes Function(
      Fragment$FirstResponder$firstResponderStationCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FirstResponder$firstResponderStationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$FirstResponderStation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FirstResponderStation<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$FirstResponderStation(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$FirstResponder$firstResponderStationCollection$edges<
            TRes> {
  _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$FirstResponderStation? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FirstResponderStation<TRes> get node =>
      CopyWith$Fragment$FirstResponderStation.stub(_res);
}

class Fragment$FirstResponder$firstResponderStationCollection$pageInfo {
  Fragment$FirstResponder$firstResponderStationCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$FirstResponder$firstResponderStationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
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
            is Fragment$FirstResponder$firstResponderStationCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$FirstResponder$firstResponderStationCollection$pageInfo
    on Fragment$FirstResponder$firstResponderStationCollection$pageInfo {
  CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
          Fragment$FirstResponder$firstResponderStationCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
    Fragment$FirstResponder$firstResponderStationCollection$pageInfo instance,
    TRes Function(
            Fragment$FirstResponder$firstResponderStationCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection$pageInfo;

  factory CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$FirstResponder$firstResponderStationCollection$pageInfo
      _instance;

  final TRes Function(
      Fragment$FirstResponder$firstResponderStationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$FirstResponder$firstResponderStationCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Fragment$FirstResponder$firstResponderStationCollection$pageInfo(
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

class Variables$Query$FirstResponder {
  factory Variables$Query$FirstResponder({required String id}) =>
      Variables$Query$FirstResponder._({
        r'id': id,
      });

  Variables$Query$FirstResponder._(this._$data);

  factory Variables$Query$FirstResponder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$FirstResponder._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$FirstResponder<Variables$Query$FirstResponder>
      get copyWith => CopyWith$Variables$Query$FirstResponder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FirstResponder) ||
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

abstract class CopyWith$Variables$Query$FirstResponder<TRes> {
  factory CopyWith$Variables$Query$FirstResponder(
    Variables$Query$FirstResponder instance,
    TRes Function(Variables$Query$FirstResponder) then,
  ) = _CopyWithImpl$Variables$Query$FirstResponder;

  factory CopyWith$Variables$Query$FirstResponder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FirstResponder;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$FirstResponder<TRes>
    implements CopyWith$Variables$Query$FirstResponder<TRes> {
  _CopyWithImpl$Variables$Query$FirstResponder(
    this._instance,
    this._then,
  );

  final Variables$Query$FirstResponder _instance;

  final TRes Function(Variables$Query$FirstResponder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$FirstResponder._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$FirstResponder<TRes>
    implements CopyWith$Variables$Query$FirstResponder<TRes> {
  _CopyWithStubImpl$Variables$Query$FirstResponder(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$FirstResponder {
  Query$FirstResponder({
    this.firstResponderCollection,
    this.$__typename = 'Query',
  });

  factory Query$FirstResponder.fromJson(Map<String, dynamic> json) {
    final l$firstResponderCollection = json['firstResponderCollection'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponder(
      firstResponderCollection: l$firstResponderCollection == null
          ? null
          : Query$FirstResponder$firstResponderCollection.fromJson(
              (l$firstResponderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FirstResponder$firstResponderCollection? firstResponderCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstResponderCollection = firstResponderCollection;
    _resultData['firstResponderCollection'] =
        l$firstResponderCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstResponderCollection = firstResponderCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstResponderCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FirstResponder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstResponderCollection = firstResponderCollection;
    final lOther$firstResponderCollection = other.firstResponderCollection;
    if (l$firstResponderCollection != lOther$firstResponderCollection) {
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

extension UtilityExtension$Query$FirstResponder on Query$FirstResponder {
  CopyWith$Query$FirstResponder<Query$FirstResponder> get copyWith =>
      CopyWith$Query$FirstResponder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FirstResponder<TRes> {
  factory CopyWith$Query$FirstResponder(
    Query$FirstResponder instance,
    TRes Function(Query$FirstResponder) then,
  ) = _CopyWithImpl$Query$FirstResponder;

  factory CopyWith$Query$FirstResponder.stub(TRes res) =
      _CopyWithStubImpl$Query$FirstResponder;

  TRes call({
    Query$FirstResponder$firstResponderCollection? firstResponderCollection,
    String? $__typename,
  });
  CopyWith$Query$FirstResponder$firstResponderCollection<TRes>
      get firstResponderCollection;
}

class _CopyWithImpl$Query$FirstResponder<TRes>
    implements CopyWith$Query$FirstResponder<TRes> {
  _CopyWithImpl$Query$FirstResponder(
    this._instance,
    this._then,
  );

  final Query$FirstResponder _instance;

  final TRes Function(Query$FirstResponder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstResponderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponder(
        firstResponderCollection: firstResponderCollection == _undefined
            ? _instance.firstResponderCollection
            : (firstResponderCollection
                as Query$FirstResponder$firstResponderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FirstResponder$firstResponderCollection<TRes>
      get firstResponderCollection {
    final local$firstResponderCollection = _instance.firstResponderCollection;
    return local$firstResponderCollection == null
        ? CopyWith$Query$FirstResponder$firstResponderCollection.stub(
            _then(_instance))
        : CopyWith$Query$FirstResponder$firstResponderCollection(
            local$firstResponderCollection,
            (e) => call(firstResponderCollection: e));
  }
}

class _CopyWithStubImpl$Query$FirstResponder<TRes>
    implements CopyWith$Query$FirstResponder<TRes> {
  _CopyWithStubImpl$Query$FirstResponder(this._res);

  TRes _res;

  call({
    Query$FirstResponder$firstResponderCollection? firstResponderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FirstResponder$firstResponderCollection<TRes>
      get firstResponderCollection =>
          CopyWith$Query$FirstResponder$firstResponderCollection.stub(_res);
}

const documentNodeQueryFirstResponder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FirstResponder'),
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
        name: NameNode(value: 'firstResponderCollection'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionFirstResponder,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionFirstResponderStation,
]);
Query$FirstResponder _parserFn$Query$FirstResponder(
        Map<String, dynamic> data) =>
    Query$FirstResponder.fromJson(data);
typedef OnQueryComplete$Query$FirstResponder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FirstResponder?,
);

class Options$Query$FirstResponder
    extends graphql.QueryOptions<Query$FirstResponder> {
  Options$Query$FirstResponder({
    String? operationName,
    required Variables$Query$FirstResponder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FirstResponder? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FirstResponder? onComplete,
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
                    data == null ? null : _parserFn$Query$FirstResponder(data),
                  ),
          onError: onError,
          document: documentNodeQueryFirstResponder,
          parserFn: _parserFn$Query$FirstResponder,
        );

  final OnQueryComplete$Query$FirstResponder? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FirstResponder
    extends graphql.WatchQueryOptions<Query$FirstResponder> {
  WatchOptions$Query$FirstResponder({
    String? operationName,
    required Variables$Query$FirstResponder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FirstResponder? typedOptimisticResult,
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
          document: documentNodeQueryFirstResponder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FirstResponder,
        );
}

class FetchMoreOptions$Query$FirstResponder extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FirstResponder({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$FirstResponder variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryFirstResponder,
        );
}

extension ClientExtension$Query$FirstResponder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FirstResponder>> query$FirstResponder(
          Options$Query$FirstResponder options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$FirstResponder> watchQuery$FirstResponder(
          WatchOptions$Query$FirstResponder options) =>
      this.watchQuery(options);
  void writeQuery$FirstResponder({
    required Query$FirstResponder data,
    required Variables$Query$FirstResponder variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFirstResponder),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FirstResponder? readQuery$FirstResponder({
    required Variables$Query$FirstResponder variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryFirstResponder),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FirstResponder.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FirstResponder> useQuery$FirstResponder(
        Options$Query$FirstResponder options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$FirstResponder> useWatchQuery$FirstResponder(
        WatchOptions$Query$FirstResponder options) =>
    graphql_flutter.useWatchQuery(options);

class Query$FirstResponder$Widget
    extends graphql_flutter.Query<Query$FirstResponder> {
  Query$FirstResponder$Widget({
    widgets.Key? key,
    required Options$Query$FirstResponder options,
    required graphql_flutter.QueryBuilder<Query$FirstResponder> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$FirstResponder$firstResponderCollection {
  Query$FirstResponder$firstResponderCollection({
    required this.edges,
    this.$__typename = 'FirstResponderConnection',
  });

  factory Query$FirstResponder$firstResponderCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponder$firstResponderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$FirstResponder$firstResponderCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FirstResponder$firstResponderCollection$edges> edges;

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
    if (!(other is Query$FirstResponder$firstResponderCollection) ||
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

extension UtilityExtension$Query$FirstResponder$firstResponderCollection
    on Query$FirstResponder$firstResponderCollection {
  CopyWith$Query$FirstResponder$firstResponderCollection<
          Query$FirstResponder$firstResponderCollection>
      get copyWith => CopyWith$Query$FirstResponder$firstResponderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FirstResponder$firstResponderCollection<TRes> {
  factory CopyWith$Query$FirstResponder$firstResponderCollection(
    Query$FirstResponder$firstResponderCollection instance,
    TRes Function(Query$FirstResponder$firstResponderCollection) then,
  ) = _CopyWithImpl$Query$FirstResponder$firstResponderCollection;

  factory CopyWith$Query$FirstResponder$firstResponderCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FirstResponder$firstResponderCollection;

  TRes call({
    List<Query$FirstResponder$firstResponderCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FirstResponder$firstResponderCollection$edges> Function(
              Iterable<
                  CopyWith$Query$FirstResponder$firstResponderCollection$edges<
                      Query$FirstResponder$firstResponderCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$FirstResponder$firstResponderCollection<TRes>
    implements CopyWith$Query$FirstResponder$firstResponderCollection<TRes> {
  _CopyWithImpl$Query$FirstResponder$firstResponderCollection(
    this._instance,
    this._then,
  );

  final Query$FirstResponder$firstResponderCollection _instance;

  final TRes Function(Query$FirstResponder$firstResponderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponder$firstResponderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Query$FirstResponder$firstResponderCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FirstResponder$firstResponderCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$FirstResponder$firstResponderCollection$edges<
                          Query$FirstResponder$firstResponderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$FirstResponder$firstResponderCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FirstResponder$firstResponderCollection<TRes>
    implements CopyWith$Query$FirstResponder$firstResponderCollection<TRes> {
  _CopyWithStubImpl$Query$FirstResponder$firstResponderCollection(this._res);

  TRes _res;

  call({
    List<Query$FirstResponder$firstResponderCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$FirstResponder$firstResponderCollection$edges {
  Query$FirstResponder$firstResponderCollection$edges({
    required this.node,
    this.$__typename = 'FirstResponderEdge',
  });

  factory Query$FirstResponder$firstResponderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponder$firstResponderCollection$edges(
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
    if (!(other is Query$FirstResponder$firstResponderCollection$edges) ||
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

extension UtilityExtension$Query$FirstResponder$firstResponderCollection$edges
    on Query$FirstResponder$firstResponderCollection$edges {
  CopyWith$Query$FirstResponder$firstResponderCollection$edges<
          Query$FirstResponder$firstResponderCollection$edges>
      get copyWith =>
          CopyWith$Query$FirstResponder$firstResponderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FirstResponder$firstResponderCollection$edges<
    TRes> {
  factory CopyWith$Query$FirstResponder$firstResponderCollection$edges(
    Query$FirstResponder$firstResponderCollection$edges instance,
    TRes Function(Query$FirstResponder$firstResponderCollection$edges) then,
  ) = _CopyWithImpl$Query$FirstResponder$firstResponderCollection$edges;

  factory CopyWith$Query$FirstResponder$firstResponderCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FirstResponder$firstResponderCollection$edges;

  TRes call({
    Fragment$FirstResponder? node,
    String? $__typename,
  });
  CopyWith$Fragment$FirstResponder<TRes> get node;
}

class _CopyWithImpl$Query$FirstResponder$firstResponderCollection$edges<TRes>
    implements
        CopyWith$Query$FirstResponder$firstResponderCollection$edges<TRes> {
  _CopyWithImpl$Query$FirstResponder$firstResponderCollection$edges(
    this._instance,
    this._then,
  );

  final Query$FirstResponder$firstResponderCollection$edges _instance;

  final TRes Function(Query$FirstResponder$firstResponderCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponder$firstResponderCollection$edges(
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

class _CopyWithStubImpl$Query$FirstResponder$firstResponderCollection$edges<
        TRes>
    implements
        CopyWith$Query$FirstResponder$firstResponderCollection$edges<TRes> {
  _CopyWithStubImpl$Query$FirstResponder$firstResponderCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$FirstResponder? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FirstResponder<TRes> get node =>
      CopyWith$Fragment$FirstResponder.stub(_res);
}

class Variables$Query$FirstResponderCollection {
  factory Variables$Query$FirstResponderCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$FirstResponderFilter? filter,
    List<Input$FirstResponderOrderBy>? orderBy,
  }) =>
      Variables$Query$FirstResponderCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$FirstResponderCollection._(this._$data);

  factory Variables$Query$FirstResponderCollection.fromJson(
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
          : Input$FirstResponderFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$FirstResponderOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$FirstResponderCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$FirstResponderFilter? get filter =>
      (_$data['filter'] as Input$FirstResponderFilter?);

  List<Input$FirstResponderOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$FirstResponderOrderBy>?);

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

  CopyWith$Variables$Query$FirstResponderCollection<
          Variables$Query$FirstResponderCollection>
      get copyWith => CopyWith$Variables$Query$FirstResponderCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$FirstResponderCollection) ||
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

abstract class CopyWith$Variables$Query$FirstResponderCollection<TRes> {
  factory CopyWith$Variables$Query$FirstResponderCollection(
    Variables$Query$FirstResponderCollection instance,
    TRes Function(Variables$Query$FirstResponderCollection) then,
  ) = _CopyWithImpl$Variables$Query$FirstResponderCollection;

  factory CopyWith$Variables$Query$FirstResponderCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$FirstResponderCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$FirstResponderFilter? filter,
    List<Input$FirstResponderOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$FirstResponderCollection<TRes>
    implements CopyWith$Variables$Query$FirstResponderCollection<TRes> {
  _CopyWithImpl$Variables$Query$FirstResponderCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$FirstResponderCollection _instance;

  final TRes Function(Variables$Query$FirstResponderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$FirstResponderCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$FirstResponderFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$FirstResponderOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$FirstResponderCollection<TRes>
    implements CopyWith$Variables$Query$FirstResponderCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$FirstResponderCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$FirstResponderFilter? filter,
    List<Input$FirstResponderOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$FirstResponderCollection {
  Query$FirstResponderCollection({
    this.firstResponderCollection,
    this.$__typename = 'Query',
  });

  factory Query$FirstResponderCollection.fromJson(Map<String, dynamic> json) {
    final l$firstResponderCollection = json['firstResponderCollection'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponderCollection(
      firstResponderCollection: l$firstResponderCollection == null
          ? null
          : Query$FirstResponderCollection$firstResponderCollection.fromJson(
              (l$firstResponderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FirstResponderCollection$firstResponderCollection?
      firstResponderCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$firstResponderCollection = firstResponderCollection;
    _resultData['firstResponderCollection'] =
        l$firstResponderCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$firstResponderCollection = firstResponderCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$firstResponderCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FirstResponderCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$firstResponderCollection = firstResponderCollection;
    final lOther$firstResponderCollection = other.firstResponderCollection;
    if (l$firstResponderCollection != lOther$firstResponderCollection) {
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

extension UtilityExtension$Query$FirstResponderCollection
    on Query$FirstResponderCollection {
  CopyWith$Query$FirstResponderCollection<Query$FirstResponderCollection>
      get copyWith => CopyWith$Query$FirstResponderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FirstResponderCollection<TRes> {
  factory CopyWith$Query$FirstResponderCollection(
    Query$FirstResponderCollection instance,
    TRes Function(Query$FirstResponderCollection) then,
  ) = _CopyWithImpl$Query$FirstResponderCollection;

  factory CopyWith$Query$FirstResponderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$FirstResponderCollection;

  TRes call({
    Query$FirstResponderCollection$firstResponderCollection?
        firstResponderCollection,
    String? $__typename,
  });
  CopyWith$Query$FirstResponderCollection$firstResponderCollection<TRes>
      get firstResponderCollection;
}

class _CopyWithImpl$Query$FirstResponderCollection<TRes>
    implements CopyWith$Query$FirstResponderCollection<TRes> {
  _CopyWithImpl$Query$FirstResponderCollection(
    this._instance,
    this._then,
  );

  final Query$FirstResponderCollection _instance;

  final TRes Function(Query$FirstResponderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstResponderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponderCollection(
        firstResponderCollection: firstResponderCollection == _undefined
            ? _instance.firstResponderCollection
            : (firstResponderCollection
                as Query$FirstResponderCollection$firstResponderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FirstResponderCollection$firstResponderCollection<TRes>
      get firstResponderCollection {
    final local$firstResponderCollection = _instance.firstResponderCollection;
    return local$firstResponderCollection == null
        ? CopyWith$Query$FirstResponderCollection$firstResponderCollection.stub(
            _then(_instance))
        : CopyWith$Query$FirstResponderCollection$firstResponderCollection(
            local$firstResponderCollection,
            (e) => call(firstResponderCollection: e));
  }
}

class _CopyWithStubImpl$Query$FirstResponderCollection<TRes>
    implements CopyWith$Query$FirstResponderCollection<TRes> {
  _CopyWithStubImpl$Query$FirstResponderCollection(this._res);

  TRes _res;

  call({
    Query$FirstResponderCollection$firstResponderCollection?
        firstResponderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FirstResponderCollection$firstResponderCollection<TRes>
      get firstResponderCollection =>
          CopyWith$Query$FirstResponderCollection$firstResponderCollection.stub(
              _res);
}

const documentNodeQueryFirstResponderCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FirstResponderCollection'),
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
          name: NameNode(value: 'FirstResponderFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'FirstResponderOrderBy'),
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
        name: NameNode(value: 'firstResponderCollection'),
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
  fragmentDefinitionFirstResponder,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionFirstResponderStation,
]);
Query$FirstResponderCollection _parserFn$Query$FirstResponderCollection(
        Map<String, dynamic> data) =>
    Query$FirstResponderCollection.fromJson(data);
typedef OnQueryComplete$Query$FirstResponderCollection = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$FirstResponderCollection?,
);

class Options$Query$FirstResponderCollection
    extends graphql.QueryOptions<Query$FirstResponderCollection> {
  Options$Query$FirstResponderCollection({
    String? operationName,
    Variables$Query$FirstResponderCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FirstResponderCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FirstResponderCollection? onComplete,
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
                        : _parserFn$Query$FirstResponderCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryFirstResponderCollection,
          parserFn: _parserFn$Query$FirstResponderCollection,
        );

  final OnQueryComplete$Query$FirstResponderCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FirstResponderCollection
    extends graphql.WatchQueryOptions<Query$FirstResponderCollection> {
  WatchOptions$Query$FirstResponderCollection({
    String? operationName,
    Variables$Query$FirstResponderCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FirstResponderCollection? typedOptimisticResult,
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
          document: documentNodeQueryFirstResponderCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FirstResponderCollection,
        );
}

class FetchMoreOptions$Query$FirstResponderCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FirstResponderCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$FirstResponderCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryFirstResponderCollection,
        );
}

extension ClientExtension$Query$FirstResponderCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FirstResponderCollection>>
      query$FirstResponderCollection(
              [Options$Query$FirstResponderCollection? options]) async =>
          await this.query(options ?? Options$Query$FirstResponderCollection());
  graphql.ObservableQuery<
      Query$FirstResponderCollection> watchQuery$FirstResponderCollection(
          [WatchOptions$Query$FirstResponderCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FirstResponderCollection());
  void writeQuery$FirstResponderCollection({
    required Query$FirstResponderCollection data,
    Variables$Query$FirstResponderCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryFirstResponderCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FirstResponderCollection? readQuery$FirstResponderCollection({
    Variables$Query$FirstResponderCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryFirstResponderCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$FirstResponderCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FirstResponderCollection>
    useQuery$FirstResponderCollection(
            [Options$Query$FirstResponderCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$FirstResponderCollection());
graphql.ObservableQuery<Query$FirstResponderCollection>
    useWatchQuery$FirstResponderCollection(
            [WatchOptions$Query$FirstResponderCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$FirstResponderCollection());

class Query$FirstResponderCollection$Widget
    extends graphql_flutter.Query<Query$FirstResponderCollection> {
  Query$FirstResponderCollection$Widget({
    widgets.Key? key,
    Options$Query$FirstResponderCollection? options,
    required graphql_flutter.QueryBuilder<Query$FirstResponderCollection>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FirstResponderCollection(),
          builder: builder,
        );
}

class Query$FirstResponderCollection$firstResponderCollection {
  Query$FirstResponderCollection$firstResponderCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'FirstResponderConnection',
  });

  factory Query$FirstResponderCollection$firstResponderCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponderCollection$firstResponderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$FirstResponderCollection$firstResponderCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$FirstResponderCollection$firstResponderCollection$pageInfo
          .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$FirstResponderCollection$firstResponderCollection$edges>
      edges;

  final Query$FirstResponderCollection$firstResponderCollection$pageInfo
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
    if (!(other is Query$FirstResponderCollection$firstResponderCollection) ||
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

extension UtilityExtension$Query$FirstResponderCollection$firstResponderCollection
    on Query$FirstResponderCollection$firstResponderCollection {
  CopyWith$Query$FirstResponderCollection$firstResponderCollection<
          Query$FirstResponderCollection$firstResponderCollection>
      get copyWith =>
          CopyWith$Query$FirstResponderCollection$firstResponderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FirstResponderCollection$firstResponderCollection<
    TRes> {
  factory CopyWith$Query$FirstResponderCollection$firstResponderCollection(
    Query$FirstResponderCollection$firstResponderCollection instance,
    TRes Function(Query$FirstResponderCollection$firstResponderCollection) then,
  ) = _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection;

  factory CopyWith$Query$FirstResponderCollection$firstResponderCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection;

  TRes call({
    List<Query$FirstResponderCollection$firstResponderCollection$edges>? edges,
    Query$FirstResponderCollection$firstResponderCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$FirstResponderCollection$firstResponderCollection$edges> Function(
              Iterable<
                  CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges<
                      Query$FirstResponderCollection$firstResponderCollection$edges>>)
          _fn);
  CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection<
        TRes>
    implements
        CopyWith$Query$FirstResponderCollection$firstResponderCollection<TRes> {
  _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection(
    this._instance,
    this._then,
  );

  final Query$FirstResponderCollection$firstResponderCollection _instance;

  final TRes Function(Query$FirstResponderCollection$firstResponderCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponderCollection$firstResponderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$FirstResponderCollection$firstResponderCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$FirstResponderCollection$firstResponderCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$FirstResponderCollection$firstResponderCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges<
                          Query$FirstResponderCollection$firstResponderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection<
        TRes>
    implements
        CopyWith$Query$FirstResponderCollection$firstResponderCollection<TRes> {
  _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection(
      this._res);

  TRes _res;

  call({
    List<Query$FirstResponderCollection$firstResponderCollection$edges>? edges,
    Query$FirstResponderCollection$firstResponderCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo
              .stub(_res);
}

class Query$FirstResponderCollection$firstResponderCollection$edges {
  Query$FirstResponderCollection$firstResponderCollection$edges({
    required this.node,
    this.$__typename = 'FirstResponderEdge',
  });

  factory Query$FirstResponderCollection$firstResponderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponderCollection$firstResponderCollection$edges(
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
    if (!(other
            is Query$FirstResponderCollection$firstResponderCollection$edges) ||
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

extension UtilityExtension$Query$FirstResponderCollection$firstResponderCollection$edges
    on Query$FirstResponderCollection$firstResponderCollection$edges {
  CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges<
          Query$FirstResponderCollection$firstResponderCollection$edges>
      get copyWith =>
          CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges<
    TRes> {
  factory CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges(
    Query$FirstResponderCollection$firstResponderCollection$edges instance,
    TRes Function(Query$FirstResponderCollection$firstResponderCollection$edges)
        then,
  ) = _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection$edges;

  factory CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection$edges;

  TRes call({
    Fragment$FirstResponder? node,
    String? $__typename,
  });
  CopyWith$Fragment$FirstResponder<TRes> get node;
}

class _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection$edges<
        TRes>
    implements
        CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges<
            TRes> {
  _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection$edges(
    this._instance,
    this._then,
  );

  final Query$FirstResponderCollection$firstResponderCollection$edges _instance;

  final TRes Function(
      Query$FirstResponderCollection$firstResponderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponderCollection$firstResponderCollection$edges(
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

class _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection$edges<
        TRes>
    implements
        CopyWith$Query$FirstResponderCollection$firstResponderCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$FirstResponder? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FirstResponder<TRes> get node =>
      CopyWith$Fragment$FirstResponder.stub(_res);
}

class Query$FirstResponderCollection$firstResponderCollection$pageInfo {
  Query$FirstResponderCollection$firstResponderCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$FirstResponderCollection$firstResponderCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$FirstResponderCollection$firstResponderCollection$pageInfo(
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
            is Query$FirstResponderCollection$firstResponderCollection$pageInfo) ||
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

extension UtilityExtension$Query$FirstResponderCollection$firstResponderCollection$pageInfo
    on Query$FirstResponderCollection$firstResponderCollection$pageInfo {
  CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
          Query$FirstResponderCollection$firstResponderCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo(
    Query$FirstResponderCollection$firstResponderCollection$pageInfo instance,
    TRes Function(
            Query$FirstResponderCollection$firstResponderCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection$pageInfo;

  factory CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$FirstResponderCollection$firstResponderCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$FirstResponderCollection$firstResponderCollection$pageInfo
      _instance;

  final TRes Function(
      Query$FirstResponderCollection$firstResponderCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FirstResponderCollection$firstResponderCollection$pageInfo(
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

class _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$FirstResponderCollection$firstResponderCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$FirstResponderCollection$firstResponderCollection$pageInfo(
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
