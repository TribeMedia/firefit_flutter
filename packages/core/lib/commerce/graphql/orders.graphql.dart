import '../../meals/graphql/menu.graphql.dart';
import '../../providers/graphql/provider.graphql.dart';
import '../../schema.graphql.dart';
import '../../team/graphql/first_responders.graphql.dart';
import '../../team/graphql/stations.graphql.dart';
import '../../users/graphql/organizations.graphql.dart';
import '../../users/graphql/users.graphql.dart';
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

class Fragment$OrderItemMenuItem {
  Fragment$OrderItemMenuItem({
    required this.id,
    required this.orderItemId,
    required this.menuItemId,
    required this.menuItem,
    this.notes,
    this.$__typename = 'OrderItemMenuItem',
  });

  factory Fragment$OrderItemMenuItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$orderItemId = json['orderItemId'];
    final l$menuItemId = json['menuItemId'];
    final l$menuItem = json['menuItem'];
    final l$notes = json['notes'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderItemMenuItem(
      id: (l$id as String),
      orderItemId: (l$orderItemId as String),
      menuItemId: (l$menuItemId as String),
      menuItem:
          Fragment$MenuItem.fromJson((l$menuItem as Map<String, dynamic>)),
      notes: (l$notes as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String orderItemId;

  final String menuItemId;

  final Fragment$MenuItem menuItem;

  final String? notes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
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
    final l$id = id;
    final l$orderItemId = orderItemId;
    final l$menuItemId = menuItemId;
    final l$menuItem = menuItem;
    final l$notes = notes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
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
    if (!(other is Fragment$OrderItemMenuItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Fragment$OrderItemMenuItem
    on Fragment$OrderItemMenuItem {
  CopyWith$Fragment$OrderItemMenuItem<Fragment$OrderItemMenuItem>
      get copyWith => CopyWith$Fragment$OrderItemMenuItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$OrderItemMenuItem<TRes> {
  factory CopyWith$Fragment$OrderItemMenuItem(
    Fragment$OrderItemMenuItem instance,
    TRes Function(Fragment$OrderItemMenuItem) then,
  ) = _CopyWithImpl$Fragment$OrderItemMenuItem;

  factory CopyWith$Fragment$OrderItemMenuItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderItemMenuItem;

  TRes call({
    String? id,
    String? orderItemId,
    String? menuItemId,
    Fragment$MenuItem? menuItem,
    String? notes,
    String? $__typename,
  });
  CopyWith$Fragment$MenuItem<TRes> get menuItem;
}

class _CopyWithImpl$Fragment$OrderItemMenuItem<TRes>
    implements CopyWith$Fragment$OrderItemMenuItem<TRes> {
  _CopyWithImpl$Fragment$OrderItemMenuItem(
    this._instance,
    this._then,
  );

  final Fragment$OrderItemMenuItem _instance;

  final TRes Function(Fragment$OrderItemMenuItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? orderItemId = _undefined,
    Object? menuItemId = _undefined,
    Object? menuItem = _undefined,
    Object? notes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderItemMenuItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        orderItemId: orderItemId == _undefined || orderItemId == null
            ? _instance.orderItemId
            : (orderItemId as String),
        menuItemId: menuItemId == _undefined || menuItemId == null
            ? _instance.menuItemId
            : (menuItemId as String),
        menuItem: menuItem == _undefined || menuItem == null
            ? _instance.menuItem
            : (menuItem as Fragment$MenuItem),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MenuItem<TRes> get menuItem {
    final local$menuItem = _instance.menuItem;
    return CopyWith$Fragment$MenuItem(local$menuItem, (e) => call(menuItem: e));
  }
}

class _CopyWithStubImpl$Fragment$OrderItemMenuItem<TRes>
    implements CopyWith$Fragment$OrderItemMenuItem<TRes> {
  _CopyWithStubImpl$Fragment$OrderItemMenuItem(this._res);

  TRes _res;

  call({
    String? id,
    String? orderItemId,
    String? menuItemId,
    Fragment$MenuItem? menuItem,
    String? notes,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MenuItem<TRes> get menuItem =>
      CopyWith$Fragment$MenuItem.stub(_res);
}

const fragmentDefinitionOrderItemMenuItem = FragmentDefinitionNode(
  name: NameNode(value: 'OrderItemMenuItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderItemMenuItem'),
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
        FragmentSpreadNode(
          name: NameNode(value: 'MenuItem'),
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
);
const documentNodeFragmentOrderItemMenuItem = DocumentNode(definitions: [
  fragmentDefinitionOrderItemMenuItem,
  fragmentDefinitionMenuItem,
]);

extension ClientExtension$Fragment$OrderItemMenuItem on graphql.GraphQLClient {
  void writeFragment$OrderItemMenuItem({
    required Fragment$OrderItemMenuItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OrderItemMenuItem',
            document: documentNodeFragmentOrderItemMenuItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OrderItemMenuItem? readFragment$OrderItemMenuItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OrderItemMenuItem',
          document: documentNodeFragmentOrderItemMenuItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OrderItemMenuItem.fromJson(result);
  }
}

class Fragment$OrderItem {
  Fragment$OrderItem({
    required this.id,
    required this.name,
    required this.orderId,
    required this.units,
    required this.pricePerUnit,
    this.orderItemMenuItemCollection,
    this.$__typename = 'OrderItem',
  });

  factory Fragment$OrderItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$orderId = json['orderId'];
    final l$units = json['units'];
    final l$pricePerUnit = json['pricePerUnit'];
    final l$orderItemMenuItemCollection = json['orderItemMenuItemCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderItem(
      id: (l$id as String),
      name: (l$name as String),
      orderId: (l$orderId as String),
      units: (l$units as int),
      pricePerUnit: (l$pricePerUnit as num).toDouble(),
      orderItemMenuItemCollection: l$orderItemMenuItemCollection == null
          ? null
          : Fragment$OrderItem$orderItemMenuItemCollection.fromJson(
              (l$orderItemMenuItemCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String orderId;

  final int units;

  final double pricePerUnit;

  final Fragment$OrderItem$orderItemMenuItemCollection?
      orderItemMenuItemCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$orderId = orderId;
    _resultData['orderId'] = l$orderId;
    final l$units = units;
    _resultData['units'] = l$units;
    final l$pricePerUnit = pricePerUnit;
    _resultData['pricePerUnit'] = l$pricePerUnit;
    final l$orderItemMenuItemCollection = orderItemMenuItemCollection;
    _resultData['orderItemMenuItemCollection'] =
        l$orderItemMenuItemCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$orderId = orderId;
    final l$units = units;
    final l$pricePerUnit = pricePerUnit;
    final l$orderItemMenuItemCollection = orderItemMenuItemCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$orderId,
      l$units,
      l$pricePerUnit,
      l$orderItemMenuItemCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$OrderItem) || runtimeType != other.runtimeType) {
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
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
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
    final l$orderItemMenuItemCollection = orderItemMenuItemCollection;
    final lOther$orderItemMenuItemCollection =
        other.orderItemMenuItemCollection;
    if (l$orderItemMenuItemCollection != lOther$orderItemMenuItemCollection) {
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

extension UtilityExtension$Fragment$OrderItem on Fragment$OrderItem {
  CopyWith$Fragment$OrderItem<Fragment$OrderItem> get copyWith =>
      CopyWith$Fragment$OrderItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$OrderItem<TRes> {
  factory CopyWith$Fragment$OrderItem(
    Fragment$OrderItem instance,
    TRes Function(Fragment$OrderItem) then,
  ) = _CopyWithImpl$Fragment$OrderItem;

  factory CopyWith$Fragment$OrderItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderItem;

  TRes call({
    String? id,
    String? name,
    String? orderId,
    int? units,
    double? pricePerUnit,
    Fragment$OrderItem$orderItemMenuItemCollection? orderItemMenuItemCollection,
    String? $__typename,
  });
  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<TRes>
      get orderItemMenuItemCollection;
}

class _CopyWithImpl$Fragment$OrderItem<TRes>
    implements CopyWith$Fragment$OrderItem<TRes> {
  _CopyWithImpl$Fragment$OrderItem(
    this._instance,
    this._then,
  );

  final Fragment$OrderItem _instance;

  final TRes Function(Fragment$OrderItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? orderId = _undefined,
    Object? units = _undefined,
    Object? pricePerUnit = _undefined,
    Object? orderItemMenuItemCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        orderId: orderId == _undefined || orderId == null
            ? _instance.orderId
            : (orderId as String),
        units: units == _undefined || units == null
            ? _instance.units
            : (units as int),
        pricePerUnit: pricePerUnit == _undefined || pricePerUnit == null
            ? _instance.pricePerUnit
            : (pricePerUnit as double),
        orderItemMenuItemCollection: orderItemMenuItemCollection == _undefined
            ? _instance.orderItemMenuItemCollection
            : (orderItemMenuItemCollection
                as Fragment$OrderItem$orderItemMenuItemCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<TRes>
      get orderItemMenuItemCollection {
    final local$orderItemMenuItemCollection =
        _instance.orderItemMenuItemCollection;
    return local$orderItemMenuItemCollection == null
        ? CopyWith$Fragment$OrderItem$orderItemMenuItemCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$OrderItem$orderItemMenuItemCollection(
            local$orderItemMenuItemCollection,
            (e) => call(orderItemMenuItemCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$OrderItem<TRes>
    implements CopyWith$Fragment$OrderItem<TRes> {
  _CopyWithStubImpl$Fragment$OrderItem(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? orderId,
    int? units,
    double? pricePerUnit,
    Fragment$OrderItem$orderItemMenuItemCollection? orderItemMenuItemCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<TRes>
      get orderItemMenuItemCollection =>
          CopyWith$Fragment$OrderItem$orderItemMenuItemCollection.stub(_res);
}

const fragmentDefinitionOrderItem = FragmentDefinitionNode(
  name: NameNode(value: 'OrderItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderItem'),
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
      name: NameNode(value: 'orderId'),
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
                FragmentSpreadNode(
                  name: NameNode(value: 'OrderItemMenuItem'),
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
const documentNodeFragmentOrderItem = DocumentNode(definitions: [
  fragmentDefinitionOrderItem,
  fragmentDefinitionOrderItemMenuItem,
  fragmentDefinitionMenuItem,
]);

extension ClientExtension$Fragment$OrderItem on graphql.GraphQLClient {
  void writeFragment$OrderItem({
    required Fragment$OrderItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OrderItem',
            document: documentNodeFragmentOrderItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OrderItem? readFragment$OrderItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OrderItem',
          document: documentNodeFragmentOrderItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OrderItem.fromJson(result);
  }
}

class Fragment$OrderItem$orderItemMenuItemCollection {
  Fragment$OrderItem$orderItemMenuItemCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderItemMenuItemConnection',
  });

  factory Fragment$OrderItem$orderItemMenuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderItem$orderItemMenuItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$OrderItem$orderItemMenuItemCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Fragment$OrderItem$orderItemMenuItemCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$OrderItem$orderItemMenuItemCollection$edges> edges;

  final Fragment$OrderItem$orderItemMenuItemCollection$pageInfo pageInfo;

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
    if (!(other is Fragment$OrderItem$orderItemMenuItemCollection) ||
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

extension UtilityExtension$Fragment$OrderItem$orderItemMenuItemCollection
    on Fragment$OrderItem$orderItemMenuItemCollection {
  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<
          Fragment$OrderItem$orderItemMenuItemCollection>
      get copyWith => CopyWith$Fragment$OrderItem$orderItemMenuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<TRes> {
  factory CopyWith$Fragment$OrderItem$orderItemMenuItemCollection(
    Fragment$OrderItem$orderItemMenuItemCollection instance,
    TRes Function(Fragment$OrderItem$orderItemMenuItemCollection) then,
  ) = _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection;

  factory CopyWith$Fragment$OrderItem$orderItemMenuItemCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection;

  TRes call({
    List<Fragment$OrderItem$orderItemMenuItemCollection$edges>? edges,
    Fragment$OrderItem$orderItemMenuItemCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$OrderItem$orderItemMenuItemCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges<
                      Fragment$OrderItem$orderItemMenuItemCollection$edges>>)
          _fn);
  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection<TRes>
    implements CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<TRes> {
  _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection(
    this._instance,
    this._then,
  );

  final Fragment$OrderItem$orderItemMenuItemCollection _instance;

  final TRes Function(Fragment$OrderItem$orderItemMenuItemCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderItem$orderItemMenuItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Fragment$OrderItem$orderItemMenuItemCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Fragment$OrderItem$orderItemMenuItemCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$OrderItem$orderItemMenuItemCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges<
                          Fragment$OrderItem$orderItemMenuItemCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection<TRes>
    implements CopyWith$Fragment$OrderItem$orderItemMenuItemCollection<TRes> {
  _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection(this._res);

  TRes _res;

  call({
    List<Fragment$OrderItem$orderItemMenuItemCollection$edges>? edges,
    Fragment$OrderItem$orderItemMenuItemCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo.stub(
              _res);
}

class Fragment$OrderItem$orderItemMenuItemCollection$edges {
  Fragment$OrderItem$orderItemMenuItemCollection$edges({
    required this.node,
    this.$__typename = 'OrderItemMenuItemEdge',
  });

  factory Fragment$OrderItem$orderItemMenuItemCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderItem$orderItemMenuItemCollection$edges(
      node:
          Fragment$OrderItemMenuItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OrderItemMenuItem node;

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
    if (!(other is Fragment$OrderItem$orderItemMenuItemCollection$edges) ||
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

extension UtilityExtension$Fragment$OrderItem$orderItemMenuItemCollection$edges
    on Fragment$OrderItem$orderItemMenuItemCollection$edges {
  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges<
          Fragment$OrderItem$orderItemMenuItemCollection$edges>
      get copyWith =>
          CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges<
    TRes> {
  factory CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges(
    Fragment$OrderItem$orderItemMenuItemCollection$edges instance,
    TRes Function(Fragment$OrderItem$orderItemMenuItemCollection$edges) then,
  ) = _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection$edges;

  factory CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection$edges;

  TRes call({
    Fragment$OrderItemMenuItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderItemMenuItem<TRes> get node;
}

class _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection$edges<TRes>
    implements
        CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges<TRes> {
  _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$OrderItem$orderItemMenuItemCollection$edges _instance;

  final TRes Function(Fragment$OrderItem$orderItemMenuItemCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderItem$orderItemMenuItemCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$OrderItemMenuItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderItemMenuItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$OrderItemMenuItem(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$OrderItemMenuItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderItemMenuItem<TRes> get node =>
      CopyWith$Fragment$OrderItemMenuItem.stub(_res);
}

class Fragment$OrderItem$orderItemMenuItemCollection$pageInfo {
  Fragment$OrderItem$orderItemMenuItemCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$OrderItem$orderItemMenuItemCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
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
    if (!(other is Fragment$OrderItem$orderItemMenuItemCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo
    on Fragment$OrderItem$orderItemMenuItemCollection$pageInfo {
  CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<
          Fragment$OrderItem$orderItemMenuItemCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
    Fragment$OrderItem$orderItemMenuItemCollection$pageInfo instance,
    TRes Function(Fragment$OrderItem$orderItemMenuItemCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo;

  factory CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$OrderItem$orderItemMenuItemCollection$pageInfo _instance;

  final TRes Function(Fragment$OrderItem$orderItemMenuItemCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$OrderItem$orderItemMenuItemCollection$pageInfo(
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

class Fragment$ShoppingCartMenuItem {
  Fragment$ShoppingCartMenuItem({
    required this.id,
    required this.shoppingCartId,
    required this.menuItemId,
    required this.menuItem,
    this.$__typename = 'ShoppingCartMenuItem',
  });

  factory Fragment$ShoppingCartMenuItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$shoppingCartId = json['shoppingCartId'];
    final l$menuItemId = json['menuItemId'];
    final l$menuItem = json['menuItem'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCartMenuItem(
      id: (l$id as String),
      shoppingCartId: (l$shoppingCartId as String),
      menuItemId: (l$menuItemId as String),
      menuItem:
          Fragment$MenuItem.fromJson((l$menuItem as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String shoppingCartId;

  final String menuItemId;

  final Fragment$MenuItem menuItem;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shoppingCartId = shoppingCartId;
    _resultData['shoppingCartId'] = l$shoppingCartId;
    final l$menuItemId = menuItemId;
    _resultData['menuItemId'] = l$menuItemId;
    final l$menuItem = menuItem;
    _resultData['menuItem'] = l$menuItem.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$shoppingCartId = shoppingCartId;
    final l$menuItemId = menuItemId;
    final l$menuItem = menuItem;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$shoppingCartId,
      l$menuItemId,
      l$menuItem,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ShoppingCartMenuItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$shoppingCartId = shoppingCartId;
    final lOther$shoppingCartId = other.shoppingCartId;
    if (l$shoppingCartId != lOther$shoppingCartId) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ShoppingCartMenuItem
    on Fragment$ShoppingCartMenuItem {
  CopyWith$Fragment$ShoppingCartMenuItem<Fragment$ShoppingCartMenuItem>
      get copyWith => CopyWith$Fragment$ShoppingCartMenuItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ShoppingCartMenuItem<TRes> {
  factory CopyWith$Fragment$ShoppingCartMenuItem(
    Fragment$ShoppingCartMenuItem instance,
    TRes Function(Fragment$ShoppingCartMenuItem) then,
  ) = _CopyWithImpl$Fragment$ShoppingCartMenuItem;

  factory CopyWith$Fragment$ShoppingCartMenuItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCartMenuItem;

  TRes call({
    String? id,
    String? shoppingCartId,
    String? menuItemId,
    Fragment$MenuItem? menuItem,
    String? $__typename,
  });
  CopyWith$Fragment$MenuItem<TRes> get menuItem;
}

class _CopyWithImpl$Fragment$ShoppingCartMenuItem<TRes>
    implements CopyWith$Fragment$ShoppingCartMenuItem<TRes> {
  _CopyWithImpl$Fragment$ShoppingCartMenuItem(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCartMenuItem _instance;

  final TRes Function(Fragment$ShoppingCartMenuItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shoppingCartId = _undefined,
    Object? menuItemId = _undefined,
    Object? menuItem = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCartMenuItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        shoppingCartId: shoppingCartId == _undefined || shoppingCartId == null
            ? _instance.shoppingCartId
            : (shoppingCartId as String),
        menuItemId: menuItemId == _undefined || menuItemId == null
            ? _instance.menuItemId
            : (menuItemId as String),
        menuItem: menuItem == _undefined || menuItem == null
            ? _instance.menuItem
            : (menuItem as Fragment$MenuItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MenuItem<TRes> get menuItem {
    final local$menuItem = _instance.menuItem;
    return CopyWith$Fragment$MenuItem(local$menuItem, (e) => call(menuItem: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCartMenuItem<TRes>
    implements CopyWith$Fragment$ShoppingCartMenuItem<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCartMenuItem(this._res);

  TRes _res;

  call({
    String? id,
    String? shoppingCartId,
    String? menuItemId,
    Fragment$MenuItem? menuItem,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MenuItem<TRes> get menuItem =>
      CopyWith$Fragment$MenuItem.stub(_res);
}

const fragmentDefinitionShoppingCartMenuItem = FragmentDefinitionNode(
  name: NameNode(value: 'ShoppingCartMenuItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ShoppingCartMenuItem'),
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
      name: NameNode(value: 'shoppingCartId'),
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
        FragmentSpreadNode(
          name: NameNode(value: 'MenuItem'),
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
);
const documentNodeFragmentShoppingCartMenuItem = DocumentNode(definitions: [
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);

extension ClientExtension$Fragment$ShoppingCartMenuItem
    on graphql.GraphQLClient {
  void writeFragment$ShoppingCartMenuItem({
    required Fragment$ShoppingCartMenuItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ShoppingCartMenuItem',
            document: documentNodeFragmentShoppingCartMenuItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ShoppingCartMenuItem? readFragment$ShoppingCartMenuItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ShoppingCartMenuItem',
          document: documentNodeFragmentShoppingCartMenuItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$ShoppingCartMenuItem.fromJson(result);
  }
}

class Fragment$ShoppingCart {
  Fragment$ShoppingCart({
    required this.id,
    required this.userId,
    this.shoppingCartMenuItemCollection,
    this.$__typename = 'ShoppingCart',
  });

  factory Fragment$ShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$shoppingCartMenuItemCollection =
        json['shoppingCartMenuItemCollection'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCart(
      id: (l$id as String),
      userId: (l$userId as String),
      shoppingCartMenuItemCollection: l$shoppingCartMenuItemCollection == null
          ? null
          : Fragment$ShoppingCart$shoppingCartMenuItemCollection.fromJson(
              (l$shoppingCartMenuItemCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Fragment$ShoppingCart$shoppingCartMenuItemCollection?
      shoppingCartMenuItemCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$shoppingCartMenuItemCollection = shoppingCartMenuItemCollection;
    _resultData['shoppingCartMenuItemCollection'] =
        l$shoppingCartMenuItemCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$shoppingCartMenuItemCollection = shoppingCartMenuItemCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$shoppingCartMenuItemCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$ShoppingCart) || runtimeType != other.runtimeType) {
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
    final l$shoppingCartMenuItemCollection = shoppingCartMenuItemCollection;
    final lOther$shoppingCartMenuItemCollection =
        other.shoppingCartMenuItemCollection;
    if (l$shoppingCartMenuItemCollection !=
        lOther$shoppingCartMenuItemCollection) {
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

extension UtilityExtension$Fragment$ShoppingCart on Fragment$ShoppingCart {
  CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart> get copyWith =>
      CopyWith$Fragment$ShoppingCart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ShoppingCart<TRes> {
  factory CopyWith$Fragment$ShoppingCart(
    Fragment$ShoppingCart instance,
    TRes Function(Fragment$ShoppingCart) then,
  ) = _CopyWithImpl$Fragment$ShoppingCart;

  factory CopyWith$Fragment$ShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCart;

  TRes call({
    String? id,
    String? userId,
    Fragment$ShoppingCart$shoppingCartMenuItemCollection?
        shoppingCartMenuItemCollection,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<TRes>
      get shoppingCartMenuItemCollection;
}

class _CopyWithImpl$Fragment$ShoppingCart<TRes>
    implements CopyWith$Fragment$ShoppingCart<TRes> {
  _CopyWithImpl$Fragment$ShoppingCart(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCart _instance;

  final TRes Function(Fragment$ShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? shoppingCartMenuItemCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        shoppingCartMenuItemCollection:
            shoppingCartMenuItemCollection == _undefined
                ? _instance.shoppingCartMenuItemCollection
                : (shoppingCartMenuItemCollection
                    as Fragment$ShoppingCart$shoppingCartMenuItemCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<TRes>
      get shoppingCartMenuItemCollection {
    final local$shoppingCartMenuItemCollection =
        _instance.shoppingCartMenuItemCollection;
    return local$shoppingCartMenuItemCollection == null
        ? CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection(
            local$shoppingCartMenuItemCollection,
            (e) => call(shoppingCartMenuItemCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCart<TRes>
    implements CopyWith$Fragment$ShoppingCart<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCart(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Fragment$ShoppingCart$shoppingCartMenuItemCollection?
        shoppingCartMenuItemCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<TRes>
      get shoppingCartMenuItemCollection =>
          CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection.stub(
              _res);
}

const fragmentDefinitionShoppingCart = FragmentDefinitionNode(
  name: NameNode(value: 'ShoppingCart'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ShoppingCart'),
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
      name: NameNode(value: 'shoppingCartMenuItemCollection'),
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
                  name: NameNode(value: 'ShoppingCartMenuItem'),
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
const documentNodeFragmentShoppingCart = DocumentNode(definitions: [
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);

extension ClientExtension$Fragment$ShoppingCart on graphql.GraphQLClient {
  void writeFragment$ShoppingCart({
    required Fragment$ShoppingCart data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ShoppingCart',
            document: documentNodeFragmentShoppingCart,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ShoppingCart? readFragment$ShoppingCart({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ShoppingCart',
          document: documentNodeFragmentShoppingCart,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ShoppingCart.fromJson(result);
  }
}

class Fragment$ShoppingCart$shoppingCartMenuItemCollection {
  Fragment$ShoppingCart$shoppingCartMenuItemCollection({
    required this.edges,
    this.$__typename = 'ShoppingCartMenuItemConnection',
  });

  factory Fragment$ShoppingCart$shoppingCartMenuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCart$shoppingCartMenuItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges> edges;

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
    if (!(other is Fragment$ShoppingCart$shoppingCartMenuItemCollection) ||
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

extension UtilityExtension$Fragment$ShoppingCart$shoppingCartMenuItemCollection
    on Fragment$ShoppingCart$shoppingCartMenuItemCollection {
  CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<
          Fragment$ShoppingCart$shoppingCartMenuItemCollection>
      get copyWith =>
          CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<
    TRes> {
  factory CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection(
    Fragment$ShoppingCart$shoppingCartMenuItemCollection instance,
    TRes Function(Fragment$ShoppingCart$shoppingCartMenuItemCollection) then,
  ) = _CopyWithImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection;

  factory CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection;

  TRes call({
    List<Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
                      Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection<TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<TRes> {
  _CopyWithImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCart$shoppingCartMenuItemCollection _instance;

  final TRes Function(Fragment$ShoppingCart$shoppingCartMenuItemCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCart$shoppingCartMenuItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
                          Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection<
        TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges {
  Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges({
    required this.node,
    this.$__typename = 'ShoppingCartMenuItemEdge',
  });

  factory Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
      node: Fragment$ShoppingCartMenuItem.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ShoppingCartMenuItem node;

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
            is Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges) ||
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

extension UtilityExtension$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges
    on Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges {
  CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
          Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges>
      get copyWith =>
          CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
    TRes> {
  factory CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
    Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges instance,
    TRes Function(Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges)
        then,
  ) = _CopyWithImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges;

  factory CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges;

  TRes call({
    Fragment$ShoppingCartMenuItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCartMenuItem<TRes> get node;
}

class _CopyWithImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
            TRes> {
  _CopyWithImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges _instance;

  final TRes Function(
      Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ShoppingCartMenuItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCartMenuItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ShoppingCartMenuItem(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges<
            TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartMenuItemCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ShoppingCartMenuItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCartMenuItem<TRes> get node =>
      CopyWith$Fragment$ShoppingCartMenuItem.stub(_res);
}

class Fragment$PaymentType {
  Fragment$PaymentType({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    required this.createdAt,
    this.$__typename = 'PaymentType',
  });

  factory Fragment$PaymentType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentType(
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
    if (!(other is Fragment$PaymentType) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$PaymentType on Fragment$PaymentType {
  CopyWith$Fragment$PaymentType<Fragment$PaymentType> get copyWith =>
      CopyWith$Fragment$PaymentType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentType<TRes> {
  factory CopyWith$Fragment$PaymentType(
    Fragment$PaymentType instance,
    TRes Function(Fragment$PaymentType) then,
  ) = _CopyWithImpl$Fragment$PaymentType;

  factory CopyWith$Fragment$PaymentType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentType;

  TRes call({
    String? id,
    String? name,
    String? key,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentType<TRes>
    implements CopyWith$Fragment$PaymentType<TRes> {
  _CopyWithImpl$Fragment$PaymentType(
    this._instance,
    this._then,
  );

  final Fragment$PaymentType _instance;

  final TRes Function(Fragment$PaymentType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PaymentType(
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

class _CopyWithStubImpl$Fragment$PaymentType<TRes>
    implements CopyWith$Fragment$PaymentType<TRes> {
  _CopyWithStubImpl$Fragment$PaymentType(this._res);

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

const fragmentDefinitionPaymentType = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PaymentType'),
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
const documentNodeFragmentPaymentType = DocumentNode(definitions: [
  fragmentDefinitionPaymentType,
]);

extension ClientExtension$Fragment$PaymentType on graphql.GraphQLClient {
  void writeFragment$PaymentType({
    required Fragment$PaymentType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PaymentType',
            document: documentNodeFragmentPaymentType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PaymentType? readFragment$PaymentType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PaymentType',
          document: documentNodeFragmentPaymentType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PaymentType.fromJson(result);
  }
}

class Fragment$PaymentInfo {
  Fragment$PaymentInfo({
    required this.id,
    required this.userId,
    required this.paymentTypeId,
    required this.paymentType,
    required this.name,
    this.data,
    this.$__typename = 'PaymentInfo',
  });

  factory Fragment$PaymentInfo.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$paymentTypeId = json['paymentTypeId'];
    final l$paymentType = json['paymentType'];
    final l$name = json['name'];
    final l$data = json['data'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentInfo(
      id: (l$id as String),
      userId: (l$userId as String),
      paymentTypeId: (l$paymentTypeId as String),
      paymentType: Fragment$PaymentType.fromJson(
          (l$paymentType as Map<String, dynamic>)),
      name: (l$name as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String paymentTypeId;

  final Fragment$PaymentType paymentType;

  final String name;

  final Map<String, dynamic>? data;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$paymentTypeId = paymentTypeId;
    _resultData['paymentTypeId'] = l$paymentTypeId;
    final l$paymentType = paymentType;
    _resultData['paymentType'] = l$paymentType.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userId = userId;
    final l$paymentTypeId = paymentTypeId;
    final l$paymentType = paymentType;
    final l$name = name;
    final l$data = data;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$paymentTypeId,
      l$paymentType,
      l$name,
      l$data,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$PaymentInfo) || runtimeType != other.runtimeType) {
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
    final l$paymentTypeId = paymentTypeId;
    final lOther$paymentTypeId = other.paymentTypeId;
    if (l$paymentTypeId != lOther$paymentTypeId) {
      return false;
    }
    final l$paymentType = paymentType;
    final lOther$paymentType = other.paymentType;
    if (l$paymentType != lOther$paymentType) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$PaymentInfo on Fragment$PaymentInfo {
  CopyWith$Fragment$PaymentInfo<Fragment$PaymentInfo> get copyWith =>
      CopyWith$Fragment$PaymentInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentInfo<TRes> {
  factory CopyWith$Fragment$PaymentInfo(
    Fragment$PaymentInfo instance,
    TRes Function(Fragment$PaymentInfo) then,
  ) = _CopyWithImpl$Fragment$PaymentInfo;

  factory CopyWith$Fragment$PaymentInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentInfo;

  TRes call({
    String? id,
    String? userId,
    String? paymentTypeId,
    Fragment$PaymentType? paymentType,
    String? name,
    Map<String, dynamic>? data,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentType<TRes> get paymentType;
}

class _CopyWithImpl$Fragment$PaymentInfo<TRes>
    implements CopyWith$Fragment$PaymentInfo<TRes> {
  _CopyWithImpl$Fragment$PaymentInfo(
    this._instance,
    this._then,
  );

  final Fragment$PaymentInfo _instance;

  final TRes Function(Fragment$PaymentInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? paymentTypeId = _undefined,
    Object? paymentType = _undefined,
    Object? name = _undefined,
    Object? data = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PaymentInfo(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        paymentTypeId: paymentTypeId == _undefined || paymentTypeId == null
            ? _instance.paymentTypeId
            : (paymentTypeId as String),
        paymentType: paymentType == _undefined || paymentType == null
            ? _instance.paymentType
            : (paymentType as Fragment$PaymentType),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentType<TRes> get paymentType {
    final local$paymentType = _instance.paymentType;
    return CopyWith$Fragment$PaymentType(
        local$paymentType, (e) => call(paymentType: e));
  }
}

class _CopyWithStubImpl$Fragment$PaymentInfo<TRes>
    implements CopyWith$Fragment$PaymentInfo<TRes> {
  _CopyWithStubImpl$Fragment$PaymentInfo(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? paymentTypeId,
    Fragment$PaymentType? paymentType,
    String? name,
    Map<String, dynamic>? data,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentType<TRes> get paymentType =>
      CopyWith$Fragment$PaymentType.stub(_res);
}

const fragmentDefinitionPaymentInfo = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentInfo'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PaymentInfo'),
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
      name: NameNode(value: 'paymentTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paymentType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PaymentType'),
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
      name: NameNode(value: 'data'),
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
const documentNodeFragmentPaymentInfo = DocumentNode(definitions: [
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);

extension ClientExtension$Fragment$PaymentInfo on graphql.GraphQLClient {
  void writeFragment$PaymentInfo({
    required Fragment$PaymentInfo data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PaymentInfo',
            document: documentNodeFragmentPaymentInfo,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PaymentInfo? readFragment$PaymentInfo({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PaymentInfo',
          document: documentNodeFragmentPaymentInfo,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PaymentInfo.fromJson(result);
  }
}

class Fragment$OrderTransaction {
  Fragment$OrderTransaction({
    required this.id,
    required this.amount,
    required this.orderId,
    required this.paymentInfoId,
    required this.paymentInfo,
    this.payerTransactionId,
    required this.createdAt,
    this.$__typename = 'OrderTransaction',
  });

  factory Fragment$OrderTransaction.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$amount = json['amount'];
    final l$orderId = json['orderId'];
    final l$paymentInfoId = json['paymentInfoId'];
    final l$paymentInfo = json['paymentInfo'];
    final l$payerTransactionId = json['payerTransactionId'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderTransaction(
      id: (l$id as String),
      amount: (l$amount as num).toDouble(),
      orderId: (l$orderId as String),
      paymentInfoId: (l$paymentInfoId as String),
      paymentInfo: Fragment$PaymentInfo.fromJson(
          (l$paymentInfo as Map<String, dynamic>)),
      payerTransactionId: (l$payerTransactionId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double amount;

  final String orderId;

  final String paymentInfoId;

  final Fragment$PaymentInfo paymentInfo;

  final String? payerTransactionId;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$orderId = orderId;
    _resultData['orderId'] = l$orderId;
    final l$paymentInfoId = paymentInfoId;
    _resultData['paymentInfoId'] = l$paymentInfoId;
    final l$paymentInfo = paymentInfo;
    _resultData['paymentInfo'] = l$paymentInfo.toJson();
    final l$payerTransactionId = payerTransactionId;
    _resultData['payerTransactionId'] = l$payerTransactionId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$amount = amount;
    final l$orderId = orderId;
    final l$paymentInfoId = paymentInfoId;
    final l$paymentInfo = paymentInfo;
    final l$payerTransactionId = payerTransactionId;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$amount,
      l$orderId,
      l$paymentInfoId,
      l$paymentInfo,
      l$payerTransactionId,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$OrderTransaction) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$paymentInfoId = paymentInfoId;
    final lOther$paymentInfoId = other.paymentInfoId;
    if (l$paymentInfoId != lOther$paymentInfoId) {
      return false;
    }
    final l$paymentInfo = paymentInfo;
    final lOther$paymentInfo = other.paymentInfo;
    if (l$paymentInfo != lOther$paymentInfo) {
      return false;
    }
    final l$payerTransactionId = payerTransactionId;
    final lOther$payerTransactionId = other.payerTransactionId;
    if (l$payerTransactionId != lOther$payerTransactionId) {
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

extension UtilityExtension$Fragment$OrderTransaction
    on Fragment$OrderTransaction {
  CopyWith$Fragment$OrderTransaction<Fragment$OrderTransaction> get copyWith =>
      CopyWith$Fragment$OrderTransaction(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$OrderTransaction<TRes> {
  factory CopyWith$Fragment$OrderTransaction(
    Fragment$OrderTransaction instance,
    TRes Function(Fragment$OrderTransaction) then,
  ) = _CopyWithImpl$Fragment$OrderTransaction;

  factory CopyWith$Fragment$OrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Fragment$OrderTransaction;

  TRes call({
    String? id,
    double? amount,
    String? orderId,
    String? paymentInfoId,
    Fragment$PaymentInfo? paymentInfo,
    String? payerTransactionId,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentInfo<TRes> get paymentInfo;
}

class _CopyWithImpl$Fragment$OrderTransaction<TRes>
    implements CopyWith$Fragment$OrderTransaction<TRes> {
  _CopyWithImpl$Fragment$OrderTransaction(
    this._instance,
    this._then,
  );

  final Fragment$OrderTransaction _instance;

  final TRes Function(Fragment$OrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? amount = _undefined,
    Object? orderId = _undefined,
    Object? paymentInfoId = _undefined,
    Object? paymentInfo = _undefined,
    Object? payerTransactionId = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderTransaction(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        orderId: orderId == _undefined || orderId == null
            ? _instance.orderId
            : (orderId as String),
        paymentInfoId: paymentInfoId == _undefined || paymentInfoId == null
            ? _instance.paymentInfoId
            : (paymentInfoId as String),
        paymentInfo: paymentInfo == _undefined || paymentInfo == null
            ? _instance.paymentInfo
            : (paymentInfo as Fragment$PaymentInfo),
        payerTransactionId: payerTransactionId == _undefined
            ? _instance.payerTransactionId
            : (payerTransactionId as String?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentInfo<TRes> get paymentInfo {
    final local$paymentInfo = _instance.paymentInfo;
    return CopyWith$Fragment$PaymentInfo(
        local$paymentInfo, (e) => call(paymentInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$OrderTransaction<TRes>
    implements CopyWith$Fragment$OrderTransaction<TRes> {
  _CopyWithStubImpl$Fragment$OrderTransaction(this._res);

  TRes _res;

  call({
    String? id,
    double? amount,
    String? orderId,
    String? paymentInfoId,
    Fragment$PaymentInfo? paymentInfo,
    String? payerTransactionId,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentInfo<TRes> get paymentInfo =>
      CopyWith$Fragment$PaymentInfo.stub(_res);
}

const fragmentDefinitionOrderTransaction = FragmentDefinitionNode(
  name: NameNode(value: 'OrderTransaction'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderTransaction'),
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
      name: NameNode(value: 'amount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'orderId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paymentInfoId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paymentInfo'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PaymentInfo'),
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
      name: NameNode(value: 'payerTransactionId'),
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
const documentNodeFragmentOrderTransaction = DocumentNode(definitions: [
  fragmentDefinitionOrderTransaction,
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);

extension ClientExtension$Fragment$OrderTransaction on graphql.GraphQLClient {
  void writeFragment$OrderTransaction({
    required Fragment$OrderTransaction data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'OrderTransaction',
            document: documentNodeFragmentOrderTransaction,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$OrderTransaction? readFragment$OrderTransaction({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'OrderTransaction',
          document: documentNodeFragmentOrderTransaction,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$OrderTransaction.fromJson(result);
  }
}

class Fragment$Order {
  Fragment$Order({
    required this.id,
    required this.orderTypeId,
    required this.orderType,
    required this.stationId,
    required this.station,
    required this.userId,
    this.user,
    required this.orderStatusId,
    required this.orderStatus,
    this.orderItemCollection,
    required this.isPaid,
    this.orderTransactionCollection,
    this.data,
    this.notes,
    this.updatedAt,
    required this.createdAt,
    this.$__typename = 'Order',
  });

  factory Fragment$Order.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$orderTypeId = json['orderTypeId'];
    final l$orderType = json['orderType'];
    final l$stationId = json['stationId'];
    final l$station = json['station'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$orderStatusId = json['orderStatusId'];
    final l$orderStatus = json['orderStatus'];
    final l$orderItemCollection = json['orderItemCollection'];
    final l$isPaid = json['isPaid'];
    final l$orderTransactionCollection = json['orderTransactionCollection'];
    final l$data = json['data'];
    final l$notes = json['notes'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Order(
      id: (l$id as String),
      orderTypeId: (l$orderTypeId as String),
      orderType:
          Fragment$OrderType.fromJson((l$orderType as Map<String, dynamic>)),
      stationId: (l$stationId as String),
      station: Fragment$Station.fromJson((l$station as Map<String, dynamic>)),
      userId: (l$userId as String),
      user: l$user == null
          ? null
          : Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      orderStatusId: (l$orderStatusId as String),
      orderStatus: Fragment$Order$orderStatus.fromJson(
          (l$orderStatus as Map<String, dynamic>)),
      orderItemCollection: l$orderItemCollection == null
          ? null
          : Fragment$Order$orderItemCollection.fromJson(
              (l$orderItemCollection as Map<String, dynamic>)),
      isPaid: (l$isPaid as bool),
      orderTransactionCollection: l$orderTransactionCollection == null
          ? null
          : Fragment$Order$orderTransactionCollection.fromJson(
              (l$orderTransactionCollection as Map<String, dynamic>)),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      notes: (l$notes as String?),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String orderTypeId;

  final Fragment$OrderType orderType;

  final String stationId;

  final Fragment$Station station;

  final String userId;

  final Fragment$User? user;

  final String orderStatusId;

  final Fragment$Order$orderStatus orderStatus;

  final Fragment$Order$orderItemCollection? orderItemCollection;

  final bool isPaid;

  final Fragment$Order$orderTransactionCollection? orderTransactionCollection;

  final Map<String, dynamic>? data;

  final String? notes;

  final DateTime? updatedAt;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$orderTypeId = orderTypeId;
    _resultData['orderTypeId'] = l$orderTypeId;
    final l$orderType = orderType;
    _resultData['orderType'] = l$orderType.toJson();
    final l$stationId = stationId;
    _resultData['stationId'] = l$stationId;
    final l$station = station;
    _resultData['station'] = l$station.toJson();
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user?.toJson();
    final l$orderStatusId = orderStatusId;
    _resultData['orderStatusId'] = l$orderStatusId;
    final l$orderStatus = orderStatus;
    _resultData['orderStatus'] = l$orderStatus.toJson();
    final l$orderItemCollection = orderItemCollection;
    _resultData['orderItemCollection'] = l$orderItemCollection?.toJson();
    final l$isPaid = isPaid;
    _resultData['isPaid'] = l$isPaid;
    final l$orderTransactionCollection = orderTransactionCollection;
    _resultData['orderTransactionCollection'] =
        l$orderTransactionCollection?.toJson();
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$notes = notes;
    _resultData['notes'] = l$notes;
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$orderTypeId = orderTypeId;
    final l$orderType = orderType;
    final l$stationId = stationId;
    final l$station = station;
    final l$userId = userId;
    final l$user = user;
    final l$orderStatusId = orderStatusId;
    final l$orderStatus = orderStatus;
    final l$orderItemCollection = orderItemCollection;
    final l$isPaid = isPaid;
    final l$orderTransactionCollection = orderTransactionCollection;
    final l$data = data;
    final l$notes = notes;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$orderTypeId,
      l$orderType,
      l$stationId,
      l$station,
      l$userId,
      l$user,
      l$orderStatusId,
      l$orderStatus,
      l$orderItemCollection,
      l$isPaid,
      l$orderTransactionCollection,
      l$data,
      l$notes,
      l$updatedAt,
      l$createdAt,
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
    final l$isPaid = isPaid;
    final lOther$isPaid = other.isPaid;
    if (l$isPaid != lOther$isPaid) {
      return false;
    }
    final l$orderTransactionCollection = orderTransactionCollection;
    final lOther$orderTransactionCollection = other.orderTransactionCollection;
    if (l$orderTransactionCollection != lOther$orderTransactionCollection) {
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
    final l$updatedAt = updatedAt;
    final lOther$updatedAt = other.updatedAt;
    if (l$updatedAt != lOther$updatedAt) {
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
    String? stationId,
    Fragment$Station? station,
    String? userId,
    Fragment$User? user,
    String? orderStatusId,
    Fragment$Order$orderStatus? orderStatus,
    Fragment$Order$orderItemCollection? orderItemCollection,
    bool? isPaid,
    Fragment$Order$orderTransactionCollection? orderTransactionCollection,
    Map<String, dynamic>? data,
    String? notes,
    DateTime? updatedAt,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$OrderType<TRes> get orderType;
  CopyWith$Fragment$Station<TRes> get station;
  CopyWith$Fragment$User<TRes> get user;
  CopyWith$Fragment$Order$orderStatus<TRes> get orderStatus;
  CopyWith$Fragment$Order$orderItemCollection<TRes> get orderItemCollection;
  CopyWith$Fragment$Order$orderTransactionCollection<TRes>
      get orderTransactionCollection;
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
    Object? stationId = _undefined,
    Object? station = _undefined,
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? orderStatusId = _undefined,
    Object? orderStatus = _undefined,
    Object? orderItemCollection = _undefined,
    Object? isPaid = _undefined,
    Object? orderTransactionCollection = _undefined,
    Object? data = _undefined,
    Object? notes = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
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
        stationId: stationId == _undefined || stationId == null
            ? _instance.stationId
            : (stationId as String),
        station: station == _undefined || station == null
            ? _instance.station
            : (station as Fragment$Station),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined ? _instance.user : (user as Fragment$User?),
        orderStatusId: orderStatusId == _undefined || orderStatusId == null
            ? _instance.orderStatusId
            : (orderStatusId as String),
        orderStatus: orderStatus == _undefined || orderStatus == null
            ? _instance.orderStatus
            : (orderStatus as Fragment$Order$orderStatus),
        orderItemCollection: orderItemCollection == _undefined
            ? _instance.orderItemCollection
            : (orderItemCollection as Fragment$Order$orderItemCollection?),
        isPaid: isPaid == _undefined || isPaid == null
            ? _instance.isPaid
            : (isPaid as bool),
        orderTransactionCollection: orderTransactionCollection == _undefined
            ? _instance.orderTransactionCollection
            : (orderTransactionCollection
                as Fragment$Order$orderTransactionCollection?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        notes: notes == _undefined ? _instance.notes : (notes as String?),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderType<TRes> get orderType {
    final local$orderType = _instance.orderType;
    return CopyWith$Fragment$OrderType(
        local$orderType, (e) => call(orderType: e));
  }

  CopyWith$Fragment$Station<TRes> get station {
    final local$station = _instance.station;
    return CopyWith$Fragment$Station(local$station, (e) => call(station: e));
  }

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return local$user == null
        ? CopyWith$Fragment$User.stub(_then(_instance))
        : CopyWith$Fragment$User(local$user, (e) => call(user: e));
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

  CopyWith$Fragment$Order$orderTransactionCollection<TRes>
      get orderTransactionCollection {
    final local$orderTransactionCollection =
        _instance.orderTransactionCollection;
    return local$orderTransactionCollection == null
        ? CopyWith$Fragment$Order$orderTransactionCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$Order$orderTransactionCollection(
            local$orderTransactionCollection,
            (e) => call(orderTransactionCollection: e));
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
    String? stationId,
    Fragment$Station? station,
    String? userId,
    Fragment$User? user,
    String? orderStatusId,
    Fragment$Order$orderStatus? orderStatus,
    Fragment$Order$orderItemCollection? orderItemCollection,
    bool? isPaid,
    Fragment$Order$orderTransactionCollection? orderTransactionCollection,
    Map<String, dynamic>? data,
    String? notes,
    DateTime? updatedAt,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderType<TRes> get orderType =>
      CopyWith$Fragment$OrderType.stub(_res);

  CopyWith$Fragment$Station<TRes> get station =>
      CopyWith$Fragment$Station.stub(_res);

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);

  CopyWith$Fragment$Order$orderStatus<TRes> get orderStatus =>
      CopyWith$Fragment$Order$orderStatus.stub(_res);

  CopyWith$Fragment$Order$orderItemCollection<TRes> get orderItemCollection =>
      CopyWith$Fragment$Order$orderItemCollection.stub(_res);

  CopyWith$Fragment$Order$orderTransactionCollection<TRes>
      get orderTransactionCollection =>
          CopyWith$Fragment$Order$orderTransactionCollection.stub(_res);
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
                            FragmentSpreadNode(
                              name: NameNode(value: 'OrderItemMenuItem'),
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
      name: NameNode(value: 'isPaid'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'orderTransactionCollection'),
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
                  name: NameNode(value: 'OrderTransaction'),
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
      name: NameNode(value: 'updatedAt'),
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
const documentNodeFragmentOrder = DocumentNode(definitions: [
  fragmentDefinitionOrder,
  fragmentDefinitionOrderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
  fragmentDefinitionOrderItemMenuItem,
  fragmentDefinitionMenuItem,
  fragmentDefinitionOrderTransaction,
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
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
    required this.pageInfo,
    this.$__typename = 'OrderItemMenuItemConnection',
  });

  factory Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>
      edges;

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo
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
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges<
                      Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>>)
          _fn);
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
      TRes> get pageInfo;
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
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo),
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

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
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
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo
              .stub(_res);
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
          Fragment$OrderItemMenuItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OrderItemMenuItem node;

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
    Fragment$OrderItemMenuItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderItemMenuItem<TRes> get node;
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
            : (node as Fragment$OrderItemMenuItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderItemMenuItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$OrderItemMenuItem(
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
    Fragment$OrderItemMenuItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderItemMenuItem<TRes> get node =>
      CopyWith$Fragment$OrderItemMenuItem.stub(_res);
}

class Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo {
  Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
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
            is Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo
    on Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo {
  CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
    Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo
        instance,
    TRes Function(
            Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo;

  factory CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo
      _instance;

  final TRes Function(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemCollection$edges$node$orderItemMenuItemCollection$pageInfo(
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

class Fragment$Order$orderTransactionCollection {
  Fragment$Order$orderTransactionCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderTransactionConnection',
  });

  factory Fragment$Order$orderTransactionCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderTransactionCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Order$orderTransactionCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$Order$orderTransactionCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Order$orderTransactionCollection$edges> edges;

  final Fragment$Order$orderTransactionCollection$pageInfo pageInfo;

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
    if (!(other is Fragment$Order$orderTransactionCollection) ||
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

extension UtilityExtension$Fragment$Order$orderTransactionCollection
    on Fragment$Order$orderTransactionCollection {
  CopyWith$Fragment$Order$orderTransactionCollection<
          Fragment$Order$orderTransactionCollection>
      get copyWith => CopyWith$Fragment$Order$orderTransactionCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderTransactionCollection<TRes> {
  factory CopyWith$Fragment$Order$orderTransactionCollection(
    Fragment$Order$orderTransactionCollection instance,
    TRes Function(Fragment$Order$orderTransactionCollection) then,
  ) = _CopyWithImpl$Fragment$Order$orderTransactionCollection;

  factory CopyWith$Fragment$Order$orderTransactionCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderTransactionCollection;

  TRes call({
    List<Fragment$Order$orderTransactionCollection$edges>? edges,
    Fragment$Order$orderTransactionCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$orderTransactionCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$orderTransactionCollection$edges<
                      Fragment$Order$orderTransactionCollection$edges>>)
          _fn);
  CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Fragment$Order$orderTransactionCollection<TRes>
    implements CopyWith$Fragment$Order$orderTransactionCollection<TRes> {
  _CopyWithImpl$Fragment$Order$orderTransactionCollection(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderTransactionCollection _instance;

  final TRes Function(Fragment$Order$orderTransactionCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderTransactionCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Order$orderTransactionCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$Order$orderTransactionCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Order$orderTransactionCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Order$orderTransactionCollection$edges<
                          Fragment$Order$orderTransactionCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Fragment$Order$orderTransactionCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$Order$orderTransactionCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderTransactionCollection<TRes>
    implements CopyWith$Fragment$Order$orderTransactionCollection<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderTransactionCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order$orderTransactionCollection$edges>? edges,
    Fragment$Order$orderTransactionCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Fragment$Order$orderTransactionCollection$pageInfo.stub(
              _res);
}

class Fragment$Order$orderTransactionCollection$edges {
  Fragment$Order$orderTransactionCollection$edges({
    required this.node,
    this.$__typename = 'OrderTransactionEdge',
  });

  factory Fragment$Order$orderTransactionCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderTransactionCollection$edges(
      node:
          Fragment$OrderTransaction.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OrderTransaction node;

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
    if (!(other is Fragment$Order$orderTransactionCollection$edges) ||
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

extension UtilityExtension$Fragment$Order$orderTransactionCollection$edges
    on Fragment$Order$orderTransactionCollection$edges {
  CopyWith$Fragment$Order$orderTransactionCollection$edges<
          Fragment$Order$orderTransactionCollection$edges>
      get copyWith => CopyWith$Fragment$Order$orderTransactionCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderTransactionCollection$edges<TRes> {
  factory CopyWith$Fragment$Order$orderTransactionCollection$edges(
    Fragment$Order$orderTransactionCollection$edges instance,
    TRes Function(Fragment$Order$orderTransactionCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Order$orderTransactionCollection$edges;

  factory CopyWith$Fragment$Order$orderTransactionCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderTransactionCollection$edges;

  TRes call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderTransaction<TRes> get node;
}

class _CopyWithImpl$Fragment$Order$orderTransactionCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderTransactionCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Order$orderTransactionCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderTransactionCollection$edges _instance;

  final TRes Function(Fragment$Order$orderTransactionCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderTransactionCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$OrderTransaction),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderTransaction<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$OrderTransaction(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderTransactionCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderTransactionCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderTransactionCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderTransaction<TRes> get node =>
      CopyWith$Fragment$OrderTransaction.stub(_res);
}

class Fragment$Order$orderTransactionCollection$pageInfo {
  Fragment$Order$orderTransactionCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$Order$orderTransactionCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderTransactionCollection$pageInfo(
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
    if (!(other is Fragment$Order$orderTransactionCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$Order$orderTransactionCollection$pageInfo
    on Fragment$Order$orderTransactionCollection$pageInfo {
  CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<
          Fragment$Order$orderTransactionCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$Order$orderTransactionCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$Order$orderTransactionCollection$pageInfo(
    Fragment$Order$orderTransactionCollection$pageInfo instance,
    TRes Function(Fragment$Order$orderTransactionCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$Order$orderTransactionCollection$pageInfo;

  factory CopyWith$Fragment$Order$orderTransactionCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderTransactionCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Order$orderTransactionCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$Order$orderTransactionCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderTransactionCollection$pageInfo _instance;

  final TRes Function(Fragment$Order$orderTransactionCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderTransactionCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$Order$orderTransactionCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$Order$orderTransactionCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderTransactionCollection$pageInfo(
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

class Variables$Query$Order {
  factory Variables$Query$Order({required String id}) =>
      Variables$Query$Order._({
        r'id': id,
      });

  Variables$Query$Order._(this._$data);

  factory Variables$Query$Order.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Order._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Order<Variables$Query$Order> get copyWith =>
      CopyWith$Variables$Query$Order(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Order) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Order<TRes> {
  factory CopyWith$Variables$Query$Order(
    Variables$Query$Order instance,
    TRes Function(Variables$Query$Order) then,
  ) = _CopyWithImpl$Variables$Query$Order;

  factory CopyWith$Variables$Query$Order.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Order;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Order<TRes>
    implements CopyWith$Variables$Query$Order<TRes> {
  _CopyWithImpl$Variables$Query$Order(
    this._instance,
    this._then,
  );

  final Variables$Query$Order _instance;

  final TRes Function(Variables$Query$Order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Order._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Order<TRes>
    implements CopyWith$Variables$Query$Order<TRes> {
  _CopyWithStubImpl$Variables$Query$Order(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Order {
  Query$Order({
    this.orderCollection,
    this.$__typename = 'Query',
  });

  factory Query$Order.fromJson(Map<String, dynamic> json) {
    final l$orderCollection = json['orderCollection'];
    final l$$__typename = json['__typename'];
    return Query$Order(
      orderCollection: l$orderCollection == null
          ? null
          : Query$Order$orderCollection.fromJson(
              (l$orderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Order$orderCollection? orderCollection;

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
    if (!(other is Query$Order) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Order on Query$Order {
  CopyWith$Query$Order<Query$Order> get copyWith => CopyWith$Query$Order(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Order<TRes> {
  factory CopyWith$Query$Order(
    Query$Order instance,
    TRes Function(Query$Order) then,
  ) = _CopyWithImpl$Query$Order;

  factory CopyWith$Query$Order.stub(TRes res) = _CopyWithStubImpl$Query$Order;

  TRes call({
    Query$Order$orderCollection? orderCollection,
    String? $__typename,
  });
  CopyWith$Query$Order$orderCollection<TRes> get orderCollection;
}

class _CopyWithImpl$Query$Order<TRes> implements CopyWith$Query$Order<TRes> {
  _CopyWithImpl$Query$Order(
    this._instance,
    this._then,
  );

  final Query$Order _instance;

  final TRes Function(Query$Order) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Order(
        orderCollection: orderCollection == _undefined
            ? _instance.orderCollection
            : (orderCollection as Query$Order$orderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Order$orderCollection<TRes> get orderCollection {
    final local$orderCollection = _instance.orderCollection;
    return local$orderCollection == null
        ? CopyWith$Query$Order$orderCollection.stub(_then(_instance))
        : CopyWith$Query$Order$orderCollection(
            local$orderCollection, (e) => call(orderCollection: e));
  }
}

class _CopyWithStubImpl$Query$Order<TRes>
    implements CopyWith$Query$Order<TRes> {
  _CopyWithStubImpl$Query$Order(this._res);

  TRes _res;

  call({
    Query$Order$orderCollection? orderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Order$orderCollection<TRes> get orderCollection =>
      CopyWith$Query$Order$orderCollection.stub(_res);
}

const documentNodeQueryOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Order'),
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
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
  fragmentDefinitionOrderItemMenuItem,
  fragmentDefinitionMenuItem,
  fragmentDefinitionOrderTransaction,
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);
Query$Order _parserFn$Query$Order(Map<String, dynamic> data) =>
    Query$Order.fromJson(data);
typedef OnQueryComplete$Query$Order = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Order?,
);

class Options$Query$Order extends graphql.QueryOptions<Query$Order> {
  Options$Query$Order({
    String? operationName,
    required Variables$Query$Order variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Order? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Order? onComplete,
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
                    data == null ? null : _parserFn$Query$Order(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrder,
          parserFn: _parserFn$Query$Order,
        );

  final OnQueryComplete$Query$Order? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Order extends graphql.WatchQueryOptions<Query$Order> {
  WatchOptions$Query$Order({
    String? operationName,
    required Variables$Query$Order variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Order? typedOptimisticResult,
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
          document: documentNodeQueryOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Order,
        );
}

class FetchMoreOptions$Query$Order extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Order({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Order variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryOrder,
        );
}

extension ClientExtension$Query$Order on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Order>> query$Order(
          Options$Query$Order options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Order> watchQuery$Order(
          WatchOptions$Query$Order options) =>
      this.watchQuery(options);
  void writeQuery$Order({
    required Query$Order data,
    required Variables$Query$Order variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryOrder),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Order? readQuery$Order({
    required Variables$Query$Order variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryOrder),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Order.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Order> useQuery$Order(
        Options$Query$Order options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Order> useWatchQuery$Order(
        WatchOptions$Query$Order options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Order$Widget extends graphql_flutter.Query<Query$Order> {
  Query$Order$Widget({
    widgets.Key? key,
    required Options$Query$Order options,
    required graphql_flutter.QueryBuilder<Query$Order> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Order$orderCollection {
  Query$Order$orderCollection({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$Order$orderCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Order$orderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Order$orderCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Order$orderCollection$edges> edges;

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
    if (!(other is Query$Order$orderCollection) ||
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

extension UtilityExtension$Query$Order$orderCollection
    on Query$Order$orderCollection {
  CopyWith$Query$Order$orderCollection<Query$Order$orderCollection>
      get copyWith => CopyWith$Query$Order$orderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Order$orderCollection<TRes> {
  factory CopyWith$Query$Order$orderCollection(
    Query$Order$orderCollection instance,
    TRes Function(Query$Order$orderCollection) then,
  ) = _CopyWithImpl$Query$Order$orderCollection;

  factory CopyWith$Query$Order$orderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Order$orderCollection;

  TRes call({
    List<Query$Order$orderCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Order$orderCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Order$orderCollection$edges<
                      Query$Order$orderCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Order$orderCollection<TRes>
    implements CopyWith$Query$Order$orderCollection<TRes> {
  _CopyWithImpl$Query$Order$orderCollection(
    this._instance,
    this._then,
  );

  final Query$Order$orderCollection _instance;

  final TRes Function(Query$Order$orderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Order$orderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Order$orderCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Order$orderCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Order$orderCollection$edges<
                          Query$Order$orderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Order$orderCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Order$orderCollection<TRes>
    implements CopyWith$Query$Order$orderCollection<TRes> {
  _CopyWithStubImpl$Query$Order$orderCollection(this._res);

  TRes _res;

  call({
    List<Query$Order$orderCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Order$orderCollection$edges {
  Query$Order$orderCollection$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$Order$orderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Order$orderCollection$edges(
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
    if (!(other is Query$Order$orderCollection$edges) ||
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

extension UtilityExtension$Query$Order$orderCollection$edges
    on Query$Order$orderCollection$edges {
  CopyWith$Query$Order$orderCollection$edges<Query$Order$orderCollection$edges>
      get copyWith => CopyWith$Query$Order$orderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Order$orderCollection$edges<TRes> {
  factory CopyWith$Query$Order$orderCollection$edges(
    Query$Order$orderCollection$edges instance,
    TRes Function(Query$Order$orderCollection$edges) then,
  ) = _CopyWithImpl$Query$Order$orderCollection$edges;

  factory CopyWith$Query$Order$orderCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Order$orderCollection$edges;

  TRes call({
    Fragment$Order? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order<TRes> get node;
}

class _CopyWithImpl$Query$Order$orderCollection$edges<TRes>
    implements CopyWith$Query$Order$orderCollection$edges<TRes> {
  _CopyWithImpl$Query$Order$orderCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Order$orderCollection$edges _instance;

  final TRes Function(Query$Order$orderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Order$orderCollection$edges(
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

class _CopyWithStubImpl$Query$Order$orderCollection$edges<TRes>
    implements CopyWith$Query$Order$orderCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Order$orderCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order<TRes> get node => CopyWith$Fragment$Order.stub(_res);
}

class Variables$Query$OrderCollection {
  factory Variables$Query$OrderCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderFilter? filter,
    List<Input$OrderOrderBy>? orderBy,
  }) =>
      Variables$Query$OrderCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$OrderCollection._(this._$data);

  factory Variables$Query$OrderCollection.fromJson(Map<String, dynamic> data) {
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
    return Variables$Query$OrderCollection._(result$data);
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

  CopyWith$Variables$Query$OrderCollection<Variables$Query$OrderCollection>
      get copyWith => CopyWith$Variables$Query$OrderCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$OrderCollection) ||
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

abstract class CopyWith$Variables$Query$OrderCollection<TRes> {
  factory CopyWith$Variables$Query$OrderCollection(
    Variables$Query$OrderCollection instance,
    TRes Function(Variables$Query$OrderCollection) then,
  ) = _CopyWithImpl$Variables$Query$OrderCollection;

  factory CopyWith$Variables$Query$OrderCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderFilter? filter,
    List<Input$OrderOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$OrderCollection<TRes>
    implements CopyWith$Variables$Query$OrderCollection<TRes> {
  _CopyWithImpl$Variables$Query$OrderCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$OrderCollection _instance;

  final TRes Function(Variables$Query$OrderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$OrderCollection._({
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

class _CopyWithStubImpl$Variables$Query$OrderCollection<TRes>
    implements CopyWith$Variables$Query$OrderCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderCollection(this._res);

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

class Query$OrderCollection {
  Query$OrderCollection({
    this.orderCollection,
    this.$__typename = 'Query',
  });

  factory Query$OrderCollection.fromJson(Map<String, dynamic> json) {
    final l$orderCollection = json['orderCollection'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection(
      orderCollection: l$orderCollection == null
          ? null
          : Query$OrderCollection$orderCollection.fromJson(
              (l$orderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderCollection$orderCollection? orderCollection;

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
    if (!(other is Query$OrderCollection) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$OrderCollection on Query$OrderCollection {
  CopyWith$Query$OrderCollection<Query$OrderCollection> get copyWith =>
      CopyWith$Query$OrderCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$OrderCollection<TRes> {
  factory CopyWith$Query$OrderCollection(
    Query$OrderCollection instance,
    TRes Function(Query$OrderCollection) then,
  ) = _CopyWithImpl$Query$OrderCollection;

  factory CopyWith$Query$OrderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderCollection;

  TRes call({
    Query$OrderCollection$orderCollection? orderCollection,
    String? $__typename,
  });
  CopyWith$Query$OrderCollection$orderCollection<TRes> get orderCollection;
}

class _CopyWithImpl$Query$OrderCollection<TRes>
    implements CopyWith$Query$OrderCollection<TRes> {
  _CopyWithImpl$Query$OrderCollection(
    this._instance,
    this._then,
  );

  final Query$OrderCollection _instance;

  final TRes Function(Query$OrderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection(
        orderCollection: orderCollection == _undefined
            ? _instance.orderCollection
            : (orderCollection as Query$OrderCollection$orderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$OrderCollection$orderCollection<TRes> get orderCollection {
    final local$orderCollection = _instance.orderCollection;
    return local$orderCollection == null
        ? CopyWith$Query$OrderCollection$orderCollection.stub(_then(_instance))
        : CopyWith$Query$OrderCollection$orderCollection(
            local$orderCollection, (e) => call(orderCollection: e));
  }
}

class _CopyWithStubImpl$Query$OrderCollection<TRes>
    implements CopyWith$Query$OrderCollection<TRes> {
  _CopyWithStubImpl$Query$OrderCollection(this._res);

  TRes _res;

  call({
    Query$OrderCollection$orderCollection? orderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$OrderCollection$orderCollection<TRes> get orderCollection =>
      CopyWith$Query$OrderCollection$orderCollection.stub(_res);
}

const documentNodeQueryOrderCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'OrderCollection'),
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
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
  fragmentDefinitionOrderItemMenuItem,
  fragmentDefinitionMenuItem,
  fragmentDefinitionOrderTransaction,
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);
Query$OrderCollection _parserFn$Query$OrderCollection(
        Map<String, dynamic> data) =>
    Query$OrderCollection.fromJson(data);
typedef OnQueryComplete$Query$OrderCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$OrderCollection?,
);

class Options$Query$OrderCollection
    extends graphql.QueryOptions<Query$OrderCollection> {
  Options$Query$OrderCollection({
    String? operationName,
    Variables$Query$OrderCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderCollection? onComplete,
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
                    data == null ? null : _parserFn$Query$OrderCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrderCollection,
          parserFn: _parserFn$Query$OrderCollection,
        );

  final OnQueryComplete$Query$OrderCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$OrderCollection
    extends graphql.WatchQueryOptions<Query$OrderCollection> {
  WatchOptions$Query$OrderCollection({
    String? operationName,
    Variables$Query$OrderCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderCollection? typedOptimisticResult,
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
          document: documentNodeQueryOrderCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$OrderCollection,
        );
}

class FetchMoreOptions$Query$OrderCollection extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$OrderCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryOrderCollection,
        );
}

extension ClientExtension$Query$OrderCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderCollection>> query$OrderCollection(
          [Options$Query$OrderCollection? options]) async =>
      await this.query(options ?? Options$Query$OrderCollection());
  graphql.ObservableQuery<Query$OrderCollection> watchQuery$OrderCollection(
          [WatchOptions$Query$OrderCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$OrderCollection());
  void writeQuery$OrderCollection({
    required Query$OrderCollection data,
    Variables$Query$OrderCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryOrderCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$OrderCollection? readQuery$OrderCollection({
    Variables$Query$OrderCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryOrderCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$OrderCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderCollection> useQuery$OrderCollection(
        [Options$Query$OrderCollection? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$OrderCollection());
graphql.ObservableQuery<Query$OrderCollection> useWatchQuery$OrderCollection(
        [WatchOptions$Query$OrderCollection? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$OrderCollection());

class Query$OrderCollection$Widget
    extends graphql_flutter.Query<Query$OrderCollection> {
  Query$OrderCollection$Widget({
    widgets.Key? key,
    Options$Query$OrderCollection? options,
    required graphql_flutter.QueryBuilder<Query$OrderCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$OrderCollection(),
          builder: builder,
        );
}

class Query$OrderCollection$orderCollection {
  Query$OrderCollection$orderCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderConnection',
  });

  factory Query$OrderCollection$orderCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection$orderCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$OrderCollection$orderCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$OrderCollection$orderCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$OrderCollection$orderCollection$edges> edges;

  final Query$OrderCollection$orderCollection$pageInfo pageInfo;

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
    if (!(other is Query$OrderCollection$orderCollection) ||
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

extension UtilityExtension$Query$OrderCollection$orderCollection
    on Query$OrderCollection$orderCollection {
  CopyWith$Query$OrderCollection$orderCollection<
          Query$OrderCollection$orderCollection>
      get copyWith => CopyWith$Query$OrderCollection$orderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderCollection$orderCollection<TRes> {
  factory CopyWith$Query$OrderCollection$orderCollection(
    Query$OrderCollection$orderCollection instance,
    TRes Function(Query$OrderCollection$orderCollection) then,
  ) = _CopyWithImpl$Query$OrderCollection$orderCollection;

  factory CopyWith$Query$OrderCollection$orderCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderCollection$orderCollection;

  TRes call({
    List<Query$OrderCollection$orderCollection$edges>? edges,
    Query$OrderCollection$orderCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$OrderCollection$orderCollection$edges> Function(
              Iterable<
                  CopyWith$Query$OrderCollection$orderCollection$edges<
                      Query$OrderCollection$orderCollection$edges>>)
          _fn);
  CopyWith$Query$OrderCollection$orderCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$OrderCollection$orderCollection<TRes>
    implements CopyWith$Query$OrderCollection$orderCollection<TRes> {
  _CopyWithImpl$Query$OrderCollection$orderCollection(
    this._instance,
    this._then,
  );

  final Query$OrderCollection$orderCollection _instance;

  final TRes Function(Query$OrderCollection$orderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection$orderCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$OrderCollection$orderCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$OrderCollection$orderCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$OrderCollection$orderCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$OrderCollection$orderCollection$edges<
                          Query$OrderCollection$orderCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$OrderCollection$orderCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$OrderCollection$orderCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderCollection$orderCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$OrderCollection$orderCollection<TRes>
    implements CopyWith$Query$OrderCollection$orderCollection<TRes> {
  _CopyWithStubImpl$Query$OrderCollection$orderCollection(this._res);

  TRes _res;

  call({
    List<Query$OrderCollection$orderCollection$edges>? edges,
    Query$OrderCollection$orderCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$OrderCollection$orderCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$OrderCollection$orderCollection$pageInfo.stub(_res);
}

class Query$OrderCollection$orderCollection$edges {
  Query$OrderCollection$orderCollection$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$OrderCollection$orderCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection$orderCollection$edges(
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
    if (!(other is Query$OrderCollection$orderCollection$edges) ||
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

extension UtilityExtension$Query$OrderCollection$orderCollection$edges
    on Query$OrderCollection$orderCollection$edges {
  CopyWith$Query$OrderCollection$orderCollection$edges<
          Query$OrderCollection$orderCollection$edges>
      get copyWith => CopyWith$Query$OrderCollection$orderCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderCollection$orderCollection$edges<TRes> {
  factory CopyWith$Query$OrderCollection$orderCollection$edges(
    Query$OrderCollection$orderCollection$edges instance,
    TRes Function(Query$OrderCollection$orderCollection$edges) then,
  ) = _CopyWithImpl$Query$OrderCollection$orderCollection$edges;

  factory CopyWith$Query$OrderCollection$orderCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderCollection$orderCollection$edges;

  TRes call({
    Fragment$Order? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order<TRes> get node;
}

class _CopyWithImpl$Query$OrderCollection$orderCollection$edges<TRes>
    implements CopyWith$Query$OrderCollection$orderCollection$edges<TRes> {
  _CopyWithImpl$Query$OrderCollection$orderCollection$edges(
    this._instance,
    this._then,
  );

  final Query$OrderCollection$orderCollection$edges _instance;

  final TRes Function(Query$OrderCollection$orderCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection$orderCollection$edges(
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

class _CopyWithStubImpl$Query$OrderCollection$orderCollection$edges<TRes>
    implements CopyWith$Query$OrderCollection$orderCollection$edges<TRes> {
  _CopyWithStubImpl$Query$OrderCollection$orderCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order<TRes> get node => CopyWith$Fragment$Order.stub(_res);
}

class Query$OrderCollection$orderCollection$pageInfo {
  Query$OrderCollection$orderCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrderCollection$orderCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection$orderCollection$pageInfo(
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
    if (!(other is Query$OrderCollection$orderCollection$pageInfo) ||
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

extension UtilityExtension$Query$OrderCollection$orderCollection$pageInfo
    on Query$OrderCollection$orderCollection$pageInfo {
  CopyWith$Query$OrderCollection$orderCollection$pageInfo<
          Query$OrderCollection$orderCollection$pageInfo>
      get copyWith => CopyWith$Query$OrderCollection$orderCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderCollection$orderCollection$pageInfo<TRes> {
  factory CopyWith$Query$OrderCollection$orderCollection$pageInfo(
    Query$OrderCollection$orderCollection$pageInfo instance,
    TRes Function(Query$OrderCollection$orderCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$OrderCollection$orderCollection$pageInfo;

  factory CopyWith$Query$OrderCollection$orderCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderCollection$orderCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderCollection$orderCollection$pageInfo<TRes>
    implements CopyWith$Query$OrderCollection$orderCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$OrderCollection$orderCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderCollection$orderCollection$pageInfo _instance;

  final TRes Function(Query$OrderCollection$orderCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection$orderCollection$pageInfo(
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

class _CopyWithStubImpl$Query$OrderCollection$orderCollection$pageInfo<TRes>
    implements CopyWith$Query$OrderCollection$orderCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OrderCollection$orderCollection$pageInfo(this._res);

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

class Variables$Mutation$CreateOrder {
  factory Variables$Mutation$CreateOrder(
          {required Input$OrderInsertInput input}) =>
      Variables$Mutation$CreateOrder._({
        r'input': input,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$OrderInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrderInsertInput get input =>
      (_$data['input'] as Input$OrderInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrder<Variables$Mutation$CreateOrder>
      get copyWith => CopyWith$Variables$Mutation$CreateOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOrder) ||
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

abstract class CopyWith$Variables$Mutation$CreateOrder<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrder(
    Variables$Mutation$CreateOrder instance,
    TRes Function(Variables$Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrder;

  factory CopyWith$Variables$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrder;

  TRes call({Input$OrderInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrder _instance;

  final TRes Function(Variables$Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateOrder._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$OrderInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrder(this._res);

  TRes _res;

  call({Input$OrderInsertInput? input}) => _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    this.insertIntoOrderCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$insertIntoOrderCollection = json['insertIntoOrderCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder(
      insertIntoOrderCollection: l$insertIntoOrderCollection == null
          ? null
          : Mutation$CreateOrder$insertIntoOrderCollection.fromJson(
              (l$insertIntoOrderCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrder$insertIntoOrderCollection?
      insertIntoOrderCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoOrderCollection = insertIntoOrderCollection;
    _resultData['insertIntoOrderCollection'] =
        l$insertIntoOrderCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoOrderCollection = insertIntoOrderCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoOrderCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoOrderCollection = insertIntoOrderCollection;
    final lOther$insertIntoOrderCollection = other.insertIntoOrderCollection;
    if (l$insertIntoOrderCollection != lOther$insertIntoOrderCollection) {
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

extension UtilityExtension$Mutation$CreateOrder on Mutation$CreateOrder {
  CopyWith$Mutation$CreateOrder<Mutation$CreateOrder> get copyWith =>
      CopyWith$Mutation$CreateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrder<TRes> {
  factory CopyWith$Mutation$CreateOrder(
    Mutation$CreateOrder instance,
    TRes Function(Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Mutation$CreateOrder;

  factory CopyWith$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder;

  TRes call({
    Mutation$CreateOrder$insertIntoOrderCollection? insertIntoOrderCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<TRes>
      get insertIntoOrderCollection;
}

class _CopyWithImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder _instance;

  final TRes Function(Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoOrderCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder(
        insertIntoOrderCollection: insertIntoOrderCollection == _undefined
            ? _instance.insertIntoOrderCollection
            : (insertIntoOrderCollection
                as Mutation$CreateOrder$insertIntoOrderCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<TRes>
      get insertIntoOrderCollection {
    final local$insertIntoOrderCollection = _instance.insertIntoOrderCollection;
    return local$insertIntoOrderCollection == null
        ? CopyWith$Mutation$CreateOrder$insertIntoOrderCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateOrder$insertIntoOrderCollection(
            local$insertIntoOrderCollection,
            (e) => call(insertIntoOrderCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Mutation$CreateOrder$insertIntoOrderCollection? insertIntoOrderCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<TRes>
      get insertIntoOrderCollection =>
          CopyWith$Mutation$CreateOrder$insertIntoOrderCollection.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoOrderCollection'),
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
  fragmentDefinitionOrder,
  fragmentDefinitionOrderType,
  fragmentDefinitionStation,
  fragmentDefinitionStationProvider,
  fragmentDefinitionProvider,
  fragmentDefinitionProviderType,
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionFirstResponder,
  fragmentDefinitionFirstResponderType,
  fragmentDefinitionFirstResponderStation,
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
  fragmentDefinitionOrderItemMenuItem,
  fragmentDefinitionMenuItem,
  fragmentDefinitionOrderTransaction,
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);
Mutation$CreateOrder _parserFn$Mutation$CreateOrder(
        Map<String, dynamic> data) =>
    Mutation$CreateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrder?,
);

class Options$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  Options$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrder
    extends graphql.WatchQueryOptions<Mutation$CreateOrder> {
  WatchOptions$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrder,
        );
}

extension ClientExtension$Mutation$CreateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrder>> mutate$CreateOrder(
          Options$Mutation$CreateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrder> watchMutation$CreateOrder(
          WatchOptions$Mutation$CreateOrder options) =>
      this.watchMutation(options);
}

class Mutation$CreateOrder$HookResult {
  Mutation$CreateOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrder runMutation;

  final graphql.QueryResult<Mutation$CreateOrder> result;
}

Mutation$CreateOrder$HookResult useMutation$CreateOrder(
    [WidgetOptions$Mutation$CreateOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrder());
  return Mutation$CreateOrder$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrder> useWatchMutation$CreateOrder(
        WatchOptions$Mutation$CreateOrder options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  WidgetOptions$Mutation$CreateOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrder
    = graphql.MultiSourceResult<Mutation$CreateOrder> Function(
  Variables$Mutation$CreateOrder, {
  Object? optimisticResult,
  Mutation$CreateOrder? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrder = widgets.Widget Function(
  RunMutation$Mutation$CreateOrder,
  graphql.QueryResult<Mutation$CreateOrder>?,
);

class Mutation$CreateOrder$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrder> {
  Mutation$CreateOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrder? options,
    required Builder$Mutation$CreateOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrder(),
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

class Mutation$CreateOrder$insertIntoOrderCollection {
  Mutation$CreateOrder$insertIntoOrderCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrderInsertResponse',
  });

  factory Mutation$CreateOrder$insertIntoOrderCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$insertIntoOrderCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Order.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Order> records;

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
    if (!(other is Mutation$CreateOrder$insertIntoOrderCollection) ||
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

extension UtilityExtension$Mutation$CreateOrder$insertIntoOrderCollection
    on Mutation$CreateOrder$insertIntoOrderCollection {
  CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<
          Mutation$CreateOrder$insertIntoOrderCollection>
      get copyWith => CopyWith$Mutation$CreateOrder$insertIntoOrderCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<TRes> {
  factory CopyWith$Mutation$CreateOrder$insertIntoOrderCollection(
    Mutation$CreateOrder$insertIntoOrderCollection instance,
    TRes Function(Mutation$CreateOrder$insertIntoOrderCollection) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$insertIntoOrderCollection;

  factory CopyWith$Mutation$CreateOrder$insertIntoOrderCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$insertIntoOrderCollection;

  TRes call({
    List<Fragment$Order>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Order> Function(
              Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateOrder$insertIntoOrderCollection<TRes>
    implements CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$insertIntoOrderCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$insertIntoOrderCollection _instance;

  final TRes Function(Mutation$CreateOrder$insertIntoOrderCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$insertIntoOrderCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Order>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Order> Function(
                  Iterable<CopyWith$Fragment$Order<Fragment$Order>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Order(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateOrder$insertIntoOrderCollection<TRes>
    implements CopyWith$Mutation$CreateOrder$insertIntoOrderCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$insertIntoOrderCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Query$OrderTransactionCollection {
  factory Variables$Query$OrderTransactionCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderTransactionFilter? filter,
    List<Input$OrderTransactionOrderBy>? orderBy,
  }) =>
      Variables$Query$OrderTransactionCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$OrderTransactionCollection._(this._$data);

  factory Variables$Query$OrderTransactionCollection.fromJson(
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
          : Input$OrderTransactionFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$OrderTransactionOrderBy.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$OrderTransactionCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$OrderTransactionFilter? get filter =>
      (_$data['filter'] as Input$OrderTransactionFilter?);

  List<Input$OrderTransactionOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$OrderTransactionOrderBy>?);

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

  CopyWith$Variables$Query$OrderTransactionCollection<
          Variables$Query$OrderTransactionCollection>
      get copyWith => CopyWith$Variables$Query$OrderTransactionCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$OrderTransactionCollection) ||
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

abstract class CopyWith$Variables$Query$OrderTransactionCollection<TRes> {
  factory CopyWith$Variables$Query$OrderTransactionCollection(
    Variables$Query$OrderTransactionCollection instance,
    TRes Function(Variables$Query$OrderTransactionCollection) then,
  ) = _CopyWithImpl$Variables$Query$OrderTransactionCollection;

  factory CopyWith$Variables$Query$OrderTransactionCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$OrderTransactionCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderTransactionFilter? filter,
    List<Input$OrderTransactionOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$OrderTransactionCollection<TRes>
    implements CopyWith$Variables$Query$OrderTransactionCollection<TRes> {
  _CopyWithImpl$Variables$Query$OrderTransactionCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$OrderTransactionCollection _instance;

  final TRes Function(Variables$Query$OrderTransactionCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$OrderTransactionCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$OrderTransactionFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$OrderTransactionOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$OrderTransactionCollection<TRes>
    implements CopyWith$Variables$Query$OrderTransactionCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$OrderTransactionCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderTransactionFilter? filter,
    List<Input$OrderTransactionOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$OrderTransactionCollection {
  Query$OrderTransactionCollection({
    this.orderTransactionCollection,
    this.$__typename = 'Query',
  });

  factory Query$OrderTransactionCollection.fromJson(Map<String, dynamic> json) {
    final l$orderTransactionCollection = json['orderTransactionCollection'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection(
      orderTransactionCollection: l$orderTransactionCollection == null
          ? null
          : Query$OrderTransactionCollection$orderTransactionCollection
              .fromJson((l$orderTransactionCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderTransactionCollection$orderTransactionCollection?
      orderTransactionCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderTransactionCollection = orderTransactionCollection;
    _resultData['orderTransactionCollection'] =
        l$orderTransactionCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderTransactionCollection = orderTransactionCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderTransactionCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$OrderTransactionCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderTransactionCollection = orderTransactionCollection;
    final lOther$orderTransactionCollection = other.orderTransactionCollection;
    if (l$orderTransactionCollection != lOther$orderTransactionCollection) {
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

extension UtilityExtension$Query$OrderTransactionCollection
    on Query$OrderTransactionCollection {
  CopyWith$Query$OrderTransactionCollection<Query$OrderTransactionCollection>
      get copyWith => CopyWith$Query$OrderTransactionCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection<TRes> {
  factory CopyWith$Query$OrderTransactionCollection(
    Query$OrderTransactionCollection instance,
    TRes Function(Query$OrderTransactionCollection) then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection;

  factory CopyWith$Query$OrderTransactionCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection;

  TRes call({
    Query$OrderTransactionCollection$orderTransactionCollection?
        orderTransactionCollection,
    String? $__typename,
  });
  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<TRes>
      get orderTransactionCollection;
}

class _CopyWithImpl$Query$OrderTransactionCollection<TRes>
    implements CopyWith$Query$OrderTransactionCollection<TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection _instance;

  final TRes Function(Query$OrderTransactionCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderTransactionCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderTransactionCollection(
        orderTransactionCollection: orderTransactionCollection == _undefined
            ? _instance.orderTransactionCollection
            : (orderTransactionCollection
                as Query$OrderTransactionCollection$orderTransactionCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<TRes>
      get orderTransactionCollection {
    final local$orderTransactionCollection =
        _instance.orderTransactionCollection;
    return local$orderTransactionCollection == null
        ? CopyWith$Query$OrderTransactionCollection$orderTransactionCollection
            .stub(_then(_instance))
        : CopyWith$Query$OrderTransactionCollection$orderTransactionCollection(
            local$orderTransactionCollection,
            (e) => call(orderTransactionCollection: e));
  }
}

class _CopyWithStubImpl$Query$OrderTransactionCollection<TRes>
    implements CopyWith$Query$OrderTransactionCollection<TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection(this._res);

  TRes _res;

  call({
    Query$OrderTransactionCollection$orderTransactionCollection?
        orderTransactionCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<TRes>
      get orderTransactionCollection =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionCollection
              .stub(_res);
}

const documentNodeQueryOrderTransactionCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'OrderTransactionCollection'),
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
          name: NameNode(value: 'OrderTransactionFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'OrderTransactionOrderBy'),
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
        name: NameNode(value: 'orderTransactionCollection'),
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
                    name: NameNode(value: 'OrderTransaction'),
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
  fragmentDefinitionOrderTransaction,
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);
Query$OrderTransactionCollection _parserFn$Query$OrderTransactionCollection(
        Map<String, dynamic> data) =>
    Query$OrderTransactionCollection.fromJson(data);
typedef OnQueryComplete$Query$OrderTransactionCollection = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$OrderTransactionCollection?,
);

class Options$Query$OrderTransactionCollection
    extends graphql.QueryOptions<Query$OrderTransactionCollection> {
  Options$Query$OrderTransactionCollection({
    String? operationName,
    Variables$Query$OrderTransactionCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderTransactionCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$OrderTransactionCollection? onComplete,
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
                        : _parserFn$Query$OrderTransactionCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryOrderTransactionCollection,
          parserFn: _parserFn$Query$OrderTransactionCollection,
        );

  final OnQueryComplete$Query$OrderTransactionCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$OrderTransactionCollection
    extends graphql.WatchQueryOptions<Query$OrderTransactionCollection> {
  WatchOptions$Query$OrderTransactionCollection({
    String? operationName,
    Variables$Query$OrderTransactionCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$OrderTransactionCollection? typedOptimisticResult,
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
          document: documentNodeQueryOrderTransactionCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$OrderTransactionCollection,
        );
}

class FetchMoreOptions$Query$OrderTransactionCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$OrderTransactionCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$OrderTransactionCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryOrderTransactionCollection,
        );
}

extension ClientExtension$Query$OrderTransactionCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$OrderTransactionCollection>>
      query$OrderTransactionCollection(
              [Options$Query$OrderTransactionCollection? options]) async =>
          await this
              .query(options ?? Options$Query$OrderTransactionCollection());
  graphql.ObservableQuery<Query$OrderTransactionCollection>
      watchQuery$OrderTransactionCollection(
              [WatchOptions$Query$OrderTransactionCollection? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$OrderTransactionCollection());
  void writeQuery$OrderTransactionCollection({
    required Query$OrderTransactionCollection data,
    Variables$Query$OrderTransactionCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryOrderTransactionCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$OrderTransactionCollection? readQuery$OrderTransactionCollection({
    Variables$Query$OrderTransactionCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryOrderTransactionCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$OrderTransactionCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$OrderTransactionCollection>
    useQuery$OrderTransactionCollection(
            [Options$Query$OrderTransactionCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$OrderTransactionCollection());
graphql.ObservableQuery<Query$OrderTransactionCollection>
    useWatchQuery$OrderTransactionCollection(
            [WatchOptions$Query$OrderTransactionCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$OrderTransactionCollection());

class Query$OrderTransactionCollection$Widget
    extends graphql_flutter.Query<Query$OrderTransactionCollection> {
  Query$OrderTransactionCollection$Widget({
    widgets.Key? key,
    Options$Query$OrderTransactionCollection? options,
    required graphql_flutter.QueryBuilder<Query$OrderTransactionCollection>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$OrderTransactionCollection(),
          builder: builder,
        );
}

class Query$OrderTransactionCollection$orderTransactionCollection {
  Query$OrderTransactionCollection$orderTransactionCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderTransactionConnection',
  });

  factory Query$OrderTransactionCollection$orderTransactionCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection$orderTransactionCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$OrderTransactionCollection$orderTransactionCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$OrderTransactionCollection$orderTransactionCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$OrderTransactionCollection$orderTransactionCollection$edges>
      edges;

  final Query$OrderTransactionCollection$orderTransactionCollection$pageInfo
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
            is Query$OrderTransactionCollection$orderTransactionCollection) ||
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

extension UtilityExtension$Query$OrderTransactionCollection$orderTransactionCollection
    on Query$OrderTransactionCollection$orderTransactionCollection {
  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<
          Query$OrderTransactionCollection$orderTransactionCollection>
      get copyWith =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<
    TRes> {
  factory CopyWith$Query$OrderTransactionCollection$orderTransactionCollection(
    Query$OrderTransactionCollection$orderTransactionCollection instance,
    TRes Function(Query$OrderTransactionCollection$orderTransactionCollection)
        then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection;

  factory CopyWith$Query$OrderTransactionCollection$orderTransactionCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection;

  TRes call({
    List<Query$OrderTransactionCollection$orderTransactionCollection$edges>?
        edges,
    Query$OrderTransactionCollection$orderTransactionCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$OrderTransactionCollection$orderTransactionCollection$edges> Function(
              Iterable<
                  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges<
                      Query$OrderTransactionCollection$orderTransactionCollection$edges>>)
          _fn);
  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<
            TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection$orderTransactionCollection _instance;

  final TRes Function(
      Query$OrderTransactionCollection$orderTransactionCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderTransactionCollection$orderTransactionCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$OrderTransactionCollection$orderTransactionCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$OrderTransactionCollection$orderTransactionCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$OrderTransactionCollection$orderTransactionCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges<
                          Query$OrderTransactionCollection$orderTransactionCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionCollection<
            TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection(
      this._res);

  TRes _res;

  call({
    List<Query$OrderTransactionCollection$orderTransactionCollection$edges>?
        edges,
    Query$OrderTransactionCollection$orderTransactionCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo
              .stub(_res);
}

class Query$OrderTransactionCollection$orderTransactionCollection$edges {
  Query$OrderTransactionCollection$orderTransactionCollection$edges({
    required this.node,
    this.$__typename = 'OrderTransactionEdge',
  });

  factory Query$OrderTransactionCollection$orderTransactionCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection$orderTransactionCollection$edges(
      node:
          Fragment$OrderTransaction.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OrderTransaction node;

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
            is Query$OrderTransactionCollection$orderTransactionCollection$edges) ||
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

extension UtilityExtension$Query$OrderTransactionCollection$orderTransactionCollection$edges
    on Query$OrderTransactionCollection$orderTransactionCollection$edges {
  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges<
          Query$OrderTransactionCollection$orderTransactionCollection$edges>
      get copyWith =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges<
    TRes> {
  factory CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges(
    Query$OrderTransactionCollection$orderTransactionCollection$edges instance,
    TRes Function(
            Query$OrderTransactionCollection$orderTransactionCollection$edges)
        then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection$edges;

  factory CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection$edges;

  TRes call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderTransaction<TRes> get node;
}

class _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection$edges<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges<
            TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection$edges(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection$orderTransactionCollection$edges
      _instance;

  final TRes Function(
      Query$OrderTransactionCollection$orderTransactionCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderTransactionCollection$orderTransactionCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$OrderTransaction),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderTransaction<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$OrderTransaction(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection$edges<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderTransaction<TRes> get node =>
      CopyWith$Fragment$OrderTransaction.stub(_res);
}

class Query$OrderTransactionCollection$orderTransactionCollection$pageInfo {
  Query$OrderTransactionCollection$orderTransactionCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrderTransactionCollection$orderTransactionCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
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
            is Query$OrderTransactionCollection$orderTransactionCollection$pageInfo) ||
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

extension UtilityExtension$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo
    on Query$OrderTransactionCollection$orderTransactionCollection$pageInfo {
  CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
          Query$OrderTransactionCollection$orderTransactionCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
    Query$OrderTransactionCollection$orderTransactionCollection$pageInfo
        instance,
    TRes Function(
            Query$OrderTransactionCollection$orderTransactionCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo;

  factory CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection$orderTransactionCollection$pageInfo
      _instance;

  final TRes Function(
          Query$OrderTransactionCollection$orderTransactionCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
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

class _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionCollection$pageInfo(
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

class Variables$Query$PaymentTypeCollection {
  factory Variables$Query$PaymentTypeCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$PaymentTypeFilter? filter,
    List<Input$PaymentTypeOrderBy>? orderBy,
  }) =>
      Variables$Query$PaymentTypeCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$PaymentTypeCollection._(this._$data);

  factory Variables$Query$PaymentTypeCollection.fromJson(
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
          : Input$PaymentTypeFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$PaymentTypeOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$PaymentTypeCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$PaymentTypeFilter? get filter =>
      (_$data['filter'] as Input$PaymentTypeFilter?);

  List<Input$PaymentTypeOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$PaymentTypeOrderBy>?);

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

  CopyWith$Variables$Query$PaymentTypeCollection<
          Variables$Query$PaymentTypeCollection>
      get copyWith => CopyWith$Variables$Query$PaymentTypeCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PaymentTypeCollection) ||
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

abstract class CopyWith$Variables$Query$PaymentTypeCollection<TRes> {
  factory CopyWith$Variables$Query$PaymentTypeCollection(
    Variables$Query$PaymentTypeCollection instance,
    TRes Function(Variables$Query$PaymentTypeCollection) then,
  ) = _CopyWithImpl$Variables$Query$PaymentTypeCollection;

  factory CopyWith$Variables$Query$PaymentTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PaymentTypeCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$PaymentTypeFilter? filter,
    List<Input$PaymentTypeOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$PaymentTypeCollection<TRes>
    implements CopyWith$Variables$Query$PaymentTypeCollection<TRes> {
  _CopyWithImpl$Variables$Query$PaymentTypeCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$PaymentTypeCollection _instance;

  final TRes Function(Variables$Query$PaymentTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$PaymentTypeCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$PaymentTypeFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$PaymentTypeOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$PaymentTypeCollection<TRes>
    implements CopyWith$Variables$Query$PaymentTypeCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$PaymentTypeCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$PaymentTypeFilter? filter,
    List<Input$PaymentTypeOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$PaymentTypeCollection {
  Query$PaymentTypeCollection({
    this.paymentTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$PaymentTypeCollection.fromJson(Map<String, dynamic> json) {
    final l$paymentTypeCollection = json['paymentTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$PaymentTypeCollection(
      paymentTypeCollection: l$paymentTypeCollection == null
          ? null
          : Query$PaymentTypeCollection$paymentTypeCollection.fromJson(
              (l$paymentTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PaymentTypeCollection$paymentTypeCollection?
      paymentTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentTypeCollection = paymentTypeCollection;
    _resultData['paymentTypeCollection'] = l$paymentTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentTypeCollection = paymentTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentTypeCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentTypeCollection = paymentTypeCollection;
    final lOther$paymentTypeCollection = other.paymentTypeCollection;
    if (l$paymentTypeCollection != lOther$paymentTypeCollection) {
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

extension UtilityExtension$Query$PaymentTypeCollection
    on Query$PaymentTypeCollection {
  CopyWith$Query$PaymentTypeCollection<Query$PaymentTypeCollection>
      get copyWith => CopyWith$Query$PaymentTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentTypeCollection<TRes> {
  factory CopyWith$Query$PaymentTypeCollection(
    Query$PaymentTypeCollection instance,
    TRes Function(Query$PaymentTypeCollection) then,
  ) = _CopyWithImpl$Query$PaymentTypeCollection;

  factory CopyWith$Query$PaymentTypeCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentTypeCollection;

  TRes call({
    Query$PaymentTypeCollection$paymentTypeCollection? paymentTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<TRes>
      get paymentTypeCollection;
}

class _CopyWithImpl$Query$PaymentTypeCollection<TRes>
    implements CopyWith$Query$PaymentTypeCollection<TRes> {
  _CopyWithImpl$Query$PaymentTypeCollection(
    this._instance,
    this._then,
  );

  final Query$PaymentTypeCollection _instance;

  final TRes Function(Query$PaymentTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentTypeCollection(
        paymentTypeCollection: paymentTypeCollection == _undefined
            ? _instance.paymentTypeCollection
            : (paymentTypeCollection
                as Query$PaymentTypeCollection$paymentTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<TRes>
      get paymentTypeCollection {
    final local$paymentTypeCollection = _instance.paymentTypeCollection;
    return local$paymentTypeCollection == null
        ? CopyWith$Query$PaymentTypeCollection$paymentTypeCollection.stub(
            _then(_instance))
        : CopyWith$Query$PaymentTypeCollection$paymentTypeCollection(
            local$paymentTypeCollection, (e) => call(paymentTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$PaymentTypeCollection<TRes>
    implements CopyWith$Query$PaymentTypeCollection<TRes> {
  _CopyWithStubImpl$Query$PaymentTypeCollection(this._res);

  TRes _res;

  call({
    Query$PaymentTypeCollection$paymentTypeCollection? paymentTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<TRes>
      get paymentTypeCollection =>
          CopyWith$Query$PaymentTypeCollection$paymentTypeCollection.stub(_res);
}

const documentNodeQueryPaymentTypeCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaymentTypeCollection'),
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
          name: NameNode(value: 'PaymentTypeFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentTypeOrderBy'),
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
        name: NameNode(value: 'paymentTypeCollection'),
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
                    name: NameNode(value: 'PaymentType'),
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
  fragmentDefinitionPaymentType,
]);
Query$PaymentTypeCollection _parserFn$Query$PaymentTypeCollection(
        Map<String, dynamic> data) =>
    Query$PaymentTypeCollection.fromJson(data);
typedef OnQueryComplete$Query$PaymentTypeCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PaymentTypeCollection?,
);

class Options$Query$PaymentTypeCollection
    extends graphql.QueryOptions<Query$PaymentTypeCollection> {
  Options$Query$PaymentTypeCollection({
    String? operationName,
    Variables$Query$PaymentTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentTypeCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PaymentTypeCollection? onComplete,
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
                        : _parserFn$Query$PaymentTypeCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryPaymentTypeCollection,
          parserFn: _parserFn$Query$PaymentTypeCollection,
        );

  final OnQueryComplete$Query$PaymentTypeCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PaymentTypeCollection
    extends graphql.WatchQueryOptions<Query$PaymentTypeCollection> {
  WatchOptions$Query$PaymentTypeCollection({
    String? operationName,
    Variables$Query$PaymentTypeCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentTypeCollection? typedOptimisticResult,
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
          document: documentNodeQueryPaymentTypeCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PaymentTypeCollection,
        );
}

class FetchMoreOptions$Query$PaymentTypeCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PaymentTypeCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$PaymentTypeCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryPaymentTypeCollection,
        );
}

extension ClientExtension$Query$PaymentTypeCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PaymentTypeCollection>>
      query$PaymentTypeCollection(
              [Options$Query$PaymentTypeCollection? options]) async =>
          await this.query(options ?? Options$Query$PaymentTypeCollection());
  graphql.ObservableQuery<
      Query$PaymentTypeCollection> watchQuery$PaymentTypeCollection(
          [WatchOptions$Query$PaymentTypeCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PaymentTypeCollection());
  void writeQuery$PaymentTypeCollection({
    required Query$PaymentTypeCollection data,
    Variables$Query$PaymentTypeCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPaymentTypeCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PaymentTypeCollection? readQuery$PaymentTypeCollection({
    Variables$Query$PaymentTypeCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryPaymentTypeCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PaymentTypeCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PaymentTypeCollection>
    useQuery$PaymentTypeCollection(
            [Options$Query$PaymentTypeCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$PaymentTypeCollection());
graphql.ObservableQuery<Query$PaymentTypeCollection>
    useWatchQuery$PaymentTypeCollection(
            [WatchOptions$Query$PaymentTypeCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$PaymentTypeCollection());

class Query$PaymentTypeCollection$Widget
    extends graphql_flutter.Query<Query$PaymentTypeCollection> {
  Query$PaymentTypeCollection$Widget({
    widgets.Key? key,
    Options$Query$PaymentTypeCollection? options,
    required graphql_flutter.QueryBuilder<Query$PaymentTypeCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PaymentTypeCollection(),
          builder: builder,
        );
}

class Query$PaymentTypeCollection$paymentTypeCollection {
  Query$PaymentTypeCollection$paymentTypeCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'PaymentTypeConnection',
  });

  factory Query$PaymentTypeCollection$paymentTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$PaymentTypeCollection$paymentTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$PaymentTypeCollection$paymentTypeCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$PaymentTypeCollection$paymentTypeCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PaymentTypeCollection$paymentTypeCollection$edges> edges;

  final Query$PaymentTypeCollection$paymentTypeCollection$pageInfo pageInfo;

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
    if (!(other is Query$PaymentTypeCollection$paymentTypeCollection) ||
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

extension UtilityExtension$Query$PaymentTypeCollection$paymentTypeCollection
    on Query$PaymentTypeCollection$paymentTypeCollection {
  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<
          Query$PaymentTypeCollection$paymentTypeCollection>
      get copyWith =>
          CopyWith$Query$PaymentTypeCollection$paymentTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<
    TRes> {
  factory CopyWith$Query$PaymentTypeCollection$paymentTypeCollection(
    Query$PaymentTypeCollection$paymentTypeCollection instance,
    TRes Function(Query$PaymentTypeCollection$paymentTypeCollection) then,
  ) = _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection;

  factory CopyWith$Query$PaymentTypeCollection$paymentTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection;

  TRes call({
    List<Query$PaymentTypeCollection$paymentTypeCollection$edges>? edges,
    Query$PaymentTypeCollection$paymentTypeCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$PaymentTypeCollection$paymentTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges<
                      Query$PaymentTypeCollection$paymentTypeCollection$edges>>)
          _fn);
  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection<TRes>
    implements
        CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<TRes> {
  _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection(
    this._instance,
    this._then,
  );

  final Query$PaymentTypeCollection$paymentTypeCollection _instance;

  final TRes Function(Query$PaymentTypeCollection$paymentTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentTypeCollection$paymentTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$PaymentTypeCollection$paymentTypeCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$PaymentTypeCollection$paymentTypeCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$PaymentTypeCollection$paymentTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges<
                          Query$PaymentTypeCollection$paymentTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection<TRes>
    implements
        CopyWith$Query$PaymentTypeCollection$paymentTypeCollection<TRes> {
  _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection(
      this._res);

  TRes _res;

  call({
    List<Query$PaymentTypeCollection$paymentTypeCollection$edges>? edges,
    Query$PaymentTypeCollection$paymentTypeCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo
              .stub(_res);
}

class Query$PaymentTypeCollection$paymentTypeCollection$edges {
  Query$PaymentTypeCollection$paymentTypeCollection$edges({
    required this.node,
    this.$__typename = 'PaymentTypeEdge',
  });

  factory Query$PaymentTypeCollection$paymentTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$PaymentTypeCollection$paymentTypeCollection$edges(
      node: Fragment$PaymentType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentType node;

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
    if (!(other is Query$PaymentTypeCollection$paymentTypeCollection$edges) ||
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

extension UtilityExtension$Query$PaymentTypeCollection$paymentTypeCollection$edges
    on Query$PaymentTypeCollection$paymentTypeCollection$edges {
  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges<
          Query$PaymentTypeCollection$paymentTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges(
    Query$PaymentTypeCollection$paymentTypeCollection$edges instance,
    TRes Function(Query$PaymentTypeCollection$paymentTypeCollection$edges) then,
  ) = _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection$edges;

  factory CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection$edges;

  TRes call({
    Fragment$PaymentType? node,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentType<TRes> get node;
}

class _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges<TRes> {
  _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$PaymentTypeCollection$paymentTypeCollection$edges _instance;

  final TRes Function(Query$PaymentTypeCollection$paymentTypeCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentTypeCollection$paymentTypeCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$PaymentType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$PaymentType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$edges<TRes> {
  _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$PaymentType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentType<TRes> get node =>
      CopyWith$Fragment$PaymentType.stub(_res);
}

class Query$PaymentTypeCollection$paymentTypeCollection$pageInfo {
  Query$PaymentTypeCollection$paymentTypeCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$PaymentTypeCollection$paymentTypeCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
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
            is Query$PaymentTypeCollection$paymentTypeCollection$pageInfo) ||
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

extension UtilityExtension$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo
    on Query$PaymentTypeCollection$paymentTypeCollection$pageInfo {
  CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<
          Query$PaymentTypeCollection$paymentTypeCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
    Query$PaymentTypeCollection$paymentTypeCollection$pageInfo instance,
    TRes Function(Query$PaymentTypeCollection$paymentTypeCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo;

  factory CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$PaymentTypeCollection$paymentTypeCollection$pageInfo _instance;

  final TRes Function(
      Query$PaymentTypeCollection$paymentTypeCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
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

class _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$PaymentTypeCollection$paymentTypeCollection$pageInfo(
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

class Variables$Query$PaymentInfoCollection {
  factory Variables$Query$PaymentInfoCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$PaymentInfoFilter? filter,
    List<Input$PaymentInfoOrderBy>? orderBy,
  }) =>
      Variables$Query$PaymentInfoCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$PaymentInfoCollection._(this._$data);

  factory Variables$Query$PaymentInfoCollection.fromJson(
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
          : Input$PaymentInfoFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$PaymentInfoOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$PaymentInfoCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$PaymentInfoFilter? get filter =>
      (_$data['filter'] as Input$PaymentInfoFilter?);

  List<Input$PaymentInfoOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$PaymentInfoOrderBy>?);

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

  CopyWith$Variables$Query$PaymentInfoCollection<
          Variables$Query$PaymentInfoCollection>
      get copyWith => CopyWith$Variables$Query$PaymentInfoCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$PaymentInfoCollection) ||
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

abstract class CopyWith$Variables$Query$PaymentInfoCollection<TRes> {
  factory CopyWith$Variables$Query$PaymentInfoCollection(
    Variables$Query$PaymentInfoCollection instance,
    TRes Function(Variables$Query$PaymentInfoCollection) then,
  ) = _CopyWithImpl$Variables$Query$PaymentInfoCollection;

  factory CopyWith$Variables$Query$PaymentInfoCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PaymentInfoCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$PaymentInfoFilter? filter,
    List<Input$PaymentInfoOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$PaymentInfoCollection<TRes>
    implements CopyWith$Variables$Query$PaymentInfoCollection<TRes> {
  _CopyWithImpl$Variables$Query$PaymentInfoCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$PaymentInfoCollection _instance;

  final TRes Function(Variables$Query$PaymentInfoCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$PaymentInfoCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$PaymentInfoFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$PaymentInfoOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$PaymentInfoCollection<TRes>
    implements CopyWith$Variables$Query$PaymentInfoCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$PaymentInfoCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$PaymentInfoFilter? filter,
    List<Input$PaymentInfoOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$PaymentInfoCollection {
  Query$PaymentInfoCollection({
    this.paymentInfoCollection,
    this.$__typename = 'Query',
  });

  factory Query$PaymentInfoCollection.fromJson(Map<String, dynamic> json) {
    final l$paymentInfoCollection = json['paymentInfoCollection'];
    final l$$__typename = json['__typename'];
    return Query$PaymentInfoCollection(
      paymentInfoCollection: l$paymentInfoCollection == null
          ? null
          : Query$PaymentInfoCollection$paymentInfoCollection.fromJson(
              (l$paymentInfoCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PaymentInfoCollection$paymentInfoCollection?
      paymentInfoCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentInfoCollection = paymentInfoCollection;
    _resultData['paymentInfoCollection'] = l$paymentInfoCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentInfoCollection = paymentInfoCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$paymentInfoCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$PaymentInfoCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$paymentInfoCollection = paymentInfoCollection;
    final lOther$paymentInfoCollection = other.paymentInfoCollection;
    if (l$paymentInfoCollection != lOther$paymentInfoCollection) {
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

extension UtilityExtension$Query$PaymentInfoCollection
    on Query$PaymentInfoCollection {
  CopyWith$Query$PaymentInfoCollection<Query$PaymentInfoCollection>
      get copyWith => CopyWith$Query$PaymentInfoCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentInfoCollection<TRes> {
  factory CopyWith$Query$PaymentInfoCollection(
    Query$PaymentInfoCollection instance,
    TRes Function(Query$PaymentInfoCollection) then,
  ) = _CopyWithImpl$Query$PaymentInfoCollection;

  factory CopyWith$Query$PaymentInfoCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentInfoCollection;

  TRes call({
    Query$PaymentInfoCollection$paymentInfoCollection? paymentInfoCollection,
    String? $__typename,
  });
  CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<TRes>
      get paymentInfoCollection;
}

class _CopyWithImpl$Query$PaymentInfoCollection<TRes>
    implements CopyWith$Query$PaymentInfoCollection<TRes> {
  _CopyWithImpl$Query$PaymentInfoCollection(
    this._instance,
    this._then,
  );

  final Query$PaymentInfoCollection _instance;

  final TRes Function(Query$PaymentInfoCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentInfoCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentInfoCollection(
        paymentInfoCollection: paymentInfoCollection == _undefined
            ? _instance.paymentInfoCollection
            : (paymentInfoCollection
                as Query$PaymentInfoCollection$paymentInfoCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<TRes>
      get paymentInfoCollection {
    final local$paymentInfoCollection = _instance.paymentInfoCollection;
    return local$paymentInfoCollection == null
        ? CopyWith$Query$PaymentInfoCollection$paymentInfoCollection.stub(
            _then(_instance))
        : CopyWith$Query$PaymentInfoCollection$paymentInfoCollection(
            local$paymentInfoCollection, (e) => call(paymentInfoCollection: e));
  }
}

class _CopyWithStubImpl$Query$PaymentInfoCollection<TRes>
    implements CopyWith$Query$PaymentInfoCollection<TRes> {
  _CopyWithStubImpl$Query$PaymentInfoCollection(this._res);

  TRes _res;

  call({
    Query$PaymentInfoCollection$paymentInfoCollection? paymentInfoCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<TRes>
      get paymentInfoCollection =>
          CopyWith$Query$PaymentInfoCollection$paymentInfoCollection.stub(_res);
}

const documentNodeQueryPaymentInfoCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaymentInfoCollection'),
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
          name: NameNode(value: 'PaymentInfoFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'PaymentInfoOrderBy'),
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
        name: NameNode(value: 'paymentInfoCollection'),
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
                    name: NameNode(value: 'PaymentInfo'),
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
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);
Query$PaymentInfoCollection _parserFn$Query$PaymentInfoCollection(
        Map<String, dynamic> data) =>
    Query$PaymentInfoCollection.fromJson(data);
typedef OnQueryComplete$Query$PaymentInfoCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PaymentInfoCollection?,
);

class Options$Query$PaymentInfoCollection
    extends graphql.QueryOptions<Query$PaymentInfoCollection> {
  Options$Query$PaymentInfoCollection({
    String? operationName,
    Variables$Query$PaymentInfoCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentInfoCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PaymentInfoCollection? onComplete,
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
                        : _parserFn$Query$PaymentInfoCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryPaymentInfoCollection,
          parserFn: _parserFn$Query$PaymentInfoCollection,
        );

  final OnQueryComplete$Query$PaymentInfoCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PaymentInfoCollection
    extends graphql.WatchQueryOptions<Query$PaymentInfoCollection> {
  WatchOptions$Query$PaymentInfoCollection({
    String? operationName,
    Variables$Query$PaymentInfoCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentInfoCollection? typedOptimisticResult,
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
          document: documentNodeQueryPaymentInfoCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PaymentInfoCollection,
        );
}

class FetchMoreOptions$Query$PaymentInfoCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PaymentInfoCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$PaymentInfoCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryPaymentInfoCollection,
        );
}

extension ClientExtension$Query$PaymentInfoCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PaymentInfoCollection>>
      query$PaymentInfoCollection(
              [Options$Query$PaymentInfoCollection? options]) async =>
          await this.query(options ?? Options$Query$PaymentInfoCollection());
  graphql.ObservableQuery<
      Query$PaymentInfoCollection> watchQuery$PaymentInfoCollection(
          [WatchOptions$Query$PaymentInfoCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PaymentInfoCollection());
  void writeQuery$PaymentInfoCollection({
    required Query$PaymentInfoCollection data,
    Variables$Query$PaymentInfoCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPaymentInfoCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PaymentInfoCollection? readQuery$PaymentInfoCollection({
    Variables$Query$PaymentInfoCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryPaymentInfoCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PaymentInfoCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$PaymentInfoCollection>
    useQuery$PaymentInfoCollection(
            [Options$Query$PaymentInfoCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$PaymentInfoCollection());
graphql.ObservableQuery<Query$PaymentInfoCollection>
    useWatchQuery$PaymentInfoCollection(
            [WatchOptions$Query$PaymentInfoCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$PaymentInfoCollection());

class Query$PaymentInfoCollection$Widget
    extends graphql_flutter.Query<Query$PaymentInfoCollection> {
  Query$PaymentInfoCollection$Widget({
    widgets.Key? key,
    Options$Query$PaymentInfoCollection? options,
    required graphql_flutter.QueryBuilder<Query$PaymentInfoCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$PaymentInfoCollection(),
          builder: builder,
        );
}

class Query$PaymentInfoCollection$paymentInfoCollection {
  Query$PaymentInfoCollection$paymentInfoCollection({
    required this.edges,
    this.$__typename = 'PaymentInfoConnection',
  });

  factory Query$PaymentInfoCollection$paymentInfoCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$PaymentInfoCollection$paymentInfoCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$PaymentInfoCollection$paymentInfoCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PaymentInfoCollection$paymentInfoCollection$edges> edges;

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
    if (!(other is Query$PaymentInfoCollection$paymentInfoCollection) ||
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

extension UtilityExtension$Query$PaymentInfoCollection$paymentInfoCollection
    on Query$PaymentInfoCollection$paymentInfoCollection {
  CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<
          Query$PaymentInfoCollection$paymentInfoCollection>
      get copyWith =>
          CopyWith$Query$PaymentInfoCollection$paymentInfoCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<
    TRes> {
  factory CopyWith$Query$PaymentInfoCollection$paymentInfoCollection(
    Query$PaymentInfoCollection$paymentInfoCollection instance,
    TRes Function(Query$PaymentInfoCollection$paymentInfoCollection) then,
  ) = _CopyWithImpl$Query$PaymentInfoCollection$paymentInfoCollection;

  factory CopyWith$Query$PaymentInfoCollection$paymentInfoCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PaymentInfoCollection$paymentInfoCollection;

  TRes call({
    List<Query$PaymentInfoCollection$paymentInfoCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$PaymentInfoCollection$paymentInfoCollection$edges> Function(
              Iterable<
                  CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges<
                      Query$PaymentInfoCollection$paymentInfoCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$PaymentInfoCollection$paymentInfoCollection<TRes>
    implements
        CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<TRes> {
  _CopyWithImpl$Query$PaymentInfoCollection$paymentInfoCollection(
    this._instance,
    this._then,
  );

  final Query$PaymentInfoCollection$paymentInfoCollection _instance;

  final TRes Function(Query$PaymentInfoCollection$paymentInfoCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentInfoCollection$paymentInfoCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$PaymentInfoCollection$paymentInfoCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$PaymentInfoCollection$paymentInfoCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges<
                          Query$PaymentInfoCollection$paymentInfoCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PaymentInfoCollection$paymentInfoCollection<TRes>
    implements
        CopyWith$Query$PaymentInfoCollection$paymentInfoCollection<TRes> {
  _CopyWithStubImpl$Query$PaymentInfoCollection$paymentInfoCollection(
      this._res);

  TRes _res;

  call({
    List<Query$PaymentInfoCollection$paymentInfoCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$PaymentInfoCollection$paymentInfoCollection$edges {
  Query$PaymentInfoCollection$paymentInfoCollection$edges({
    required this.node,
    this.$__typename = 'PaymentInfoEdge',
  });

  factory Query$PaymentInfoCollection$paymentInfoCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$PaymentInfoCollection$paymentInfoCollection$edges(
      node: Fragment$PaymentInfo.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PaymentInfo node;

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
    if (!(other is Query$PaymentInfoCollection$paymentInfoCollection$edges) ||
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

extension UtilityExtension$Query$PaymentInfoCollection$paymentInfoCollection$edges
    on Query$PaymentInfoCollection$paymentInfoCollection$edges {
  CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges<
          Query$PaymentInfoCollection$paymentInfoCollection$edges>
      get copyWith =>
          CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges<
    TRes> {
  factory CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges(
    Query$PaymentInfoCollection$paymentInfoCollection$edges instance,
    TRes Function(Query$PaymentInfoCollection$paymentInfoCollection$edges) then,
  ) = _CopyWithImpl$Query$PaymentInfoCollection$paymentInfoCollection$edges;

  factory CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PaymentInfoCollection$paymentInfoCollection$edges;

  TRes call({
    Fragment$PaymentInfo? node,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentInfo<TRes> get node;
}

class _CopyWithImpl$Query$PaymentInfoCollection$paymentInfoCollection$edges<
        TRes>
    implements
        CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges<TRes> {
  _CopyWithImpl$Query$PaymentInfoCollection$paymentInfoCollection$edges(
    this._instance,
    this._then,
  );

  final Query$PaymentInfoCollection$paymentInfoCollection$edges _instance;

  final TRes Function(Query$PaymentInfoCollection$paymentInfoCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentInfoCollection$paymentInfoCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$PaymentInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentInfo<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$PaymentInfo(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$PaymentInfoCollection$paymentInfoCollection$edges<
        TRes>
    implements
        CopyWith$Query$PaymentInfoCollection$paymentInfoCollection$edges<TRes> {
  _CopyWithStubImpl$Query$PaymentInfoCollection$paymentInfoCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$PaymentInfo? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentInfo<TRes> get node =>
      CopyWith$Fragment$PaymentInfo.stub(_res);
}

class Variables$Mutation$CreatePaymentInfo {
  factory Variables$Mutation$CreatePaymentInfo(
          {required Input$PaymentInfoInsertInput input}) =>
      Variables$Mutation$CreatePaymentInfo._({
        r'input': input,
      });

  Variables$Mutation$CreatePaymentInfo._(this._$data);

  factory Variables$Mutation$CreatePaymentInfo.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$PaymentInfoInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreatePaymentInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PaymentInfoInsertInput get input =>
      (_$data['input'] as Input$PaymentInfoInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePaymentInfo<
          Variables$Mutation$CreatePaymentInfo>
      get copyWith => CopyWith$Variables$Mutation$CreatePaymentInfo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreatePaymentInfo) ||
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

abstract class CopyWith$Variables$Mutation$CreatePaymentInfo<TRes> {
  factory CopyWith$Variables$Mutation$CreatePaymentInfo(
    Variables$Mutation$CreatePaymentInfo instance,
    TRes Function(Variables$Mutation$CreatePaymentInfo) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePaymentInfo;

  factory CopyWith$Variables$Mutation$CreatePaymentInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePaymentInfo;

  TRes call({Input$PaymentInfoInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreatePaymentInfo<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentInfo<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePaymentInfo(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePaymentInfo _instance;

  final TRes Function(Variables$Mutation$CreatePaymentInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreatePaymentInfo._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$PaymentInfoInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePaymentInfo<TRes>
    implements CopyWith$Variables$Mutation$CreatePaymentInfo<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePaymentInfo(this._res);

  TRes _res;

  call({Input$PaymentInfoInsertInput? input}) => _res;
}

class Mutation$CreatePaymentInfo {
  Mutation$CreatePaymentInfo({
    this.insertIntoPaymentInfoCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePaymentInfo.fromJson(Map<String, dynamic> json) {
    final l$insertIntoPaymentInfoCollection =
        json['insertIntoPaymentInfoCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentInfo(
      insertIntoPaymentInfoCollection: l$insertIntoPaymentInfoCollection == null
          ? null
          : Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection.fromJson(
              (l$insertIntoPaymentInfoCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection?
      insertIntoPaymentInfoCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoPaymentInfoCollection = insertIntoPaymentInfoCollection;
    _resultData['insertIntoPaymentInfoCollection'] =
        l$insertIntoPaymentInfoCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoPaymentInfoCollection = insertIntoPaymentInfoCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoPaymentInfoCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreatePaymentInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoPaymentInfoCollection = insertIntoPaymentInfoCollection;
    final lOther$insertIntoPaymentInfoCollection =
        other.insertIntoPaymentInfoCollection;
    if (l$insertIntoPaymentInfoCollection !=
        lOther$insertIntoPaymentInfoCollection) {
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

extension UtilityExtension$Mutation$CreatePaymentInfo
    on Mutation$CreatePaymentInfo {
  CopyWith$Mutation$CreatePaymentInfo<Mutation$CreatePaymentInfo>
      get copyWith => CopyWith$Mutation$CreatePaymentInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePaymentInfo<TRes> {
  factory CopyWith$Mutation$CreatePaymentInfo(
    Mutation$CreatePaymentInfo instance,
    TRes Function(Mutation$CreatePaymentInfo) then,
  ) = _CopyWithImpl$Mutation$CreatePaymentInfo;

  factory CopyWith$Mutation$CreatePaymentInfo.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePaymentInfo;

  TRes call({
    Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection?
        insertIntoPaymentInfoCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<TRes>
      get insertIntoPaymentInfoCollection;
}

class _CopyWithImpl$Mutation$CreatePaymentInfo<TRes>
    implements CopyWith$Mutation$CreatePaymentInfo<TRes> {
  _CopyWithImpl$Mutation$CreatePaymentInfo(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentInfo _instance;

  final TRes Function(Mutation$CreatePaymentInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoPaymentInfoCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePaymentInfo(
        insertIntoPaymentInfoCollection: insertIntoPaymentInfoCollection ==
                _undefined
            ? _instance.insertIntoPaymentInfoCollection
            : (insertIntoPaymentInfoCollection
                as Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<TRes>
      get insertIntoPaymentInfoCollection {
    final local$insertIntoPaymentInfoCollection =
        _instance.insertIntoPaymentInfoCollection;
    return local$insertIntoPaymentInfoCollection == null
        ? CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
            local$insertIntoPaymentInfoCollection,
            (e) => call(insertIntoPaymentInfoCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePaymentInfo<TRes>
    implements CopyWith$Mutation$CreatePaymentInfo<TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentInfo(this._res);

  TRes _res;

  call({
    Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection?
        insertIntoPaymentInfoCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<TRes>
      get insertIntoPaymentInfoCollection =>
          CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection
              .stub(_res);
}

const documentNodeMutationCreatePaymentInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePaymentInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'PaymentInfoInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoPaymentInfoCollection'),
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
                name: NameNode(value: 'PaymentInfo'),
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
  fragmentDefinitionPaymentInfo,
  fragmentDefinitionPaymentType,
]);
Mutation$CreatePaymentInfo _parserFn$Mutation$CreatePaymentInfo(
        Map<String, dynamic> data) =>
    Mutation$CreatePaymentInfo.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePaymentInfo = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreatePaymentInfo?,
);

class Options$Mutation$CreatePaymentInfo
    extends graphql.MutationOptions<Mutation$CreatePaymentInfo> {
  Options$Mutation$CreatePaymentInfo({
    String? operationName,
    required Variables$Mutation$CreatePaymentInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentInfo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePaymentInfo? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePaymentInfo>? update,
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
                        : _parserFn$Mutation$CreatePaymentInfo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePaymentInfo,
          parserFn: _parserFn$Mutation$CreatePaymentInfo,
        );

  final OnMutationCompleted$Mutation$CreatePaymentInfo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePaymentInfo
    extends graphql.WatchQueryOptions<Mutation$CreatePaymentInfo> {
  WatchOptions$Mutation$CreatePaymentInfo({
    String? operationName,
    required Variables$Mutation$CreatePaymentInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentInfo? typedOptimisticResult,
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
          document: documentNodeMutationCreatePaymentInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePaymentInfo,
        );
}

extension ClientExtension$Mutation$CreatePaymentInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePaymentInfo>>
      mutate$CreatePaymentInfo(
              Options$Mutation$CreatePaymentInfo options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePaymentInfo>
      watchMutation$CreatePaymentInfo(
              WatchOptions$Mutation$CreatePaymentInfo options) =>
          this.watchMutation(options);
}

class Mutation$CreatePaymentInfo$HookResult {
  Mutation$CreatePaymentInfo$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreatePaymentInfo runMutation;

  final graphql.QueryResult<Mutation$CreatePaymentInfo> result;
}

Mutation$CreatePaymentInfo$HookResult useMutation$CreatePaymentInfo(
    [WidgetOptions$Mutation$CreatePaymentInfo? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreatePaymentInfo());
  return Mutation$CreatePaymentInfo$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreatePaymentInfo>
    useWatchMutation$CreatePaymentInfo(
            WatchOptions$Mutation$CreatePaymentInfo options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreatePaymentInfo
    extends graphql.MutationOptions<Mutation$CreatePaymentInfo> {
  WidgetOptions$Mutation$CreatePaymentInfo({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePaymentInfo? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePaymentInfo? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePaymentInfo>? update,
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
                        : _parserFn$Mutation$CreatePaymentInfo(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePaymentInfo,
          parserFn: _parserFn$Mutation$CreatePaymentInfo,
        );

  final OnMutationCompleted$Mutation$CreatePaymentInfo? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreatePaymentInfo
    = graphql.MultiSourceResult<Mutation$CreatePaymentInfo> Function(
  Variables$Mutation$CreatePaymentInfo, {
  Object? optimisticResult,
  Mutation$CreatePaymentInfo? typedOptimisticResult,
});
typedef Builder$Mutation$CreatePaymentInfo = widgets.Widget Function(
  RunMutation$Mutation$CreatePaymentInfo,
  graphql.QueryResult<Mutation$CreatePaymentInfo>?,
);

class Mutation$CreatePaymentInfo$Widget
    extends graphql_flutter.Mutation<Mutation$CreatePaymentInfo> {
  Mutation$CreatePaymentInfo$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreatePaymentInfo? options,
    required Builder$Mutation$CreatePaymentInfo builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreatePaymentInfo(),
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

class Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection {
  Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'PaymentInfoInsertResponse',
  });

  factory Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
      records: (l$records as List<dynamic>)
          .map(
              (e) => Fragment$PaymentInfo.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PaymentInfo> records;

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
            is Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection) ||
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

extension UtilityExtension$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection
    on Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection {
  CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<
          Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection>
      get copyWith =>
          CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<
    TRes> {
  factory CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
    Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection instance,
    TRes Function(Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection;

  factory CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection;

  TRes call({
    List<Fragment$PaymentInfo>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$PaymentInfo> Function(
              Iterable<CopyWith$Fragment$PaymentInfo<Fragment$PaymentInfo>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<
        TRes>
    implements
        CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection _instance;

  final TRes Function(
      Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$PaymentInfo>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$PaymentInfo> Function(
                  Iterable<CopyWith$Fragment$PaymentInfo<Fragment$PaymentInfo>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$PaymentInfo(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<
        TRes>
    implements
        CopyWith$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreatePaymentInfo$insertIntoPaymentInfoCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$PaymentInfo>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$CreateShoppingCart {
  factory Variables$Mutation$CreateShoppingCart(
          {required Input$ShoppingCartInsertInput input}) =>
      Variables$Mutation$CreateShoppingCart._({
        r'input': input,
      });

  Variables$Mutation$CreateShoppingCart._(this._$data);

  factory Variables$Mutation$CreateShoppingCart.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateShoppingCart._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ShoppingCartInsertInput get input =>
      (_$data['input'] as Input$ShoppingCartInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateShoppingCart<
          Variables$Mutation$CreateShoppingCart>
      get copyWith => CopyWith$Variables$Mutation$CreateShoppingCart(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateShoppingCart) ||
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

abstract class CopyWith$Variables$Mutation$CreateShoppingCart<TRes> {
  factory CopyWith$Variables$Mutation$CreateShoppingCart(
    Variables$Mutation$CreateShoppingCart instance,
    TRes Function(Variables$Mutation$CreateShoppingCart) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateShoppingCart;

  factory CopyWith$Variables$Mutation$CreateShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateShoppingCart;

  TRes call({Input$ShoppingCartInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCart<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateShoppingCart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateShoppingCart _instance;

  final TRes Function(Variables$Mutation$CreateShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateShoppingCart._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ShoppingCartInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateShoppingCart(this._res);

  TRes _res;

  call({Input$ShoppingCartInsertInput? input}) => _res;
}

class Mutation$CreateShoppingCart {
  Mutation$CreateShoppingCart({
    this.insertIntoShoppingCartCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$insertIntoShoppingCartCollection =
        json['insertIntoShoppingCartCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCart(
      insertIntoShoppingCartCollection: l$insertIntoShoppingCartCollection ==
              null
          ? null
          : Mutation$CreateShoppingCart$insertIntoShoppingCartCollection
              .fromJson(
                  (l$insertIntoShoppingCartCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateShoppingCart$insertIntoShoppingCartCollection?
      insertIntoShoppingCartCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoShoppingCartCollection = insertIntoShoppingCartCollection;
    _resultData['insertIntoShoppingCartCollection'] =
        l$insertIntoShoppingCartCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoShoppingCartCollection = insertIntoShoppingCartCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoShoppingCartCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateShoppingCart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoShoppingCartCollection = insertIntoShoppingCartCollection;
    final lOther$insertIntoShoppingCartCollection =
        other.insertIntoShoppingCartCollection;
    if (l$insertIntoShoppingCartCollection !=
        lOther$insertIntoShoppingCartCollection) {
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

extension UtilityExtension$Mutation$CreateShoppingCart
    on Mutation$CreateShoppingCart {
  CopyWith$Mutation$CreateShoppingCart<Mutation$CreateShoppingCart>
      get copyWith => CopyWith$Mutation$CreateShoppingCart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCart<TRes> {
  factory CopyWith$Mutation$CreateShoppingCart(
    Mutation$CreateShoppingCart instance,
    TRes Function(Mutation$CreateShoppingCart) then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCart;

  factory CopyWith$Mutation$CreateShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCart;

  TRes call({
    Mutation$CreateShoppingCart$insertIntoShoppingCartCollection?
        insertIntoShoppingCartCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<TRes>
      get insertIntoShoppingCartCollection;
}

class _CopyWithImpl$Mutation$CreateShoppingCart<TRes>
    implements CopyWith$Mutation$CreateShoppingCart<TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCart(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCart _instance;

  final TRes Function(Mutation$CreateShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoShoppingCartCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateShoppingCart(
        insertIntoShoppingCartCollection: insertIntoShoppingCartCollection ==
                _undefined
            ? _instance.insertIntoShoppingCartCollection
            : (insertIntoShoppingCartCollection
                as Mutation$CreateShoppingCart$insertIntoShoppingCartCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<TRes>
      get insertIntoShoppingCartCollection {
    final local$insertIntoShoppingCartCollection =
        _instance.insertIntoShoppingCartCollection;
    return local$insertIntoShoppingCartCollection == null
        ? CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
            local$insertIntoShoppingCartCollection,
            (e) => call(insertIntoShoppingCartCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateShoppingCart<TRes>
    implements CopyWith$Mutation$CreateShoppingCart<TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCart(this._res);

  TRes _res;

  call({
    Mutation$CreateShoppingCart$insertIntoShoppingCartCollection?
        insertIntoShoppingCartCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<TRes>
      get insertIntoShoppingCartCollection =>
          CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection
              .stub(_res);
}

const documentNodeMutationCreateShoppingCart = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateShoppingCart'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ShoppingCartInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoShoppingCartCollection'),
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
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);
Mutation$CreateShoppingCart _parserFn$Mutation$CreateShoppingCart(
        Map<String, dynamic> data) =>
    Mutation$CreateShoppingCart.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateShoppingCart = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateShoppingCart?,
);

class Options$Mutation$CreateShoppingCart
    extends graphql.MutationOptions<Mutation$CreateShoppingCart> {
  Options$Mutation$CreateShoppingCart({
    String? operationName,
    required Variables$Mutation$CreateShoppingCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateShoppingCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateShoppingCart>? update,
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
                        : _parserFn$Mutation$CreateShoppingCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateShoppingCart,
          parserFn: _parserFn$Mutation$CreateShoppingCart,
        );

  final OnMutationCompleted$Mutation$CreateShoppingCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateShoppingCart
    extends graphql.WatchQueryOptions<Mutation$CreateShoppingCart> {
  WatchOptions$Mutation$CreateShoppingCart({
    String? operationName,
    required Variables$Mutation$CreateShoppingCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCart? typedOptimisticResult,
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
          document: documentNodeMutationCreateShoppingCart,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateShoppingCart,
        );
}

extension ClientExtension$Mutation$CreateShoppingCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateShoppingCart>>
      mutate$CreateShoppingCart(
              Options$Mutation$CreateShoppingCart options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateShoppingCart>
      watchMutation$CreateShoppingCart(
              WatchOptions$Mutation$CreateShoppingCart options) =>
          this.watchMutation(options);
}

class Mutation$CreateShoppingCart$HookResult {
  Mutation$CreateShoppingCart$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateShoppingCart runMutation;

  final graphql.QueryResult<Mutation$CreateShoppingCart> result;
}

Mutation$CreateShoppingCart$HookResult useMutation$CreateShoppingCart(
    [WidgetOptions$Mutation$CreateShoppingCart? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateShoppingCart());
  return Mutation$CreateShoppingCart$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateShoppingCart>
    useWatchMutation$CreateShoppingCart(
            WatchOptions$Mutation$CreateShoppingCart options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateShoppingCart
    extends graphql.MutationOptions<Mutation$CreateShoppingCart> {
  WidgetOptions$Mutation$CreateShoppingCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateShoppingCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateShoppingCart>? update,
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
                        : _parserFn$Mutation$CreateShoppingCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateShoppingCart,
          parserFn: _parserFn$Mutation$CreateShoppingCart,
        );

  final OnMutationCompleted$Mutation$CreateShoppingCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateShoppingCart
    = graphql.MultiSourceResult<Mutation$CreateShoppingCart> Function(
  Variables$Mutation$CreateShoppingCart, {
  Object? optimisticResult,
  Mutation$CreateShoppingCart? typedOptimisticResult,
});
typedef Builder$Mutation$CreateShoppingCart = widgets.Widget Function(
  RunMutation$Mutation$CreateShoppingCart,
  graphql.QueryResult<Mutation$CreateShoppingCart>?,
);

class Mutation$CreateShoppingCart$Widget
    extends graphql_flutter.Mutation<Mutation$CreateShoppingCart> {
  Mutation$CreateShoppingCart$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateShoppingCart? options,
    required Builder$Mutation$CreateShoppingCart builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateShoppingCart(),
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

class Mutation$CreateShoppingCart$insertIntoShoppingCartCollection {
  Mutation$CreateShoppingCart$insertIntoShoppingCartCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartInsertResponse',
  });

  factory Mutation$CreateShoppingCart$insertIntoShoppingCartCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCart.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCart> records;

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
            is Mutation$CreateShoppingCart$insertIntoShoppingCartCollection) ||
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

extension UtilityExtension$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection
    on Mutation$CreateShoppingCart$insertIntoShoppingCartCollection {
  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<
          Mutation$CreateShoppingCart$insertIntoShoppingCartCollection>
      get copyWith =>
          CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<
    TRes> {
  factory CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
    Mutation$CreateShoppingCart$insertIntoShoppingCartCollection instance,
    TRes Function(Mutation$CreateShoppingCart$insertIntoShoppingCartCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection;

  factory CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection;

  TRes call({
    List<Fragment$ShoppingCart>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCart> Function(
              Iterable<CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCart$insertIntoShoppingCartCollection _instance;

  final TRes Function(
      Mutation$CreateShoppingCart$insertIntoShoppingCartCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCart>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCart> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$ShoppingCart(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCart>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$CreateShoppingCartMenuItem {
  factory Variables$Mutation$CreateShoppingCartMenuItem(
          {required Input$ShoppingCartMenuItemInsertInput input}) =>
      Variables$Mutation$CreateShoppingCartMenuItem._({
        r'input': input,
      });

  Variables$Mutation$CreateShoppingCartMenuItem._(this._$data);

  factory Variables$Mutation$CreateShoppingCartMenuItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartMenuItemInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateShoppingCartMenuItem._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ShoppingCartMenuItemInsertInput get input =>
      (_$data['input'] as Input$ShoppingCartMenuItemInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateShoppingCartMenuItem<
          Variables$Mutation$CreateShoppingCartMenuItem>
      get copyWith => CopyWith$Variables$Mutation$CreateShoppingCartMenuItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateShoppingCartMenuItem) ||
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

abstract class CopyWith$Variables$Mutation$CreateShoppingCartMenuItem<TRes> {
  factory CopyWith$Variables$Mutation$CreateShoppingCartMenuItem(
    Variables$Mutation$CreateShoppingCartMenuItem instance,
    TRes Function(Variables$Mutation$CreateShoppingCartMenuItem) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateShoppingCartMenuItem;

  factory CopyWith$Variables$Mutation$CreateShoppingCartMenuItem.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateShoppingCartMenuItem;

  TRes call({Input$ShoppingCartMenuItemInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateShoppingCartMenuItem<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCartMenuItem<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateShoppingCartMenuItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateShoppingCartMenuItem _instance;

  final TRes Function(Variables$Mutation$CreateShoppingCartMenuItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateShoppingCartMenuItem._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ShoppingCartMenuItemInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateShoppingCartMenuItem<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCartMenuItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateShoppingCartMenuItem(this._res);

  TRes _res;

  call({Input$ShoppingCartMenuItemInsertInput? input}) => _res;
}

class Mutation$CreateShoppingCartMenuItem {
  Mutation$CreateShoppingCartMenuItem({
    this.insertIntoShoppingCartMenuItemCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateShoppingCartMenuItem.fromJson(
      Map<String, dynamic> json) {
    final l$insertIntoShoppingCartMenuItemCollection =
        json['insertIntoShoppingCartMenuItemCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCartMenuItem(
      insertIntoShoppingCartMenuItemCollection:
          l$insertIntoShoppingCartMenuItemCollection == null
              ? null
              : Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection
                  .fromJson((l$insertIntoShoppingCartMenuItemCollection
                      as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection?
      insertIntoShoppingCartMenuItemCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoShoppingCartMenuItemCollection =
        insertIntoShoppingCartMenuItemCollection;
    _resultData['insertIntoShoppingCartMenuItemCollection'] =
        l$insertIntoShoppingCartMenuItemCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoShoppingCartMenuItemCollection =
        insertIntoShoppingCartMenuItemCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoShoppingCartMenuItemCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateShoppingCartMenuItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoShoppingCartMenuItemCollection =
        insertIntoShoppingCartMenuItemCollection;
    final lOther$insertIntoShoppingCartMenuItemCollection =
        other.insertIntoShoppingCartMenuItemCollection;
    if (l$insertIntoShoppingCartMenuItemCollection !=
        lOther$insertIntoShoppingCartMenuItemCollection) {
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

extension UtilityExtension$Mutation$CreateShoppingCartMenuItem
    on Mutation$CreateShoppingCartMenuItem {
  CopyWith$Mutation$CreateShoppingCartMenuItem<
          Mutation$CreateShoppingCartMenuItem>
      get copyWith => CopyWith$Mutation$CreateShoppingCartMenuItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCartMenuItem<TRes> {
  factory CopyWith$Mutation$CreateShoppingCartMenuItem(
    Mutation$CreateShoppingCartMenuItem instance,
    TRes Function(Mutation$CreateShoppingCartMenuItem) then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCartMenuItem;

  factory CopyWith$Mutation$CreateShoppingCartMenuItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCartMenuItem;

  TRes call({
    Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection?
        insertIntoShoppingCartMenuItemCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
      TRes> get insertIntoShoppingCartMenuItemCollection;
}

class _CopyWithImpl$Mutation$CreateShoppingCartMenuItem<TRes>
    implements CopyWith$Mutation$CreateShoppingCartMenuItem<TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCartMenuItem(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCartMenuItem _instance;

  final TRes Function(Mutation$CreateShoppingCartMenuItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoShoppingCartMenuItemCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateShoppingCartMenuItem(
        insertIntoShoppingCartMenuItemCollection:
            insertIntoShoppingCartMenuItemCollection == _undefined
                ? _instance.insertIntoShoppingCartMenuItemCollection
                : (insertIntoShoppingCartMenuItemCollection
                    as Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
      TRes> get insertIntoShoppingCartMenuItemCollection {
    final local$insertIntoShoppingCartMenuItemCollection =
        _instance.insertIntoShoppingCartMenuItemCollection;
    return local$insertIntoShoppingCartMenuItemCollection == null
        ? CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
            local$insertIntoShoppingCartMenuItemCollection,
            (e) => call(insertIntoShoppingCartMenuItemCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateShoppingCartMenuItem<TRes>
    implements CopyWith$Mutation$CreateShoppingCartMenuItem<TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCartMenuItem(this._res);

  TRes _res;

  call({
    Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection?
        insertIntoShoppingCartMenuItemCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
          TRes>
      get insertIntoShoppingCartMenuItemCollection =>
          CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection
              .stub(_res);
}

const documentNodeMutationCreateShoppingCartMenuItem =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateShoppingCartMenuItem'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ShoppingCartMenuItemInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoShoppingCartMenuItemCollection'),
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
                name: NameNode(value: 'ShoppingCartMenuItem'),
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
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);
Mutation$CreateShoppingCartMenuItem
    _parserFn$Mutation$CreateShoppingCartMenuItem(Map<String, dynamic> data) =>
        Mutation$CreateShoppingCartMenuItem.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateShoppingCartMenuItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateShoppingCartMenuItem?,
);

class Options$Mutation$CreateShoppingCartMenuItem
    extends graphql.MutationOptions<Mutation$CreateShoppingCartMenuItem> {
  Options$Mutation$CreateShoppingCartMenuItem({
    String? operationName,
    required Variables$Mutation$CreateShoppingCartMenuItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCartMenuItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateShoppingCartMenuItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateShoppingCartMenuItem>? update,
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
                        : _parserFn$Mutation$CreateShoppingCartMenuItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateShoppingCartMenuItem,
          parserFn: _parserFn$Mutation$CreateShoppingCartMenuItem,
        );

  final OnMutationCompleted$Mutation$CreateShoppingCartMenuItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateShoppingCartMenuItem
    extends graphql.WatchQueryOptions<Mutation$CreateShoppingCartMenuItem> {
  WatchOptions$Mutation$CreateShoppingCartMenuItem({
    String? operationName,
    required Variables$Mutation$CreateShoppingCartMenuItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCartMenuItem? typedOptimisticResult,
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
          document: documentNodeMutationCreateShoppingCartMenuItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateShoppingCartMenuItem,
        );
}

extension ClientExtension$Mutation$CreateShoppingCartMenuItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateShoppingCartMenuItem>>
      mutate$CreateShoppingCartMenuItem(
              Options$Mutation$CreateShoppingCartMenuItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateShoppingCartMenuItem>
      watchMutation$CreateShoppingCartMenuItem(
              WatchOptions$Mutation$CreateShoppingCartMenuItem options) =>
          this.watchMutation(options);
}

class Mutation$CreateShoppingCartMenuItem$HookResult {
  Mutation$CreateShoppingCartMenuItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateShoppingCartMenuItem runMutation;

  final graphql.QueryResult<Mutation$CreateShoppingCartMenuItem> result;
}

Mutation$CreateShoppingCartMenuItem$HookResult
    useMutation$CreateShoppingCartMenuItem(
        [WidgetOptions$Mutation$CreateShoppingCartMenuItem? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$CreateShoppingCartMenuItem());
  return Mutation$CreateShoppingCartMenuItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateShoppingCartMenuItem>
    useWatchMutation$CreateShoppingCartMenuItem(
            WatchOptions$Mutation$CreateShoppingCartMenuItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateShoppingCartMenuItem
    extends graphql.MutationOptions<Mutation$CreateShoppingCartMenuItem> {
  WidgetOptions$Mutation$CreateShoppingCartMenuItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCartMenuItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateShoppingCartMenuItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateShoppingCartMenuItem>? update,
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
                        : _parserFn$Mutation$CreateShoppingCartMenuItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateShoppingCartMenuItem,
          parserFn: _parserFn$Mutation$CreateShoppingCartMenuItem,
        );

  final OnMutationCompleted$Mutation$CreateShoppingCartMenuItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateShoppingCartMenuItem
    = graphql.MultiSourceResult<Mutation$CreateShoppingCartMenuItem> Function(
  Variables$Mutation$CreateShoppingCartMenuItem, {
  Object? optimisticResult,
  Mutation$CreateShoppingCartMenuItem? typedOptimisticResult,
});
typedef Builder$Mutation$CreateShoppingCartMenuItem = widgets.Widget Function(
  RunMutation$Mutation$CreateShoppingCartMenuItem,
  graphql.QueryResult<Mutation$CreateShoppingCartMenuItem>?,
);

class Mutation$CreateShoppingCartMenuItem$Widget
    extends graphql_flutter.Mutation<Mutation$CreateShoppingCartMenuItem> {
  Mutation$CreateShoppingCartMenuItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateShoppingCartMenuItem? options,
    required Builder$Mutation$CreateShoppingCartMenuItem builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$CreateShoppingCartMenuItem(),
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

class Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection {
  Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartMenuItemInsertResponse',
  });

  factory Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$ShoppingCartMenuItem.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCartMenuItem> records;

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
            is Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection) ||
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

extension UtilityExtension$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection
    on Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection {
  CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
          Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection>
      get copyWith =>
          CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
    TRes> {
  factory CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
    Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection
        instance,
    TRes Function(
            Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection;

  factory CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection;

  TRes call({
    List<Fragment$ShoppingCartMenuItem>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCartMenuItem> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCartMenuItem<
                      Fragment$ShoppingCartMenuItem>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection
      _instance;

  final TRes Function(
          Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCartMenuItem>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCartMenuItem> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCartMenuItem<
                          Fragment$ShoppingCartMenuItem>>)
              _fn) =>
      call(
          records: _fn(_instance.records
              .map((e) => CopyWith$Fragment$ShoppingCartMenuItem(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCartMenuItem$insertIntoShoppingCartMenuItemCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCartMenuItem>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteShoppingCartMenuItem {
  factory Variables$Mutation$DeleteShoppingCartMenuItem({required String id}) =>
      Variables$Mutation$DeleteShoppingCartMenuItem._({
        r'id': id,
      });

  Variables$Mutation$DeleteShoppingCartMenuItem._(this._$data);

  factory Variables$Mutation$DeleteShoppingCartMenuItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteShoppingCartMenuItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem<
          Variables$Mutation$DeleteShoppingCartMenuItem>
      get copyWith => CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteShoppingCartMenuItem) ||
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

abstract class CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem<TRes> {
  factory CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem(
    Variables$Mutation$DeleteShoppingCartMenuItem instance,
    TRes Function(Variables$Mutation$DeleteShoppingCartMenuItem) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteShoppingCartMenuItem;

  factory CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCartMenuItem;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteShoppingCartMenuItem<TRes>
    implements CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteShoppingCartMenuItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteShoppingCartMenuItem _instance;

  final TRes Function(Variables$Mutation$DeleteShoppingCartMenuItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteShoppingCartMenuItem._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCartMenuItem<TRes>
    implements CopyWith$Variables$Mutation$DeleteShoppingCartMenuItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCartMenuItem(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteShoppingCartMenuItem {
  Mutation$DeleteShoppingCartMenuItem({
    required this.deleteFromShoppingCartMenuItemCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteShoppingCartMenuItem.fromJson(
      Map<String, dynamic> json) {
    final l$deleteFromShoppingCartMenuItemCollection =
        json['deleteFromShoppingCartMenuItemCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCartMenuItem(
      deleteFromShoppingCartMenuItemCollection:
          Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection
              .fromJson((l$deleteFromShoppingCartMenuItemCollection
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection
      deleteFromShoppingCartMenuItemCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromShoppingCartMenuItemCollection =
        deleteFromShoppingCartMenuItemCollection;
    _resultData['deleteFromShoppingCartMenuItemCollection'] =
        l$deleteFromShoppingCartMenuItemCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromShoppingCartMenuItemCollection =
        deleteFromShoppingCartMenuItemCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromShoppingCartMenuItemCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteShoppingCartMenuItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromShoppingCartMenuItemCollection =
        deleteFromShoppingCartMenuItemCollection;
    final lOther$deleteFromShoppingCartMenuItemCollection =
        other.deleteFromShoppingCartMenuItemCollection;
    if (l$deleteFromShoppingCartMenuItemCollection !=
        lOther$deleteFromShoppingCartMenuItemCollection) {
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

extension UtilityExtension$Mutation$DeleteShoppingCartMenuItem
    on Mutation$DeleteShoppingCartMenuItem {
  CopyWith$Mutation$DeleteShoppingCartMenuItem<
          Mutation$DeleteShoppingCartMenuItem>
      get copyWith => CopyWith$Mutation$DeleteShoppingCartMenuItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCartMenuItem<TRes> {
  factory CopyWith$Mutation$DeleteShoppingCartMenuItem(
    Mutation$DeleteShoppingCartMenuItem instance,
    TRes Function(Mutation$DeleteShoppingCartMenuItem) then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCartMenuItem;

  factory CopyWith$Mutation$DeleteShoppingCartMenuItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCartMenuItem;

  TRes call({
    Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection?
        deleteFromShoppingCartMenuItemCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
      TRes> get deleteFromShoppingCartMenuItemCollection;
}

class _CopyWithImpl$Mutation$DeleteShoppingCartMenuItem<TRes>
    implements CopyWith$Mutation$DeleteShoppingCartMenuItem<TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCartMenuItem(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCartMenuItem _instance;

  final TRes Function(Mutation$DeleteShoppingCartMenuItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromShoppingCartMenuItemCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteShoppingCartMenuItem(
        deleteFromShoppingCartMenuItemCollection:
            deleteFromShoppingCartMenuItemCollection == _undefined ||
                    deleteFromShoppingCartMenuItemCollection == null
                ? _instance.deleteFromShoppingCartMenuItemCollection
                : (deleteFromShoppingCartMenuItemCollection
                    as Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
      TRes> get deleteFromShoppingCartMenuItemCollection {
    final local$deleteFromShoppingCartMenuItemCollection =
        _instance.deleteFromShoppingCartMenuItemCollection;
    return CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
        local$deleteFromShoppingCartMenuItemCollection,
        (e) => call(deleteFromShoppingCartMenuItemCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCartMenuItem<TRes>
    implements CopyWith$Mutation$DeleteShoppingCartMenuItem<TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCartMenuItem(this._res);

  TRes _res;

  call({
    Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection?
        deleteFromShoppingCartMenuItemCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
          TRes>
      get deleteFromShoppingCartMenuItemCollection =>
          CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection
              .stub(_res);
}

const documentNodeMutationDeleteShoppingCartMenuItem =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteShoppingCartMenuItem'),
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
        name: NameNode(value: 'deleteFromShoppingCartMenuItemCollection'),
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
                name: NameNode(value: 'ShoppingCartMenuItem'),
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
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);
Mutation$DeleteShoppingCartMenuItem
    _parserFn$Mutation$DeleteShoppingCartMenuItem(Map<String, dynamic> data) =>
        Mutation$DeleteShoppingCartMenuItem.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteShoppingCartMenuItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteShoppingCartMenuItem?,
);

class Options$Mutation$DeleteShoppingCartMenuItem
    extends graphql.MutationOptions<Mutation$DeleteShoppingCartMenuItem> {
  Options$Mutation$DeleteShoppingCartMenuItem({
    String? operationName,
    required Variables$Mutation$DeleteShoppingCartMenuItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCartMenuItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteShoppingCartMenuItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteShoppingCartMenuItem>? update,
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
                        : _parserFn$Mutation$DeleteShoppingCartMenuItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteShoppingCartMenuItem,
          parserFn: _parserFn$Mutation$DeleteShoppingCartMenuItem,
        );

  final OnMutationCompleted$Mutation$DeleteShoppingCartMenuItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteShoppingCartMenuItem
    extends graphql.WatchQueryOptions<Mutation$DeleteShoppingCartMenuItem> {
  WatchOptions$Mutation$DeleteShoppingCartMenuItem({
    String? operationName,
    required Variables$Mutation$DeleteShoppingCartMenuItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCartMenuItem? typedOptimisticResult,
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
          document: documentNodeMutationDeleteShoppingCartMenuItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteShoppingCartMenuItem,
        );
}

extension ClientExtension$Mutation$DeleteShoppingCartMenuItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteShoppingCartMenuItem>>
      mutate$DeleteShoppingCartMenuItem(
              Options$Mutation$DeleteShoppingCartMenuItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteShoppingCartMenuItem>
      watchMutation$DeleteShoppingCartMenuItem(
              WatchOptions$Mutation$DeleteShoppingCartMenuItem options) =>
          this.watchMutation(options);
}

class Mutation$DeleteShoppingCartMenuItem$HookResult {
  Mutation$DeleteShoppingCartMenuItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteShoppingCartMenuItem runMutation;

  final graphql.QueryResult<Mutation$DeleteShoppingCartMenuItem> result;
}

Mutation$DeleteShoppingCartMenuItem$HookResult
    useMutation$DeleteShoppingCartMenuItem(
        [WidgetOptions$Mutation$DeleteShoppingCartMenuItem? options]) {
  final result = graphql_flutter.useMutation(
      options ?? WidgetOptions$Mutation$DeleteShoppingCartMenuItem());
  return Mutation$DeleteShoppingCartMenuItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteShoppingCartMenuItem>
    useWatchMutation$DeleteShoppingCartMenuItem(
            WatchOptions$Mutation$DeleteShoppingCartMenuItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteShoppingCartMenuItem
    extends graphql.MutationOptions<Mutation$DeleteShoppingCartMenuItem> {
  WidgetOptions$Mutation$DeleteShoppingCartMenuItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCartMenuItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteShoppingCartMenuItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteShoppingCartMenuItem>? update,
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
                        : _parserFn$Mutation$DeleteShoppingCartMenuItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteShoppingCartMenuItem,
          parserFn: _parserFn$Mutation$DeleteShoppingCartMenuItem,
        );

  final OnMutationCompleted$Mutation$DeleteShoppingCartMenuItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteShoppingCartMenuItem
    = graphql.MultiSourceResult<Mutation$DeleteShoppingCartMenuItem> Function(
  Variables$Mutation$DeleteShoppingCartMenuItem, {
  Object? optimisticResult,
  Mutation$DeleteShoppingCartMenuItem? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteShoppingCartMenuItem = widgets.Widget Function(
  RunMutation$Mutation$DeleteShoppingCartMenuItem,
  graphql.QueryResult<Mutation$DeleteShoppingCartMenuItem>?,
);

class Mutation$DeleteShoppingCartMenuItem$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteShoppingCartMenuItem> {
  Mutation$DeleteShoppingCartMenuItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteShoppingCartMenuItem? options,
    required Builder$Mutation$DeleteShoppingCartMenuItem builder,
  }) : super(
          key: key,
          options:
              options ?? WidgetOptions$Mutation$DeleteShoppingCartMenuItem(),
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

class Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection {
  Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartMenuItemDeleteResponse',
  });

  factory Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$ShoppingCartMenuItem.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCartMenuItem> records;

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
            is Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection) ||
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

extension UtilityExtension$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection
    on Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection {
  CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
          Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
    Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection
        instance,
    TRes Function(
            Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection)
        then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection;

  factory CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection;

  TRes call({
    List<Fragment$ShoppingCartMenuItem>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCartMenuItem> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCartMenuItem<
                      Fragment$ShoppingCartMenuItem>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
            TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection
      _instance;

  final TRes Function(
          Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCartMenuItem>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCartMenuItem> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCartMenuItem<
                          Fragment$ShoppingCartMenuItem>>)
              _fn) =>
      call(
          records: _fn(_instance.records
              .map((e) => CopyWith$Fragment$ShoppingCartMenuItem(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCartMenuItem$deleteFromShoppingCartMenuItemCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCartMenuItem>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteShoppingCart {
  factory Variables$Mutation$DeleteShoppingCart({required String id}) =>
      Variables$Mutation$DeleteShoppingCart._({
        r'id': id,
      });

  Variables$Mutation$DeleteShoppingCart._(this._$data);

  factory Variables$Mutation$DeleteShoppingCart.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteShoppingCart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteShoppingCart<
          Variables$Mutation$DeleteShoppingCart>
      get copyWith => CopyWith$Variables$Mutation$DeleteShoppingCart(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteShoppingCart) ||
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

abstract class CopyWith$Variables$Mutation$DeleteShoppingCart<TRes> {
  factory CopyWith$Variables$Mutation$DeleteShoppingCart(
    Variables$Mutation$DeleteShoppingCart instance,
    TRes Function(Variables$Mutation$DeleteShoppingCart) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteShoppingCart;

  factory CopyWith$Variables$Mutation$DeleteShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCart;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$DeleteShoppingCart<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteShoppingCart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteShoppingCart _instance;

  final TRes Function(Variables$Mutation$DeleteShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteShoppingCart._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$DeleteShoppingCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCart(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteShoppingCart {
  Mutation$DeleteShoppingCart({
    required this.deleteFromShoppingCartCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$deleteFromShoppingCartCollection =
        json['deleteFromShoppingCartCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCart(
      deleteFromShoppingCartCollection:
          Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection.fromJson(
              (l$deleteFromShoppingCartCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection
      deleteFromShoppingCartCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromShoppingCartCollection = deleteFromShoppingCartCollection;
    _resultData['deleteFromShoppingCartCollection'] =
        l$deleteFromShoppingCartCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromShoppingCartCollection = deleteFromShoppingCartCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromShoppingCartCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteShoppingCart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromShoppingCartCollection = deleteFromShoppingCartCollection;
    final lOther$deleteFromShoppingCartCollection =
        other.deleteFromShoppingCartCollection;
    if (l$deleteFromShoppingCartCollection !=
        lOther$deleteFromShoppingCartCollection) {
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

extension UtilityExtension$Mutation$DeleteShoppingCart
    on Mutation$DeleteShoppingCart {
  CopyWith$Mutation$DeleteShoppingCart<Mutation$DeleteShoppingCart>
      get copyWith => CopyWith$Mutation$DeleteShoppingCart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCart<TRes> {
  factory CopyWith$Mutation$DeleteShoppingCart(
    Mutation$DeleteShoppingCart instance,
    TRes Function(Mutation$DeleteShoppingCart) then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCart;

  factory CopyWith$Mutation$DeleteShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCart;

  TRes call({
    Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection?
        deleteFromShoppingCartCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<TRes>
      get deleteFromShoppingCartCollection;
}

class _CopyWithImpl$Mutation$DeleteShoppingCart<TRes>
    implements CopyWith$Mutation$DeleteShoppingCart<TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCart(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCart _instance;

  final TRes Function(Mutation$DeleteShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromShoppingCartCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteShoppingCart(
        deleteFromShoppingCartCollection: deleteFromShoppingCartCollection ==
                    _undefined ||
                deleteFromShoppingCartCollection == null
            ? _instance.deleteFromShoppingCartCollection
            : (deleteFromShoppingCartCollection
                as Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<TRes>
      get deleteFromShoppingCartCollection {
    final local$deleteFromShoppingCartCollection =
        _instance.deleteFromShoppingCartCollection;
    return CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
        local$deleteFromShoppingCartCollection,
        (e) => call(deleteFromShoppingCartCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCart<TRes>
    implements CopyWith$Mutation$DeleteShoppingCart<TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCart(this._res);

  TRes _res;

  call({
    Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection?
        deleteFromShoppingCartCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<TRes>
      get deleteFromShoppingCartCollection =>
          CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection
              .stub(_res);
}

const documentNodeMutationDeleteShoppingCart = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteShoppingCart'),
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
        name: NameNode(value: 'deleteFromShoppingCartCollection'),
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
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);
Mutation$DeleteShoppingCart _parserFn$Mutation$DeleteShoppingCart(
        Map<String, dynamic> data) =>
    Mutation$DeleteShoppingCart.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteShoppingCart = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteShoppingCart?,
);

class Options$Mutation$DeleteShoppingCart
    extends graphql.MutationOptions<Mutation$DeleteShoppingCart> {
  Options$Mutation$DeleteShoppingCart({
    String? operationName,
    required Variables$Mutation$DeleteShoppingCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteShoppingCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteShoppingCart>? update,
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
                        : _parserFn$Mutation$DeleteShoppingCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteShoppingCart,
          parserFn: _parserFn$Mutation$DeleteShoppingCart,
        );

  final OnMutationCompleted$Mutation$DeleteShoppingCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteShoppingCart
    extends graphql.WatchQueryOptions<Mutation$DeleteShoppingCart> {
  WatchOptions$Mutation$DeleteShoppingCart({
    String? operationName,
    required Variables$Mutation$DeleteShoppingCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCart? typedOptimisticResult,
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
          document: documentNodeMutationDeleteShoppingCart,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteShoppingCart,
        );
}

extension ClientExtension$Mutation$DeleteShoppingCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteShoppingCart>>
      mutate$DeleteShoppingCart(
              Options$Mutation$DeleteShoppingCart options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteShoppingCart>
      watchMutation$DeleteShoppingCart(
              WatchOptions$Mutation$DeleteShoppingCart options) =>
          this.watchMutation(options);
}

class Mutation$DeleteShoppingCart$HookResult {
  Mutation$DeleteShoppingCart$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteShoppingCart runMutation;

  final graphql.QueryResult<Mutation$DeleteShoppingCart> result;
}

Mutation$DeleteShoppingCart$HookResult useMutation$DeleteShoppingCart(
    [WidgetOptions$Mutation$DeleteShoppingCart? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteShoppingCart());
  return Mutation$DeleteShoppingCart$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteShoppingCart>
    useWatchMutation$DeleteShoppingCart(
            WatchOptions$Mutation$DeleteShoppingCart options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteShoppingCart
    extends graphql.MutationOptions<Mutation$DeleteShoppingCart> {
  WidgetOptions$Mutation$DeleteShoppingCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteShoppingCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteShoppingCart>? update,
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
                        : _parserFn$Mutation$DeleteShoppingCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteShoppingCart,
          parserFn: _parserFn$Mutation$DeleteShoppingCart,
        );

  final OnMutationCompleted$Mutation$DeleteShoppingCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteShoppingCart
    = graphql.MultiSourceResult<Mutation$DeleteShoppingCart> Function(
  Variables$Mutation$DeleteShoppingCart, {
  Object? optimisticResult,
  Mutation$DeleteShoppingCart? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteShoppingCart = widgets.Widget Function(
  RunMutation$Mutation$DeleteShoppingCart,
  graphql.QueryResult<Mutation$DeleteShoppingCart>?,
);

class Mutation$DeleteShoppingCart$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteShoppingCart> {
  Mutation$DeleteShoppingCart$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteShoppingCart? options,
    required Builder$Mutation$DeleteShoppingCart builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteShoppingCart(),
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

class Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection {
  Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartDeleteResponse',
  });

  factory Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCart.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCart> records;

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
            is Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection) ||
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

extension UtilityExtension$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection
    on Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection {
  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<
          Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
    Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection instance,
    TRes Function(Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection)
        then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection;

  factory CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection;

  TRes call({
    List<Fragment$ShoppingCart>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCart> Function(
              Iterable<CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<
            TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection _instance;

  final TRes Function(
      Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCart>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCart> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$ShoppingCart(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCart>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Query$ShoppingCartCollection {
  factory Variables$Query$ShoppingCartCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ShoppingCartFilter? filter,
    List<Input$ShoppingCartOrderBy>? orderBy,
  }) =>
      Variables$Query$ShoppingCartCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$ShoppingCartCollection._(this._$data);

  factory Variables$Query$ShoppingCartCollection.fromJson(
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
          : Input$ShoppingCartFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ShoppingCartOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$ShoppingCartCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$ShoppingCartFilter? get filter =>
      (_$data['filter'] as Input$ShoppingCartFilter?);

  List<Input$ShoppingCartOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ShoppingCartOrderBy>?);

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

  CopyWith$Variables$Query$ShoppingCartCollection<
          Variables$Query$ShoppingCartCollection>
      get copyWith => CopyWith$Variables$Query$ShoppingCartCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ShoppingCartCollection) ||
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

abstract class CopyWith$Variables$Query$ShoppingCartCollection<TRes> {
  factory CopyWith$Variables$Query$ShoppingCartCollection(
    Variables$Query$ShoppingCartCollection instance,
    TRes Function(Variables$Query$ShoppingCartCollection) then,
  ) = _CopyWithImpl$Variables$Query$ShoppingCartCollection;

  factory CopyWith$Variables$Query$ShoppingCartCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ShoppingCartCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ShoppingCartFilter? filter,
    List<Input$ShoppingCartOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$ShoppingCartCollection<TRes>
    implements CopyWith$Variables$Query$ShoppingCartCollection<TRes> {
  _CopyWithImpl$Variables$Query$ShoppingCartCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ShoppingCartCollection _instance;

  final TRes Function(Variables$Query$ShoppingCartCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$ShoppingCartCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$ShoppingCartFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ShoppingCartOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ShoppingCartCollection<TRes>
    implements CopyWith$Variables$Query$ShoppingCartCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ShoppingCartCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ShoppingCartFilter? filter,
    List<Input$ShoppingCartOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$ShoppingCartCollection {
  Query$ShoppingCartCollection({
    this.shoppingCartCollection,
    this.$__typename = 'Query',
  });

  factory Query$ShoppingCartCollection.fromJson(Map<String, dynamic> json) {
    final l$shoppingCartCollection = json['shoppingCartCollection'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection(
      shoppingCartCollection: l$shoppingCartCollection == null
          ? null
          : Query$ShoppingCartCollection$shoppingCartCollection.fromJson(
              (l$shoppingCartCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShoppingCartCollection$shoppingCartCollection?
      shoppingCartCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shoppingCartCollection = shoppingCartCollection;
    _resultData['shoppingCartCollection'] = l$shoppingCartCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shoppingCartCollection = shoppingCartCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shoppingCartCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ShoppingCartCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shoppingCartCollection = shoppingCartCollection;
    final lOther$shoppingCartCollection = other.shoppingCartCollection;
    if (l$shoppingCartCollection != lOther$shoppingCartCollection) {
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

extension UtilityExtension$Query$ShoppingCartCollection
    on Query$ShoppingCartCollection {
  CopyWith$Query$ShoppingCartCollection<Query$ShoppingCartCollection>
      get copyWith => CopyWith$Query$ShoppingCartCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection<TRes> {
  factory CopyWith$Query$ShoppingCartCollection(
    Query$ShoppingCartCollection instance,
    TRes Function(Query$ShoppingCartCollection) then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection;

  factory CopyWith$Query$ShoppingCartCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection;

  TRes call({
    Query$ShoppingCartCollection$shoppingCartCollection? shoppingCartCollection,
    String? $__typename,
  });
  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<TRes>
      get shoppingCartCollection;
}

class _CopyWithImpl$Query$ShoppingCartCollection<TRes>
    implements CopyWith$Query$ShoppingCartCollection<TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection _instance;

  final TRes Function(Query$ShoppingCartCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shoppingCartCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection(
        shoppingCartCollection: shoppingCartCollection == _undefined
            ? _instance.shoppingCartCollection
            : (shoppingCartCollection
                as Query$ShoppingCartCollection$shoppingCartCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<TRes>
      get shoppingCartCollection {
    final local$shoppingCartCollection = _instance.shoppingCartCollection;
    return local$shoppingCartCollection == null
        ? CopyWith$Query$ShoppingCartCollection$shoppingCartCollection.stub(
            _then(_instance))
        : CopyWith$Query$ShoppingCartCollection$shoppingCartCollection(
            local$shoppingCartCollection,
            (e) => call(shoppingCartCollection: e));
  }
}

class _CopyWithStubImpl$Query$ShoppingCartCollection<TRes>
    implements CopyWith$Query$ShoppingCartCollection<TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection(this._res);

  TRes _res;

  call({
    Query$ShoppingCartCollection$shoppingCartCollection? shoppingCartCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<TRes>
      get shoppingCartCollection =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartCollection.stub(
              _res);
}

const documentNodeQueryShoppingCartCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ShoppingCartCollection'),
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
          name: NameNode(value: 'ShoppingCartFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ShoppingCartOrderBy'),
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
        name: NameNode(value: 'shoppingCartCollection'),
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
  ),
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);
Query$ShoppingCartCollection _parserFn$Query$ShoppingCartCollection(
        Map<String, dynamic> data) =>
    Query$ShoppingCartCollection.fromJson(data);
typedef OnQueryComplete$Query$ShoppingCartCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ShoppingCartCollection?,
);

class Options$Query$ShoppingCartCollection
    extends graphql.QueryOptions<Query$ShoppingCartCollection> {
  Options$Query$ShoppingCartCollection({
    String? operationName,
    Variables$Query$ShoppingCartCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShoppingCartCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ShoppingCartCollection? onComplete,
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
                        : _parserFn$Query$ShoppingCartCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryShoppingCartCollection,
          parserFn: _parserFn$Query$ShoppingCartCollection,
        );

  final OnQueryComplete$Query$ShoppingCartCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ShoppingCartCollection
    extends graphql.WatchQueryOptions<Query$ShoppingCartCollection> {
  WatchOptions$Query$ShoppingCartCollection({
    String? operationName,
    Variables$Query$ShoppingCartCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ShoppingCartCollection? typedOptimisticResult,
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
          document: documentNodeQueryShoppingCartCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ShoppingCartCollection,
        );
}

class FetchMoreOptions$Query$ShoppingCartCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ShoppingCartCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ShoppingCartCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryShoppingCartCollection,
        );
}

extension ClientExtension$Query$ShoppingCartCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ShoppingCartCollection>>
      query$ShoppingCartCollection(
              [Options$Query$ShoppingCartCollection? options]) async =>
          await this.query(options ?? Options$Query$ShoppingCartCollection());
  graphql.ObservableQuery<
      Query$ShoppingCartCollection> watchQuery$ShoppingCartCollection(
          [WatchOptions$Query$ShoppingCartCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ShoppingCartCollection());
  void writeQuery$ShoppingCartCollection({
    required Query$ShoppingCartCollection data,
    Variables$Query$ShoppingCartCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryShoppingCartCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ShoppingCartCollection? readQuery$ShoppingCartCollection({
    Variables$Query$ShoppingCartCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryShoppingCartCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$ShoppingCartCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ShoppingCartCollection>
    useQuery$ShoppingCartCollection(
            [Options$Query$ShoppingCartCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$ShoppingCartCollection());
graphql.ObservableQuery<Query$ShoppingCartCollection>
    useWatchQuery$ShoppingCartCollection(
            [WatchOptions$Query$ShoppingCartCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$ShoppingCartCollection());

class Query$ShoppingCartCollection$Widget
    extends graphql_flutter.Query<Query$ShoppingCartCollection> {
  Query$ShoppingCartCollection$Widget({
    widgets.Key? key,
    Options$Query$ShoppingCartCollection? options,
    required graphql_flutter.QueryBuilder<Query$ShoppingCartCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ShoppingCartCollection(),
          builder: builder,
        );
}

class Query$ShoppingCartCollection$shoppingCartCollection {
  Query$ShoppingCartCollection$shoppingCartCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ShoppingCartConnection',
  });

  factory Query$ShoppingCartCollection$shoppingCartCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection$shoppingCartCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ShoppingCartCollection$shoppingCartCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$ShoppingCartCollection$shoppingCartCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ShoppingCartCollection$shoppingCartCollection$edges> edges;

  final Query$ShoppingCartCollection$shoppingCartCollection$pageInfo pageInfo;

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
    if (!(other is Query$ShoppingCartCollection$shoppingCartCollection) ||
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

extension UtilityExtension$Query$ShoppingCartCollection$shoppingCartCollection
    on Query$ShoppingCartCollection$shoppingCartCollection {
  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<
          Query$ShoppingCartCollection$shoppingCartCollection>
      get copyWith =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<
    TRes> {
  factory CopyWith$Query$ShoppingCartCollection$shoppingCartCollection(
    Query$ShoppingCartCollection$shoppingCartCollection instance,
    TRes Function(Query$ShoppingCartCollection$shoppingCartCollection) then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection;

  factory CopyWith$Query$ShoppingCartCollection$shoppingCartCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection;

  TRes call({
    List<Query$ShoppingCartCollection$shoppingCartCollection$edges>? edges,
    Query$ShoppingCartCollection$shoppingCartCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ShoppingCartCollection$shoppingCartCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges<
                      Query$ShoppingCartCollection$shoppingCartCollection$edges>>)
          _fn);
  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection<TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection$shoppingCartCollection _instance;

  final TRes Function(Query$ShoppingCartCollection$shoppingCartCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection$shoppingCartCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$ShoppingCartCollection$shoppingCartCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$ShoppingCartCollection$shoppingCartCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ShoppingCartCollection$shoppingCartCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges<
                          Query$ShoppingCartCollection$shoppingCartCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartCollection<TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection(
      this._res);

  TRes _res;

  call({
    List<Query$ShoppingCartCollection$shoppingCartCollection$edges>? edges,
    Query$ShoppingCartCollection$shoppingCartCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo
              .stub(_res);
}

class Query$ShoppingCartCollection$shoppingCartCollection$edges {
  Query$ShoppingCartCollection$shoppingCartCollection$edges({
    required this.node,
    this.$__typename = 'ShoppingCartEdge',
  });

  factory Query$ShoppingCartCollection$shoppingCartCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection$shoppingCartCollection$edges(
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
    if (!(other is Query$ShoppingCartCollection$shoppingCartCollection$edges) ||
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

extension UtilityExtension$Query$ShoppingCartCollection$shoppingCartCollection$edges
    on Query$ShoppingCartCollection$shoppingCartCollection$edges {
  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges<
          Query$ShoppingCartCollection$shoppingCartCollection$edges>
      get copyWith =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges<
    TRes> {
  factory CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges(
    Query$ShoppingCartCollection$shoppingCartCollection$edges instance,
    TRes Function(Query$ShoppingCartCollection$shoppingCartCollection$edges)
        then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection$edges;

  factory CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection$edges;

  TRes call({
    Fragment$ShoppingCart? node,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCart<TRes> get node;
}

class _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection$edges<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges<
            TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection$shoppingCartCollection$edges _instance;

  final TRes Function(Query$ShoppingCartCollection$shoppingCartCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection$shoppingCartCollection$edges(
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

class _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection$edges<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ShoppingCart? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCart<TRes> get node =>
      CopyWith$Fragment$ShoppingCart.stub(_res);
}

class Query$ShoppingCartCollection$shoppingCartCollection$pageInfo {
  Query$ShoppingCartCollection$shoppingCartCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ShoppingCartCollection$shoppingCartCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
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
            is Query$ShoppingCartCollection$shoppingCartCollection$pageInfo) ||
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

extension UtilityExtension$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo
    on Query$ShoppingCartCollection$shoppingCartCollection$pageInfo {
  CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<
          Query$ShoppingCartCollection$shoppingCartCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
    Query$ShoppingCartCollection$shoppingCartCollection$pageInfo instance,
    TRes Function(Query$ShoppingCartCollection$shoppingCartCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo;

  factory CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection$shoppingCartCollection$pageInfo _instance;

  final TRes Function(
      Query$ShoppingCartCollection$shoppingCartCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartCollection$pageInfo(
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

class Variables$Mutation$UpdateShoppingCart {
  factory Variables$Mutation$UpdateShoppingCart({
    required String id,
    required Input$ShoppingCartUpdateInput input,
  }) =>
      Variables$Mutation$UpdateShoppingCart._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateShoppingCart._(this._$data);

  factory Variables$Mutation$UpdateShoppingCart.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartUpdateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateShoppingCart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ShoppingCartUpdateInput get input =>
      (_$data['input'] as Input$ShoppingCartUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateShoppingCart<
          Variables$Mutation$UpdateShoppingCart>
      get copyWith => CopyWith$Variables$Mutation$UpdateShoppingCart(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$UpdateShoppingCart) ||
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

abstract class CopyWith$Variables$Mutation$UpdateShoppingCart<TRes> {
  factory CopyWith$Variables$Mutation$UpdateShoppingCart(
    Variables$Mutation$UpdateShoppingCart instance,
    TRes Function(Variables$Mutation$UpdateShoppingCart) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateShoppingCart;

  factory CopyWith$Variables$Mutation$UpdateShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCart;

  TRes call({
    String? id,
    Input$ShoppingCartUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$UpdateShoppingCart<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateShoppingCart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateShoppingCart _instance;

  final TRes Function(Variables$Mutation$UpdateShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateShoppingCart._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ShoppingCartUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$UpdateShoppingCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCart(this._res);

  TRes _res;

  call({
    String? id,
    Input$ShoppingCartUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateShoppingCart {
  Mutation$UpdateShoppingCart({
    required this.updateShoppingCartCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$updateShoppingCartCollection = json['updateShoppingCartCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateShoppingCart(
      updateShoppingCartCollection:
          Mutation$UpdateShoppingCart$updateShoppingCartCollection.fromJson(
              (l$updateShoppingCartCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateShoppingCart$updateShoppingCartCollection
      updateShoppingCartCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateShoppingCartCollection = updateShoppingCartCollection;
    _resultData['updateShoppingCartCollection'] =
        l$updateShoppingCartCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateShoppingCartCollection = updateShoppingCartCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateShoppingCartCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$UpdateShoppingCart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateShoppingCartCollection = updateShoppingCartCollection;
    final lOther$updateShoppingCartCollection =
        other.updateShoppingCartCollection;
    if (l$updateShoppingCartCollection != lOther$updateShoppingCartCollection) {
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

extension UtilityExtension$Mutation$UpdateShoppingCart
    on Mutation$UpdateShoppingCart {
  CopyWith$Mutation$UpdateShoppingCart<Mutation$UpdateShoppingCart>
      get copyWith => CopyWith$Mutation$UpdateShoppingCart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateShoppingCart<TRes> {
  factory CopyWith$Mutation$UpdateShoppingCart(
    Mutation$UpdateShoppingCart instance,
    TRes Function(Mutation$UpdateShoppingCart) then,
  ) = _CopyWithImpl$Mutation$UpdateShoppingCart;

  factory CopyWith$Mutation$UpdateShoppingCart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateShoppingCart;

  TRes call({
    Mutation$UpdateShoppingCart$updateShoppingCartCollection?
        updateShoppingCartCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<TRes>
      get updateShoppingCartCollection;
}

class _CopyWithImpl$Mutation$UpdateShoppingCart<TRes>
    implements CopyWith$Mutation$UpdateShoppingCart<TRes> {
  _CopyWithImpl$Mutation$UpdateShoppingCart(
    this._instance,
    this._then,
  );

  final Mutation$UpdateShoppingCart _instance;

  final TRes Function(Mutation$UpdateShoppingCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateShoppingCartCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateShoppingCart(
        updateShoppingCartCollection: updateShoppingCartCollection ==
                    _undefined ||
                updateShoppingCartCollection == null
            ? _instance.updateShoppingCartCollection
            : (updateShoppingCartCollection
                as Mutation$UpdateShoppingCart$updateShoppingCartCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<TRes>
      get updateShoppingCartCollection {
    final local$updateShoppingCartCollection =
        _instance.updateShoppingCartCollection;
    return CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection(
        local$updateShoppingCartCollection,
        (e) => call(updateShoppingCartCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateShoppingCart<TRes>
    implements CopyWith$Mutation$UpdateShoppingCart<TRes> {
  _CopyWithStubImpl$Mutation$UpdateShoppingCart(this._res);

  TRes _res;

  call({
    Mutation$UpdateShoppingCart$updateShoppingCartCollection?
        updateShoppingCartCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<TRes>
      get updateShoppingCartCollection =>
          CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection
              .stub(_res);
}

const documentNodeMutationUpdateShoppingCart = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateShoppingCart'),
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
          name: NameNode(value: 'ShoppingCartUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateShoppingCartCollection'),
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
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartMenuItem,
  fragmentDefinitionMenuItem,
]);
Mutation$UpdateShoppingCart _parserFn$Mutation$UpdateShoppingCart(
        Map<String, dynamic> data) =>
    Mutation$UpdateShoppingCart.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateShoppingCart = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateShoppingCart?,
);

class Options$Mutation$UpdateShoppingCart
    extends graphql.MutationOptions<Mutation$UpdateShoppingCart> {
  Options$Mutation$UpdateShoppingCart({
    String? operationName,
    required Variables$Mutation$UpdateShoppingCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateShoppingCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateShoppingCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateShoppingCart>? update,
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
                        : _parserFn$Mutation$UpdateShoppingCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateShoppingCart,
          parserFn: _parserFn$Mutation$UpdateShoppingCart,
        );

  final OnMutationCompleted$Mutation$UpdateShoppingCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateShoppingCart
    extends graphql.WatchQueryOptions<Mutation$UpdateShoppingCart> {
  WatchOptions$Mutation$UpdateShoppingCart({
    String? operationName,
    required Variables$Mutation$UpdateShoppingCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateShoppingCart? typedOptimisticResult,
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
          document: documentNodeMutationUpdateShoppingCart,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateShoppingCart,
        );
}

extension ClientExtension$Mutation$UpdateShoppingCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateShoppingCart>>
      mutate$UpdateShoppingCart(
              Options$Mutation$UpdateShoppingCart options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateShoppingCart>
      watchMutation$UpdateShoppingCart(
              WatchOptions$Mutation$UpdateShoppingCart options) =>
          this.watchMutation(options);
}

class Mutation$UpdateShoppingCart$HookResult {
  Mutation$UpdateShoppingCart$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateShoppingCart runMutation;

  final graphql.QueryResult<Mutation$UpdateShoppingCart> result;
}

Mutation$UpdateShoppingCart$HookResult useMutation$UpdateShoppingCart(
    [WidgetOptions$Mutation$UpdateShoppingCart? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateShoppingCart());
  return Mutation$UpdateShoppingCart$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateShoppingCart>
    useWatchMutation$UpdateShoppingCart(
            WatchOptions$Mutation$UpdateShoppingCart options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateShoppingCart
    extends graphql.MutationOptions<Mutation$UpdateShoppingCart> {
  WidgetOptions$Mutation$UpdateShoppingCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateShoppingCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateShoppingCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateShoppingCart>? update,
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
                        : _parserFn$Mutation$UpdateShoppingCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateShoppingCart,
          parserFn: _parserFn$Mutation$UpdateShoppingCart,
        );

  final OnMutationCompleted$Mutation$UpdateShoppingCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateShoppingCart
    = graphql.MultiSourceResult<Mutation$UpdateShoppingCart> Function(
  Variables$Mutation$UpdateShoppingCart, {
  Object? optimisticResult,
  Mutation$UpdateShoppingCart? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateShoppingCart = widgets.Widget Function(
  RunMutation$Mutation$UpdateShoppingCart,
  graphql.QueryResult<Mutation$UpdateShoppingCart>?,
);

class Mutation$UpdateShoppingCart$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateShoppingCart> {
  Mutation$UpdateShoppingCart$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateShoppingCart? options,
    required Builder$Mutation$UpdateShoppingCart builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateShoppingCart(),
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

class Mutation$UpdateShoppingCart$updateShoppingCartCollection {
  Mutation$UpdateShoppingCart$updateShoppingCartCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartUpdateResponse',
  });

  factory Mutation$UpdateShoppingCart$updateShoppingCartCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateShoppingCart$updateShoppingCartCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCart.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCart> records;

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
    if (!(other is Mutation$UpdateShoppingCart$updateShoppingCartCollection) ||
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

extension UtilityExtension$Mutation$UpdateShoppingCart$updateShoppingCartCollection
    on Mutation$UpdateShoppingCart$updateShoppingCartCollection {
  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<
          Mutation$UpdateShoppingCart$updateShoppingCartCollection>
      get copyWith =>
          CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<
    TRes> {
  factory CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection(
    Mutation$UpdateShoppingCart$updateShoppingCartCollection instance,
    TRes Function(Mutation$UpdateShoppingCart$updateShoppingCartCollection)
        then,
  ) = _CopyWithImpl$Mutation$UpdateShoppingCart$updateShoppingCartCollection;

  factory CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateShoppingCart$updateShoppingCartCollection;

  TRes call({
    List<Fragment$ShoppingCart>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCart> Function(
              Iterable<CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateShoppingCart$updateShoppingCartCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<
            TRes> {
  _CopyWithImpl$Mutation$UpdateShoppingCart$updateShoppingCartCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateShoppingCart$updateShoppingCartCollection _instance;

  final TRes Function(Mutation$UpdateShoppingCart$updateShoppingCartCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateShoppingCart$updateShoppingCartCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCart>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCart> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCart<Fragment$ShoppingCart>>)
              _fn) =>
      call(
          records:
              _fn(_instance.records.map((e) => CopyWith$Fragment$ShoppingCart(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateShoppingCart$updateShoppingCartCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateShoppingCart$updateShoppingCartCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCart>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
