import '../../common/graphql/address.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$Station {
  Fragment$Station({
    required this.id,
    required this.siteId,
    required this.name,
    this.number,
    this.description,
    this.longDescription,
    required this.addressId,
    required this.address,
    this.imageUrl,
    this.coverUrl,
    required this.registrationCode,
    required this.createdAt,
    this.$__typename = 'Stations',
  });

  factory Fragment$Station.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$siteId = json['siteId'];
    final l$name = json['name'];
    final l$number = json['number'];
    final l$description = json['description'];
    final l$longDescription = json['longDescription'];
    final l$addressId = json['addressId'];
    final l$address = json['address'];
    final l$imageUrl = json['imageUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$registrationCode = json['registrationCode'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Station(
      id: (l$id as String),
      siteId: (l$siteId as String),
      name: (l$name as String),
      number: (l$number as int?),
      description: (l$description as String?),
      longDescription: (l$longDescription as String?),
      addressId: (l$addressId as String),
      address: Fragment$Address.fromJson((l$address as Map<String, dynamic>)),
      imageUrl: (l$imageUrl as String?),
      coverUrl: (l$coverUrl as String?),
      registrationCode: (l$registrationCode as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String siteId;

  final String name;

  final int? number;

  final String? description;

  final String? longDescription;

  final String addressId;

  final Fragment$Address address;

  final String? imageUrl;

  final String? coverUrl;

  final String registrationCode;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$longDescription = longDescription;
    _resultData['longDescription'] = l$longDescription;
    final l$addressId = addressId;
    _resultData['addressId'] = l$addressId;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$imageUrl = imageUrl;
    _resultData['imageUrl'] = l$imageUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$registrationCode = registrationCode;
    _resultData['registrationCode'] = l$registrationCode;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$siteId = siteId;
    final l$name = name;
    final l$number = number;
    final l$description = description;
    final l$longDescription = longDescription;
    final l$addressId = addressId;
    final l$address = address;
    final l$imageUrl = imageUrl;
    final l$coverUrl = coverUrl;
    final l$registrationCode = registrationCode;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$siteId,
      l$name,
      l$number,
      l$description,
      l$longDescription,
      l$addressId,
      l$address,
      l$imageUrl,
      l$coverUrl,
      l$registrationCode,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Station || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$longDescription = longDescription;
    final lOther$longDescription = other.longDescription;
    if (l$longDescription != lOther$longDescription) {
      return false;
    }
    final l$addressId = addressId;
    final lOther$addressId = other.addressId;
    if (l$addressId != lOther$addressId) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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
    final l$registrationCode = registrationCode;
    final lOther$registrationCode = other.registrationCode;
    if (l$registrationCode != lOther$registrationCode) {
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

extension UtilityExtension$Fragment$Station on Fragment$Station {
  CopyWith$Fragment$Station<Fragment$Station> get copyWith =>
      CopyWith$Fragment$Station(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Station<TRes> {
  factory CopyWith$Fragment$Station(
    Fragment$Station instance,
    TRes Function(Fragment$Station) then,
  ) = _CopyWithImpl$Fragment$Station;

  factory CopyWith$Fragment$Station.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Station;

  TRes call({
    String? id,
    String? siteId,
    String? name,
    int? number,
    String? description,
    String? longDescription,
    String? addressId,
    Fragment$Address? address,
    String? imageUrl,
    String? coverUrl,
    String? registrationCode,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$Address<TRes> get address;
}

class _CopyWithImpl$Fragment$Station<TRes>
    implements CopyWith$Fragment$Station<TRes> {
  _CopyWithImpl$Fragment$Station(
    this._instance,
    this._then,
  );

  final Fragment$Station _instance;

  final TRes Function(Fragment$Station) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? siteId = _undefined,
    Object? name = _undefined,
    Object? number = _undefined,
    Object? description = _undefined,
    Object? longDescription = _undefined,
    Object? addressId = _undefined,
    Object? address = _undefined,
    Object? imageUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? registrationCode = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Station(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        siteId: siteId == _undefined || siteId == null
            ? _instance.siteId
            : (siteId as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        number: number == _undefined ? _instance.number : (number as int?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        longDescription: longDescription == _undefined
            ? _instance.longDescription
            : (longDescription as String?),
        addressId: addressId == _undefined || addressId == null
            ? _instance.addressId
            : (addressId as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as Fragment$Address),
        imageUrl:
            imageUrl == _undefined ? _instance.imageUrl : (imageUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        registrationCode:
            registrationCode == _undefined || registrationCode == null
                ? _instance.registrationCode
                : (registrationCode as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Address<TRes> get address {
    final local$address = _instance.address;
    return CopyWith$Fragment$Address(local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Fragment$Station<TRes>
    implements CopyWith$Fragment$Station<TRes> {
  _CopyWithStubImpl$Fragment$Station(this._res);

  TRes _res;

  call({
    String? id,
    String? siteId,
    String? name,
    int? number,
    String? description,
    String? longDescription,
    String? addressId,
    Fragment$Address? address,
    String? imageUrl,
    String? coverUrl,
    String? registrationCode,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Address<TRes> get address =>
      CopyWith$Fragment$Address.stub(_res);
}

const fragmentDefinitionStation = FragmentDefinitionNode(
  name: NameNode(value: 'Station'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Stations'),
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
      name: NameNode(value: 'siteId'),
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
      name: NameNode(value: 'number'),
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
      name: NameNode(value: 'longDescription'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'addressId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'address'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Address'),
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
      name: NameNode(value: 'registrationCode'),
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
const documentNodeFragmentStation = DocumentNode(definitions: [
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
]);

extension ClientExtension$Fragment$Station on graphql.GraphQLClient {
  void writeFragment$Station({
    required Fragment$Station data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Station',
            document: documentNodeFragmentStation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Station? readFragment$Station({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Station',
          document: documentNodeFragmentStation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Station.fromJson(result);
  }
}

class Variables$Query$Station {
  factory Variables$Query$Station({required String id}) =>
      Variables$Query$Station._({
        r'id': id,
      });

  Variables$Query$Station._(this._$data);

  factory Variables$Query$Station.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Station._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Station<Variables$Query$Station> get copyWith =>
      CopyWith$Variables$Query$Station(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Station || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Station<TRes> {
  factory CopyWith$Variables$Query$Station(
    Variables$Query$Station instance,
    TRes Function(Variables$Query$Station) then,
  ) = _CopyWithImpl$Variables$Query$Station;

  factory CopyWith$Variables$Query$Station.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Station;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Station<TRes>
    implements CopyWith$Variables$Query$Station<TRes> {
  _CopyWithImpl$Variables$Query$Station(
    this._instance,
    this._then,
  );

  final Variables$Query$Station _instance;

  final TRes Function(Variables$Query$Station) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Station._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Station<TRes>
    implements CopyWith$Variables$Query$Station<TRes> {
  _CopyWithStubImpl$Variables$Query$Station(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Station {
  Query$Station({
    this.stationsCollection,
    this.$__typename = 'Query',
  });

  factory Query$Station.fromJson(Map<String, dynamic> json) {
    final l$stationsCollection = json['stationsCollection'];
    final l$$__typename = json['__typename'];
    return Query$Station(
      stationsCollection: l$stationsCollection == null
          ? null
          : Query$Station$stationsCollection.fromJson(
              (l$stationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Station$stationsCollection? stationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stationsCollection = stationsCollection;
    _resultData['stationsCollection'] = l$stationsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stationsCollection = stationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Station || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stationsCollection = stationsCollection;
    final lOther$stationsCollection = other.stationsCollection;
    if (l$stationsCollection != lOther$stationsCollection) {
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

extension UtilityExtension$Query$Station on Query$Station {
  CopyWith$Query$Station<Query$Station> get copyWith => CopyWith$Query$Station(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Station<TRes> {
  factory CopyWith$Query$Station(
    Query$Station instance,
    TRes Function(Query$Station) then,
  ) = _CopyWithImpl$Query$Station;

  factory CopyWith$Query$Station.stub(TRes res) =
      _CopyWithStubImpl$Query$Station;

  TRes call({
    Query$Station$stationsCollection? stationsCollection,
    String? $__typename,
  });
  CopyWith$Query$Station$stationsCollection<TRes> get stationsCollection;
}

class _CopyWithImpl$Query$Station<TRes>
    implements CopyWith$Query$Station<TRes> {
  _CopyWithImpl$Query$Station(
    this._instance,
    this._then,
  );

  final Query$Station _instance;

  final TRes Function(Query$Station) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station(
        stationsCollection: stationsCollection == _undefined
            ? _instance.stationsCollection
            : (stationsCollection as Query$Station$stationsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Station$stationsCollection<TRes> get stationsCollection {
    final local$stationsCollection = _instance.stationsCollection;
    return local$stationsCollection == null
        ? CopyWith$Query$Station$stationsCollection.stub(_then(_instance))
        : CopyWith$Query$Station$stationsCollection(
            local$stationsCollection, (e) => call(stationsCollection: e));
  }
}

class _CopyWithStubImpl$Query$Station<TRes>
    implements CopyWith$Query$Station<TRes> {
  _CopyWithStubImpl$Query$Station(this._res);

  TRes _res;

  call({
    Query$Station$stationsCollection? stationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Station$stationsCollection<TRes> get stationsCollection =>
      CopyWith$Query$Station$stationsCollection.stub(_res);
}

const documentNodeQueryStation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Station'),
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
        name: NameNode(value: 'stationsCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
]);
Query$Station _parserFn$Query$Station(Map<String, dynamic> data) =>
    Query$Station.fromJson(data);
typedef OnQueryComplete$Query$Station = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Station?,
);

class Options$Query$Station extends graphql.QueryOptions<Query$Station> {
  Options$Query$Station({
    String? operationName,
    required Variables$Query$Station variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Station? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Station? onComplete,
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
                    data == null ? null : _parserFn$Query$Station(data),
                  ),
          onError: onError,
          document: documentNodeQueryStation,
          parserFn: _parserFn$Query$Station,
        );

  final OnQueryComplete$Query$Station? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Station
    extends graphql.WatchQueryOptions<Query$Station> {
  WatchOptions$Query$Station({
    String? operationName,
    required Variables$Query$Station variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Station? typedOptimisticResult,
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
          document: documentNodeQueryStation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Station,
        );
}

class FetchMoreOptions$Query$Station extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Station({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Station variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryStation,
        );
}

extension ClientExtension$Query$Station on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Station>> query$Station(
          Options$Query$Station options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Station> watchQuery$Station(
          WatchOptions$Query$Station options) =>
      this.watchQuery(options);
  void writeQuery$Station({
    required Query$Station data,
    required Variables$Query$Station variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryStation),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Station? readQuery$Station({
    required Variables$Query$Station variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryStation),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Station.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Station> useQuery$Station(
        Options$Query$Station options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Station> useWatchQuery$Station(
        WatchOptions$Query$Station options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Station$Widget extends graphql_flutter.Query<Query$Station> {
  Query$Station$Widget({
    widgets.Key? key,
    required Options$Query$Station options,
    required graphql_flutter.QueryBuilder<Query$Station> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Station$stationsCollection {
  Query$Station$stationsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'StationsConnection',
  });

  factory Query$Station$stationsCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Station$stationsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Station$stationsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Station$stationsCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Station$stationsCollection$edges> edges;

  final Query$Station$stationsCollection$pageInfo pageInfo;

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
    if (other is! Query$Station$stationsCollection ||
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

extension UtilityExtension$Query$Station$stationsCollection
    on Query$Station$stationsCollection {
  CopyWith$Query$Station$stationsCollection<Query$Station$stationsCollection>
      get copyWith => CopyWith$Query$Station$stationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Station$stationsCollection<TRes> {
  factory CopyWith$Query$Station$stationsCollection(
    Query$Station$stationsCollection instance,
    TRes Function(Query$Station$stationsCollection) then,
  ) = _CopyWithImpl$Query$Station$stationsCollection;

  factory CopyWith$Query$Station$stationsCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Station$stationsCollection;

  TRes call({
    List<Query$Station$stationsCollection$edges>? edges,
    Query$Station$stationsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Station$stationsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Station$stationsCollection$edges<
                      Query$Station$stationsCollection$edges>>)
          _fn);
  CopyWith$Query$Station$stationsCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Station$stationsCollection<TRes>
    implements CopyWith$Query$Station$stationsCollection<TRes> {
  _CopyWithImpl$Query$Station$stationsCollection(
    this._instance,
    this._then,
  );

  final Query$Station$stationsCollection _instance;

  final TRes Function(Query$Station$stationsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station$stationsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Station$stationsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Station$stationsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Station$stationsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Station$stationsCollection$edges<
                          Query$Station$stationsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Station$stationsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$Station$stationsCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Station$stationsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Station$stationsCollection<TRes>
    implements CopyWith$Query$Station$stationsCollection<TRes> {
  _CopyWithStubImpl$Query$Station$stationsCollection(this._res);

  TRes _res;

  call({
    List<Query$Station$stationsCollection$edges>? edges,
    Query$Station$stationsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$Station$stationsCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Station$stationsCollection$pageInfo.stub(_res);
}

class Query$Station$stationsCollection$edges {
  Query$Station$stationsCollection$edges({
    required this.node,
    this.$__typename = 'StationsEdge',
  });

  factory Query$Station$stationsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Station$stationsCollection$edges(
      node: Fragment$Station.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Station node;

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
    if (other is! Query$Station$stationsCollection$edges ||
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

extension UtilityExtension$Query$Station$stationsCollection$edges
    on Query$Station$stationsCollection$edges {
  CopyWith$Query$Station$stationsCollection$edges<
          Query$Station$stationsCollection$edges>
      get copyWith => CopyWith$Query$Station$stationsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Station$stationsCollection$edges<TRes> {
  factory CopyWith$Query$Station$stationsCollection$edges(
    Query$Station$stationsCollection$edges instance,
    TRes Function(Query$Station$stationsCollection$edges) then,
  ) = _CopyWithImpl$Query$Station$stationsCollection$edges;

  factory CopyWith$Query$Station$stationsCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Station$stationsCollection$edges;

  TRes call({
    Fragment$Station? node,
    String? $__typename,
  });
  CopyWith$Fragment$Station<TRes> get node;
}

class _CopyWithImpl$Query$Station$stationsCollection$edges<TRes>
    implements CopyWith$Query$Station$stationsCollection$edges<TRes> {
  _CopyWithImpl$Query$Station$stationsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Station$stationsCollection$edges _instance;

  final TRes Function(Query$Station$stationsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station$stationsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Station),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Station<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Station(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Station$stationsCollection$edges<TRes>
    implements CopyWith$Query$Station$stationsCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Station$stationsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Station? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station<TRes> get node =>
      CopyWith$Fragment$Station.stub(_res);
}

class Query$Station$stationsCollection$pageInfo {
  Query$Station$stationsCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$Station$stationsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$Station$stationsCollection$pageInfo(
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
    if (other is! Query$Station$stationsCollection$pageInfo ||
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

extension UtilityExtension$Query$Station$stationsCollection$pageInfo
    on Query$Station$stationsCollection$pageInfo {
  CopyWith$Query$Station$stationsCollection$pageInfo<
          Query$Station$stationsCollection$pageInfo>
      get copyWith => CopyWith$Query$Station$stationsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Station$stationsCollection$pageInfo<TRes> {
  factory CopyWith$Query$Station$stationsCollection$pageInfo(
    Query$Station$stationsCollection$pageInfo instance,
    TRes Function(Query$Station$stationsCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$Station$stationsCollection$pageInfo;

  factory CopyWith$Query$Station$stationsCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Station$stationsCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Station$stationsCollection$pageInfo<TRes>
    implements CopyWith$Query$Station$stationsCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$Station$stationsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Station$stationsCollection$pageInfo _instance;

  final TRes Function(Query$Station$stationsCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station$stationsCollection$pageInfo(
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

class _CopyWithStubImpl$Query$Station$stationsCollection$pageInfo<TRes>
    implements CopyWith$Query$Station$stationsCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Station$stationsCollection$pageInfo(this._res);

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

class Variables$Query$StationCollection {
  factory Variables$Query$StationCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
    Input$StationsFilter? filter,
    List<Input$StationsOrderBy>? orderBy,
  }) =>
      Variables$Query$StationCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (offset != null) r'offset': offset,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$StationCollection._(this._$data);

  factory Variables$Query$StationCollection.fromJson(
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
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$StationsFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$StationsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$StationCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  int? get offset => (_$data['offset'] as int?);

  Input$StationsFilter? get filter =>
      (_$data['filter'] as Input$StationsFilter?);

  List<Input$StationsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$StationsOrderBy>?);

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
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
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

  CopyWith$Variables$Query$StationCollection<Variables$Query$StationCollection>
      get copyWith => CopyWith$Variables$Query$StationCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StationCollection ||
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
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
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
    final l$offset = offset;
    final l$filter = filter;
    final l$orderBy = orderBy;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('offset') ? l$offset : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$StationCollection<TRes> {
  factory CopyWith$Variables$Query$StationCollection(
    Variables$Query$StationCollection instance,
    TRes Function(Variables$Query$StationCollection) then,
  ) = _CopyWithImpl$Variables$Query$StationCollection;

  factory CopyWith$Variables$Query$StationCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$StationCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
    Input$StationsFilter? filter,
    List<Input$StationsOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$StationCollection<TRes>
    implements CopyWith$Variables$Query$StationCollection<TRes> {
  _CopyWithImpl$Variables$Query$StationCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$StationCollection _instance;

  final TRes Function(Variables$Query$StationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? offset = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$StationCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (offset != _undefined) 'offset': (offset as int?),
        if (filter != _undefined) 'filter': (filter as Input$StationsFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$StationsOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$StationCollection<TRes>
    implements CopyWith$Variables$Query$StationCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$StationCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    int? offset,
    Input$StationsFilter? filter,
    List<Input$StationsOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$StationCollection {
  Query$StationCollection({
    this.stationsCollection,
    this.$__typename = 'Query',
  });

  factory Query$StationCollection.fromJson(Map<String, dynamic> json) {
    final l$stationsCollection = json['stationsCollection'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection(
      stationsCollection: l$stationsCollection == null
          ? null
          : Query$StationCollection$stationsCollection.fromJson(
              (l$stationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationCollection$stationsCollection? stationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stationsCollection = stationsCollection;
    _resultData['stationsCollection'] = l$stationsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stationsCollection = stationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StationCollection || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stationsCollection = stationsCollection;
    final lOther$stationsCollection = other.stationsCollection;
    if (l$stationsCollection != lOther$stationsCollection) {
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

extension UtilityExtension$Query$StationCollection on Query$StationCollection {
  CopyWith$Query$StationCollection<Query$StationCollection> get copyWith =>
      CopyWith$Query$StationCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$StationCollection<TRes> {
  factory CopyWith$Query$StationCollection(
    Query$StationCollection instance,
    TRes Function(Query$StationCollection) then,
  ) = _CopyWithImpl$Query$StationCollection;

  factory CopyWith$Query$StationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$StationCollection;

  TRes call({
    Query$StationCollection$stationsCollection? stationsCollection,
    String? $__typename,
  });
  CopyWith$Query$StationCollection$stationsCollection<TRes>
      get stationsCollection;
}

class _CopyWithImpl$Query$StationCollection<TRes>
    implements CopyWith$Query$StationCollection<TRes> {
  _CopyWithImpl$Query$StationCollection(
    this._instance,
    this._then,
  );

  final Query$StationCollection _instance;

  final TRes Function(Query$StationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? stationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection(
        stationsCollection: stationsCollection == _undefined
            ? _instance.stationsCollection
            : (stationsCollection
                as Query$StationCollection$stationsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationCollection$stationsCollection<TRes>
      get stationsCollection {
    final local$stationsCollection = _instance.stationsCollection;
    return local$stationsCollection == null
        ? CopyWith$Query$StationCollection$stationsCollection.stub(
            _then(_instance))
        : CopyWith$Query$StationCollection$stationsCollection(
            local$stationsCollection, (e) => call(stationsCollection: e));
  }
}

class _CopyWithStubImpl$Query$StationCollection<TRes>
    implements CopyWith$Query$StationCollection<TRes> {
  _CopyWithStubImpl$Query$StationCollection(this._res);

  TRes _res;

  call({
    Query$StationCollection$stationsCollection? stationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationCollection$stationsCollection<TRes>
      get stationsCollection =>
          CopyWith$Query$StationCollection$stationsCollection.stub(_res);
}

const documentNodeQueryStationCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StationCollection'),
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
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'StationsFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'StationsOrderBy'),
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
        name: NameNode(value: 'stationsCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
]);
Query$StationCollection _parserFn$Query$StationCollection(
        Map<String, dynamic> data) =>
    Query$StationCollection.fromJson(data);
typedef OnQueryComplete$Query$StationCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$StationCollection?,
);

class Options$Query$StationCollection
    extends graphql.QueryOptions<Query$StationCollection> {
  Options$Query$StationCollection({
    String? operationName,
    Variables$Query$StationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StationCollection? onComplete,
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
                        : _parserFn$Query$StationCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryStationCollection,
          parserFn: _parserFn$Query$StationCollection,
        );

  final OnQueryComplete$Query$StationCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$StationCollection
    extends graphql.WatchQueryOptions<Query$StationCollection> {
  WatchOptions$Query$StationCollection({
    String? operationName,
    Variables$Query$StationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationCollection? typedOptimisticResult,
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
          document: documentNodeQueryStationCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StationCollection,
        );
}

class FetchMoreOptions$Query$StationCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StationCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$StationCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryStationCollection,
        );
}

extension ClientExtension$Query$StationCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StationCollection>> query$StationCollection(
          [Options$Query$StationCollection? options]) async =>
      await this.query(options ?? Options$Query$StationCollection());
  graphql.ObservableQuery<Query$StationCollection> watchQuery$StationCollection(
          [WatchOptions$Query$StationCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$StationCollection());
  void writeQuery$StationCollection({
    required Query$StationCollection data,
    Variables$Query$StationCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryStationCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StationCollection? readQuery$StationCollection({
    Variables$Query$StationCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryStationCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$StationCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StationCollection>
    useQuery$StationCollection([Options$Query$StationCollection? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$StationCollection());
graphql.ObservableQuery<Query$StationCollection>
    useWatchQuery$StationCollection(
            [WatchOptions$Query$StationCollection? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$StationCollection());

class Query$StationCollection$Widget
    extends graphql_flutter.Query<Query$StationCollection> {
  Query$StationCollection$Widget({
    widgets.Key? key,
    Options$Query$StationCollection? options,
    required graphql_flutter.QueryBuilder<Query$StationCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$StationCollection(),
          builder: builder,
        );
}

class Query$StationCollection$stationsCollection {
  Query$StationCollection$stationsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'StationsConnection',
  });

  factory Query$StationCollection$stationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection$stationsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$StationCollection$stationsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$StationCollection$stationsCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$StationCollection$stationsCollection$edges> edges;

  final Query$StationCollection$stationsCollection$pageInfo pageInfo;

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
    if (other is! Query$StationCollection$stationsCollection ||
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

extension UtilityExtension$Query$StationCollection$stationsCollection
    on Query$StationCollection$stationsCollection {
  CopyWith$Query$StationCollection$stationsCollection<
          Query$StationCollection$stationsCollection>
      get copyWith => CopyWith$Query$StationCollection$stationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationCollection$stationsCollection<TRes> {
  factory CopyWith$Query$StationCollection$stationsCollection(
    Query$StationCollection$stationsCollection instance,
    TRes Function(Query$StationCollection$stationsCollection) then,
  ) = _CopyWithImpl$Query$StationCollection$stationsCollection;

  factory CopyWith$Query$StationCollection$stationsCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$StationCollection$stationsCollection;

  TRes call({
    List<Query$StationCollection$stationsCollection$edges>? edges,
    Query$StationCollection$stationsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$StationCollection$stationsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$StationCollection$stationsCollection$edges<
                      Query$StationCollection$stationsCollection$edges>>)
          _fn);
  CopyWith$Query$StationCollection$stationsCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$StationCollection$stationsCollection<TRes>
    implements CopyWith$Query$StationCollection$stationsCollection<TRes> {
  _CopyWithImpl$Query$StationCollection$stationsCollection(
    this._instance,
    this._then,
  );

  final Query$StationCollection$stationsCollection _instance;

  final TRes Function(Query$StationCollection$stationsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection$stationsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$StationCollection$stationsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$StationCollection$stationsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$StationCollection$stationsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$StationCollection$stationsCollection$edges<
                          Query$StationCollection$stationsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$StationCollection$stationsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$StationCollection$stationsCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$StationCollection$stationsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$StationCollection$stationsCollection<TRes>
    implements CopyWith$Query$StationCollection$stationsCollection<TRes> {
  _CopyWithStubImpl$Query$StationCollection$stationsCollection(this._res);

  TRes _res;

  call({
    List<Query$StationCollection$stationsCollection$edges>? edges,
    Query$StationCollection$stationsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$StationCollection$stationsCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$StationCollection$stationsCollection$pageInfo.stub(
              _res);
}

class Query$StationCollection$stationsCollection$edges {
  Query$StationCollection$stationsCollection$edges({
    required this.node,
    this.$__typename = 'StationsEdge',
  });

  factory Query$StationCollection$stationsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection$stationsCollection$edges(
      node: Fragment$Station.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Station node;

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
    if (other is! Query$StationCollection$stationsCollection$edges ||
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

extension UtilityExtension$Query$StationCollection$stationsCollection$edges
    on Query$StationCollection$stationsCollection$edges {
  CopyWith$Query$StationCollection$stationsCollection$edges<
          Query$StationCollection$stationsCollection$edges>
      get copyWith => CopyWith$Query$StationCollection$stationsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationCollection$stationsCollection$edges<TRes> {
  factory CopyWith$Query$StationCollection$stationsCollection$edges(
    Query$StationCollection$stationsCollection$edges instance,
    TRes Function(Query$StationCollection$stationsCollection$edges) then,
  ) = _CopyWithImpl$Query$StationCollection$stationsCollection$edges;

  factory CopyWith$Query$StationCollection$stationsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationCollection$stationsCollection$edges;

  TRes call({
    Fragment$Station? node,
    String? $__typename,
  });
  CopyWith$Fragment$Station<TRes> get node;
}

class _CopyWithImpl$Query$StationCollection$stationsCollection$edges<TRes>
    implements CopyWith$Query$StationCollection$stationsCollection$edges<TRes> {
  _CopyWithImpl$Query$StationCollection$stationsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$StationCollection$stationsCollection$edges _instance;

  final TRes Function(Query$StationCollection$stationsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection$stationsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Station),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Station<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Station(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$StationCollection$stationsCollection$edges<TRes>
    implements CopyWith$Query$StationCollection$stationsCollection$edges<TRes> {
  _CopyWithStubImpl$Query$StationCollection$stationsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Station? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station<TRes> get node =>
      CopyWith$Fragment$Station.stub(_res);
}

class Query$StationCollection$stationsCollection$pageInfo {
  Query$StationCollection$stationsCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$StationCollection$stationsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection$stationsCollection$pageInfo(
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
    if (other is! Query$StationCollection$stationsCollection$pageInfo ||
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

extension UtilityExtension$Query$StationCollection$stationsCollection$pageInfo
    on Query$StationCollection$stationsCollection$pageInfo {
  CopyWith$Query$StationCollection$stationsCollection$pageInfo<
          Query$StationCollection$stationsCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$StationCollection$stationsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationCollection$stationsCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$StationCollection$stationsCollection$pageInfo(
    Query$StationCollection$stationsCollection$pageInfo instance,
    TRes Function(Query$StationCollection$stationsCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$StationCollection$stationsCollection$pageInfo;

  factory CopyWith$Query$StationCollection$stationsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationCollection$stationsCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StationCollection$stationsCollection$pageInfo<TRes>
    implements
        CopyWith$Query$StationCollection$stationsCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$StationCollection$stationsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$StationCollection$stationsCollection$pageInfo _instance;

  final TRes Function(Query$StationCollection$stationsCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection$stationsCollection$pageInfo(
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

class _CopyWithStubImpl$Query$StationCollection$stationsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$StationCollection$stationsCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$StationCollection$stationsCollection$pageInfo(
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

class Variables$Mutation$UpdateStation {
  factory Variables$Mutation$UpdateStation({
    required String id,
    required Input$StationsUpdateInput input,
  }) =>
      Variables$Mutation$UpdateStation._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateStation._(this._$data);

  factory Variables$Mutation$UpdateStation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$StationsUpdateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateStation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$StationsUpdateInput get input =>
      (_$data['input'] as Input$StationsUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateStation<Variables$Mutation$UpdateStation>
      get copyWith => CopyWith$Variables$Mutation$UpdateStation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateStation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$input = input;
    return Object.hashAll([
      l$id,
      l$input,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateStation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateStation(
    Variables$Mutation$UpdateStation instance,
    TRes Function(Variables$Mutation$UpdateStation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateStation;

  factory CopyWith$Variables$Mutation$UpdateStation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateStation;

  TRes call({
    String? id,
    Input$StationsUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateStation<TRes>
    implements CopyWith$Variables$Mutation$UpdateStation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateStation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateStation _instance;

  final TRes Function(Variables$Mutation$UpdateStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateStation._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$StationsUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateStation<TRes>
    implements CopyWith$Variables$Mutation$UpdateStation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateStation(this._res);

  TRes _res;

  call({
    String? id,
    Input$StationsUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateStation {
  Mutation$UpdateStation({
    required this.updateStationsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateStation.fromJson(Map<String, dynamic> json) {
    final l$updateStationsCollection = json['updateStationsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStation(
      updateStationsCollection:
          Mutation$UpdateStation$updateStationsCollection.fromJson(
              (l$updateStationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateStation$updateStationsCollection
      updateStationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateStationsCollection = updateStationsCollection;
    _resultData['updateStationsCollection'] =
        l$updateStationsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateStationsCollection = updateStationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateStationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateStation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateStationsCollection = updateStationsCollection;
    final lOther$updateStationsCollection = other.updateStationsCollection;
    if (l$updateStationsCollection != lOther$updateStationsCollection) {
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

extension UtilityExtension$Mutation$UpdateStation on Mutation$UpdateStation {
  CopyWith$Mutation$UpdateStation<Mutation$UpdateStation> get copyWith =>
      CopyWith$Mutation$UpdateStation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateStation<TRes> {
  factory CopyWith$Mutation$UpdateStation(
    Mutation$UpdateStation instance,
    TRes Function(Mutation$UpdateStation) then,
  ) = _CopyWithImpl$Mutation$UpdateStation;

  factory CopyWith$Mutation$UpdateStation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStation;

  TRes call({
    Mutation$UpdateStation$updateStationsCollection? updateStationsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateStation$updateStationsCollection<TRes>
      get updateStationsCollection;
}

class _CopyWithImpl$Mutation$UpdateStation<TRes>
    implements CopyWith$Mutation$UpdateStation<TRes> {
  _CopyWithImpl$Mutation$UpdateStation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStation _instance;

  final TRes Function(Mutation$UpdateStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateStationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateStation(
        updateStationsCollection: updateStationsCollection == _undefined ||
                updateStationsCollection == null
            ? _instance.updateStationsCollection
            : (updateStationsCollection
                as Mutation$UpdateStation$updateStationsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateStation$updateStationsCollection<TRes>
      get updateStationsCollection {
    final local$updateStationsCollection = _instance.updateStationsCollection;
    return CopyWith$Mutation$UpdateStation$updateStationsCollection(
        local$updateStationsCollection,
        (e) => call(updateStationsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateStation<TRes>
    implements CopyWith$Mutation$UpdateStation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStation(this._res);

  TRes _res;

  call({
    Mutation$UpdateStation$updateStationsCollection? updateStationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateStation$updateStationsCollection<TRes>
      get updateStationsCollection =>
          CopyWith$Mutation$UpdateStation$updateStationsCollection.stub(_res);
}

const documentNodeMutationUpdateStation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateStation'),
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
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'StationsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateStationsCollection'),
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
            value: VariableNode(name: NameNode(value: 'input')),
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
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
]);
Mutation$UpdateStation _parserFn$Mutation$UpdateStation(
        Map<String, dynamic> data) =>
    Mutation$UpdateStation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateStation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateStation?,
);

class Options$Mutation$UpdateStation
    extends graphql.MutationOptions<Mutation$UpdateStation> {
  Options$Mutation$UpdateStation({
    String? operationName,
    required Variables$Mutation$UpdateStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateStation>? update,
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
                        : _parserFn$Mutation$UpdateStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateStation,
          parserFn: _parserFn$Mutation$UpdateStation,
        );

  final OnMutationCompleted$Mutation$UpdateStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateStation
    extends graphql.WatchQueryOptions<Mutation$UpdateStation> {
  WatchOptions$Mutation$UpdateStation({
    String? operationName,
    required Variables$Mutation$UpdateStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateStation? typedOptimisticResult,
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
          document: documentNodeMutationUpdateStation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateStation,
        );
}

extension ClientExtension$Mutation$UpdateStation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateStation>> mutate$UpdateStation(
          Options$Mutation$UpdateStation options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateStation> watchMutation$UpdateStation(
          WatchOptions$Mutation$UpdateStation options) =>
      this.watchMutation(options);
}

class Mutation$UpdateStation$HookResult {
  Mutation$UpdateStation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateStation runMutation;

  final graphql.QueryResult<Mutation$UpdateStation> result;
}

Mutation$UpdateStation$HookResult useMutation$UpdateStation(
    [WidgetOptions$Mutation$UpdateStation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateStation());
  return Mutation$UpdateStation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateStation> useWatchMutation$UpdateStation(
        WatchOptions$Mutation$UpdateStation options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateStation
    extends graphql.MutationOptions<Mutation$UpdateStation> {
  WidgetOptions$Mutation$UpdateStation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateStation>? update,
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
                        : _parserFn$Mutation$UpdateStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateStation,
          parserFn: _parserFn$Mutation$UpdateStation,
        );

  final OnMutationCompleted$Mutation$UpdateStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateStation
    = graphql.MultiSourceResult<Mutation$UpdateStation> Function(
  Variables$Mutation$UpdateStation, {
  Object? optimisticResult,
  Mutation$UpdateStation? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateStation = widgets.Widget Function(
  RunMutation$Mutation$UpdateStation,
  graphql.QueryResult<Mutation$UpdateStation>?,
);

class Mutation$UpdateStation$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateStation> {
  Mutation$UpdateStation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateStation? options,
    required Builder$Mutation$UpdateStation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateStation(),
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

class Mutation$UpdateStation$updateStationsCollection {
  Mutation$UpdateStation$updateStationsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'StationsUpdateResponse',
  });

  factory Mutation$UpdateStation$updateStationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateStation$updateStationsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Station.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Station> records;

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
    if (other is! Mutation$UpdateStation$updateStationsCollection ||
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

extension UtilityExtension$Mutation$UpdateStation$updateStationsCollection
    on Mutation$UpdateStation$updateStationsCollection {
  CopyWith$Mutation$UpdateStation$updateStationsCollection<
          Mutation$UpdateStation$updateStationsCollection>
      get copyWith => CopyWith$Mutation$UpdateStation$updateStationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateStation$updateStationsCollection<TRes> {
  factory CopyWith$Mutation$UpdateStation$updateStationsCollection(
    Mutation$UpdateStation$updateStationsCollection instance,
    TRes Function(Mutation$UpdateStation$updateStationsCollection) then,
  ) = _CopyWithImpl$Mutation$UpdateStation$updateStationsCollection;

  factory CopyWith$Mutation$UpdateStation$updateStationsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateStation$updateStationsCollection;

  TRes call({
    List<Fragment$Station>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Station> Function(
              Iterable<CopyWith$Fragment$Station<Fragment$Station>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateStation$updateStationsCollection<TRes>
    implements CopyWith$Mutation$UpdateStation$updateStationsCollection<TRes> {
  _CopyWithImpl$Mutation$UpdateStation$updateStationsCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateStation$updateStationsCollection _instance;

  final TRes Function(Mutation$UpdateStation$updateStationsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateStation$updateStationsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Station>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Station> Function(
                  Iterable<CopyWith$Fragment$Station<Fragment$Station>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Station(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateStation$updateStationsCollection<TRes>
    implements CopyWith$Mutation$UpdateStation$updateStationsCollection<TRes> {
  _CopyWithStubImpl$Mutation$UpdateStation$updateStationsCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Station>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$CreateStation {
  factory Variables$Mutation$CreateStation(
          {required Input$StationsInsertInput input}) =>
      Variables$Mutation$CreateStation._({
        r'input': input,
      });

  Variables$Mutation$CreateStation._(this._$data);

  factory Variables$Mutation$CreateStation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$StationsInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateStation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$StationsInsertInput get input =>
      (_$data['input'] as Input$StationsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateStation<Variables$Mutation$CreateStation>
      get copyWith => CopyWith$Variables$Mutation$CreateStation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateStation ||
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

abstract class CopyWith$Variables$Mutation$CreateStation<TRes> {
  factory CopyWith$Variables$Mutation$CreateStation(
    Variables$Mutation$CreateStation instance,
    TRes Function(Variables$Mutation$CreateStation) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateStation;

  factory CopyWith$Variables$Mutation$CreateStation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateStation;

  TRes call({Input$StationsInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateStation<TRes>
    implements CopyWith$Variables$Mutation$CreateStation<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateStation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateStation _instance;

  final TRes Function(Variables$Mutation$CreateStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateStation._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$StationsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateStation<TRes>
    implements CopyWith$Variables$Mutation$CreateStation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateStation(this._res);

  TRes _res;

  call({Input$StationsInsertInput? input}) => _res;
}

class Mutation$CreateStation {
  Mutation$CreateStation({
    this.insertIntoStationsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateStation.fromJson(Map<String, dynamic> json) {
    final l$insertIntoStationsCollection = json['insertIntoStationsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateStation(
      insertIntoStationsCollection: l$insertIntoStationsCollection == null
          ? null
          : Mutation$CreateStation$insertIntoStationsCollection.fromJson(
              (l$insertIntoStationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateStation$insertIntoStationsCollection?
      insertIntoStationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoStationsCollection = insertIntoStationsCollection;
    _resultData['insertIntoStationsCollection'] =
        l$insertIntoStationsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoStationsCollection = insertIntoStationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoStationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateStation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoStationsCollection = insertIntoStationsCollection;
    final lOther$insertIntoStationsCollection =
        other.insertIntoStationsCollection;
    if (l$insertIntoStationsCollection != lOther$insertIntoStationsCollection) {
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

extension UtilityExtension$Mutation$CreateStation on Mutation$CreateStation {
  CopyWith$Mutation$CreateStation<Mutation$CreateStation> get copyWith =>
      CopyWith$Mutation$CreateStation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateStation<TRes> {
  factory CopyWith$Mutation$CreateStation(
    Mutation$CreateStation instance,
    TRes Function(Mutation$CreateStation) then,
  ) = _CopyWithImpl$Mutation$CreateStation;

  factory CopyWith$Mutation$CreateStation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateStation;

  TRes call({
    Mutation$CreateStation$insertIntoStationsCollection?
        insertIntoStationsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateStation$insertIntoStationsCollection<TRes>
      get insertIntoStationsCollection;
}

class _CopyWithImpl$Mutation$CreateStation<TRes>
    implements CopyWith$Mutation$CreateStation<TRes> {
  _CopyWithImpl$Mutation$CreateStation(
    this._instance,
    this._then,
  );

  final Mutation$CreateStation _instance;

  final TRes Function(Mutation$CreateStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoStationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateStation(
        insertIntoStationsCollection: insertIntoStationsCollection == _undefined
            ? _instance.insertIntoStationsCollection
            : (insertIntoStationsCollection
                as Mutation$CreateStation$insertIntoStationsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateStation$insertIntoStationsCollection<TRes>
      get insertIntoStationsCollection {
    final local$insertIntoStationsCollection =
        _instance.insertIntoStationsCollection;
    return local$insertIntoStationsCollection == null
        ? CopyWith$Mutation$CreateStation$insertIntoStationsCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateStation$insertIntoStationsCollection(
            local$insertIntoStationsCollection,
            (e) => call(insertIntoStationsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateStation<TRes>
    implements CopyWith$Mutation$CreateStation<TRes> {
  _CopyWithStubImpl$Mutation$CreateStation(this._res);

  TRes _res;

  call({
    Mutation$CreateStation$insertIntoStationsCollection?
        insertIntoStationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateStation$insertIntoStationsCollection<TRes>
      get insertIntoStationsCollection =>
          CopyWith$Mutation$CreateStation$insertIntoStationsCollection.stub(
              _res);
}

const documentNodeMutationCreateStation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateStation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'StationsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoStationsCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
]);
Mutation$CreateStation _parserFn$Mutation$CreateStation(
        Map<String, dynamic> data) =>
    Mutation$CreateStation.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateStation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateStation?,
);

class Options$Mutation$CreateStation
    extends graphql.MutationOptions<Mutation$CreateStation> {
  Options$Mutation$CreateStation({
    String? operationName,
    required Variables$Mutation$CreateStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateStation>? update,
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
                        : _parserFn$Mutation$CreateStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateStation,
          parserFn: _parserFn$Mutation$CreateStation,
        );

  final OnMutationCompleted$Mutation$CreateStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateStation
    extends graphql.WatchQueryOptions<Mutation$CreateStation> {
  WatchOptions$Mutation$CreateStation({
    String? operationName,
    required Variables$Mutation$CreateStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateStation? typedOptimisticResult,
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
          document: documentNodeMutationCreateStation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateStation,
        );
}

extension ClientExtension$Mutation$CreateStation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateStation>> mutate$CreateStation(
          Options$Mutation$CreateStation options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateStation> watchMutation$CreateStation(
          WatchOptions$Mutation$CreateStation options) =>
      this.watchMutation(options);
}

class Mutation$CreateStation$HookResult {
  Mutation$CreateStation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateStation runMutation;

  final graphql.QueryResult<Mutation$CreateStation> result;
}

Mutation$CreateStation$HookResult useMutation$CreateStation(
    [WidgetOptions$Mutation$CreateStation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateStation());
  return Mutation$CreateStation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateStation> useWatchMutation$CreateStation(
        WatchOptions$Mutation$CreateStation options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateStation
    extends graphql.MutationOptions<Mutation$CreateStation> {
  WidgetOptions$Mutation$CreateStation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateStation>? update,
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
                        : _parserFn$Mutation$CreateStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateStation,
          parserFn: _parserFn$Mutation$CreateStation,
        );

  final OnMutationCompleted$Mutation$CreateStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateStation
    = graphql.MultiSourceResult<Mutation$CreateStation> Function(
  Variables$Mutation$CreateStation, {
  Object? optimisticResult,
  Mutation$CreateStation? typedOptimisticResult,
});
typedef Builder$Mutation$CreateStation = widgets.Widget Function(
  RunMutation$Mutation$CreateStation,
  graphql.QueryResult<Mutation$CreateStation>?,
);

class Mutation$CreateStation$Widget
    extends graphql_flutter.Mutation<Mutation$CreateStation> {
  Mutation$CreateStation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateStation? options,
    required Builder$Mutation$CreateStation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateStation(),
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

class Mutation$CreateStation$insertIntoStationsCollection {
  Mutation$CreateStation$insertIntoStationsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'StationsInsertResponse',
  });

  factory Mutation$CreateStation$insertIntoStationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateStation$insertIntoStationsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Station.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Station> records;

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
    if (other is! Mutation$CreateStation$insertIntoStationsCollection ||
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

extension UtilityExtension$Mutation$CreateStation$insertIntoStationsCollection
    on Mutation$CreateStation$insertIntoStationsCollection {
  CopyWith$Mutation$CreateStation$insertIntoStationsCollection<
          Mutation$CreateStation$insertIntoStationsCollection>
      get copyWith =>
          CopyWith$Mutation$CreateStation$insertIntoStationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateStation$insertIntoStationsCollection<
    TRes> {
  factory CopyWith$Mutation$CreateStation$insertIntoStationsCollection(
    Mutation$CreateStation$insertIntoStationsCollection instance,
    TRes Function(Mutation$CreateStation$insertIntoStationsCollection) then,
  ) = _CopyWithImpl$Mutation$CreateStation$insertIntoStationsCollection;

  factory CopyWith$Mutation$CreateStation$insertIntoStationsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateStation$insertIntoStationsCollection;

  TRes call({
    List<Fragment$Station>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Station> Function(
              Iterable<CopyWith$Fragment$Station<Fragment$Station>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateStation$insertIntoStationsCollection<TRes>
    implements
        CopyWith$Mutation$CreateStation$insertIntoStationsCollection<TRes> {
  _CopyWithImpl$Mutation$CreateStation$insertIntoStationsCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateStation$insertIntoStationsCollection _instance;

  final TRes Function(Mutation$CreateStation$insertIntoStationsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateStation$insertIntoStationsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Station>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Station> Function(
                  Iterable<CopyWith$Fragment$Station<Fragment$Station>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Station(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateStation$insertIntoStationsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateStation$insertIntoStationsCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateStation$insertIntoStationsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Station>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteStation {
  factory Variables$Mutation$DeleteStation({required String id}) =>
      Variables$Mutation$DeleteStation._({
        r'id': id,
      });

  Variables$Mutation$DeleteStation._(this._$data);

  factory Variables$Mutation$DeleteStation.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteStation._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteStation<Variables$Mutation$DeleteStation>
      get copyWith => CopyWith$Variables$Mutation$DeleteStation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteStation ||
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

abstract class CopyWith$Variables$Mutation$DeleteStation<TRes> {
  factory CopyWith$Variables$Mutation$DeleteStation(
    Variables$Mutation$DeleteStation instance,
    TRes Function(Variables$Mutation$DeleteStation) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteStation;

  factory CopyWith$Variables$Mutation$DeleteStation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteStation;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteStation<TRes>
    implements CopyWith$Variables$Mutation$DeleteStation<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteStation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteStation _instance;

  final TRes Function(Variables$Mutation$DeleteStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteStation._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteStation<TRes>
    implements CopyWith$Variables$Mutation$DeleteStation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteStation(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteStation {
  Mutation$DeleteStation({
    required this.deleteFromStationsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteStation.fromJson(Map<String, dynamic> json) {
    final l$deleteFromStationsCollection = json['deleteFromStationsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStation(
      deleteFromStationsCollection:
          Mutation$DeleteStation$deleteFromStationsCollection.fromJson(
              (l$deleteFromStationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteStation$deleteFromStationsCollection
      deleteFromStationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromStationsCollection = deleteFromStationsCollection;
    _resultData['deleteFromStationsCollection'] =
        l$deleteFromStationsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromStationsCollection = deleteFromStationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromStationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteStation || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromStationsCollection = deleteFromStationsCollection;
    final lOther$deleteFromStationsCollection =
        other.deleteFromStationsCollection;
    if (l$deleteFromStationsCollection != lOther$deleteFromStationsCollection) {
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

extension UtilityExtension$Mutation$DeleteStation on Mutation$DeleteStation {
  CopyWith$Mutation$DeleteStation<Mutation$DeleteStation> get copyWith =>
      CopyWith$Mutation$DeleteStation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteStation<TRes> {
  factory CopyWith$Mutation$DeleteStation(
    Mutation$DeleteStation instance,
    TRes Function(Mutation$DeleteStation) then,
  ) = _CopyWithImpl$Mutation$DeleteStation;

  factory CopyWith$Mutation$DeleteStation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteStation;

  TRes call({
    Mutation$DeleteStation$deleteFromStationsCollection?
        deleteFromStationsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<TRes>
      get deleteFromStationsCollection;
}

class _CopyWithImpl$Mutation$DeleteStation<TRes>
    implements CopyWith$Mutation$DeleteStation<TRes> {
  _CopyWithImpl$Mutation$DeleteStation(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStation _instance;

  final TRes Function(Mutation$DeleteStation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromStationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteStation(
        deleteFromStationsCollection:
            deleteFromStationsCollection == _undefined ||
                    deleteFromStationsCollection == null
                ? _instance.deleteFromStationsCollection
                : (deleteFromStationsCollection
                    as Mutation$DeleteStation$deleteFromStationsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<TRes>
      get deleteFromStationsCollection {
    final local$deleteFromStationsCollection =
        _instance.deleteFromStationsCollection;
    return CopyWith$Mutation$DeleteStation$deleteFromStationsCollection(
        local$deleteFromStationsCollection,
        (e) => call(deleteFromStationsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteStation<TRes>
    implements CopyWith$Mutation$DeleteStation<TRes> {
  _CopyWithStubImpl$Mutation$DeleteStation(this._res);

  TRes _res;

  call({
    Mutation$DeleteStation$deleteFromStationsCollection?
        deleteFromStationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<TRes>
      get deleteFromStationsCollection =>
          CopyWith$Mutation$DeleteStation$deleteFromStationsCollection.stub(
              _res);
}

const documentNodeMutationDeleteStation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteStation'),
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
        name: NameNode(value: 'deleteFromStationsCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
]);
Mutation$DeleteStation _parserFn$Mutation$DeleteStation(
        Map<String, dynamic> data) =>
    Mutation$DeleteStation.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteStation = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteStation?,
);

class Options$Mutation$DeleteStation
    extends graphql.MutationOptions<Mutation$DeleteStation> {
  Options$Mutation$DeleteStation({
    String? operationName,
    required Variables$Mutation$DeleteStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteStation>? update,
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
                        : _parserFn$Mutation$DeleteStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteStation,
          parserFn: _parserFn$Mutation$DeleteStation,
        );

  final OnMutationCompleted$Mutation$DeleteStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteStation
    extends graphql.WatchQueryOptions<Mutation$DeleteStation> {
  WatchOptions$Mutation$DeleteStation({
    String? operationName,
    required Variables$Mutation$DeleteStation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteStation? typedOptimisticResult,
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
          document: documentNodeMutationDeleteStation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteStation,
        );
}

extension ClientExtension$Mutation$DeleteStation on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteStation>> mutate$DeleteStation(
          Options$Mutation$DeleteStation options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteStation> watchMutation$DeleteStation(
          WatchOptions$Mutation$DeleteStation options) =>
      this.watchMutation(options);
}

class Mutation$DeleteStation$HookResult {
  Mutation$DeleteStation$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteStation runMutation;

  final graphql.QueryResult<Mutation$DeleteStation> result;
}

Mutation$DeleteStation$HookResult useMutation$DeleteStation(
    [WidgetOptions$Mutation$DeleteStation? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteStation());
  return Mutation$DeleteStation$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteStation> useWatchMutation$DeleteStation(
        WatchOptions$Mutation$DeleteStation options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteStation
    extends graphql.MutationOptions<Mutation$DeleteStation> {
  WidgetOptions$Mutation$DeleteStation({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteStation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteStation? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteStation>? update,
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
                        : _parserFn$Mutation$DeleteStation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteStation,
          parserFn: _parserFn$Mutation$DeleteStation,
        );

  final OnMutationCompleted$Mutation$DeleteStation? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteStation
    = graphql.MultiSourceResult<Mutation$DeleteStation> Function(
  Variables$Mutation$DeleteStation, {
  Object? optimisticResult,
  Mutation$DeleteStation? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteStation = widgets.Widget Function(
  RunMutation$Mutation$DeleteStation,
  graphql.QueryResult<Mutation$DeleteStation>?,
);

class Mutation$DeleteStation$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteStation> {
  Mutation$DeleteStation$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteStation? options,
    required Builder$Mutation$DeleteStation builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteStation(),
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

class Mutation$DeleteStation$deleteFromStationsCollection {
  Mutation$DeleteStation$deleteFromStationsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'StationsDeleteResponse',
  });

  factory Mutation$DeleteStation$deleteFromStationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteStation$deleteFromStationsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Station.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Station> records;

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
    if (other is! Mutation$DeleteStation$deleteFromStationsCollection ||
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

extension UtilityExtension$Mutation$DeleteStation$deleteFromStationsCollection
    on Mutation$DeleteStation$deleteFromStationsCollection {
  CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<
          Mutation$DeleteStation$deleteFromStationsCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteStation$deleteFromStationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteStation$deleteFromStationsCollection(
    Mutation$DeleteStation$deleteFromStationsCollection instance,
    TRes Function(Mutation$DeleteStation$deleteFromStationsCollection) then,
  ) = _CopyWithImpl$Mutation$DeleteStation$deleteFromStationsCollection;

  factory CopyWith$Mutation$DeleteStation$deleteFromStationsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteStation$deleteFromStationsCollection;

  TRes call({
    List<Fragment$Station>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Station> Function(
              Iterable<CopyWith$Fragment$Station<Fragment$Station>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteStation$deleteFromStationsCollection<TRes>
    implements
        CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<TRes> {
  _CopyWithImpl$Mutation$DeleteStation$deleteFromStationsCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteStation$deleteFromStationsCollection _instance;

  final TRes Function(Mutation$DeleteStation$deleteFromStationsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteStation$deleteFromStationsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Station>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Station> Function(
                  Iterable<CopyWith$Fragment$Station<Fragment$Station>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Station(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteStation$deleteFromStationsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteStation$deleteFromStationsCollection<TRes> {
  _CopyWithStubImpl$Mutation$DeleteStation$deleteFromStationsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Station>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
