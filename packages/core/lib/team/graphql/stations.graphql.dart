import '../../providers/graphql/provider.graphql.dart';
import '../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$StationProvider {
  Fragment$StationProvider({
    required this.id,
    required this.stationId,
    required this.providerId,
    required this.provider,
    required this.createdAt,
    this.$__typename = 'StationProvider',
  });

  factory Fragment$StationProvider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$stationId = json['stationId'];
    final l$providerId = json['providerId'];
    final l$provider = json['provider'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$StationProvider(
      id: (l$id as String),
      stationId: (l$stationId as String),
      providerId: (l$providerId as String),
      provider:
          Fragment$Provider.fromJson((l$provider as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String stationId;

  final String providerId;

  final Fragment$Provider provider;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
    final l$providerId = providerId;
    _resultData['providerId'] = l$providerId;
    final l$provider = provider;
    _resultData['provider'] = l$provider.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$stationId = stationId;
    final l$providerId = providerId;
    final l$provider = provider;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$stationId,
      l$providerId,
      l$provider,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$StationProvider) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$stationId = stationId;
    final lOther$stationId = other.stationId;
    if (l$stationId != lOther$stationId) {
      return false;
    }
    final l$providerId = providerId;
    final lOther$providerId = other.providerId;
    if (l$providerId != lOther$providerId) {
      return false;
    }
    final l$provider = provider;
    final lOther$provider = other.provider;
    if (l$provider != lOther$provider) {
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

extension UtilityExtension$Fragment$StationProvider
    on Fragment$StationProvider {
  CopyWith$Fragment$StationProvider<Fragment$StationProvider> get copyWith =>
      CopyWith$Fragment$StationProvider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$StationProvider<TRes> {
  factory CopyWith$Fragment$StationProvider(
    Fragment$StationProvider instance,
    TRes Function(Fragment$StationProvider) then,
  ) = _CopyWithImpl$Fragment$StationProvider;

  factory CopyWith$Fragment$StationProvider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$StationProvider;

  TRes call({
    String? id,
    String? stationId,
    String? providerId,
    Fragment$Provider? provider,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$Provider<TRes> get provider;
}

class _CopyWithImpl$Fragment$StationProvider<TRes>
    implements CopyWith$Fragment$StationProvider<TRes> {
  _CopyWithImpl$Fragment$StationProvider(
    this._instance,
    this._then,
  );

  final Fragment$StationProvider _instance;

  final TRes Function(Fragment$StationProvider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? stationId = _undefined,
    Object? providerId = _undefined,
    Object? provider = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$StationProvider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        stationId: stationId == _undefined || stationId == null
            ? _instance.stationId
            : (stationId as String),
        providerId: providerId == _undefined || providerId == null
            ? _instance.providerId
            : (providerId as String),
        provider: provider == _undefined || provider == null
            ? _instance.provider
            : (provider as Fragment$Provider),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Provider<TRes> get provider {
    final local$provider = _instance.provider;
    return CopyWith$Fragment$Provider(local$provider, (e) => call(provider: e));
  }
}

class _CopyWithStubImpl$Fragment$StationProvider<TRes>
    implements CopyWith$Fragment$StationProvider<TRes> {
  _CopyWithStubImpl$Fragment$StationProvider(this._res);

  TRes _res;

  call({
    String? id,
    String? stationId,
    String? providerId,
    Fragment$Provider? provider,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Provider<TRes> get provider =>
      CopyWith$Fragment$Provider.stub(_res);
}

const fragmentDefinitionStationProvider = FragmentDefinitionNode(
  name: NameNode(value: 'StationProvider'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'StationProvider'),
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
      name: NameNode(value: 'stationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'providerId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'provider'),
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
const documentNodeFragmentStationProvider = DocumentNode(definitions: [
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
]);

extension ClientExtension$Fragment$StationProvider on graphql.GraphQLClient {
  void writeFragment$StationProvider({
    required Fragment$StationProvider data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'StationProvider',
            document: documentNodeFragmentStationProvider,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$StationProvider? readFragment$StationProvider({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'StationProvider',
          document: documentNodeFragmentStationProvider,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$StationProvider.fromJson(result);
  }
}

class Fragment$Station {
  Fragment$Station({
    required this.id,
    required this.name,
    this.number,
    this.description,
    this.longDescriptionMarkdown,
    this.address,
    this.address1,
    this.city,
    this.state,
    this.zip,
    this.iconUrl,
    this.coverUrl,
    required this.registrationCode,
    required this.createdAt,
    this.stationProviderCollection,
    this.$__typename = 'Station',
  });

  factory Fragment$Station.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$number = json['number'];
    final l$description = json['description'];
    final l$longDescriptionMarkdown = json['longDescriptionMarkdown'];
    final l$address = json['address'];
    final l$address1 = json['address1'];
    final l$city = json['city'];
    final l$state = json['state'];
    final l$zip = json['zip'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$registrationCode = json['registrationCode'];
    final l$createdAt = json['createdAt'];
    final l$stationProviderCollection = json['stationProviderCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$Station(
      id: (l$id as String),
      name: (l$name as String),
      number: (l$number as int?),
      description: (l$description as String?),
      longDescriptionMarkdown: (l$longDescriptionMarkdown as String?),
      address: (l$address as String?),
      address1: (l$address1 as String?),
      city: (l$city as String?),
      state: (l$state as String?),
      zip: (l$zip as String?),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      registrationCode: (l$registrationCode as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      stationProviderCollection: l$stationProviderCollection == null
          ? null
          : Fragment$Station$stationProviderCollection.fromJson(
              (l$stationProviderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final int? number;

  final String? description;

  final String? longDescriptionMarkdown;

  final String? address;

  final String? address1;

  final String? city;

  final String? state;

  final String? zip;

  final String? iconUrl;

  final String? coverUrl;

  final String registrationCode;

  final DateTime createdAt;

  final Fragment$Station$stationProviderCollection? stationProviderCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    _resultData['longDescriptionMarkdown'] = l$longDescriptionMarkdown;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$address1 = address1;
    _resultData['address1'] = l$address1;
    final l$city = city;
    _resultData['city'] = l$city;
    final l$state = state;
    _resultData['state'] = l$state;
    final l$zip = zip;
    _resultData['zip'] = l$zip;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$registrationCode = registrationCode;
    _resultData['registrationCode'] = l$registrationCode;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$stationProviderCollection = stationProviderCollection;
    _resultData['stationProviderCollection'] =
        l$stationProviderCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$number = number;
    final l$description = description;
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    final l$address = address;
    final l$address1 = address1;
    final l$city = city;
    final l$state = state;
    final l$zip = zip;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$registrationCode = registrationCode;
    final l$createdAt = createdAt;
    final l$stationProviderCollection = stationProviderCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$number,
      l$description,
      l$longDescriptionMarkdown,
      l$address,
      l$address1,
      l$city,
      l$state,
      l$zip,
      l$iconUrl,
      l$coverUrl,
      l$registrationCode,
      l$createdAt,
      l$stationProviderCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Station) || runtimeType != other.runtimeType) {
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
    final l$longDescriptionMarkdown = longDescriptionMarkdown;
    final lOther$longDescriptionMarkdown = other.longDescriptionMarkdown;
    if (l$longDescriptionMarkdown != lOther$longDescriptionMarkdown) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$address1 = address1;
    final lOther$address1 = other.address1;
    if (l$address1 != lOther$address1) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (l$city != lOther$city) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (l$state != lOther$state) {
      return false;
    }
    final l$zip = zip;
    final lOther$zip = other.zip;
    if (l$zip != lOther$zip) {
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
    final l$stationProviderCollection = stationProviderCollection;
    final lOther$stationProviderCollection = other.stationProviderCollection;
    if (l$stationProviderCollection != lOther$stationProviderCollection) {
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
    String? name,
    int? number,
    String? description,
    String? longDescriptionMarkdown,
    String? address,
    String? address1,
    String? city,
    String? state,
    String? zip,
    String? iconUrl,
    String? coverUrl,
    String? registrationCode,
    DateTime? createdAt,
    Fragment$Station$stationProviderCollection? stationProviderCollection,
    String? $__typename,
  });
  CopyWith$Fragment$Station$stationProviderCollection<TRes>
      get stationProviderCollection;
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
    Object? name = _undefined,
    Object? number = _undefined,
    Object? description = _undefined,
    Object? longDescriptionMarkdown = _undefined,
    Object? address = _undefined,
    Object? address1 = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? zip = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? registrationCode = _undefined,
    Object? createdAt = _undefined,
    Object? stationProviderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Station(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        number: number == _undefined ? _instance.number : (number as int?),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        longDescriptionMarkdown: longDescriptionMarkdown == _undefined
            ? _instance.longDescriptionMarkdown
            : (longDescriptionMarkdown as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
        city: city == _undefined ? _instance.city : (city as String?),
        state: state == _undefined ? _instance.state : (state as String?),
        zip: zip == _undefined ? _instance.zip : (zip as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        registrationCode:
            registrationCode == _undefined || registrationCode == null
                ? _instance.registrationCode
                : (registrationCode as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        stationProviderCollection: stationProviderCollection == _undefined
            ? _instance.stationProviderCollection
            : (stationProviderCollection
                as Fragment$Station$stationProviderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Station$stationProviderCollection<TRes>
      get stationProviderCollection {
    final local$stationProviderCollection = _instance.stationProviderCollection;
    return local$stationProviderCollection == null
        ? CopyWith$Fragment$Station$stationProviderCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$Station$stationProviderCollection(
            local$stationProviderCollection,
            (e) => call(stationProviderCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Station<TRes>
    implements CopyWith$Fragment$Station<TRes> {
  _CopyWithStubImpl$Fragment$Station(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    int? number,
    String? description,
    String? longDescriptionMarkdown,
    String? address,
    String? address1,
    String? city,
    String? state,
    String? zip,
    String? iconUrl,
    String? coverUrl,
    String? registrationCode,
    DateTime? createdAt,
    Fragment$Station$stationProviderCollection? stationProviderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station$stationProviderCollection<TRes>
      get stationProviderCollection =>
          CopyWith$Fragment$Station$stationProviderCollection.stub(_res);
}

const fragmentDefinitionStation = FragmentDefinitionNode(
  name: NameNode(value: 'Station'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Station'),
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
      name: NameNode(value: 'longDescriptionMarkdown'),
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
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'address1'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'city'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'state'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'zip'),
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
      name: NameNode(value: 'stationProviderCollection'),
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
                  name: NameNode(value: 'StationProvider'),
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
const documentNodeFragmentStation = DocumentNode(definitions: [
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
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

class Fragment$Station$stationProviderCollection {
  Fragment$Station$stationProviderCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'StationProviderConnection',
  });

  factory Fragment$Station$stationProviderCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$Station$stationProviderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Station$stationProviderCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$Station$stationProviderCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Station$stationProviderCollection$edges> edges;

  final Fragment$Station$stationProviderCollection$pageInfo pageInfo;

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
    if (!(other is Fragment$Station$stationProviderCollection) ||
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

extension UtilityExtension$Fragment$Station$stationProviderCollection
    on Fragment$Station$stationProviderCollection {
  CopyWith$Fragment$Station$stationProviderCollection<
          Fragment$Station$stationProviderCollection>
      get copyWith => CopyWith$Fragment$Station$stationProviderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Station$stationProviderCollection<TRes> {
  factory CopyWith$Fragment$Station$stationProviderCollection(
    Fragment$Station$stationProviderCollection instance,
    TRes Function(Fragment$Station$stationProviderCollection) then,
  ) = _CopyWithImpl$Fragment$Station$stationProviderCollection;

  factory CopyWith$Fragment$Station$stationProviderCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Station$stationProviderCollection;

  TRes call({
    List<Fragment$Station$stationProviderCollection$edges>? edges,
    Fragment$Station$stationProviderCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Station$stationProviderCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Station$stationProviderCollection$edges<
                      Fragment$Station$stationProviderCollection$edges>>)
          _fn);
  CopyWith$Fragment$Station$stationProviderCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Fragment$Station$stationProviderCollection<TRes>
    implements CopyWith$Fragment$Station$stationProviderCollection<TRes> {
  _CopyWithImpl$Fragment$Station$stationProviderCollection(
    this._instance,
    this._then,
  );

  final Fragment$Station$stationProviderCollection _instance;

  final TRes Function(Fragment$Station$stationProviderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Station$stationProviderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Station$stationProviderCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$Station$stationProviderCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Station$stationProviderCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Station$stationProviderCollection$edges<
                          Fragment$Station$stationProviderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Fragment$Station$stationProviderCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Station$stationProviderCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$Station$stationProviderCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$Station$stationProviderCollection<TRes>
    implements CopyWith$Fragment$Station$stationProviderCollection<TRes> {
  _CopyWithStubImpl$Fragment$Station$stationProviderCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Station$stationProviderCollection$edges>? edges,
    Fragment$Station$stationProviderCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$Station$stationProviderCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Fragment$Station$stationProviderCollection$pageInfo.stub(
              _res);
}

class Fragment$Station$stationProviderCollection$edges {
  Fragment$Station$stationProviderCollection$edges({
    required this.node,
    this.$__typename = 'StationProviderEdge',
  });

  factory Fragment$Station$stationProviderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Station$stationProviderCollection$edges(
      node: Fragment$StationProvider.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$StationProvider node;

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
    if (!(other is Fragment$Station$stationProviderCollection$edges) ||
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

extension UtilityExtension$Fragment$Station$stationProviderCollection$edges
    on Fragment$Station$stationProviderCollection$edges {
  CopyWith$Fragment$Station$stationProviderCollection$edges<
          Fragment$Station$stationProviderCollection$edges>
      get copyWith => CopyWith$Fragment$Station$stationProviderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Station$stationProviderCollection$edges<TRes> {
  factory CopyWith$Fragment$Station$stationProviderCollection$edges(
    Fragment$Station$stationProviderCollection$edges instance,
    TRes Function(Fragment$Station$stationProviderCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Station$stationProviderCollection$edges;

  factory CopyWith$Fragment$Station$stationProviderCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Station$stationProviderCollection$edges;

  TRes call({
    Fragment$StationProvider? node,
    String? $__typename,
  });
  CopyWith$Fragment$StationProvider<TRes> get node;
}

class _CopyWithImpl$Fragment$Station$stationProviderCollection$edges<TRes>
    implements CopyWith$Fragment$Station$stationProviderCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Station$stationProviderCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Station$stationProviderCollection$edges _instance;

  final TRes Function(Fragment$Station$stationProviderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Station$stationProviderCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$StationProvider),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$StationProvider<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$StationProvider(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Station$stationProviderCollection$edges<TRes>
    implements CopyWith$Fragment$Station$stationProviderCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Station$stationProviderCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$StationProvider? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$StationProvider<TRes> get node =>
      CopyWith$Fragment$StationProvider.stub(_res);
}

class Fragment$Station$stationProviderCollection$pageInfo {
  Fragment$Station$stationProviderCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$Station$stationProviderCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Fragment$Station$stationProviderCollection$pageInfo(
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
    if (!(other is Fragment$Station$stationProviderCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$Station$stationProviderCollection$pageInfo
    on Fragment$Station$stationProviderCollection$pageInfo {
  CopyWith$Fragment$Station$stationProviderCollection$pageInfo<
          Fragment$Station$stationProviderCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$Station$stationProviderCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Station$stationProviderCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$Station$stationProviderCollection$pageInfo(
    Fragment$Station$stationProviderCollection$pageInfo instance,
    TRes Function(Fragment$Station$stationProviderCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$Station$stationProviderCollection$pageInfo;

  factory CopyWith$Fragment$Station$stationProviderCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Station$stationProviderCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Station$stationProviderCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$Station$stationProviderCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$Station$stationProviderCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$Station$stationProviderCollection$pageInfo _instance;

  final TRes Function(Fragment$Station$stationProviderCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Station$stationProviderCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$Station$stationProviderCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$Station$stationProviderCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$Station$stationProviderCollection$pageInfo(
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
    if (!(other is Variables$Query$Station) ||
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
    this.stationCollection,
    this.$__typename = 'Query',
  });

  factory Query$Station.fromJson(Map<String, dynamic> json) {
    final l$stationCollection = json['stationCollection'];
    final l$$__typename = json['__typename'];
    return Query$Station(
      stationCollection: l$stationCollection == null
          ? null
          : Query$Station$stationCollection.fromJson(
              (l$stationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Station$stationCollection? stationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stationCollection = stationCollection;
    _resultData['stationCollection'] = l$stationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stationCollection = stationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Station) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$stationCollection = stationCollection;
    final lOther$stationCollection = other.stationCollection;
    if (l$stationCollection != lOther$stationCollection) {
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
    Query$Station$stationCollection? stationCollection,
    String? $__typename,
  });
  CopyWith$Query$Station$stationCollection<TRes> get stationCollection;
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
    Object? stationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station(
        stationCollection: stationCollection == _undefined
            ? _instance.stationCollection
            : (stationCollection as Query$Station$stationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Station$stationCollection<TRes> get stationCollection {
    final local$stationCollection = _instance.stationCollection;
    return local$stationCollection == null
        ? CopyWith$Query$Station$stationCollection.stub(_then(_instance))
        : CopyWith$Query$Station$stationCollection(
            local$stationCollection, (e) => call(stationCollection: e));
  }
}

class _CopyWithStubImpl$Query$Station<TRes>
    implements CopyWith$Query$Station<TRes> {
  _CopyWithStubImpl$Query$Station(this._res);

  TRes _res;

  call({
    Query$Station$stationCollection? stationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Station$stationCollection<TRes> get stationCollection =>
      CopyWith$Query$Station$stationCollection.stub(_res);
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
        name: NameNode(value: 'stationCollection'),
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
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
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

class Query$Station$stationCollection {
  Query$Station$stationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'StationConnection',
  });

  factory Query$Station$stationCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Station$stationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Station$stationCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Station$stationCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Station$stationCollection$edges> edges;

  final Query$Station$stationCollection$pageInfo pageInfo;

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
    if (!(other is Query$Station$stationCollection) ||
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

extension UtilityExtension$Query$Station$stationCollection
    on Query$Station$stationCollection {
  CopyWith$Query$Station$stationCollection<Query$Station$stationCollection>
      get copyWith => CopyWith$Query$Station$stationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Station$stationCollection<TRes> {
  factory CopyWith$Query$Station$stationCollection(
    Query$Station$stationCollection instance,
    TRes Function(Query$Station$stationCollection) then,
  ) = _CopyWithImpl$Query$Station$stationCollection;

  factory CopyWith$Query$Station$stationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Station$stationCollection;

  TRes call({
    List<Query$Station$stationCollection$edges>? edges,
    Query$Station$stationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Station$stationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Station$stationCollection$edges<
                      Query$Station$stationCollection$edges>>)
          _fn);
  CopyWith$Query$Station$stationCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Station$stationCollection<TRes>
    implements CopyWith$Query$Station$stationCollection<TRes> {
  _CopyWithImpl$Query$Station$stationCollection(
    this._instance,
    this._then,
  );

  final Query$Station$stationCollection _instance;

  final TRes Function(Query$Station$stationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station$stationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Station$stationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Station$stationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Station$stationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Station$stationCollection$edges<
                          Query$Station$stationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Station$stationCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$Station$stationCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Station$stationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Station$stationCollection<TRes>
    implements CopyWith$Query$Station$stationCollection<TRes> {
  _CopyWithStubImpl$Query$Station$stationCollection(this._res);

  TRes _res;

  call({
    List<Query$Station$stationCollection$edges>? edges,
    Query$Station$stationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$Station$stationCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Station$stationCollection$pageInfo.stub(_res);
}

class Query$Station$stationCollection$edges {
  Query$Station$stationCollection$edges({
    required this.node,
    this.$__typename = 'StationEdge',
  });

  factory Query$Station$stationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Station$stationCollection$edges(
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
    if (!(other is Query$Station$stationCollection$edges) ||
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

extension UtilityExtension$Query$Station$stationCollection$edges
    on Query$Station$stationCollection$edges {
  CopyWith$Query$Station$stationCollection$edges<
          Query$Station$stationCollection$edges>
      get copyWith => CopyWith$Query$Station$stationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Station$stationCollection$edges<TRes> {
  factory CopyWith$Query$Station$stationCollection$edges(
    Query$Station$stationCollection$edges instance,
    TRes Function(Query$Station$stationCollection$edges) then,
  ) = _CopyWithImpl$Query$Station$stationCollection$edges;

  factory CopyWith$Query$Station$stationCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Station$stationCollection$edges;

  TRes call({
    Fragment$Station? node,
    String? $__typename,
  });
  CopyWith$Fragment$Station<TRes> get node;
}

class _CopyWithImpl$Query$Station$stationCollection$edges<TRes>
    implements CopyWith$Query$Station$stationCollection$edges<TRes> {
  _CopyWithImpl$Query$Station$stationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Station$stationCollection$edges _instance;

  final TRes Function(Query$Station$stationCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station$stationCollection$edges(
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

class _CopyWithStubImpl$Query$Station$stationCollection$edges<TRes>
    implements CopyWith$Query$Station$stationCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Station$stationCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Station? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station<TRes> get node =>
      CopyWith$Fragment$Station.stub(_res);
}

class Query$Station$stationCollection$pageInfo {
  Query$Station$stationCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$Station$stationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$Station$stationCollection$pageInfo(
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
    if (!(other is Query$Station$stationCollection$pageInfo) ||
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

extension UtilityExtension$Query$Station$stationCollection$pageInfo
    on Query$Station$stationCollection$pageInfo {
  CopyWith$Query$Station$stationCollection$pageInfo<
          Query$Station$stationCollection$pageInfo>
      get copyWith => CopyWith$Query$Station$stationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Station$stationCollection$pageInfo<TRes> {
  factory CopyWith$Query$Station$stationCollection$pageInfo(
    Query$Station$stationCollection$pageInfo instance,
    TRes Function(Query$Station$stationCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$Station$stationCollection$pageInfo;

  factory CopyWith$Query$Station$stationCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Station$stationCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Station$stationCollection$pageInfo<TRes>
    implements CopyWith$Query$Station$stationCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$Station$stationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Station$stationCollection$pageInfo _instance;

  final TRes Function(Query$Station$stationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Station$stationCollection$pageInfo(
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

class _CopyWithStubImpl$Query$Station$stationCollection$pageInfo<TRes>
    implements CopyWith$Query$Station$stationCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Station$stationCollection$pageInfo(this._res);

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
    Input$StationFilter? filter,
    List<Input$StationOrderBy>? orderBy,
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
          : Input$StationFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$StationOrderBy.fromJson((e as Map<String, dynamic>)))
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

  Input$StationFilter? get filter => (_$data['filter'] as Input$StationFilter?);

  List<Input$StationOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$StationOrderBy>?);

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
    if (!(other is Variables$Query$StationCollection) ||
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
    Input$StationFilter? filter,
    List<Input$StationOrderBy>? orderBy,
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
        if (filter != _undefined) 'filter': (filter as Input$StationFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$StationOrderBy>?),
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
    Input$StationFilter? filter,
    List<Input$StationOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$StationCollection {
  Query$StationCollection({
    this.stationCollection,
    this.$__typename = 'Query',
  });

  factory Query$StationCollection.fromJson(Map<String, dynamic> json) {
    final l$stationCollection = json['stationCollection'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection(
      stationCollection: l$stationCollection == null
          ? null
          : Query$StationCollection$stationCollection.fromJson(
              (l$stationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationCollection$stationCollection? stationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$stationCollection = stationCollection;
    _resultData['stationCollection'] = l$stationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$stationCollection = stationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$stationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$StationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$stationCollection = stationCollection;
    final lOther$stationCollection = other.stationCollection;
    if (l$stationCollection != lOther$stationCollection) {
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
    Query$StationCollection$stationCollection? stationCollection,
    String? $__typename,
  });
  CopyWith$Query$StationCollection$stationCollection<TRes>
      get stationCollection;
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
    Object? stationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection(
        stationCollection: stationCollection == _undefined
            ? _instance.stationCollection
            : (stationCollection as Query$StationCollection$stationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationCollection$stationCollection<TRes>
      get stationCollection {
    final local$stationCollection = _instance.stationCollection;
    return local$stationCollection == null
        ? CopyWith$Query$StationCollection$stationCollection.stub(
            _then(_instance))
        : CopyWith$Query$StationCollection$stationCollection(
            local$stationCollection, (e) => call(stationCollection: e));
  }
}

class _CopyWithStubImpl$Query$StationCollection<TRes>
    implements CopyWith$Query$StationCollection<TRes> {
  _CopyWithStubImpl$Query$StationCollection(this._res);

  TRes _res;

  call({
    Query$StationCollection$stationCollection? stationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationCollection$stationCollection<TRes>
      get stationCollection =>
          CopyWith$Query$StationCollection$stationCollection.stub(_res);
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
          name: NameNode(value: 'StationFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'StationOrderBy'),
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
        name: NameNode(value: 'stationCollection'),
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
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
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

class Query$StationCollection$stationCollection {
  Query$StationCollection$stationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'StationConnection',
  });

  factory Query$StationCollection$stationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection$stationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$StationCollection$stationCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$StationCollection$stationCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$StationCollection$stationCollection$edges> edges;

  final Query$StationCollection$stationCollection$pageInfo pageInfo;

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
    if (!(other is Query$StationCollection$stationCollection) ||
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

extension UtilityExtension$Query$StationCollection$stationCollection
    on Query$StationCollection$stationCollection {
  CopyWith$Query$StationCollection$stationCollection<
          Query$StationCollection$stationCollection>
      get copyWith => CopyWith$Query$StationCollection$stationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationCollection$stationCollection<TRes> {
  factory CopyWith$Query$StationCollection$stationCollection(
    Query$StationCollection$stationCollection instance,
    TRes Function(Query$StationCollection$stationCollection) then,
  ) = _CopyWithImpl$Query$StationCollection$stationCollection;

  factory CopyWith$Query$StationCollection$stationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$StationCollection$stationCollection;

  TRes call({
    List<Query$StationCollection$stationCollection$edges>? edges,
    Query$StationCollection$stationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$StationCollection$stationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$StationCollection$stationCollection$edges<
                      Query$StationCollection$stationCollection$edges>>)
          _fn);
  CopyWith$Query$StationCollection$stationCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$StationCollection$stationCollection<TRes>
    implements CopyWith$Query$StationCollection$stationCollection<TRes> {
  _CopyWithImpl$Query$StationCollection$stationCollection(
    this._instance,
    this._then,
  );

  final Query$StationCollection$stationCollection _instance;

  final TRes Function(Query$StationCollection$stationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection$stationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$StationCollection$stationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$StationCollection$stationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$StationCollection$stationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$StationCollection$stationCollection$edges<
                          Query$StationCollection$stationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$StationCollection$stationCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$StationCollection$stationCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$StationCollection$stationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$StationCollection$stationCollection<TRes>
    implements CopyWith$Query$StationCollection$stationCollection<TRes> {
  _CopyWithStubImpl$Query$StationCollection$stationCollection(this._res);

  TRes _res;

  call({
    List<Query$StationCollection$stationCollection$edges>? edges,
    Query$StationCollection$stationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$StationCollection$stationCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$StationCollection$stationCollection$pageInfo.stub(
              _res);
}

class Query$StationCollection$stationCollection$edges {
  Query$StationCollection$stationCollection$edges({
    required this.node,
    this.$__typename = 'StationEdge',
  });

  factory Query$StationCollection$stationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection$stationCollection$edges(
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
    if (!(other is Query$StationCollection$stationCollection$edges) ||
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

extension UtilityExtension$Query$StationCollection$stationCollection$edges
    on Query$StationCollection$stationCollection$edges {
  CopyWith$Query$StationCollection$stationCollection$edges<
          Query$StationCollection$stationCollection$edges>
      get copyWith => CopyWith$Query$StationCollection$stationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationCollection$stationCollection$edges<TRes> {
  factory CopyWith$Query$StationCollection$stationCollection$edges(
    Query$StationCollection$stationCollection$edges instance,
    TRes Function(Query$StationCollection$stationCollection$edges) then,
  ) = _CopyWithImpl$Query$StationCollection$stationCollection$edges;

  factory CopyWith$Query$StationCollection$stationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationCollection$stationCollection$edges;

  TRes call({
    Fragment$Station? node,
    String? $__typename,
  });
  CopyWith$Fragment$Station<TRes> get node;
}

class _CopyWithImpl$Query$StationCollection$stationCollection$edges<TRes>
    implements CopyWith$Query$StationCollection$stationCollection$edges<TRes> {
  _CopyWithImpl$Query$StationCollection$stationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$StationCollection$stationCollection$edges _instance;

  final TRes Function(Query$StationCollection$stationCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection$stationCollection$edges(
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

class _CopyWithStubImpl$Query$StationCollection$stationCollection$edges<TRes>
    implements CopyWith$Query$StationCollection$stationCollection$edges<TRes> {
  _CopyWithStubImpl$Query$StationCollection$stationCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Station? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Station<TRes> get node =>
      CopyWith$Fragment$Station.stub(_res);
}

class Query$StationCollection$stationCollection$pageInfo {
  Query$StationCollection$stationCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$StationCollection$stationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$StationCollection$stationCollection$pageInfo(
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
    if (!(other is Query$StationCollection$stationCollection$pageInfo) ||
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

extension UtilityExtension$Query$StationCollection$stationCollection$pageInfo
    on Query$StationCollection$stationCollection$pageInfo {
  CopyWith$Query$StationCollection$stationCollection$pageInfo<
          Query$StationCollection$stationCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$StationCollection$stationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationCollection$stationCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$StationCollection$stationCollection$pageInfo(
    Query$StationCollection$stationCollection$pageInfo instance,
    TRes Function(Query$StationCollection$stationCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$StationCollection$stationCollection$pageInfo;

  factory CopyWith$Query$StationCollection$stationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationCollection$stationCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$StationCollection$stationCollection$pageInfo<TRes>
    implements
        CopyWith$Query$StationCollection$stationCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$StationCollection$stationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$StationCollection$stationCollection$pageInfo _instance;

  final TRes Function(Query$StationCollection$stationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationCollection$stationCollection$pageInfo(
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

class _CopyWithStubImpl$Query$StationCollection$stationCollection$pageInfo<TRes>
    implements
        CopyWith$Query$StationCollection$stationCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$StationCollection$stationCollection$pageInfo(
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
