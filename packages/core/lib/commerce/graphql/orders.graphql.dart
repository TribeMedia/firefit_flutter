import '../../common/graphql/address.graphql.dart';
import '../../organizations/graphql/organizations.graphql.dart';
import '../../schema.graphql.dart';
import '../../stations/graphql/stations.graphql.dart';
import '../../users/graphql/users.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;
import 'products.graphql.dart';

class Fragment$ShoppingCartItem {
  Fragment$ShoppingCartItem({
    required this.id,
    required this.shoppingCartId,
    required this.productId,
    required this.product,
    required this.createdAt,
    required this.unitPrice,
    required this.quantity,
    this.$__typename = 'ShoppingCartItems',
  });

  factory Fragment$ShoppingCartItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$shoppingCartId = json['shoppingCartId'];
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$createdAt = json['createdAt'];
    final l$unitPrice = json['unitPrice'];
    final l$quantity = json['quantity'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCartItem(
      id: (l$id as String),
      shoppingCartId: (l$shoppingCartId as String),
      productId: (l$productId as String),
      product: Fragment$Product.fromJson((l$product as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      unitPrice: (l$unitPrice as num).toDouble(),
      quantity: (l$quantity as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String shoppingCartId;

  final String productId;

  final Fragment$Product product;

  final DateTime createdAt;

  final double unitPrice;

  final int quantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shoppingCartId = shoppingCartId;
    _resultData['shoppingCartId'] = l$shoppingCartId;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$product = product;
    _resultData['product'] = l$product.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$unitPrice = unitPrice;
    _resultData['unitPrice'] = l$unitPrice;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$shoppingCartId = shoppingCartId;
    final l$productId = productId;
    final l$product = product;
    final l$createdAt = createdAt;
    final l$unitPrice = unitPrice;
    final l$quantity = quantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$shoppingCartId,
      l$productId,
      l$product,
      l$createdAt,
      l$unitPrice,
      l$quantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ShoppingCartItem ||
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
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$unitPrice = unitPrice;
    final lOther$unitPrice = other.unitPrice;
    if (l$unitPrice != lOther$unitPrice) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Fragment$ShoppingCartItem
    on Fragment$ShoppingCartItem {
  CopyWith$Fragment$ShoppingCartItem<Fragment$ShoppingCartItem> get copyWith =>
      CopyWith$Fragment$ShoppingCartItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ShoppingCartItem<TRes> {
  factory CopyWith$Fragment$ShoppingCartItem(
    Fragment$ShoppingCartItem instance,
    TRes Function(Fragment$ShoppingCartItem) then,
  ) = _CopyWithImpl$Fragment$ShoppingCartItem;

  factory CopyWith$Fragment$ShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCartItem;

  TRes call({
    String? id,
    String? shoppingCartId,
    String? productId,
    Fragment$Product? product,
    DateTime? createdAt,
    double? unitPrice,
    int? quantity,
    String? $__typename,
  });
  CopyWith$Fragment$Product<TRes> get product;
}

class _CopyWithImpl$Fragment$ShoppingCartItem<TRes>
    implements CopyWith$Fragment$ShoppingCartItem<TRes> {
  _CopyWithImpl$Fragment$ShoppingCartItem(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCartItem _instance;

  final TRes Function(Fragment$ShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shoppingCartId = _undefined,
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? createdAt = _undefined,
    Object? unitPrice = _undefined,
    Object? quantity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCartItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        shoppingCartId: shoppingCartId == _undefined || shoppingCartId == null
            ? _instance.shoppingCartId
            : (shoppingCartId as String),
        productId: productId == _undefined || productId == null
            ? _instance.productId
            : (productId as String),
        product: product == _undefined || product == null
            ? _instance.product
            : (product as Fragment$Product),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        unitPrice: unitPrice == _undefined || unitPrice == null
            ? _instance.unitPrice
            : (unitPrice as double),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Product<TRes> get product {
    final local$product = _instance.product;
    return CopyWith$Fragment$Product(local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCartItem<TRes>
    implements CopyWith$Fragment$ShoppingCartItem<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCartItem(this._res);

  TRes _res;

  call({
    String? id,
    String? shoppingCartId,
    String? productId,
    Fragment$Product? product,
    DateTime? createdAt,
    double? unitPrice,
    int? quantity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Product<TRes> get product =>
      CopyWith$Fragment$Product.stub(_res);
}

const fragmentDefinitionShoppingCartItem = FragmentDefinitionNode(
  name: NameNode(value: 'ShoppingCartItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ShoppingCartItems'),
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
      name: NameNode(value: 'productId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'product'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Product'),
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
      name: NameNode(value: 'unitPrice'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'quantity'),
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
const documentNodeFragmentShoppingCartItem = DocumentNode(definitions: [
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);

extension ClientExtension$Fragment$ShoppingCartItem on graphql.GraphQLClient {
  void writeFragment$ShoppingCartItem({
    required Fragment$ShoppingCartItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ShoppingCartItem',
            document: documentNodeFragmentShoppingCartItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ShoppingCartItem? readFragment$ShoppingCartItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ShoppingCartItem',
          document: documentNodeFragmentShoppingCartItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ShoppingCartItem.fromJson(result);
  }
}

class Fragment$ShoppingCartItemWithCart {
  Fragment$ShoppingCartItemWithCart({
    required this.id,
    required this.shoppingCartId,
    required this.shoppingCart,
    required this.productId,
    required this.product,
    required this.createdAt,
    required this.unitPrice,
    required this.quantity,
    this.$__typename = 'ShoppingCartItems',
  });

  factory Fragment$ShoppingCartItemWithCart.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$shoppingCartId = json['shoppingCartId'];
    final l$shoppingCart = json['shoppingCart'];
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$createdAt = json['createdAt'];
    final l$unitPrice = json['unitPrice'];
    final l$quantity = json['quantity'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCartItemWithCart(
      id: (l$id as String),
      shoppingCartId: (l$shoppingCartId as String),
      shoppingCart: Fragment$ShoppingCart.fromJson(
          (l$shoppingCart as Map<String, dynamic>)),
      productId: (l$productId as String),
      product: Fragment$Product.fromJson((l$product as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      unitPrice: (l$unitPrice as num).toDouble(),
      quantity: (l$quantity as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String shoppingCartId;

  final Fragment$ShoppingCart shoppingCart;

  final String productId;

  final Fragment$Product product;

  final DateTime createdAt;

  final double unitPrice;

  final int quantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$shoppingCartId = shoppingCartId;
    _resultData['shoppingCartId'] = l$shoppingCartId;
    final l$shoppingCart = shoppingCart;
    _resultData['shoppingCart'] = l$shoppingCart.toJson();
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$product = product;
    _resultData['product'] = l$product.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$unitPrice = unitPrice;
    _resultData['unitPrice'] = l$unitPrice;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$shoppingCartId = shoppingCartId;
    final l$shoppingCart = shoppingCart;
    final l$productId = productId;
    final l$product = product;
    final l$createdAt = createdAt;
    final l$unitPrice = unitPrice;
    final l$quantity = quantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$shoppingCartId,
      l$shoppingCart,
      l$productId,
      l$product,
      l$createdAt,
      l$unitPrice,
      l$quantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ShoppingCartItemWithCart ||
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
    final l$shoppingCart = shoppingCart;
    final lOther$shoppingCart = other.shoppingCart;
    if (l$shoppingCart != lOther$shoppingCart) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$unitPrice = unitPrice;
    final lOther$unitPrice = other.unitPrice;
    if (l$unitPrice != lOther$unitPrice) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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

extension UtilityExtension$Fragment$ShoppingCartItemWithCart
    on Fragment$ShoppingCartItemWithCart {
  CopyWith$Fragment$ShoppingCartItemWithCart<Fragment$ShoppingCartItemWithCart>
      get copyWith => CopyWith$Fragment$ShoppingCartItemWithCart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ShoppingCartItemWithCart<TRes> {
  factory CopyWith$Fragment$ShoppingCartItemWithCart(
    Fragment$ShoppingCartItemWithCart instance,
    TRes Function(Fragment$ShoppingCartItemWithCart) then,
  ) = _CopyWithImpl$Fragment$ShoppingCartItemWithCart;

  factory CopyWith$Fragment$ShoppingCartItemWithCart.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCartItemWithCart;

  TRes call({
    String? id,
    String? shoppingCartId,
    Fragment$ShoppingCart? shoppingCart,
    String? productId,
    Fragment$Product? product,
    DateTime? createdAt,
    double? unitPrice,
    int? quantity,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCart<TRes> get shoppingCart;
  CopyWith$Fragment$Product<TRes> get product;
}

class _CopyWithImpl$Fragment$ShoppingCartItemWithCart<TRes>
    implements CopyWith$Fragment$ShoppingCartItemWithCart<TRes> {
  _CopyWithImpl$Fragment$ShoppingCartItemWithCart(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCartItemWithCart _instance;

  final TRes Function(Fragment$ShoppingCartItemWithCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? shoppingCartId = _undefined,
    Object? shoppingCart = _undefined,
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? createdAt = _undefined,
    Object? unitPrice = _undefined,
    Object? quantity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCartItemWithCart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        shoppingCartId: shoppingCartId == _undefined || shoppingCartId == null
            ? _instance.shoppingCartId
            : (shoppingCartId as String),
        shoppingCart: shoppingCart == _undefined || shoppingCart == null
            ? _instance.shoppingCart
            : (shoppingCart as Fragment$ShoppingCart),
        productId: productId == _undefined || productId == null
            ? _instance.productId
            : (productId as String),
        product: product == _undefined || product == null
            ? _instance.product
            : (product as Fragment$Product),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        unitPrice: unitPrice == _undefined || unitPrice == null
            ? _instance.unitPrice
            : (unitPrice as double),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCart<TRes> get shoppingCart {
    final local$shoppingCart = _instance.shoppingCart;
    return CopyWith$Fragment$ShoppingCart(
        local$shoppingCart, (e) => call(shoppingCart: e));
  }

  CopyWith$Fragment$Product<TRes> get product {
    final local$product = _instance.product;
    return CopyWith$Fragment$Product(local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCartItemWithCart<TRes>
    implements CopyWith$Fragment$ShoppingCartItemWithCart<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCartItemWithCart(this._res);

  TRes _res;

  call({
    String? id,
    String? shoppingCartId,
    Fragment$ShoppingCart? shoppingCart,
    String? productId,
    Fragment$Product? product,
    DateTime? createdAt,
    double? unitPrice,
    int? quantity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCart<TRes> get shoppingCart =>
      CopyWith$Fragment$ShoppingCart.stub(_res);

  CopyWith$Fragment$Product<TRes> get product =>
      CopyWith$Fragment$Product.stub(_res);
}

const fragmentDefinitionShoppingCartItemWithCart = FragmentDefinitionNode(
  name: NameNode(value: 'ShoppingCartItemWithCart'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ShoppingCartItems'),
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
      name: NameNode(value: 'shoppingCart'),
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
      name: NameNode(value: 'productId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'product'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Product'),
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
      name: NameNode(value: 'unitPrice'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'quantity'),
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
const documentNodeFragmentShoppingCartItemWithCart = DocumentNode(definitions: [
  fragmentDefinitionShoppingCartItemWithCart,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);

extension ClientExtension$Fragment$ShoppingCartItemWithCart
    on graphql.GraphQLClient {
  void writeFragment$ShoppingCartItemWithCart({
    required Fragment$ShoppingCartItemWithCart data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ShoppingCartItemWithCart',
            document: documentNodeFragmentShoppingCartItemWithCart,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ShoppingCartItemWithCart? readFragment$ShoppingCartItemWithCart({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ShoppingCartItemWithCart',
          document: documentNodeFragmentShoppingCartItemWithCart,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$ShoppingCartItemWithCart.fromJson(result);
  }
}

class Fragment$DeliveryPeriod {
  Fragment$DeliveryPeriod({
    required this.id,
    this.title,
    required this.startDate,
    required this.endDate,
    this.deliveryLocationCollection,
    required this.isCurrent,
    required this.createdAt,
    this.$__typename = 'DeliveryPeriod',
  });

  factory Fragment$DeliveryPeriod.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$startDate = json['startDate'];
    final l$endDate = json['endDate'];
    final l$deliveryLocationCollection = json['deliveryLocationCollection'];
    final l$isCurrent = json['isCurrent'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$DeliveryPeriod(
      id: (l$id as String),
      title: (l$title as String?),
      startDate: DateTime.parse((l$startDate as String)),
      endDate: DateTime.parse((l$endDate as String)),
      deliveryLocationCollection: l$deliveryLocationCollection == null
          ? null
          : Fragment$DeliveryPeriod$deliveryLocationCollection.fromJson(
              (l$deliveryLocationCollection as Map<String, dynamic>)),
      isCurrent: (l$isCurrent as bool),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? title;

  final DateTime startDate;

  final DateTime endDate;

  final Fragment$DeliveryPeriod$deliveryLocationCollection?
      deliveryLocationCollection;

  final bool isCurrent;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$startDate = startDate;
    _resultData['startDate'] = l$startDate.toIso8601String();
    final l$endDate = endDate;
    _resultData['endDate'] = l$endDate.toIso8601String();
    final l$deliveryLocationCollection = deliveryLocationCollection;
    _resultData['deliveryLocationCollection'] =
        l$deliveryLocationCollection?.toJson();
    final l$isCurrent = isCurrent;
    _resultData['isCurrent'] = l$isCurrent;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$startDate = startDate;
    final l$endDate = endDate;
    final l$deliveryLocationCollection = deliveryLocationCollection;
    final l$isCurrent = isCurrent;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$startDate,
      l$endDate,
      l$deliveryLocationCollection,
      l$isCurrent,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DeliveryPeriod || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    final l$deliveryLocationCollection = deliveryLocationCollection;
    final lOther$deliveryLocationCollection = other.deliveryLocationCollection;
    if (l$deliveryLocationCollection != lOther$deliveryLocationCollection) {
      return false;
    }
    final l$isCurrent = isCurrent;
    final lOther$isCurrent = other.isCurrent;
    if (l$isCurrent != lOther$isCurrent) {
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

extension UtilityExtension$Fragment$DeliveryPeriod on Fragment$DeliveryPeriod {
  CopyWith$Fragment$DeliveryPeriod<Fragment$DeliveryPeriod> get copyWith =>
      CopyWith$Fragment$DeliveryPeriod(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$DeliveryPeriod<TRes> {
  factory CopyWith$Fragment$DeliveryPeriod(
    Fragment$DeliveryPeriod instance,
    TRes Function(Fragment$DeliveryPeriod) then,
  ) = _CopyWithImpl$Fragment$DeliveryPeriod;

  factory CopyWith$Fragment$DeliveryPeriod.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeliveryPeriod;

  TRes call({
    String? id,
    String? title,
    DateTime? startDate,
    DateTime? endDate,
    Fragment$DeliveryPeriod$deliveryLocationCollection?
        deliveryLocationCollection,
    bool? isCurrent,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes>
      get deliveryLocationCollection;
}

class _CopyWithImpl$Fragment$DeliveryPeriod<TRes>
    implements CopyWith$Fragment$DeliveryPeriod<TRes> {
  _CopyWithImpl$Fragment$DeliveryPeriod(
    this._instance,
    this._then,
  );

  final Fragment$DeliveryPeriod _instance;

  final TRes Function(Fragment$DeliveryPeriod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? startDate = _undefined,
    Object? endDate = _undefined,
    Object? deliveryLocationCollection = _undefined,
    Object? isCurrent = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DeliveryPeriod(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined ? _instance.title : (title as String?),
        startDate: startDate == _undefined || startDate == null
            ? _instance.startDate
            : (startDate as DateTime),
        endDate: endDate == _undefined || endDate == null
            ? _instance.endDate
            : (endDate as DateTime),
        deliveryLocationCollection: deliveryLocationCollection == _undefined
            ? _instance.deliveryLocationCollection
            : (deliveryLocationCollection
                as Fragment$DeliveryPeriod$deliveryLocationCollection?),
        isCurrent: isCurrent == _undefined || isCurrent == null
            ? _instance.isCurrent
            : (isCurrent as bool),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes>
      get deliveryLocationCollection {
    final local$deliveryLocationCollection =
        _instance.deliveryLocationCollection;
    return local$deliveryLocationCollection == null
        ? CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection(
            local$deliveryLocationCollection,
            (e) => call(deliveryLocationCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$DeliveryPeriod<TRes>
    implements CopyWith$Fragment$DeliveryPeriod<TRes> {
  _CopyWithStubImpl$Fragment$DeliveryPeriod(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    DateTime? startDate,
    DateTime? endDate,
    Fragment$DeliveryPeriod$deliveryLocationCollection?
        deliveryLocationCollection,
    bool? isCurrent,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes>
      get deliveryLocationCollection =>
          CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection.stub(
              _res);
}

const fragmentDefinitionDeliveryPeriod = FragmentDefinitionNode(
  name: NameNode(value: 'DeliveryPeriod'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DeliveryPeriod'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'endDate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'deliveryLocationCollection'),
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
                  name: NameNode(value: 'DeliveryLocation'),
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
      name: NameNode(value: 'isCurrent'),
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
const documentNodeFragmentDeliveryPeriod = DocumentNode(definitions: [
  fragmentDefinitionDeliveryPeriod,
  fragmentDefinitionDeliveryLocation,
]);

extension ClientExtension$Fragment$DeliveryPeriod on graphql.GraphQLClient {
  void writeFragment$DeliveryPeriod({
    required Fragment$DeliveryPeriod data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'DeliveryPeriod',
            document: documentNodeFragmentDeliveryPeriod,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$DeliveryPeriod? readFragment$DeliveryPeriod({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'DeliveryPeriod',
          document: documentNodeFragmentDeliveryPeriod,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$DeliveryPeriod.fromJson(result);
  }
}

class Fragment$DeliveryPeriod$deliveryLocationCollection {
  Fragment$DeliveryPeriod$deliveryLocationCollection({
    required this.edges,
    this.$__typename = 'DeliveryLocationConnection',
  });

  factory Fragment$DeliveryPeriod$deliveryLocationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$DeliveryPeriod$deliveryLocationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$DeliveryPeriod$deliveryLocationCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$DeliveryPeriod$deliveryLocationCollection$edges> edges;

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
    if (other is! Fragment$DeliveryPeriod$deliveryLocationCollection ||
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

extension UtilityExtension$Fragment$DeliveryPeriod$deliveryLocationCollection
    on Fragment$DeliveryPeriod$deliveryLocationCollection {
  CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<
          Fragment$DeliveryPeriod$deliveryLocationCollection>
      get copyWith =>
          CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<
    TRes> {
  factory CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection(
    Fragment$DeliveryPeriod$deliveryLocationCollection instance,
    TRes Function(Fragment$DeliveryPeriod$deliveryLocationCollection) then,
  ) = _CopyWithImpl$Fragment$DeliveryPeriod$deliveryLocationCollection;

  factory CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$DeliveryPeriod$deliveryLocationCollection;

  TRes call({
    List<Fragment$DeliveryPeriod$deliveryLocationCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$DeliveryPeriod$deliveryLocationCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
                      Fragment$DeliveryPeriod$deliveryLocationCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes>
    implements
        CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes> {
  _CopyWithImpl$Fragment$DeliveryPeriod$deliveryLocationCollection(
    this._instance,
    this._then,
  );

  final Fragment$DeliveryPeriod$deliveryLocationCollection _instance;

  final TRes Function(Fragment$DeliveryPeriod$deliveryLocationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DeliveryPeriod$deliveryLocationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$DeliveryPeriod$deliveryLocationCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$DeliveryPeriod$deliveryLocationCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
                          Fragment$DeliveryPeriod$deliveryLocationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes>
    implements
        CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection<TRes> {
  _CopyWithStubImpl$Fragment$DeliveryPeriod$deliveryLocationCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$DeliveryPeriod$deliveryLocationCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$DeliveryPeriod$deliveryLocationCollection$edges {
  Fragment$DeliveryPeriod$deliveryLocationCollection$edges({
    required this.node,
    this.$__typename = 'DeliveryLocationEdge',
  });

  factory Fragment$DeliveryPeriod$deliveryLocationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
      node:
          Fragment$DeliveryLocation.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DeliveryLocation node;

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
    if (other is! Fragment$DeliveryPeriod$deliveryLocationCollection$edges ||
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

extension UtilityExtension$Fragment$DeliveryPeriod$deliveryLocationCollection$edges
    on Fragment$DeliveryPeriod$deliveryLocationCollection$edges {
  CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
          Fragment$DeliveryPeriod$deliveryLocationCollection$edges>
      get copyWith =>
          CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
    TRes> {
  factory CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
    Fragment$DeliveryPeriod$deliveryLocationCollection$edges instance,
    TRes Function(Fragment$DeliveryPeriod$deliveryLocationCollection$edges)
        then,
  ) = _CopyWithImpl$Fragment$DeliveryPeriod$deliveryLocationCollection$edges;

  factory CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$DeliveryPeriod$deliveryLocationCollection$edges;

  TRes call({
    Fragment$DeliveryLocation? node,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryLocation<TRes> get node;
}

class _CopyWithImpl$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
            TRes> {
  _CopyWithImpl$Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$DeliveryPeriod$deliveryLocationCollection$edges _instance;

  final TRes Function(Fragment$DeliveryPeriod$deliveryLocationCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$DeliveryLocation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryLocation<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$DeliveryLocation(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$DeliveryPeriod$deliveryLocationCollection$edges<
            TRes> {
  _CopyWithStubImpl$Fragment$DeliveryPeriod$deliveryLocationCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$DeliveryLocation? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryLocation<TRes> get node =>
      CopyWith$Fragment$DeliveryLocation.stub(_res);
}

class Fragment$ProviderType {
  Fragment$ProviderType({
    required this.id,
    required this.name,
    required this.key,
    this.schema,
    required this.createdAt,
    this.$__typename = 'ProviderType',
  });

  factory Fragment$ProviderType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ProviderType(
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
    if (other is! Fragment$ProviderType || runtimeType != other.runtimeType) {
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
    Map<String, dynamic>? schema,
    DateTime? createdAt,
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
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProviderType(
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

class _CopyWithStubImpl$Fragment$ProviderType<TRes>
    implements CopyWith$Fragment$ProviderType<TRes> {
  _CopyWithStubImpl$Fragment$ProviderType(this._res);

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
    this.providerTypeId,
    this.organizationId,
    required this.name,
    this.description,
    this.logoUrl,
    this.coverUrl,
    this.webUrl,
    this.data,
    required this.createdAt,
    this.updatedAt,
    this.organization,
    this.providerType,
    this.$__typename = 'Provider',
  });

  factory Fragment$Provider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$providerTypeId = json['providerTypeId'];
    final l$organizationId = json['organizationId'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$logoUrl = json['logoUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$webUrl = json['webUrl'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$organization = json['organization'];
    final l$providerType = json['providerType'];
    final l$$__typename = json['__typename'];
    return Fragment$Provider(
      id: (l$id as String),
      providerTypeId: (l$providerTypeId as String?),
      organizationId: (l$organizationId as String?),
      name: (l$name as String),
      description: (l$description as String?),
      logoUrl: (l$logoUrl as String?),
      coverUrl: (l$coverUrl as String?),
      webUrl: (l$webUrl as String?),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      organization: l$organization == null
          ? null
          : Fragment$Organization.fromJson(
              (l$organization as Map<String, dynamic>)),
      providerType: l$providerType == null
          ? null
          : Fragment$ProviderType.fromJson(
              (l$providerType as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? providerTypeId;

  final String? organizationId;

  final String name;

  final String? description;

  final String? logoUrl;

  final String? coverUrl;

  final String? webUrl;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final Fragment$Organization? organization;

  final Fragment$ProviderType? providerType;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$providerTypeId = providerTypeId;
    _resultData['providerTypeId'] = l$providerTypeId;
    final l$organizationId = organizationId;
    _resultData['organizationId'] = l$organizationId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$logoUrl = logoUrl;
    _resultData['logoUrl'] = l$logoUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
    final l$webUrl = webUrl;
    _resultData['webUrl'] = l$webUrl;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$organization = organization;
    _resultData['organization'] = l$organization?.toJson();
    final l$providerType = providerType;
    _resultData['providerType'] = l$providerType?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$providerTypeId = providerTypeId;
    final l$organizationId = organizationId;
    final l$name = name;
    final l$description = description;
    final l$logoUrl = logoUrl;
    final l$coverUrl = coverUrl;
    final l$webUrl = webUrl;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$organization = organization;
    final l$providerType = providerType;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$providerTypeId,
      l$organizationId,
      l$name,
      l$description,
      l$logoUrl,
      l$coverUrl,
      l$webUrl,
      l$data,
      l$createdAt,
      l$updatedAt,
      l$organization,
      l$providerType,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Provider || runtimeType != other.runtimeType) {
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
    final l$organizationId = organizationId;
    final lOther$organizationId = other.organizationId;
    if (l$organizationId != lOther$organizationId) {
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
    final l$logoUrl = logoUrl;
    final lOther$logoUrl = other.logoUrl;
    if (l$logoUrl != lOther$logoUrl) {
      return false;
    }
    final l$coverUrl = coverUrl;
    final lOther$coverUrl = other.coverUrl;
    if (l$coverUrl != lOther$coverUrl) {
      return false;
    }
    final l$webUrl = webUrl;
    final lOther$webUrl = other.webUrl;
    if (l$webUrl != lOther$webUrl) {
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
    final l$organization = organization;
    final lOther$organization = other.organization;
    if (l$organization != lOther$organization) {
      return false;
    }
    final l$providerType = providerType;
    final lOther$providerType = other.providerType;
    if (l$providerType != lOther$providerType) {
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
    String? organizationId,
    String? name,
    String? description,
    String? logoUrl,
    String? coverUrl,
    String? webUrl,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? updatedAt,
    Fragment$Organization? organization,
    Fragment$ProviderType? providerType,
    String? $__typename,
  });
  CopyWith$Fragment$Organization<TRes> get organization;
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
    Object? organizationId = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? logoUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? webUrl = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? organization = _undefined,
    Object? providerType = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Provider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        providerTypeId: providerTypeId == _undefined
            ? _instance.providerTypeId
            : (providerTypeId as String?),
        organizationId: organizationId == _undefined
            ? _instance.organizationId
            : (organizationId as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        logoUrl:
            logoUrl == _undefined ? _instance.logoUrl : (logoUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        webUrl: webUrl == _undefined ? _instance.webUrl : (webUrl as String?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        organization: organization == _undefined
            ? _instance.organization
            : (organization as Fragment$Organization?),
        providerType: providerType == _undefined
            ? _instance.providerType
            : (providerType as Fragment$ProviderType?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Organization<TRes> get organization {
    final local$organization = _instance.organization;
    return local$organization == null
        ? CopyWith$Fragment$Organization.stub(_then(_instance))
        : CopyWith$Fragment$Organization(
            local$organization, (e) => call(organization: e));
  }

  CopyWith$Fragment$ProviderType<TRes> get providerType {
    final local$providerType = _instance.providerType;
    return local$providerType == null
        ? CopyWith$Fragment$ProviderType.stub(_then(_instance))
        : CopyWith$Fragment$ProviderType(
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
    String? organizationId,
    String? name,
    String? description,
    String? logoUrl,
    String? coverUrl,
    String? webUrl,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? updatedAt,
    Fragment$Organization? organization,
    Fragment$ProviderType? providerType,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Organization<TRes> get organization =>
      CopyWith$Fragment$Organization.stub(_res);

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
      name: NameNode(value: 'organizationId'),
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
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'logoUrl'),
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
      name: NameNode(value: 'webUrl'),
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
      name: NameNode(value: 'organization'),
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
  fragmentDefinitionOrganization,
  fragmentDefinitionOrganizationType,
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

class Fragment$DeliveryLocation {
  Fragment$DeliveryLocation({
    required this.id,
    required this.name,
    required this.address,
    this.startOpenTime,
    this.endOpenTime,
    required this.providerId,
    this.deliveryPeriodId,
    this.$__typename = 'DeliveryLocation',
  });

  factory Fragment$DeliveryLocation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$address = json['address'];
    final l$startOpenTime = json['startOpenTime'];
    final l$endOpenTime = json['endOpenTime'];
    final l$providerId = json['providerId'];
    final l$deliveryPeriodId = json['deliveryPeriodId'];
    final l$$__typename = json['__typename'];
    return Fragment$DeliveryLocation(
      id: (l$id as String),
      name: (l$name as String),
      address: Fragment$DeliveryLocation$address.fromJson(
          (l$address as Map<String, dynamic>)),
      startOpenTime: (l$startOpenTime as dynamic?),
      endOpenTime: (l$endOpenTime as dynamic?),
      providerId: (l$providerId as String),
      deliveryPeriodId: (l$deliveryPeriodId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Fragment$DeliveryLocation$address address;

  final dynamic? startOpenTime;

  final dynamic? endOpenTime;

  final String providerId;

  final String? deliveryPeriodId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$address = address;
    _resultData['address'] = l$address.toJson();
    final l$startOpenTime = startOpenTime;
    _resultData['startOpenTime'] = l$startOpenTime;
    final l$endOpenTime = endOpenTime;
    _resultData['endOpenTime'] = l$endOpenTime;
    final l$providerId = providerId;
    _resultData['providerId'] = l$providerId;
    final l$deliveryPeriodId = deliveryPeriodId;
    _resultData['deliveryPeriodId'] = l$deliveryPeriodId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$address = address;
    final l$startOpenTime = startOpenTime;
    final l$endOpenTime = endOpenTime;
    final l$providerId = providerId;
    final l$deliveryPeriodId = deliveryPeriodId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$address,
      l$startOpenTime,
      l$endOpenTime,
      l$providerId,
      l$deliveryPeriodId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DeliveryLocation ||
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$startOpenTime = startOpenTime;
    final lOther$startOpenTime = other.startOpenTime;
    if (l$startOpenTime != lOther$startOpenTime) {
      return false;
    }
    final l$endOpenTime = endOpenTime;
    final lOther$endOpenTime = other.endOpenTime;
    if (l$endOpenTime != lOther$endOpenTime) {
      return false;
    }
    final l$providerId = providerId;
    final lOther$providerId = other.providerId;
    if (l$providerId != lOther$providerId) {
      return false;
    }
    final l$deliveryPeriodId = deliveryPeriodId;
    final lOther$deliveryPeriodId = other.deliveryPeriodId;
    if (l$deliveryPeriodId != lOther$deliveryPeriodId) {
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

extension UtilityExtension$Fragment$DeliveryLocation
    on Fragment$DeliveryLocation {
  CopyWith$Fragment$DeliveryLocation<Fragment$DeliveryLocation> get copyWith =>
      CopyWith$Fragment$DeliveryLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$DeliveryLocation<TRes> {
  factory CopyWith$Fragment$DeliveryLocation(
    Fragment$DeliveryLocation instance,
    TRes Function(Fragment$DeliveryLocation) then,
  ) = _CopyWithImpl$Fragment$DeliveryLocation;

  factory CopyWith$Fragment$DeliveryLocation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeliveryLocation;

  TRes call({
    String? id,
    String? name,
    Fragment$DeliveryLocation$address? address,
    dynamic? startOpenTime,
    dynamic? endOpenTime,
    String? providerId,
    String? deliveryPeriodId,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryLocation$address<TRes> get address;
}

class _CopyWithImpl$Fragment$DeliveryLocation<TRes>
    implements CopyWith$Fragment$DeliveryLocation<TRes> {
  _CopyWithImpl$Fragment$DeliveryLocation(
    this._instance,
    this._then,
  );

  final Fragment$DeliveryLocation _instance;

  final TRes Function(Fragment$DeliveryLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? address = _undefined,
    Object? startOpenTime = _undefined,
    Object? endOpenTime = _undefined,
    Object? providerId = _undefined,
    Object? deliveryPeriodId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DeliveryLocation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as Fragment$DeliveryLocation$address),
        startOpenTime: startOpenTime == _undefined
            ? _instance.startOpenTime
            : (startOpenTime as dynamic?),
        endOpenTime: endOpenTime == _undefined
            ? _instance.endOpenTime
            : (endOpenTime as dynamic?),
        providerId: providerId == _undefined || providerId == null
            ? _instance.providerId
            : (providerId as String),
        deliveryPeriodId: deliveryPeriodId == _undefined
            ? _instance.deliveryPeriodId
            : (deliveryPeriodId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryLocation$address<TRes> get address {
    final local$address = _instance.address;
    return CopyWith$Fragment$DeliveryLocation$address(
        local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Fragment$DeliveryLocation<TRes>
    implements CopyWith$Fragment$DeliveryLocation<TRes> {
  _CopyWithStubImpl$Fragment$DeliveryLocation(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Fragment$DeliveryLocation$address? address,
    dynamic? startOpenTime,
    dynamic? endOpenTime,
    String? providerId,
    String? deliveryPeriodId,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryLocation$address<TRes> get address =>
      CopyWith$Fragment$DeliveryLocation$address.stub(_res);
}

const fragmentDefinitionDeliveryLocation = FragmentDefinitionNode(
  name: NameNode(value: 'DeliveryLocation'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DeliveryLocation'),
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
      name: NameNode(value: 'address'),
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
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'startOpenTime'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'endOpenTime'),
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
      name: NameNode(value: 'deliveryPeriodId'),
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
const documentNodeFragmentDeliveryLocation = DocumentNode(definitions: [
  fragmentDefinitionDeliveryLocation,
]);

extension ClientExtension$Fragment$DeliveryLocation on graphql.GraphQLClient {
  void writeFragment$DeliveryLocation({
    required Fragment$DeliveryLocation data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'DeliveryLocation',
            document: documentNodeFragmentDeliveryLocation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$DeliveryLocation? readFragment$DeliveryLocation({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'DeliveryLocation',
          document: documentNodeFragmentDeliveryLocation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$DeliveryLocation.fromJson(result);
  }
}

class Fragment$DeliveryLocation$address {
  Fragment$DeliveryLocation$address({
    required this.id,
    required this.name,
    required this.address,
    this.address1,
    required this.city,
    required this.state,
    required this.zip,
    this.$__typename = 'Address',
  });

  factory Fragment$DeliveryLocation$address.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$address = json['address'];
    final l$address1 = json['address1'];
    final l$city = json['city'];
    final l$state = json['state'];
    final l$zip = json['zip'];
    final l$$__typename = json['__typename'];
    return Fragment$DeliveryLocation$address(
      id: (l$id as String),
      name: (l$name as String),
      address: (l$address as String),
      address1: (l$address1 as String?),
      city: (l$city as String),
      state: (l$state as String),
      zip: (l$zip as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String address;

  final String? address1;

  final String city;

  final String state;

  final String zip;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$address = address;
    final l$address1 = address1;
    final l$city = city;
    final l$state = state;
    final l$zip = zip;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$address,
      l$address1,
      l$city,
      l$state,
      l$zip,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$DeliveryLocation$address ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$DeliveryLocation$address
    on Fragment$DeliveryLocation$address {
  CopyWith$Fragment$DeliveryLocation$address<Fragment$DeliveryLocation$address>
      get copyWith => CopyWith$Fragment$DeliveryLocation$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$DeliveryLocation$address<TRes> {
  factory CopyWith$Fragment$DeliveryLocation$address(
    Fragment$DeliveryLocation$address instance,
    TRes Function(Fragment$DeliveryLocation$address) then,
  ) = _CopyWithImpl$Fragment$DeliveryLocation$address;

  factory CopyWith$Fragment$DeliveryLocation$address.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DeliveryLocation$address;

  TRes call({
    String? id,
    String? name,
    String? address,
    String? address1,
    String? city,
    String? state,
    String? zip,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$DeliveryLocation$address<TRes>
    implements CopyWith$Fragment$DeliveryLocation$address<TRes> {
  _CopyWithImpl$Fragment$DeliveryLocation$address(
    this._instance,
    this._then,
  );

  final Fragment$DeliveryLocation$address _instance;

  final TRes Function(Fragment$DeliveryLocation$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? address = _undefined,
    Object? address1 = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? zip = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$DeliveryLocation$address(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
        city: city == _undefined || city == null
            ? _instance.city
            : (city as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as String),
        zip: zip == _undefined || zip == null ? _instance.zip : (zip as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$DeliveryLocation$address<TRes>
    implements CopyWith$Fragment$DeliveryLocation$address<TRes> {
  _CopyWithStubImpl$Fragment$DeliveryLocation$address(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? address,
    String? address1,
    String? city,
    String? state,
    String? zip,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$ShoppingCart {
  Fragment$ShoppingCart({
    required this.id,
    required this.userId,
    this.orderId,
    this.shoppingCartItemsCollection,
    required this.createdAt,
    this.$__typename = 'ShoppingCarts',
  });

  factory Fragment$ShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$orderId = json['orderId'];
    final l$shoppingCartItemsCollection = json['shoppingCartItemsCollection'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCart(
      id: (l$id as String),
      userId: (l$userId as String),
      orderId: (l$orderId as String?),
      shoppingCartItemsCollection: l$shoppingCartItemsCollection == null
          ? null
          : Fragment$ShoppingCart$shoppingCartItemsCollection.fromJson(
              (l$shoppingCartItemsCollection as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String? orderId;

  final Fragment$ShoppingCart$shoppingCartItemsCollection?
      shoppingCartItemsCollection;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$orderId = orderId;
    _resultData['orderId'] = l$orderId;
    final l$shoppingCartItemsCollection = shoppingCartItemsCollection;
    _resultData['shoppingCartItemsCollection'] =
        l$shoppingCartItemsCollection?.toJson();
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
    final l$orderId = orderId;
    final l$shoppingCartItemsCollection = shoppingCartItemsCollection;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$orderId,
      l$shoppingCartItemsCollection,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ShoppingCart || runtimeType != other.runtimeType) {
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
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$shoppingCartItemsCollection = shoppingCartItemsCollection;
    final lOther$shoppingCartItemsCollection =
        other.shoppingCartItemsCollection;
    if (l$shoppingCartItemsCollection != lOther$shoppingCartItemsCollection) {
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
    String? orderId,
    Fragment$ShoppingCart$shoppingCartItemsCollection?
        shoppingCartItemsCollection,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes>
      get shoppingCartItemsCollection;
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
    Object? orderId = _undefined,
    Object? shoppingCartItemsCollection = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCart(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        orderId:
            orderId == _undefined ? _instance.orderId : (orderId as String?),
        shoppingCartItemsCollection: shoppingCartItemsCollection == _undefined
            ? _instance.shoppingCartItemsCollection
            : (shoppingCartItemsCollection
                as Fragment$ShoppingCart$shoppingCartItemsCollection?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes>
      get shoppingCartItemsCollection {
    final local$shoppingCartItemsCollection =
        _instance.shoppingCartItemsCollection;
    return local$shoppingCartItemsCollection == null
        ? CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection(
            local$shoppingCartItemsCollection,
            (e) => call(shoppingCartItemsCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCart<TRes>
    implements CopyWith$Fragment$ShoppingCart<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCart(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? orderId,
    Fragment$ShoppingCart$shoppingCartItemsCollection?
        shoppingCartItemsCollection,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes>
      get shoppingCartItemsCollection =>
          CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection.stub(_res);
}

const fragmentDefinitionShoppingCart = FragmentDefinitionNode(
  name: NameNode(value: 'ShoppingCart'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ShoppingCarts'),
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
      name: NameNode(value: 'orderId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'shoppingCartItemsCollection'),
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
                  name: NameNode(value: 'ShoppingCartItem'),
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
const documentNodeFragmentShoppingCart = DocumentNode(definitions: [
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Fragment$ShoppingCart$shoppingCartItemsCollection {
  Fragment$ShoppingCart$shoppingCartItemsCollection({
    required this.edges,
    this.$__typename = 'ShoppingCartItemsConnection',
  });

  factory Fragment$ShoppingCart$shoppingCartItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCart$shoppingCartItemsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCart$shoppingCartItemsCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCart$shoppingCartItemsCollection$edges> edges;

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
    if (other is! Fragment$ShoppingCart$shoppingCartItemsCollection ||
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

extension UtilityExtension$Fragment$ShoppingCart$shoppingCartItemsCollection
    on Fragment$ShoppingCart$shoppingCartItemsCollection {
  CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<
          Fragment$ShoppingCart$shoppingCartItemsCollection>
      get copyWith =>
          CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<
    TRes> {
  factory CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection(
    Fragment$ShoppingCart$shoppingCartItemsCollection instance,
    TRes Function(Fragment$ShoppingCart$shoppingCartItemsCollection) then,
  ) = _CopyWithImpl$Fragment$ShoppingCart$shoppingCartItemsCollection;

  factory CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartItemsCollection;

  TRes call({
    List<Fragment$ShoppingCart$shoppingCartItemsCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$ShoppingCart$shoppingCartItemsCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<
                      Fragment$ShoppingCart$shoppingCartItemsCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes> {
  _CopyWithImpl$Fragment$ShoppingCart$shoppingCartItemsCollection(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCart$shoppingCartItemsCollection _instance;

  final TRes Function(Fragment$ShoppingCart$shoppingCartItemsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCart$shoppingCartItemsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Fragment$ShoppingCart$shoppingCartItemsCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$ShoppingCart$shoppingCartItemsCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<
                          Fragment$ShoppingCart$shoppingCartItemsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartItemsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCart$shoppingCartItemsCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$ShoppingCart$shoppingCartItemsCollection$edges {
  Fragment$ShoppingCart$shoppingCartItemsCollection$edges({
    required this.node,
    this.$__typename = 'ShoppingCartItemsEdge',
  });

  factory Fragment$ShoppingCart$shoppingCartItemsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
      node:
          Fragment$ShoppingCartItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ShoppingCartItem node;

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
    if (other is! Fragment$ShoppingCart$shoppingCartItemsCollection$edges ||
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

extension UtilityExtension$Fragment$ShoppingCart$shoppingCartItemsCollection$edges
    on Fragment$ShoppingCart$shoppingCartItemsCollection$edges {
  CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<
          Fragment$ShoppingCart$shoppingCartItemsCollection$edges>
      get copyWith =>
          CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<
    TRes> {
  factory CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
    Fragment$ShoppingCart$shoppingCartItemsCollection$edges instance,
    TRes Function(Fragment$ShoppingCart$shoppingCartItemsCollection$edges) then,
  ) = _CopyWithImpl$Fragment$ShoppingCart$shoppingCartItemsCollection$edges;

  factory CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartItemsCollection$edges;

  TRes call({
    Fragment$ShoppingCartItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCartItem<TRes> get node;
}

class _CopyWithImpl$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<TRes> {
  _CopyWithImpl$Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$ShoppingCart$shoppingCartItemsCollection$edges _instance;

  final TRes Function(Fragment$ShoppingCart$shoppingCartItemsCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ShoppingCartItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCartItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ShoppingCartItem(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<
        TRes>
    implements
        CopyWith$Fragment$ShoppingCart$shoppingCartItemsCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$ShoppingCart$shoppingCartItemsCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ShoppingCartItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCartItem<TRes> get node =>
      CopyWith$Fragment$ShoppingCartItem.stub(_res);
}

class Fragment$OrderItem {
  Fragment$OrderItem({
    required this.id,
    this.productId,
    this.product,
    required this.orderId,
    required this.createdAt,
    required this.unitPrice,
    required this.quantity,
    this.$__typename = 'OrderItems',
  });

  factory Fragment$OrderItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$productId = json['productId'];
    final l$product = json['product'];
    final l$orderId = json['orderId'];
    final l$createdAt = json['createdAt'];
    final l$unitPrice = json['unitPrice'];
    final l$quantity = json['quantity'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderItem(
      id: (l$id as String),
      productId: (l$productId as String?),
      product: l$product == null
          ? null
          : Fragment$Product.fromJson((l$product as Map<String, dynamic>)),
      orderId: (l$orderId as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      unitPrice: (l$unitPrice as num).toDouble(),
      quantity: (l$quantity as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? productId;

  final Fragment$Product? product;

  final String orderId;

  final DateTime createdAt;

  final double unitPrice;

  final int quantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$orderId = orderId;
    _resultData['orderId'] = l$orderId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$unitPrice = unitPrice;
    _resultData['unitPrice'] = l$unitPrice;
    final l$quantity = quantity;
    _resultData['quantity'] = l$quantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$productId = productId;
    final l$product = product;
    final l$orderId = orderId;
    final l$createdAt = createdAt;
    final l$unitPrice = unitPrice;
    final l$quantity = quantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$productId,
      l$product,
      l$orderId,
      l$createdAt,
      l$unitPrice,
      l$quantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$OrderItem || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$unitPrice = unitPrice;
    final lOther$unitPrice = other.unitPrice;
    if (l$unitPrice != lOther$unitPrice) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
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
    String? productId,
    Fragment$Product? product,
    String? orderId,
    DateTime? createdAt,
    double? unitPrice,
    int? quantity,
    String? $__typename,
  });
  CopyWith$Fragment$Product<TRes> get product;
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
    Object? productId = _undefined,
    Object? product = _undefined,
    Object? orderId = _undefined,
    Object? createdAt = _undefined,
    Object? unitPrice = _undefined,
    Object? quantity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$OrderItem(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        productId: productId == _undefined
            ? _instance.productId
            : (productId as String?),
        product: product == _undefined
            ? _instance.product
            : (product as Fragment$Product?),
        orderId: orderId == _undefined || orderId == null
            ? _instance.orderId
            : (orderId as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        unitPrice: unitPrice == _undefined || unitPrice == null
            ? _instance.unitPrice
            : (unitPrice as double),
        quantity: quantity == _undefined || quantity == null
            ? _instance.quantity
            : (quantity as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Fragment$Product.stub(_then(_instance))
        : CopyWith$Fragment$Product(local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Fragment$OrderItem<TRes>
    implements CopyWith$Fragment$OrderItem<TRes> {
  _CopyWithStubImpl$Fragment$OrderItem(this._res);

  TRes _res;

  call({
    String? id,
    String? productId,
    Fragment$Product? product,
    String? orderId,
    DateTime? createdAt,
    double? unitPrice,
    int? quantity,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Product<TRes> get product =>
      CopyWith$Fragment$Product.stub(_res);
}

const fragmentDefinitionOrderItem = FragmentDefinitionNode(
  name: NameNode(value: 'OrderItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderItems'),
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
      name: NameNode(value: 'productId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'product'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Product'),
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
      name: NameNode(value: 'orderId'),
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
      name: NameNode(value: 'unitPrice'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'quantity'),
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
const documentNodeFragmentOrderItem = DocumentNode(definitions: [
  fragmentDefinitionOrderItem,
  fragmentDefinitionProduct,
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

class Fragment$OrderTransaction {
  Fragment$OrderTransaction({
    required this.id,
    required this.amount,
    required this.orderId,
    required this.ccLast4,
    required this.ccCard,
    required this.succeeded,
    this.error,
    this.payerTransactionId,
    required this.createdAt,
    this.$__typename = 'OrderTransactions',
  });

  factory Fragment$OrderTransaction.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$amount = json['amount'];
    final l$orderId = json['orderId'];
    final l$ccLast4 = json['ccLast4'];
    final l$ccCard = json['ccCard'];
    final l$succeeded = json['succeeded'];
    final l$error = json['error'];
    final l$payerTransactionId = json['payerTransactionId'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$OrderTransaction(
      id: (l$id as String),
      amount: (l$amount as num).toDouble(),
      orderId: (l$orderId as String),
      ccLast4: (l$ccLast4 as String),
      ccCard: (l$ccCard as String),
      succeeded: (l$succeeded as bool),
      error: (l$error as String?),
      payerTransactionId: (l$payerTransactionId as String?),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double amount;

  final String orderId;

  final String ccLast4;

  final String ccCard;

  final bool succeeded;

  final String? error;

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
    final l$ccLast4 = ccLast4;
    _resultData['ccLast4'] = l$ccLast4;
    final l$ccCard = ccCard;
    _resultData['ccCard'] = l$ccCard;
    final l$succeeded = succeeded;
    _resultData['succeeded'] = l$succeeded;
    final l$error = error;
    _resultData['error'] = l$error;
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
    final l$ccLast4 = ccLast4;
    final l$ccCard = ccCard;
    final l$succeeded = succeeded;
    final l$error = error;
    final l$payerTransactionId = payerTransactionId;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$amount,
      l$orderId,
      l$ccLast4,
      l$ccCard,
      l$succeeded,
      l$error,
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
    if (other is! Fragment$OrderTransaction ||
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
    final l$ccLast4 = ccLast4;
    final lOther$ccLast4 = other.ccLast4;
    if (l$ccLast4 != lOther$ccLast4) {
      return false;
    }
    final l$ccCard = ccCard;
    final lOther$ccCard = other.ccCard;
    if (l$ccCard != lOther$ccCard) {
      return false;
    }
    final l$succeeded = succeeded;
    final lOther$succeeded = other.succeeded;
    if (l$succeeded != lOther$succeeded) {
      return false;
    }
    final l$error = error;
    final lOther$error = other.error;
    if (l$error != lOther$error) {
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
    String? ccLast4,
    String? ccCard,
    bool? succeeded,
    String? error,
    String? payerTransactionId,
    DateTime? createdAt,
    String? $__typename,
  });
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
    Object? ccLast4 = _undefined,
    Object? ccCard = _undefined,
    Object? succeeded = _undefined,
    Object? error = _undefined,
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
        ccLast4: ccLast4 == _undefined || ccLast4 == null
            ? _instance.ccLast4
            : (ccLast4 as String),
        ccCard: ccCard == _undefined || ccCard == null
            ? _instance.ccCard
            : (ccCard as String),
        succeeded: succeeded == _undefined || succeeded == null
            ? _instance.succeeded
            : (succeeded as bool),
        error: error == _undefined ? _instance.error : (error as String?),
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
}

class _CopyWithStubImpl$Fragment$OrderTransaction<TRes>
    implements CopyWith$Fragment$OrderTransaction<TRes> {
  _CopyWithStubImpl$Fragment$OrderTransaction(this._res);

  TRes _res;

  call({
    String? id,
    double? amount,
    String? orderId,
    String? ccLast4,
    String? ccCard,
    bool? succeeded,
    String? error,
    String? payerTransactionId,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionOrderTransaction = FragmentDefinitionNode(
  name: NameNode(value: 'OrderTransaction'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'OrderTransactions'),
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
      name: NameNode(value: 'ccLast4'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'ccCard'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'succeeded'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'error'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
    required this.userId,
    required this.user,
    required this.orderStatus,
    this.orderItemsCollection,
    this.deliveryLocationId,
    this.deliveryLocation,
    this.orderTransactionsCollection,
    this.notes,
    this.updatedAt,
    required this.createdAt,
    this.$__typename = 'Orders',
  });

  factory Fragment$Order.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$user = json['user'];
    final l$orderStatus = json['orderStatus'];
    final l$orderItemsCollection = json['orderItemsCollection'];
    final l$deliveryLocationId = json['deliveryLocationId'];
    final l$deliveryLocation = json['deliveryLocation'];
    final l$orderTransactionsCollection = json['orderTransactionsCollection'];
    final l$notes = json['notes'];
    final l$updatedAt = json['updatedAt'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Order(
      id: (l$id as String),
      userId: (l$userId as String),
      user: Fragment$User.fromJson((l$user as Map<String, dynamic>)),
      orderStatus: fromJson$Enum$OrderStatus((l$orderStatus as String)),
      orderItemsCollection: l$orderItemsCollection == null
          ? null
          : Fragment$Order$orderItemsCollection.fromJson(
              (l$orderItemsCollection as Map<String, dynamic>)),
      deliveryLocationId: (l$deliveryLocationId as String?),
      deliveryLocation: l$deliveryLocation == null
          ? null
          : Fragment$DeliveryLocation.fromJson(
              (l$deliveryLocation as Map<String, dynamic>)),
      orderTransactionsCollection: l$orderTransactionsCollection == null
          ? null
          : Fragment$Order$orderTransactionsCollection.fromJson(
              (l$orderTransactionsCollection as Map<String, dynamic>)),
      notes: (l$notes as String?),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final Fragment$User user;

  final Enum$OrderStatus orderStatus;

  final Fragment$Order$orderItemsCollection? orderItemsCollection;

  final String? deliveryLocationId;

  final Fragment$DeliveryLocation? deliveryLocation;

  final Fragment$Order$orderTransactionsCollection? orderTransactionsCollection;

  final String? notes;

  final DateTime? updatedAt;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$orderStatus = orderStatus;
    _resultData['orderStatus'] = toJson$Enum$OrderStatus(l$orderStatus);
    final l$orderItemsCollection = orderItemsCollection;
    _resultData['orderItemsCollection'] = l$orderItemsCollection?.toJson();
    final l$deliveryLocationId = deliveryLocationId;
    _resultData['deliveryLocationId'] = l$deliveryLocationId;
    final l$deliveryLocation = deliveryLocation;
    _resultData['deliveryLocation'] = l$deliveryLocation?.toJson();
    final l$orderTransactionsCollection = orderTransactionsCollection;
    _resultData['orderTransactionsCollection'] =
        l$orderTransactionsCollection?.toJson();
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
    final l$userId = userId;
    final l$user = user;
    final l$orderStatus = orderStatus;
    final l$orderItemsCollection = orderItemsCollection;
    final l$deliveryLocationId = deliveryLocationId;
    final l$deliveryLocation = deliveryLocation;
    final l$orderTransactionsCollection = orderTransactionsCollection;
    final l$notes = notes;
    final l$updatedAt = updatedAt;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$user,
      l$orderStatus,
      l$orderItemsCollection,
      l$deliveryLocationId,
      l$deliveryLocation,
      l$orderTransactionsCollection,
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
    if (other is! Fragment$Order || runtimeType != other.runtimeType) {
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
    final l$orderStatus = orderStatus;
    final lOther$orderStatus = other.orderStatus;
    if (l$orderStatus != lOther$orderStatus) {
      return false;
    }
    final l$orderItemsCollection = orderItemsCollection;
    final lOther$orderItemsCollection = other.orderItemsCollection;
    if (l$orderItemsCollection != lOther$orderItemsCollection) {
      return false;
    }
    final l$deliveryLocationId = deliveryLocationId;
    final lOther$deliveryLocationId = other.deliveryLocationId;
    if (l$deliveryLocationId != lOther$deliveryLocationId) {
      return false;
    }
    final l$deliveryLocation = deliveryLocation;
    final lOther$deliveryLocation = other.deliveryLocation;
    if (l$deliveryLocation != lOther$deliveryLocation) {
      return false;
    }
    final l$orderTransactionsCollection = orderTransactionsCollection;
    final lOther$orderTransactionsCollection =
        other.orderTransactionsCollection;
    if (l$orderTransactionsCollection != lOther$orderTransactionsCollection) {
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
    String? userId,
    Fragment$User? user,
    Enum$OrderStatus? orderStatus,
    Fragment$Order$orderItemsCollection? orderItemsCollection,
    String? deliveryLocationId,
    Fragment$DeliveryLocation? deliveryLocation,
    Fragment$Order$orderTransactionsCollection? orderTransactionsCollection,
    String? notes,
    DateTime? updatedAt,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$User<TRes> get user;
  CopyWith$Fragment$Order$orderItemsCollection<TRes> get orderItemsCollection;
  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation;
  CopyWith$Fragment$Order$orderTransactionsCollection<TRes>
      get orderTransactionsCollection;
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
    Object? userId = _undefined,
    Object? user = _undefined,
    Object? orderStatus = _undefined,
    Object? orderItemsCollection = _undefined,
    Object? deliveryLocationId = _undefined,
    Object? deliveryLocation = _undefined,
    Object? orderTransactionsCollection = _undefined,
    Object? notes = _undefined,
    Object? updatedAt = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$User),
        orderStatus: orderStatus == _undefined || orderStatus == null
            ? _instance.orderStatus
            : (orderStatus as Enum$OrderStatus),
        orderItemsCollection: orderItemsCollection == _undefined
            ? _instance.orderItemsCollection
            : (orderItemsCollection as Fragment$Order$orderItemsCollection?),
        deliveryLocationId: deliveryLocationId == _undefined
            ? _instance.deliveryLocationId
            : (deliveryLocationId as String?),
        deliveryLocation: deliveryLocation == _undefined
            ? _instance.deliveryLocation
            : (deliveryLocation as Fragment$DeliveryLocation?),
        orderTransactionsCollection: orderTransactionsCollection == _undefined
            ? _instance.orderTransactionsCollection
            : (orderTransactionsCollection
                as Fragment$Order$orderTransactionsCollection?),
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

  CopyWith$Fragment$User<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$User(local$user, (e) => call(user: e));
  }

  CopyWith$Fragment$Order$orderItemsCollection<TRes> get orderItemsCollection {
    final local$orderItemsCollection = _instance.orderItemsCollection;
    return local$orderItemsCollection == null
        ? CopyWith$Fragment$Order$orderItemsCollection.stub(_then(_instance))
        : CopyWith$Fragment$Order$orderItemsCollection(
            local$orderItemsCollection, (e) => call(orderItemsCollection: e));
  }

  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation {
    final local$deliveryLocation = _instance.deliveryLocation;
    return local$deliveryLocation == null
        ? CopyWith$Fragment$DeliveryLocation.stub(_then(_instance))
        : CopyWith$Fragment$DeliveryLocation(
            local$deliveryLocation, (e) => call(deliveryLocation: e));
  }

  CopyWith$Fragment$Order$orderTransactionsCollection<TRes>
      get orderTransactionsCollection {
    final local$orderTransactionsCollection =
        _instance.orderTransactionsCollection;
    return local$orderTransactionsCollection == null
        ? CopyWith$Fragment$Order$orderTransactionsCollection.stub(
            _then(_instance))
        : CopyWith$Fragment$Order$orderTransactionsCollection(
            local$orderTransactionsCollection,
            (e) => call(orderTransactionsCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Order<TRes>
    implements CopyWith$Fragment$Order<TRes> {
  _CopyWithStubImpl$Fragment$Order(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    Fragment$User? user,
    Enum$OrderStatus? orderStatus,
    Fragment$Order$orderItemsCollection? orderItemsCollection,
    String? deliveryLocationId,
    Fragment$DeliveryLocation? deliveryLocation,
    Fragment$Order$orderTransactionsCollection? orderTransactionsCollection,
    String? notes,
    DateTime? updatedAt,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$User<TRes> get user => CopyWith$Fragment$User.stub(_res);

  CopyWith$Fragment$Order$orderItemsCollection<TRes> get orderItemsCollection =>
      CopyWith$Fragment$Order$orderItemsCollection.stub(_res);

  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation =>
      CopyWith$Fragment$DeliveryLocation.stub(_res);

  CopyWith$Fragment$Order$orderTransactionsCollection<TRes>
      get orderTransactionsCollection =>
          CopyWith$Fragment$Order$orderTransactionsCollection.stub(_res);
}

const fragmentDefinitionOrder = FragmentDefinitionNode(
  name: NameNode(value: 'Order'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Orders'),
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
      name: NameNode(value: 'orderStatus'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'orderItemsCollection'),
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
                  name: NameNode(value: 'OrderItem'),
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
      name: NameNode(value: 'deliveryLocationId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'deliveryLocation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'DeliveryLocation'),
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
      name: NameNode(value: 'orderTransactionsCollection'),
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
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
  fragmentDefinitionOrderItem,
  fragmentDefinitionDeliveryLocation,
  fragmentDefinitionOrderTransaction,
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

class Fragment$Order$orderItemsCollection {
  Fragment$Order$orderItemsCollection({
    required this.edges,
    this.$__typename = 'OrderItemsConnection',
  });

  factory Fragment$Order$orderItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Order$orderItemsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Order$orderItemsCollection$edges> edges;

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
    if (other is! Fragment$Order$orderItemsCollection ||
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

extension UtilityExtension$Fragment$Order$orderItemsCollection
    on Fragment$Order$orderItemsCollection {
  CopyWith$Fragment$Order$orderItemsCollection<
          Fragment$Order$orderItemsCollection>
      get copyWith => CopyWith$Fragment$Order$orderItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemsCollection<TRes> {
  factory CopyWith$Fragment$Order$orderItemsCollection(
    Fragment$Order$orderItemsCollection instance,
    TRes Function(Fragment$Order$orderItemsCollection) then,
  ) = _CopyWithImpl$Fragment$Order$orderItemsCollection;

  factory CopyWith$Fragment$Order$orderItemsCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemsCollection;

  TRes call({
    List<Fragment$Order$orderItemsCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$orderItemsCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$orderItemsCollection$edges<
                      Fragment$Order$orderItemsCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Fragment$Order$orderItemsCollection<TRes>
    implements CopyWith$Fragment$Order$orderItemsCollection<TRes> {
  _CopyWithImpl$Fragment$Order$orderItemsCollection(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemsCollection _instance;

  final TRes Function(Fragment$Order$orderItemsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderItemsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Order$orderItemsCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Order$orderItemsCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Order$orderItemsCollection$edges<
                          Fragment$Order$orderItemsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$Order$orderItemsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Order$orderItemsCollection<TRes>
    implements CopyWith$Fragment$Order$orderItemsCollection<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemsCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order$orderItemsCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Fragment$Order$orderItemsCollection$edges {
  Fragment$Order$orderItemsCollection$edges({
    required this.node,
    this.$__typename = 'OrderItemsEdge',
  });

  factory Fragment$Order$orderItemsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderItemsCollection$edges(
      node: Fragment$OrderItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$OrderItem node;

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
    if (other is! Fragment$Order$orderItemsCollection$edges ||
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

extension UtilityExtension$Fragment$Order$orderItemsCollection$edges
    on Fragment$Order$orderItemsCollection$edges {
  CopyWith$Fragment$Order$orderItemsCollection$edges<
          Fragment$Order$orderItemsCollection$edges>
      get copyWith => CopyWith$Fragment$Order$orderItemsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderItemsCollection$edges<TRes> {
  factory CopyWith$Fragment$Order$orderItemsCollection$edges(
    Fragment$Order$orderItemsCollection$edges instance,
    TRes Function(Fragment$Order$orderItemsCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Order$orderItemsCollection$edges;

  factory CopyWith$Fragment$Order$orderItemsCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderItemsCollection$edges;

  TRes call({
    Fragment$OrderItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderItem<TRes> get node;
}

class _CopyWithImpl$Fragment$Order$orderItemsCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderItemsCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Order$orderItemsCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderItemsCollection$edges _instance;

  final TRes Function(Fragment$Order$orderItemsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderItemsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$OrderItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$OrderItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$OrderItem(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderItemsCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderItemsCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderItemsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$OrderItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderItem<TRes> get node =>
      CopyWith$Fragment$OrderItem.stub(_res);
}

class Fragment$Order$orderTransactionsCollection {
  Fragment$Order$orderTransactionsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderTransactionsConnection',
  });

  factory Fragment$Order$orderTransactionsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderTransactionsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Order$orderTransactionsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$Order$orderTransactionsCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Order$orderTransactionsCollection$edges> edges;

  final Fragment$Order$orderTransactionsCollection$pageInfo pageInfo;

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
    if (other is! Fragment$Order$orderTransactionsCollection ||
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

extension UtilityExtension$Fragment$Order$orderTransactionsCollection
    on Fragment$Order$orderTransactionsCollection {
  CopyWith$Fragment$Order$orderTransactionsCollection<
          Fragment$Order$orderTransactionsCollection>
      get copyWith => CopyWith$Fragment$Order$orderTransactionsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderTransactionsCollection<TRes> {
  factory CopyWith$Fragment$Order$orderTransactionsCollection(
    Fragment$Order$orderTransactionsCollection instance,
    TRes Function(Fragment$Order$orderTransactionsCollection) then,
  ) = _CopyWithImpl$Fragment$Order$orderTransactionsCollection;

  factory CopyWith$Fragment$Order$orderTransactionsCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection;

  TRes call({
    List<Fragment$Order$orderTransactionsCollection$edges>? edges,
    Fragment$Order$orderTransactionsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Order$orderTransactionsCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Order$orderTransactionsCollection$edges<
                      Fragment$Order$orderTransactionsCollection$edges>>)
          _fn);
  CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Fragment$Order$orderTransactionsCollection<TRes>
    implements CopyWith$Fragment$Order$orderTransactionsCollection<TRes> {
  _CopyWithImpl$Fragment$Order$orderTransactionsCollection(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderTransactionsCollection _instance;

  final TRes Function(Fragment$Order$orderTransactionsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderTransactionsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Order$orderTransactionsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$Order$orderTransactionsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Order$orderTransactionsCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Order$orderTransactionsCollection$edges<
                          Fragment$Order$orderTransactionsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Fragment$Order$orderTransactionsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection<TRes>
    implements CopyWith$Fragment$Order$orderTransactionsCollection<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order$orderTransactionsCollection$edges>? edges,
    Fragment$Order$orderTransactionsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo.stub(
              _res);
}

class Fragment$Order$orderTransactionsCollection$edges {
  Fragment$Order$orderTransactionsCollection$edges({
    required this.node,
    this.$__typename = 'OrderTransactionsEdge',
  });

  factory Fragment$Order$orderTransactionsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderTransactionsCollection$edges(
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
    if (other is! Fragment$Order$orderTransactionsCollection$edges ||
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

extension UtilityExtension$Fragment$Order$orderTransactionsCollection$edges
    on Fragment$Order$orderTransactionsCollection$edges {
  CopyWith$Fragment$Order$orderTransactionsCollection$edges<
          Fragment$Order$orderTransactionsCollection$edges>
      get copyWith => CopyWith$Fragment$Order$orderTransactionsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderTransactionsCollection$edges<TRes> {
  factory CopyWith$Fragment$Order$orderTransactionsCollection$edges(
    Fragment$Order$orderTransactionsCollection$edges instance,
    TRes Function(Fragment$Order$orderTransactionsCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Order$orderTransactionsCollection$edges;

  factory CopyWith$Fragment$Order$orderTransactionsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection$edges;

  TRes call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderTransaction<TRes> get node;
}

class _CopyWithImpl$Fragment$Order$orderTransactionsCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderTransactionsCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Order$orderTransactionsCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderTransactionsCollection$edges _instance;

  final TRes Function(Fragment$Order$orderTransactionsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderTransactionsCollection$edges(
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

class _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection$edges<TRes>
    implements CopyWith$Fragment$Order$orderTransactionsCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$OrderTransaction<TRes> get node =>
      CopyWith$Fragment$OrderTransaction.stub(_res);
}

class Fragment$Order$orderTransactionsCollection$pageInfo {
  Fragment$Order$orderTransactionsCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$Order$orderTransactionsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$Order$orderTransactionsCollection$pageInfo(
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
    if (other is! Fragment$Order$orderTransactionsCollection$pageInfo ||
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

extension UtilityExtension$Fragment$Order$orderTransactionsCollection$pageInfo
    on Fragment$Order$orderTransactionsCollection$pageInfo {
  CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<
          Fragment$Order$orderTransactionsCollection$pageInfo>
      get copyWith =>
          CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<
    TRes> {
  factory CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo(
    Fragment$Order$orderTransactionsCollection$pageInfo instance,
    TRes Function(Fragment$Order$orderTransactionsCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$Order$orderTransactionsCollection$pageInfo;

  factory CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Order$orderTransactionsCollection$pageInfo<TRes>
    implements
        CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$Order$orderTransactionsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$Order$orderTransactionsCollection$pageInfo _instance;

  final TRes Function(Fragment$Order$orderTransactionsCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Order$orderTransactionsCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Fragment$Order$orderTransactionsCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$Order$orderTransactionsCollection$pageInfo(
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

class Fragment$SiteDeliveryLocation {
  Fragment$SiteDeliveryLocation({
    required this.id,
    required this.siteId,
    required this.site,
    required this.deliveryLocationId,
    required this.createdAt,
    required this.deliveryLocation,
    this.$__typename = 'SiteDeliveryLocation',
  });

  factory Fragment$SiteDeliveryLocation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$siteId = json['siteId'];
    final l$site = json['site'];
    final l$deliveryLocationId = json['deliveryLocationId'];
    final l$createdAt = json['createdAt'];
    final l$deliveryLocation = json['deliveryLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$SiteDeliveryLocation(
      id: (l$id as String),
      siteId: (l$siteId as String),
      site: Fragment$SiteDeliveryLocation$site.fromJson(
          (l$site as Map<String, dynamic>)),
      deliveryLocationId: (l$deliveryLocationId as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      deliveryLocation: Fragment$DeliveryLocation.fromJson(
          (l$deliveryLocation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String siteId;

  final Fragment$SiteDeliveryLocation$site site;

  final String deliveryLocationId;

  final DateTime createdAt;

  final Fragment$DeliveryLocation deliveryLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$site = site;
    _resultData['site'] = l$site.toJson();
    final l$deliveryLocationId = deliveryLocationId;
    _resultData['deliveryLocationId'] = l$deliveryLocationId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$deliveryLocation = deliveryLocation;
    _resultData['deliveryLocation'] = l$deliveryLocation.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$siteId = siteId;
    final l$site = site;
    final l$deliveryLocationId = deliveryLocationId;
    final l$createdAt = createdAt;
    final l$deliveryLocation = deliveryLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$siteId,
      l$site,
      l$deliveryLocationId,
      l$createdAt,
      l$deliveryLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SiteDeliveryLocation ||
        runtimeType != other.runtimeType) {
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
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
      return false;
    }
    final l$deliveryLocationId = deliveryLocationId;
    final lOther$deliveryLocationId = other.deliveryLocationId;
    if (l$deliveryLocationId != lOther$deliveryLocationId) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$deliveryLocation = deliveryLocation;
    final lOther$deliveryLocation = other.deliveryLocation;
    if (l$deliveryLocation != lOther$deliveryLocation) {
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

extension UtilityExtension$Fragment$SiteDeliveryLocation
    on Fragment$SiteDeliveryLocation {
  CopyWith$Fragment$SiteDeliveryLocation<Fragment$SiteDeliveryLocation>
      get copyWith => CopyWith$Fragment$SiteDeliveryLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SiteDeliveryLocation<TRes> {
  factory CopyWith$Fragment$SiteDeliveryLocation(
    Fragment$SiteDeliveryLocation instance,
    TRes Function(Fragment$SiteDeliveryLocation) then,
  ) = _CopyWithImpl$Fragment$SiteDeliveryLocation;

  factory CopyWith$Fragment$SiteDeliveryLocation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SiteDeliveryLocation;

  TRes call({
    String? id,
    String? siteId,
    Fragment$SiteDeliveryLocation$site? site,
    String? deliveryLocationId,
    DateTime? createdAt,
    Fragment$DeliveryLocation? deliveryLocation,
    String? $__typename,
  });
  CopyWith$Fragment$SiteDeliveryLocation$site<TRes> get site;
  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation;
}

class _CopyWithImpl$Fragment$SiteDeliveryLocation<TRes>
    implements CopyWith$Fragment$SiteDeliveryLocation<TRes> {
  _CopyWithImpl$Fragment$SiteDeliveryLocation(
    this._instance,
    this._then,
  );

  final Fragment$SiteDeliveryLocation _instance;

  final TRes Function(Fragment$SiteDeliveryLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? siteId = _undefined,
    Object? site = _undefined,
    Object? deliveryLocationId = _undefined,
    Object? createdAt = _undefined,
    Object? deliveryLocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SiteDeliveryLocation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        siteId: siteId == _undefined || siteId == null
            ? _instance.siteId
            : (siteId as String),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as Fragment$SiteDeliveryLocation$site),
        deliveryLocationId:
            deliveryLocationId == _undefined || deliveryLocationId == null
                ? _instance.deliveryLocationId
                : (deliveryLocationId as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        deliveryLocation:
            deliveryLocation == _undefined || deliveryLocation == null
                ? _instance.deliveryLocation
                : (deliveryLocation as Fragment$DeliveryLocation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SiteDeliveryLocation$site<TRes> get site {
    final local$site = _instance.site;
    return CopyWith$Fragment$SiteDeliveryLocation$site(
        local$site, (e) => call(site: e));
  }

  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation {
    final local$deliveryLocation = _instance.deliveryLocation;
    return CopyWith$Fragment$DeliveryLocation(
        local$deliveryLocation, (e) => call(deliveryLocation: e));
  }
}

class _CopyWithStubImpl$Fragment$SiteDeliveryLocation<TRes>
    implements CopyWith$Fragment$SiteDeliveryLocation<TRes> {
  _CopyWithStubImpl$Fragment$SiteDeliveryLocation(this._res);

  TRes _res;

  call({
    String? id,
    String? siteId,
    Fragment$SiteDeliveryLocation$site? site,
    String? deliveryLocationId,
    DateTime? createdAt,
    Fragment$DeliveryLocation? deliveryLocation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SiteDeliveryLocation$site<TRes> get site =>
      CopyWith$Fragment$SiteDeliveryLocation$site.stub(_res);

  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation =>
      CopyWith$Fragment$DeliveryLocation.stub(_res);
}

const fragmentDefinitionSiteDeliveryLocation = FragmentDefinitionNode(
  name: NameNode(value: 'SiteDeliveryLocation'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'SiteDeliveryLocation'),
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
      name: NameNode(value: 'site'),
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
      name: NameNode(value: 'deliveryLocationId'),
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
      name: NameNode(value: 'deliveryLocation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'DeliveryLocation'),
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
const documentNodeFragmentSiteDeliveryLocation = DocumentNode(definitions: [
  fragmentDefinitionSiteDeliveryLocation,
  fragmentDefinitionDeliveryLocation,
]);

extension ClientExtension$Fragment$SiteDeliveryLocation
    on graphql.GraphQLClient {
  void writeFragment$SiteDeliveryLocation({
    required Fragment$SiteDeliveryLocation data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'SiteDeliveryLocation',
            document: documentNodeFragmentSiteDeliveryLocation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$SiteDeliveryLocation? readFragment$SiteDeliveryLocation({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'SiteDeliveryLocation',
          document: documentNodeFragmentSiteDeliveryLocation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$SiteDeliveryLocation.fromJson(result);
  }
}

class Fragment$SiteDeliveryLocation$site {
  Fragment$SiteDeliveryLocation$site({
    required this.id,
    required this.name,
    this.addressId,
    this.address,
    this.$__typename = 'Site',
  });

  factory Fragment$SiteDeliveryLocation$site.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$addressId = json['addressId'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$SiteDeliveryLocation$site(
      id: (l$id as String),
      name: (l$name as String),
      addressId: (l$addressId as String?),
      address: l$address == null
          ? null
          : Fragment$SiteDeliveryLocation$site$address.fromJson(
              (l$address as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? addressId;

  final Fragment$SiteDeliveryLocation$site$address? address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$addressId = addressId;
    _resultData['addressId'] = l$addressId;
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$addressId = addressId;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$addressId,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SiteDeliveryLocation$site ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$SiteDeliveryLocation$site
    on Fragment$SiteDeliveryLocation$site {
  CopyWith$Fragment$SiteDeliveryLocation$site<
          Fragment$SiteDeliveryLocation$site>
      get copyWith => CopyWith$Fragment$SiteDeliveryLocation$site(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SiteDeliveryLocation$site<TRes> {
  factory CopyWith$Fragment$SiteDeliveryLocation$site(
    Fragment$SiteDeliveryLocation$site instance,
    TRes Function(Fragment$SiteDeliveryLocation$site) then,
  ) = _CopyWithImpl$Fragment$SiteDeliveryLocation$site;

  factory CopyWith$Fragment$SiteDeliveryLocation$site.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SiteDeliveryLocation$site;

  TRes call({
    String? id,
    String? name,
    String? addressId,
    Fragment$SiteDeliveryLocation$site$address? address,
    String? $__typename,
  });
  CopyWith$Fragment$SiteDeliveryLocation$site$address<TRes> get address;
}

class _CopyWithImpl$Fragment$SiteDeliveryLocation$site<TRes>
    implements CopyWith$Fragment$SiteDeliveryLocation$site<TRes> {
  _CopyWithImpl$Fragment$SiteDeliveryLocation$site(
    this._instance,
    this._then,
  );

  final Fragment$SiteDeliveryLocation$site _instance;

  final TRes Function(Fragment$SiteDeliveryLocation$site) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? addressId = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SiteDeliveryLocation$site(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        addressId: addressId == _undefined
            ? _instance.addressId
            : (addressId as String?),
        address: address == _undefined
            ? _instance.address
            : (address as Fragment$SiteDeliveryLocation$site$address?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SiteDeliveryLocation$site$address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Fragment$SiteDeliveryLocation$site$address.stub(
            _then(_instance))
        : CopyWith$Fragment$SiteDeliveryLocation$site$address(
            local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Fragment$SiteDeliveryLocation$site<TRes>
    implements CopyWith$Fragment$SiteDeliveryLocation$site<TRes> {
  _CopyWithStubImpl$Fragment$SiteDeliveryLocation$site(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? addressId,
    Fragment$SiteDeliveryLocation$site$address? address,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SiteDeliveryLocation$site$address<TRes> get address =>
      CopyWith$Fragment$SiteDeliveryLocation$site$address.stub(_res);
}

class Fragment$SiteDeliveryLocation$site$address {
  Fragment$SiteDeliveryLocation$site$address({
    required this.id,
    required this.name,
    required this.address,
    this.address1,
    required this.city,
    required this.state,
    required this.zip,
    this.$__typename = 'Address',
  });

  factory Fragment$SiteDeliveryLocation$site$address.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$address = json['address'];
    final l$address1 = json['address1'];
    final l$city = json['city'];
    final l$state = json['state'];
    final l$zip = json['zip'];
    final l$$__typename = json['__typename'];
    return Fragment$SiteDeliveryLocation$site$address(
      id: (l$id as String),
      name: (l$name as String),
      address: (l$address as String),
      address1: (l$address1 as String?),
      city: (l$city as String),
      state: (l$state as String),
      zip: (l$zip as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String address;

  final String? address1;

  final String city;

  final String state;

  final String zip;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
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
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$address = address;
    final l$address1 = address1;
    final l$city = city;
    final l$state = state;
    final l$zip = zip;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$address,
      l$address1,
      l$city,
      l$state,
      l$zip,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$SiteDeliveryLocation$site$address ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$SiteDeliveryLocation$site$address
    on Fragment$SiteDeliveryLocation$site$address {
  CopyWith$Fragment$SiteDeliveryLocation$site$address<
          Fragment$SiteDeliveryLocation$site$address>
      get copyWith => CopyWith$Fragment$SiteDeliveryLocation$site$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$SiteDeliveryLocation$site$address<TRes> {
  factory CopyWith$Fragment$SiteDeliveryLocation$site$address(
    Fragment$SiteDeliveryLocation$site$address instance,
    TRes Function(Fragment$SiteDeliveryLocation$site$address) then,
  ) = _CopyWithImpl$Fragment$SiteDeliveryLocation$site$address;

  factory CopyWith$Fragment$SiteDeliveryLocation$site$address.stub(TRes res) =
      _CopyWithStubImpl$Fragment$SiteDeliveryLocation$site$address;

  TRes call({
    String? id,
    String? name,
    String? address,
    String? address1,
    String? city,
    String? state,
    String? zip,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$SiteDeliveryLocation$site$address<TRes>
    implements CopyWith$Fragment$SiteDeliveryLocation$site$address<TRes> {
  _CopyWithImpl$Fragment$SiteDeliveryLocation$site$address(
    this._instance,
    this._then,
  );

  final Fragment$SiteDeliveryLocation$site$address _instance;

  final TRes Function(Fragment$SiteDeliveryLocation$site$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? address = _undefined,
    Object? address1 = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? zip = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$SiteDeliveryLocation$site$address(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        address1:
            address1 == _undefined ? _instance.address1 : (address1 as String?),
        city: city == _undefined || city == null
            ? _instance.city
            : (city as String),
        state: state == _undefined || state == null
            ? _instance.state
            : (state as String),
        zip: zip == _undefined || zip == null ? _instance.zip : (zip as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$SiteDeliveryLocation$site$address<TRes>
    implements CopyWith$Fragment$SiteDeliveryLocation$site$address<TRes> {
  _CopyWithStubImpl$Fragment$SiteDeliveryLocation$site$address(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? address,
    String? address1,
    String? city,
    String? state,
    String? zip,
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
    if (other is! Variables$Query$Order || runtimeType != other.runtimeType) {
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
    this.ordersCollection,
    this.$__typename = 'Query',
  });

  factory Query$Order.fromJson(Map<String, dynamic> json) {
    final l$ordersCollection = json['ordersCollection'];
    final l$$__typename = json['__typename'];
    return Query$Order(
      ordersCollection: l$ordersCollection == null
          ? null
          : Query$Order$ordersCollection.fromJson(
              (l$ordersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Order$ordersCollection? ordersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ordersCollection = ordersCollection;
    _resultData['ordersCollection'] = l$ordersCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ordersCollection = ordersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ordersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Order || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ordersCollection = ordersCollection;
    final lOther$ordersCollection = other.ordersCollection;
    if (l$ordersCollection != lOther$ordersCollection) {
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
    Query$Order$ordersCollection? ordersCollection,
    String? $__typename,
  });
  CopyWith$Query$Order$ordersCollection<TRes> get ordersCollection;
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
    Object? ordersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Order(
        ordersCollection: ordersCollection == _undefined
            ? _instance.ordersCollection
            : (ordersCollection as Query$Order$ordersCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Order$ordersCollection<TRes> get ordersCollection {
    final local$ordersCollection = _instance.ordersCollection;
    return local$ordersCollection == null
        ? CopyWith$Query$Order$ordersCollection.stub(_then(_instance))
        : CopyWith$Query$Order$ordersCollection(
            local$ordersCollection, (e) => call(ordersCollection: e));
  }
}

class _CopyWithStubImpl$Query$Order<TRes>
    implements CopyWith$Query$Order<TRes> {
  _CopyWithStubImpl$Query$Order(this._res);

  TRes _res;

  call({
    Query$Order$ordersCollection? ordersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Order$ordersCollection<TRes> get ordersCollection =>
      CopyWith$Query$Order$ordersCollection.stub(_res);
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
        name: NameNode(value: 'ordersCollection'),
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
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
  fragmentDefinitionOrderItem,
  fragmentDefinitionDeliveryLocation,
  fragmentDefinitionOrderTransaction,
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

class Query$Order$ordersCollection {
  Query$Order$ordersCollection({
    required this.edges,
    this.$__typename = 'OrdersConnection',
  });

  factory Query$Order$ordersCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Order$ordersCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Order$ordersCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Order$ordersCollection$edges> edges;

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
    if (other is! Query$Order$ordersCollection ||
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

extension UtilityExtension$Query$Order$ordersCollection
    on Query$Order$ordersCollection {
  CopyWith$Query$Order$ordersCollection<Query$Order$ordersCollection>
      get copyWith => CopyWith$Query$Order$ordersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Order$ordersCollection<TRes> {
  factory CopyWith$Query$Order$ordersCollection(
    Query$Order$ordersCollection instance,
    TRes Function(Query$Order$ordersCollection) then,
  ) = _CopyWithImpl$Query$Order$ordersCollection;

  factory CopyWith$Query$Order$ordersCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Order$ordersCollection;

  TRes call({
    List<Query$Order$ordersCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Order$ordersCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Order$ordersCollection$edges<
                      Query$Order$ordersCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Order$ordersCollection<TRes>
    implements CopyWith$Query$Order$ordersCollection<TRes> {
  _CopyWithImpl$Query$Order$ordersCollection(
    this._instance,
    this._then,
  );

  final Query$Order$ordersCollection _instance;

  final TRes Function(Query$Order$ordersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Order$ordersCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Order$ordersCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Order$ordersCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Order$ordersCollection$edges<
                          Query$Order$ordersCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Order$ordersCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Order$ordersCollection<TRes>
    implements CopyWith$Query$Order$ordersCollection<TRes> {
  _CopyWithStubImpl$Query$Order$ordersCollection(this._res);

  TRes _res;

  call({
    List<Query$Order$ordersCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Order$ordersCollection$edges {
  Query$Order$ordersCollection$edges({
    required this.node,
    this.$__typename = 'OrdersEdge',
  });

  factory Query$Order$ordersCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Order$ordersCollection$edges(
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
    if (other is! Query$Order$ordersCollection$edges ||
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

extension UtilityExtension$Query$Order$ordersCollection$edges
    on Query$Order$ordersCollection$edges {
  CopyWith$Query$Order$ordersCollection$edges<
          Query$Order$ordersCollection$edges>
      get copyWith => CopyWith$Query$Order$ordersCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Order$ordersCollection$edges<TRes> {
  factory CopyWith$Query$Order$ordersCollection$edges(
    Query$Order$ordersCollection$edges instance,
    TRes Function(Query$Order$ordersCollection$edges) then,
  ) = _CopyWithImpl$Query$Order$ordersCollection$edges;

  factory CopyWith$Query$Order$ordersCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Order$ordersCollection$edges;

  TRes call({
    Fragment$Order? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order<TRes> get node;
}

class _CopyWithImpl$Query$Order$ordersCollection$edges<TRes>
    implements CopyWith$Query$Order$ordersCollection$edges<TRes> {
  _CopyWithImpl$Query$Order$ordersCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Order$ordersCollection$edges _instance;

  final TRes Function(Query$Order$ordersCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Order$ordersCollection$edges(
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

class _CopyWithStubImpl$Query$Order$ordersCollection$edges<TRes>
    implements CopyWith$Query$Order$ordersCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Order$ordersCollection$edges(this._res);

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
    Input$OrdersFilter? filter,
    List<Input$OrdersOrderBy>? orderBy,
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
          : Input$OrdersFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map(
              (e) => Input$OrdersOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$OrderCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$OrdersFilter? get filter => (_$data['filter'] as Input$OrdersFilter?);

  List<Input$OrdersOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$OrdersOrderBy>?);

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
    if (other is! Variables$Query$OrderCollection ||
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
    Input$OrdersFilter? filter,
    List<Input$OrdersOrderBy>? orderBy,
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
        if (filter != _undefined) 'filter': (filter as Input$OrdersFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$OrdersOrderBy>?),
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
    Input$OrdersFilter? filter,
    List<Input$OrdersOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$OrderCollection {
  Query$OrderCollection({
    this.ordersCollection,
    this.$__typename = 'Query',
  });

  factory Query$OrderCollection.fromJson(Map<String, dynamic> json) {
    final l$ordersCollection = json['ordersCollection'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection(
      ordersCollection: l$ordersCollection == null
          ? null
          : Query$OrderCollection$ordersCollection.fromJson(
              (l$ordersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderCollection$ordersCollection? ordersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$ordersCollection = ordersCollection;
    _resultData['ordersCollection'] = l$ordersCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$ordersCollection = ordersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$ordersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderCollection || runtimeType != other.runtimeType) {
      return false;
    }
    final l$ordersCollection = ordersCollection;
    final lOther$ordersCollection = other.ordersCollection;
    if (l$ordersCollection != lOther$ordersCollection) {
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
    Query$OrderCollection$ordersCollection? ordersCollection,
    String? $__typename,
  });
  CopyWith$Query$OrderCollection$ordersCollection<TRes> get ordersCollection;
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
    Object? ordersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection(
        ordersCollection: ordersCollection == _undefined
            ? _instance.ordersCollection
            : (ordersCollection as Query$OrderCollection$ordersCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$OrderCollection$ordersCollection<TRes> get ordersCollection {
    final local$ordersCollection = _instance.ordersCollection;
    return local$ordersCollection == null
        ? CopyWith$Query$OrderCollection$ordersCollection.stub(_then(_instance))
        : CopyWith$Query$OrderCollection$ordersCollection(
            local$ordersCollection, (e) => call(ordersCollection: e));
  }
}

class _CopyWithStubImpl$Query$OrderCollection<TRes>
    implements CopyWith$Query$OrderCollection<TRes> {
  _CopyWithStubImpl$Query$OrderCollection(this._res);

  TRes _res;

  call({
    Query$OrderCollection$ordersCollection? ordersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$OrderCollection$ordersCollection<TRes> get ordersCollection =>
      CopyWith$Query$OrderCollection$ordersCollection.stub(_res);
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
          name: NameNode(value: 'OrdersFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'OrdersOrderBy'),
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
        name: NameNode(value: 'ordersCollection'),
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
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
  fragmentDefinitionOrderItem,
  fragmentDefinitionDeliveryLocation,
  fragmentDefinitionOrderTransaction,
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

class Query$OrderCollection$ordersCollection {
  Query$OrderCollection$ordersCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrdersConnection',
  });

  factory Query$OrderCollection$ordersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection$ordersCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$OrderCollection$ordersCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$OrderCollection$ordersCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$OrderCollection$ordersCollection$edges> edges;

  final Query$OrderCollection$ordersCollection$pageInfo pageInfo;

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
    if (other is! Query$OrderCollection$ordersCollection ||
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

extension UtilityExtension$Query$OrderCollection$ordersCollection
    on Query$OrderCollection$ordersCollection {
  CopyWith$Query$OrderCollection$ordersCollection<
          Query$OrderCollection$ordersCollection>
      get copyWith => CopyWith$Query$OrderCollection$ordersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderCollection$ordersCollection<TRes> {
  factory CopyWith$Query$OrderCollection$ordersCollection(
    Query$OrderCollection$ordersCollection instance,
    TRes Function(Query$OrderCollection$ordersCollection) then,
  ) = _CopyWithImpl$Query$OrderCollection$ordersCollection;

  factory CopyWith$Query$OrderCollection$ordersCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderCollection$ordersCollection;

  TRes call({
    List<Query$OrderCollection$ordersCollection$edges>? edges,
    Query$OrderCollection$ordersCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$OrderCollection$ordersCollection$edges> Function(
              Iterable<
                  CopyWith$Query$OrderCollection$ordersCollection$edges<
                      Query$OrderCollection$ordersCollection$edges>>)
          _fn);
  CopyWith$Query$OrderCollection$ordersCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$OrderCollection$ordersCollection<TRes>
    implements CopyWith$Query$OrderCollection$ordersCollection<TRes> {
  _CopyWithImpl$Query$OrderCollection$ordersCollection(
    this._instance,
    this._then,
  );

  final Query$OrderCollection$ordersCollection _instance;

  final TRes Function(Query$OrderCollection$ordersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection$ordersCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$OrderCollection$ordersCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$OrderCollection$ordersCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$OrderCollection$ordersCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$OrderCollection$ordersCollection$edges<
                          Query$OrderCollection$ordersCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$OrderCollection$ordersCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$OrderCollection$ordersCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderCollection$ordersCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$OrderCollection$ordersCollection<TRes>
    implements CopyWith$Query$OrderCollection$ordersCollection<TRes> {
  _CopyWithStubImpl$Query$OrderCollection$ordersCollection(this._res);

  TRes _res;

  call({
    List<Query$OrderCollection$ordersCollection$edges>? edges,
    Query$OrderCollection$ordersCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$OrderCollection$ordersCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$OrderCollection$ordersCollection$pageInfo.stub(_res);
}

class Query$OrderCollection$ordersCollection$edges {
  Query$OrderCollection$ordersCollection$edges({
    required this.node,
    this.$__typename = 'OrdersEdge',
  });

  factory Query$OrderCollection$ordersCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection$ordersCollection$edges(
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
    if (other is! Query$OrderCollection$ordersCollection$edges ||
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

extension UtilityExtension$Query$OrderCollection$ordersCollection$edges
    on Query$OrderCollection$ordersCollection$edges {
  CopyWith$Query$OrderCollection$ordersCollection$edges<
          Query$OrderCollection$ordersCollection$edges>
      get copyWith => CopyWith$Query$OrderCollection$ordersCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderCollection$ordersCollection$edges<TRes> {
  factory CopyWith$Query$OrderCollection$ordersCollection$edges(
    Query$OrderCollection$ordersCollection$edges instance,
    TRes Function(Query$OrderCollection$ordersCollection$edges) then,
  ) = _CopyWithImpl$Query$OrderCollection$ordersCollection$edges;

  factory CopyWith$Query$OrderCollection$ordersCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$OrderCollection$ordersCollection$edges;

  TRes call({
    Fragment$Order? node,
    String? $__typename,
  });
  CopyWith$Fragment$Order<TRes> get node;
}

class _CopyWithImpl$Query$OrderCollection$ordersCollection$edges<TRes>
    implements CopyWith$Query$OrderCollection$ordersCollection$edges<TRes> {
  _CopyWithImpl$Query$OrderCollection$ordersCollection$edges(
    this._instance,
    this._then,
  );

  final Query$OrderCollection$ordersCollection$edges _instance;

  final TRes Function(Query$OrderCollection$ordersCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection$ordersCollection$edges(
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

class _CopyWithStubImpl$Query$OrderCollection$ordersCollection$edges<TRes>
    implements CopyWith$Query$OrderCollection$ordersCollection$edges<TRes> {
  _CopyWithStubImpl$Query$OrderCollection$ordersCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Order? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Order<TRes> get node => CopyWith$Fragment$Order.stub(_res);
}

class Query$OrderCollection$ordersCollection$pageInfo {
  Query$OrderCollection$ordersCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrderCollection$ordersCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$OrderCollection$ordersCollection$pageInfo(
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
    if (other is! Query$OrderCollection$ordersCollection$pageInfo ||
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

extension UtilityExtension$Query$OrderCollection$ordersCollection$pageInfo
    on Query$OrderCollection$ordersCollection$pageInfo {
  CopyWith$Query$OrderCollection$ordersCollection$pageInfo<
          Query$OrderCollection$ordersCollection$pageInfo>
      get copyWith => CopyWith$Query$OrderCollection$ordersCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderCollection$ordersCollection$pageInfo<TRes> {
  factory CopyWith$Query$OrderCollection$ordersCollection$pageInfo(
    Query$OrderCollection$ordersCollection$pageInfo instance,
    TRes Function(Query$OrderCollection$ordersCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$OrderCollection$ordersCollection$pageInfo;

  factory CopyWith$Query$OrderCollection$ordersCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderCollection$ordersCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderCollection$ordersCollection$pageInfo<TRes>
    implements CopyWith$Query$OrderCollection$ordersCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$OrderCollection$ordersCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderCollection$ordersCollection$pageInfo _instance;

  final TRes Function(Query$OrderCollection$ordersCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderCollection$ordersCollection$pageInfo(
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

class _CopyWithStubImpl$Query$OrderCollection$ordersCollection$pageInfo<TRes>
    implements CopyWith$Query$OrderCollection$ordersCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$OrderCollection$ordersCollection$pageInfo(this._res);

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
          {required Input$OrdersInsertInput input}) =>
      Variables$Mutation$CreateOrder._({
        r'input': input,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$OrdersInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrdersInsertInput get input =>
      (_$data['input'] as Input$OrdersInsertInput);

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
    if (other is! Variables$Mutation$CreateOrder ||
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

  TRes call({Input$OrdersInsertInput? input});
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
          'input': (input as Input$OrdersInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrder(this._res);

  TRes _res;

  call({Input$OrdersInsertInput? input}) => _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    this.insertIntoOrdersCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$insertIntoOrdersCollection = json['insertIntoOrdersCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder(
      insertIntoOrdersCollection: l$insertIntoOrdersCollection == null
          ? null
          : Mutation$CreateOrder$insertIntoOrdersCollection.fromJson(
              (l$insertIntoOrdersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrder$insertIntoOrdersCollection?
      insertIntoOrdersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoOrdersCollection = insertIntoOrdersCollection;
    _resultData['insertIntoOrdersCollection'] =
        l$insertIntoOrdersCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoOrdersCollection = insertIntoOrdersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoOrdersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoOrdersCollection = insertIntoOrdersCollection;
    final lOther$insertIntoOrdersCollection = other.insertIntoOrdersCollection;
    if (l$insertIntoOrdersCollection != lOther$insertIntoOrdersCollection) {
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
    Mutation$CreateOrder$insertIntoOrdersCollection? insertIntoOrdersCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<TRes>
      get insertIntoOrdersCollection;
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
    Object? insertIntoOrdersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder(
        insertIntoOrdersCollection: insertIntoOrdersCollection == _undefined
            ? _instance.insertIntoOrdersCollection
            : (insertIntoOrdersCollection
                as Mutation$CreateOrder$insertIntoOrdersCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<TRes>
      get insertIntoOrdersCollection {
    final local$insertIntoOrdersCollection =
        _instance.insertIntoOrdersCollection;
    return local$insertIntoOrdersCollection == null
        ? CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection(
            local$insertIntoOrdersCollection,
            (e) => call(insertIntoOrdersCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Mutation$CreateOrder$insertIntoOrdersCollection? insertIntoOrdersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<TRes>
      get insertIntoOrdersCollection =>
          CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrdersInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoOrdersCollection'),
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
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
  fragmentDefinitionOrderItem,
  fragmentDefinitionDeliveryLocation,
  fragmentDefinitionOrderTransaction,
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

class Mutation$CreateOrder$insertIntoOrdersCollection {
  Mutation$CreateOrder$insertIntoOrdersCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrdersInsertResponse',
  });

  factory Mutation$CreateOrder$insertIntoOrdersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$insertIntoOrdersCollection(
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
    if (other is! Mutation$CreateOrder$insertIntoOrdersCollection ||
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

extension UtilityExtension$Mutation$CreateOrder$insertIntoOrdersCollection
    on Mutation$CreateOrder$insertIntoOrdersCollection {
  CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<
          Mutation$CreateOrder$insertIntoOrdersCollection>
      get copyWith => CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<TRes> {
  factory CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection(
    Mutation$CreateOrder$insertIntoOrdersCollection instance,
    TRes Function(Mutation$CreateOrder$insertIntoOrdersCollection) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$insertIntoOrdersCollection;

  factory CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$insertIntoOrdersCollection;

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

class _CopyWithImpl$Mutation$CreateOrder$insertIntoOrdersCollection<TRes>
    implements CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$insertIntoOrdersCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$insertIntoOrdersCollection _instance;

  final TRes Function(Mutation$CreateOrder$insertIntoOrdersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$insertIntoOrdersCollection(
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

class _CopyWithStubImpl$Mutation$CreateOrder$insertIntoOrdersCollection<TRes>
    implements CopyWith$Mutation$CreateOrder$insertIntoOrdersCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$insertIntoOrdersCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateOrder {
  factory Variables$Mutation$UpdateOrder({
    required String id,
    required Input$OrdersUpdateInput input,
  }) =>
      Variables$Mutation$UpdateOrder._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateOrder._(this._$data);

  factory Variables$Mutation$UpdateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$OrdersUpdateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$OrdersUpdateInput get input =>
      (_$data['input'] as Input$OrdersUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrder<Variables$Mutation$UpdateOrder>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateOrder ||
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

abstract class CopyWith$Variables$Mutation$UpdateOrder<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrder(
    Variables$Mutation$UpdateOrder instance,
    TRes Function(Variables$Mutation$UpdateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrder;

  factory CopyWith$Variables$Mutation$UpdateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrder;

  TRes call({
    String? id,
    Input$OrdersUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrder<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrder _instance;

  final TRes Function(Variables$Mutation$UpdateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrder._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$OrdersUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrder<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrder(this._res);

  TRes _res;

  call({
    String? id,
    Input$OrdersUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateOrder {
  Mutation$UpdateOrder({
    required this.updateOrdersCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOrder.fromJson(Map<String, dynamic> json) {
    final l$updateOrdersCollection = json['updateOrdersCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrder(
      updateOrdersCollection:
          Mutation$UpdateOrder$updateOrdersCollection.fromJson(
              (l$updateOrdersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOrder$updateOrdersCollection updateOrdersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOrdersCollection = updateOrdersCollection;
    _resultData['updateOrdersCollection'] = l$updateOrdersCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOrdersCollection = updateOrdersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOrdersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOrdersCollection = updateOrdersCollection;
    final lOther$updateOrdersCollection = other.updateOrdersCollection;
    if (l$updateOrdersCollection != lOther$updateOrdersCollection) {
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

extension UtilityExtension$Mutation$UpdateOrder on Mutation$UpdateOrder {
  CopyWith$Mutation$UpdateOrder<Mutation$UpdateOrder> get copyWith =>
      CopyWith$Mutation$UpdateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateOrder<TRes> {
  factory CopyWith$Mutation$UpdateOrder(
    Mutation$UpdateOrder instance,
    TRes Function(Mutation$UpdateOrder) then,
  ) = _CopyWithImpl$Mutation$UpdateOrder;

  factory CopyWith$Mutation$UpdateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrder;

  TRes call({
    Mutation$UpdateOrder$updateOrdersCollection? updateOrdersCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOrder$updateOrdersCollection<TRes>
      get updateOrdersCollection;
}

class _CopyWithImpl$Mutation$UpdateOrder<TRes>
    implements CopyWith$Mutation$UpdateOrder<TRes> {
  _CopyWithImpl$Mutation$UpdateOrder(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrder _instance;

  final TRes Function(Mutation$UpdateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOrdersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrder(
        updateOrdersCollection: updateOrdersCollection == _undefined ||
                updateOrdersCollection == null
            ? _instance.updateOrdersCollection
            : (updateOrdersCollection
                as Mutation$UpdateOrder$updateOrdersCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateOrder$updateOrdersCollection<TRes>
      get updateOrdersCollection {
    final local$updateOrdersCollection = _instance.updateOrdersCollection;
    return CopyWith$Mutation$UpdateOrder$updateOrdersCollection(
        local$updateOrdersCollection, (e) => call(updateOrdersCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrder<TRes>
    implements CopyWith$Mutation$UpdateOrder<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrder(this._res);

  TRes _res;

  call({
    Mutation$UpdateOrder$updateOrdersCollection? updateOrdersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrder$updateOrdersCollection<TRes>
      get updateOrdersCollection =>
          CopyWith$Mutation$UpdateOrder$updateOrdersCollection.stub(_res);
}

const documentNodeMutationUpdateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrder'),
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
          name: NameNode(value: 'OrdersUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOrdersCollection'),
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
  fragmentDefinitionUser,
  fragmentDefinitionUserRole,
  fragmentDefinitionRole,
  fragmentDefinitionStation,
  fragmentDefinitionAddress,
  fragmentDefinitionUserStation,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
  fragmentDefinitionOrderItem,
  fragmentDefinitionDeliveryLocation,
  fragmentDefinitionOrderTransaction,
]);
Mutation$UpdateOrder _parserFn$Mutation$UpdateOrder(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrder?,
);

class Options$Mutation$UpdateOrder
    extends graphql.MutationOptions<Mutation$UpdateOrder> {
  Options$Mutation$UpdateOrder({
    String? operationName,
    required Variables$Mutation$UpdateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrder,
          parserFn: _parserFn$Mutation$UpdateOrder,
        );

  final OnMutationCompleted$Mutation$UpdateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrder
    extends graphql.WatchQueryOptions<Mutation$UpdateOrder> {
  WatchOptions$Mutation$UpdateOrder({
    String? operationName,
    required Variables$Mutation$UpdateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrder? typedOptimisticResult,
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
          document: documentNodeMutationUpdateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrder,
        );
}

extension ClientExtension$Mutation$UpdateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrder>> mutate$UpdateOrder(
          Options$Mutation$UpdateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrder> watchMutation$UpdateOrder(
          WatchOptions$Mutation$UpdateOrder options) =>
      this.watchMutation(options);
}

class Mutation$UpdateOrder$HookResult {
  Mutation$UpdateOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateOrder runMutation;

  final graphql.QueryResult<Mutation$UpdateOrder> result;
}

Mutation$UpdateOrder$HookResult useMutation$UpdateOrder(
    [WidgetOptions$Mutation$UpdateOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateOrder());
  return Mutation$UpdateOrder$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateOrder> useWatchMutation$UpdateOrder(
        WatchOptions$Mutation$UpdateOrder options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateOrder
    extends graphql.MutationOptions<Mutation$UpdateOrder> {
  WidgetOptions$Mutation$UpdateOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$UpdateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrder,
          parserFn: _parserFn$Mutation$UpdateOrder,
        );

  final OnMutationCompleted$Mutation$UpdateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateOrder
    = graphql.MultiSourceResult<Mutation$UpdateOrder> Function(
  Variables$Mutation$UpdateOrder, {
  Object? optimisticResult,
  Mutation$UpdateOrder? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateOrder = widgets.Widget Function(
  RunMutation$Mutation$UpdateOrder,
  graphql.QueryResult<Mutation$UpdateOrder>?,
);

class Mutation$UpdateOrder$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateOrder> {
  Mutation$UpdateOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateOrder? options,
    required Builder$Mutation$UpdateOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateOrder(),
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

class Mutation$UpdateOrder$updateOrdersCollection {
  Mutation$UpdateOrder$updateOrdersCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrdersUpdateResponse',
  });

  factory Mutation$UpdateOrder$updateOrdersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrder$updateOrdersCollection(
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
    if (other is! Mutation$UpdateOrder$updateOrdersCollection ||
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

extension UtilityExtension$Mutation$UpdateOrder$updateOrdersCollection
    on Mutation$UpdateOrder$updateOrdersCollection {
  CopyWith$Mutation$UpdateOrder$updateOrdersCollection<
          Mutation$UpdateOrder$updateOrdersCollection>
      get copyWith => CopyWith$Mutation$UpdateOrder$updateOrdersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrder$updateOrdersCollection<TRes> {
  factory CopyWith$Mutation$UpdateOrder$updateOrdersCollection(
    Mutation$UpdateOrder$updateOrdersCollection instance,
    TRes Function(Mutation$UpdateOrder$updateOrdersCollection) then,
  ) = _CopyWithImpl$Mutation$UpdateOrder$updateOrdersCollection;

  factory CopyWith$Mutation$UpdateOrder$updateOrdersCollection.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrder$updateOrdersCollection;

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

class _CopyWithImpl$Mutation$UpdateOrder$updateOrdersCollection<TRes>
    implements CopyWith$Mutation$UpdateOrder$updateOrdersCollection<TRes> {
  _CopyWithImpl$Mutation$UpdateOrder$updateOrdersCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrder$updateOrdersCollection _instance;

  final TRes Function(Mutation$UpdateOrder$updateOrdersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrder$updateOrdersCollection(
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

class _CopyWithStubImpl$Mutation$UpdateOrder$updateOrdersCollection<TRes>
    implements CopyWith$Mutation$UpdateOrder$updateOrdersCollection<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrder$updateOrdersCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Order>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteOrder {
  factory Variables$Mutation$DeleteOrder({required String id}) =>
      Variables$Mutation$DeleteOrder._({
        r'id': id,
      });

  Variables$Mutation$DeleteOrder._(this._$data);

  factory Variables$Mutation$DeleteOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOrder<Variables$Mutation$DeleteOrder>
      get copyWith => CopyWith$Variables$Mutation$DeleteOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteOrder ||
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

abstract class CopyWith$Variables$Mutation$DeleteOrder<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOrder(
    Variables$Mutation$DeleteOrder instance,
    TRes Function(Variables$Mutation$DeleteOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOrder;

  factory CopyWith$Variables$Mutation$DeleteOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOrder;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteOrder<TRes>
    implements CopyWith$Variables$Mutation$DeleteOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOrder _instance;

  final TRes Function(Variables$Mutation$DeleteOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteOrder._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOrder<TRes>
    implements CopyWith$Variables$Mutation$DeleteOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOrder(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteOrder {
  Mutation$DeleteOrder({
    required this.deleteFromOrdersCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOrder.fromJson(Map<String, dynamic> json) {
    final l$deleteFromOrdersCollection = json['deleteFromOrdersCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOrder(
      deleteFromOrdersCollection:
          Mutation$DeleteOrder$deleteFromOrdersCollection.fromJson(
              (l$deleteFromOrdersCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOrder$deleteFromOrdersCollection
      deleteFromOrdersCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromOrdersCollection = deleteFromOrdersCollection;
    _resultData['deleteFromOrdersCollection'] =
        l$deleteFromOrdersCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromOrdersCollection = deleteFromOrdersCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromOrdersCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromOrdersCollection = deleteFromOrdersCollection;
    final lOther$deleteFromOrdersCollection = other.deleteFromOrdersCollection;
    if (l$deleteFromOrdersCollection != lOther$deleteFromOrdersCollection) {
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

extension UtilityExtension$Mutation$DeleteOrder on Mutation$DeleteOrder {
  CopyWith$Mutation$DeleteOrder<Mutation$DeleteOrder> get copyWith =>
      CopyWith$Mutation$DeleteOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteOrder<TRes> {
  factory CopyWith$Mutation$DeleteOrder(
    Mutation$DeleteOrder instance,
    TRes Function(Mutation$DeleteOrder) then,
  ) = _CopyWithImpl$Mutation$DeleteOrder;

  factory CopyWith$Mutation$DeleteOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOrder;

  TRes call({
    Mutation$DeleteOrder$deleteFromOrdersCollection? deleteFromOrdersCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes>
      get deleteFromOrdersCollection;
}

class _CopyWithImpl$Mutation$DeleteOrder<TRes>
    implements CopyWith$Mutation$DeleteOrder<TRes> {
  _CopyWithImpl$Mutation$DeleteOrder(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOrder _instance;

  final TRes Function(Mutation$DeleteOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromOrdersCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOrder(
        deleteFromOrdersCollection: deleteFromOrdersCollection == _undefined ||
                deleteFromOrdersCollection == null
            ? _instance.deleteFromOrdersCollection
            : (deleteFromOrdersCollection
                as Mutation$DeleteOrder$deleteFromOrdersCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes>
      get deleteFromOrdersCollection {
    final local$deleteFromOrdersCollection =
        _instance.deleteFromOrdersCollection;
    return CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection(
        local$deleteFromOrdersCollection,
        (e) => call(deleteFromOrdersCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOrder<TRes>
    implements CopyWith$Mutation$DeleteOrder<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOrder(this._res);

  TRes _res;

  call({
    Mutation$DeleteOrder$deleteFromOrdersCollection? deleteFromOrdersCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes>
      get deleteFromOrdersCollection =>
          CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection.stub(_res);
}

const documentNodeMutationDeleteOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOrder'),
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
        name: NameNode(value: 'deleteFromOrdersCollection'),
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
]);
Mutation$DeleteOrder _parserFn$Mutation$DeleteOrder(
        Map<String, dynamic> data) =>
    Mutation$DeleteOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteOrder?,
);

class Options$Mutation$DeleteOrder
    extends graphql.MutationOptions<Mutation$DeleteOrder> {
  Options$Mutation$DeleteOrder({
    String? operationName,
    required Variables$Mutation$DeleteOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOrder,
          parserFn: _parserFn$Mutation$DeleteOrder,
        );

  final OnMutationCompleted$Mutation$DeleteOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOrder
    extends graphql.WatchQueryOptions<Mutation$DeleteOrder> {
  WatchOptions$Mutation$DeleteOrder({
    String? operationName,
    required Variables$Mutation$DeleteOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrder? typedOptimisticResult,
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
          document: documentNodeMutationDeleteOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOrder,
        );
}

extension ClientExtension$Mutation$DeleteOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOrder>> mutate$DeleteOrder(
          Options$Mutation$DeleteOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOrder> watchMutation$DeleteOrder(
          WatchOptions$Mutation$DeleteOrder options) =>
      this.watchMutation(options);
}

class Mutation$DeleteOrder$HookResult {
  Mutation$DeleteOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteOrder runMutation;

  final graphql.QueryResult<Mutation$DeleteOrder> result;
}

Mutation$DeleteOrder$HookResult useMutation$DeleteOrder(
    [WidgetOptions$Mutation$DeleteOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteOrder());
  return Mutation$DeleteOrder$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteOrder> useWatchMutation$DeleteOrder(
        WatchOptions$Mutation$DeleteOrder options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteOrder
    extends graphql.MutationOptions<Mutation$DeleteOrder> {
  WidgetOptions$Mutation$DeleteOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$DeleteOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOrder,
          parserFn: _parserFn$Mutation$DeleteOrder,
        );

  final OnMutationCompleted$Mutation$DeleteOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteOrder
    = graphql.MultiSourceResult<Mutation$DeleteOrder> Function(
  Variables$Mutation$DeleteOrder, {
  Object? optimisticResult,
  Mutation$DeleteOrder? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteOrder = widgets.Widget Function(
  RunMutation$Mutation$DeleteOrder,
  graphql.QueryResult<Mutation$DeleteOrder>?,
);

class Mutation$DeleteOrder$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteOrder> {
  Mutation$DeleteOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteOrder? options,
    required Builder$Mutation$DeleteOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteOrder(),
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

class Mutation$DeleteOrder$deleteFromOrdersCollection {
  Mutation$DeleteOrder$deleteFromOrdersCollection({
    required this.affectedCount,
    this.$__typename = 'OrdersDeleteResponse',
  });

  factory Mutation$DeleteOrder$deleteFromOrdersCollection.fromJson(
      Map<String, dynamic> json) {
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOrder$deleteFromOrdersCollection(
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedCount = affectedCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteOrder$deleteFromOrdersCollection ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Mutation$DeleteOrder$deleteFromOrdersCollection
    on Mutation$DeleteOrder$deleteFromOrdersCollection {
  CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<
          Mutation$DeleteOrder$deleteFromOrdersCollection>
      get copyWith => CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes> {
  factory CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection(
    Mutation$DeleteOrder$deleteFromOrdersCollection instance,
    TRes Function(Mutation$DeleteOrder$deleteFromOrdersCollection) then,
  ) = _CopyWithImpl$Mutation$DeleteOrder$deleteFromOrdersCollection;

  factory CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOrder$deleteFromOrdersCollection;

  TRes call({
    int? affectedCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes>
    implements CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes> {
  _CopyWithImpl$Mutation$DeleteOrder$deleteFromOrdersCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOrder$deleteFromOrdersCollection _instance;

  final TRes Function(Mutation$DeleteOrder$deleteFromOrdersCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOrder$deleteFromOrdersCollection(
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes>
    implements CopyWith$Mutation$DeleteOrder$deleteFromOrdersCollection<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOrder$deleteFromOrdersCollection(this._res);

  TRes _res;

  call({
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$OrderTransactionCollection {
  factory Variables$Query$OrderTransactionCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$OrderTransactionsFilter? filter,
    List<Input$OrderTransactionsOrderBy>? orderBy,
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
          : Input$OrderTransactionsFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$OrderTransactionsOrderBy.fromJson(
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

  Input$OrderTransactionsFilter? get filter =>
      (_$data['filter'] as Input$OrderTransactionsFilter?);

  List<Input$OrderTransactionsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$OrderTransactionsOrderBy>?);

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
    if (other is! Variables$Query$OrderTransactionCollection ||
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
    Input$OrderTransactionsFilter? filter,
    List<Input$OrderTransactionsOrderBy>? orderBy,
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
          'filter': (filter as Input$OrderTransactionsFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$OrderTransactionsOrderBy>?),
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
    Input$OrderTransactionsFilter? filter,
    List<Input$OrderTransactionsOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$OrderTransactionCollection {
  Query$OrderTransactionCollection({
    this.orderTransactionsCollection,
    this.$__typename = 'Query',
  });

  factory Query$OrderTransactionCollection.fromJson(Map<String, dynamic> json) {
    final l$orderTransactionsCollection = json['orderTransactionsCollection'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection(
      orderTransactionsCollection: l$orderTransactionsCollection == null
          ? null
          : Query$OrderTransactionCollection$orderTransactionsCollection
              .fromJson(
                  (l$orderTransactionsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$OrderTransactionCollection$orderTransactionsCollection?
      orderTransactionsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderTransactionsCollection = orderTransactionsCollection;
    _resultData['orderTransactionsCollection'] =
        l$orderTransactionsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderTransactionsCollection = orderTransactionsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orderTransactionsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$OrderTransactionCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderTransactionsCollection = orderTransactionsCollection;
    final lOther$orderTransactionsCollection =
        other.orderTransactionsCollection;
    if (l$orderTransactionsCollection != lOther$orderTransactionsCollection) {
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
    Query$OrderTransactionCollection$orderTransactionsCollection?
        orderTransactionsCollection,
    String? $__typename,
  });
  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<TRes>
      get orderTransactionsCollection;
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
    Object? orderTransactionsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderTransactionCollection(
        orderTransactionsCollection: orderTransactionsCollection == _undefined
            ? _instance.orderTransactionsCollection
            : (orderTransactionsCollection
                as Query$OrderTransactionCollection$orderTransactionsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<TRes>
      get orderTransactionsCollection {
    final local$orderTransactionsCollection =
        _instance.orderTransactionsCollection;
    return local$orderTransactionsCollection == null
        ? CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection
            .stub(_then(_instance))
        : CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection(
            local$orderTransactionsCollection,
            (e) => call(orderTransactionsCollection: e));
  }
}

class _CopyWithStubImpl$Query$OrderTransactionCollection<TRes>
    implements CopyWith$Query$OrderTransactionCollection<TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection(this._res);

  TRes _res;

  call({
    Query$OrderTransactionCollection$orderTransactionsCollection?
        orderTransactionsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<TRes>
      get orderTransactionsCollection =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection
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
          name: NameNode(value: 'OrderTransactionsFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'OrderTransactionsOrderBy'),
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
        name: NameNode(value: 'orderTransactionsCollection'),
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

class Query$OrderTransactionCollection$orderTransactionsCollection {
  Query$OrderTransactionCollection$orderTransactionsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'OrderTransactionsConnection',
  });

  factory Query$OrderTransactionCollection$orderTransactionsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection$orderTransactionsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$OrderTransactionCollection$orderTransactionsCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$OrderTransactionCollection$orderTransactionsCollection$edges>
      edges;

  final Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo
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
    if (other
            is! Query$OrderTransactionCollection$orderTransactionsCollection ||
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

extension UtilityExtension$Query$OrderTransactionCollection$orderTransactionsCollection
    on Query$OrderTransactionCollection$orderTransactionsCollection {
  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<
          Query$OrderTransactionCollection$orderTransactionsCollection>
      get copyWith =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<
    TRes> {
  factory CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection(
    Query$OrderTransactionCollection$orderTransactionsCollection instance,
    TRes Function(Query$OrderTransactionCollection$orderTransactionsCollection)
        then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection;

  factory CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection;

  TRes call({
    List<Query$OrderTransactionCollection$orderTransactionsCollection$edges>?
        edges,
    Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$OrderTransactionCollection$orderTransactionsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
                      Query$OrderTransactionCollection$orderTransactionsCollection$edges>>)
          _fn);
  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<
            TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection$orderTransactionsCollection _instance;

  final TRes Function(
      Query$OrderTransactionCollection$orderTransactionsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderTransactionCollection$orderTransactionsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$OrderTransactionCollection$orderTransactionsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$OrderTransactionCollection$orderTransactionsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
                          Query$OrderTransactionCollection$orderTransactionsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection<
            TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection(
      this._res);

  TRes _res;

  call({
    List<Query$OrderTransactionCollection$orderTransactionsCollection$edges>?
        edges,
    Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo
              .stub(_res);
}

class Query$OrderTransactionCollection$orderTransactionsCollection$edges {
  Query$OrderTransactionCollection$orderTransactionsCollection$edges({
    required this.node,
    this.$__typename = 'OrderTransactionsEdge',
  });

  factory Query$OrderTransactionCollection$orderTransactionsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection$orderTransactionsCollection$edges(
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
    if (other
            is! Query$OrderTransactionCollection$orderTransactionsCollection$edges ||
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

extension UtilityExtension$Query$OrderTransactionCollection$orderTransactionsCollection$edges
    on Query$OrderTransactionCollection$orderTransactionsCollection$edges {
  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
          Query$OrderTransactionCollection$orderTransactionsCollection$edges>
      get copyWith =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
    TRes> {
  factory CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges(
    Query$OrderTransactionCollection$orderTransactionsCollection$edges instance,
    TRes Function(
            Query$OrderTransactionCollection$orderTransactionsCollection$edges)
        then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection$edges;

  factory CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection$edges;

  TRes call({
    Fragment$OrderTransaction? node,
    String? $__typename,
  });
  CopyWith$Fragment$OrderTransaction<TRes> get node;
}

class _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
            TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection$orderTransactionsCollection$edges
      _instance;

  final TRes Function(
      Query$OrderTransactionCollection$orderTransactionsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$OrderTransactionCollection$orderTransactionsCollection$edges(
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

class _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection$edges(
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

class Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo {
  Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
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
    if (other
            is! Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo ||
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

extension UtilityExtension$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo
    on Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo {
  CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
          Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
    Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo
        instance,
    TRes Function(
            Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo;

  factory CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo
      _instance;

  final TRes Function(
          Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo)
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
          Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
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

class _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$OrderTransactionCollection$orderTransactionsCollection$pageInfo(
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

class Variables$Mutation$CreateShoppingCart {
  factory Variables$Mutation$CreateShoppingCart(
          {required Input$ShoppingCartsInsertInput input}) =>
      Variables$Mutation$CreateShoppingCart._({
        r'input': input,
      });

  Variables$Mutation$CreateShoppingCart._(this._$data);

  factory Variables$Mutation$CreateShoppingCart.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartsInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateShoppingCart._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ShoppingCartsInsertInput get input =>
      (_$data['input'] as Input$ShoppingCartsInsertInput);

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
    if (other is! Variables$Mutation$CreateShoppingCart ||
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

  TRes call({Input$ShoppingCartsInsertInput? input});
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
          'input': (input as Input$ShoppingCartsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateShoppingCart(this._res);

  TRes _res;

  call({Input$ShoppingCartsInsertInput? input}) => _res;
}

class Mutation$CreateShoppingCart {
  Mutation$CreateShoppingCart({
    this.insertIntoShoppingCartsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$insertIntoShoppingCartsCollection =
        json['insertIntoShoppingCartsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCart(
      insertIntoShoppingCartsCollection:
          l$insertIntoShoppingCartsCollection == null
              ? null
              : Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection
                  .fromJson((l$insertIntoShoppingCartsCollection
                      as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection?
      insertIntoShoppingCartsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoShoppingCartsCollection =
        insertIntoShoppingCartsCollection;
    _resultData['insertIntoShoppingCartsCollection'] =
        l$insertIntoShoppingCartsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoShoppingCartsCollection =
        insertIntoShoppingCartsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoShoppingCartsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateShoppingCart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoShoppingCartsCollection =
        insertIntoShoppingCartsCollection;
    final lOther$insertIntoShoppingCartsCollection =
        other.insertIntoShoppingCartsCollection;
    if (l$insertIntoShoppingCartsCollection !=
        lOther$insertIntoShoppingCartsCollection) {
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
    Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection?
        insertIntoShoppingCartsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<TRes>
      get insertIntoShoppingCartsCollection;
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
    Object? insertIntoShoppingCartsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateShoppingCart(
        insertIntoShoppingCartsCollection: insertIntoShoppingCartsCollection ==
                _undefined
            ? _instance.insertIntoShoppingCartsCollection
            : (insertIntoShoppingCartsCollection
                as Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<TRes>
      get insertIntoShoppingCartsCollection {
    final local$insertIntoShoppingCartsCollection =
        _instance.insertIntoShoppingCartsCollection;
    return local$insertIntoShoppingCartsCollection == null
        ? CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
            local$insertIntoShoppingCartsCollection,
            (e) => call(insertIntoShoppingCartsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateShoppingCart<TRes>
    implements CopyWith$Mutation$CreateShoppingCart<TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCart(this._res);

  TRes _res;

  call({
    Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection?
        insertIntoShoppingCartsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<TRes>
      get insertIntoShoppingCartsCollection =>
          CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection
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
          name: NameNode(value: 'ShoppingCartsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoShoppingCartsCollection'),
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
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection {
  Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartsInsertResponse',
  });

  factory Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
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
    if (other
            is! Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection ||
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

extension UtilityExtension$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection
    on Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection {
  CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<
          Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection>
      get copyWith =>
          CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<
    TRes> {
  factory CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
    Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection instance,
    TRes Function(Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection;

  factory CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection;

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

class _CopyWithImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection _instance;

  final TRes Function(
      Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
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

class _CopyWithStubImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCart$insertIntoShoppingCartsCollection(
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

class Variables$Mutation$CreateShoppingCartItem {
  factory Variables$Mutation$CreateShoppingCartItem(
          {required Input$ShoppingCartItemsInsertInput input}) =>
      Variables$Mutation$CreateShoppingCartItem._({
        r'input': input,
      });

  Variables$Mutation$CreateShoppingCartItem._(this._$data);

  factory Variables$Mutation$CreateShoppingCartItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartItemsInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateShoppingCartItem._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ShoppingCartItemsInsertInput get input =>
      (_$data['input'] as Input$ShoppingCartItemsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateShoppingCartItem<
          Variables$Mutation$CreateShoppingCartItem>
      get copyWith => CopyWith$Variables$Mutation$CreateShoppingCartItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateShoppingCartItem ||
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

abstract class CopyWith$Variables$Mutation$CreateShoppingCartItem<TRes> {
  factory CopyWith$Variables$Mutation$CreateShoppingCartItem(
    Variables$Mutation$CreateShoppingCartItem instance,
    TRes Function(Variables$Mutation$CreateShoppingCartItem) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateShoppingCartItem;

  factory CopyWith$Variables$Mutation$CreateShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateShoppingCartItem;

  TRes call({Input$ShoppingCartItemsInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCartItem<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateShoppingCartItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateShoppingCartItem _instance;

  final TRes Function(Variables$Mutation$CreateShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateShoppingCartItem._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ShoppingCartItemsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$CreateShoppingCartItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateShoppingCartItem(this._res);

  TRes _res;

  call({Input$ShoppingCartItemsInsertInput? input}) => _res;
}

class Mutation$CreateShoppingCartItem {
  Mutation$CreateShoppingCartItem({
    this.insertIntoShoppingCartItemsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateShoppingCartItem.fromJson(Map<String, dynamic> json) {
    final l$insertIntoShoppingCartItemsCollection =
        json['insertIntoShoppingCartItemsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCartItem(
      insertIntoShoppingCartItemsCollection:
          l$insertIntoShoppingCartItemsCollection == null
              ? null
              : Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection
                  .fromJson((l$insertIntoShoppingCartItemsCollection
                      as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection?
      insertIntoShoppingCartItemsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoShoppingCartItemsCollection =
        insertIntoShoppingCartItemsCollection;
    _resultData['insertIntoShoppingCartItemsCollection'] =
        l$insertIntoShoppingCartItemsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoShoppingCartItemsCollection =
        insertIntoShoppingCartItemsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoShoppingCartItemsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateShoppingCartItem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoShoppingCartItemsCollection =
        insertIntoShoppingCartItemsCollection;
    final lOther$insertIntoShoppingCartItemsCollection =
        other.insertIntoShoppingCartItemsCollection;
    if (l$insertIntoShoppingCartItemsCollection !=
        lOther$insertIntoShoppingCartItemsCollection) {
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

extension UtilityExtension$Mutation$CreateShoppingCartItem
    on Mutation$CreateShoppingCartItem {
  CopyWith$Mutation$CreateShoppingCartItem<Mutation$CreateShoppingCartItem>
      get copyWith => CopyWith$Mutation$CreateShoppingCartItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCartItem<TRes> {
  factory CopyWith$Mutation$CreateShoppingCartItem(
    Mutation$CreateShoppingCartItem instance,
    TRes Function(Mutation$CreateShoppingCartItem) then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCartItem;

  factory CopyWith$Mutation$CreateShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCartItem;

  TRes call({
    Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection?
        insertIntoShoppingCartItemsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
      TRes> get insertIntoShoppingCartItemsCollection;
}

class _CopyWithImpl$Mutation$CreateShoppingCartItem<TRes>
    implements CopyWith$Mutation$CreateShoppingCartItem<TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCartItem(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCartItem _instance;

  final TRes Function(Mutation$CreateShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoShoppingCartItemsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateShoppingCartItem(
        insertIntoShoppingCartItemsCollection:
            insertIntoShoppingCartItemsCollection == _undefined
                ? _instance.insertIntoShoppingCartItemsCollection
                : (insertIntoShoppingCartItemsCollection
                    as Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
      TRes> get insertIntoShoppingCartItemsCollection {
    final local$insertIntoShoppingCartItemsCollection =
        _instance.insertIntoShoppingCartItemsCollection;
    return local$insertIntoShoppingCartItemsCollection == null
        ? CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
            local$insertIntoShoppingCartItemsCollection,
            (e) => call(insertIntoShoppingCartItemsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateShoppingCartItem<TRes>
    implements CopyWith$Mutation$CreateShoppingCartItem<TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCartItem(this._res);

  TRes _res;

  call({
    Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection?
        insertIntoShoppingCartItemsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
          TRes>
      get insertIntoShoppingCartItemsCollection =>
          CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection
              .stub(_res);
}

const documentNodeMutationCreateShoppingCartItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateShoppingCartItem'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ShoppingCartItemsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoShoppingCartItemsCollection'),
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
                name: NameNode(value: 'ShoppingCartItem'),
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
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);
Mutation$CreateShoppingCartItem _parserFn$Mutation$CreateShoppingCartItem(
        Map<String, dynamic> data) =>
    Mutation$CreateShoppingCartItem.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateShoppingCartItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateShoppingCartItem?,
);

class Options$Mutation$CreateShoppingCartItem
    extends graphql.MutationOptions<Mutation$CreateShoppingCartItem> {
  Options$Mutation$CreateShoppingCartItem({
    String? operationName,
    required Variables$Mutation$CreateShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateShoppingCartItem>? update,
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
                        : _parserFn$Mutation$CreateShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateShoppingCartItem,
          parserFn: _parserFn$Mutation$CreateShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$CreateShoppingCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateShoppingCartItem
    extends graphql.WatchQueryOptions<Mutation$CreateShoppingCartItem> {
  WatchOptions$Mutation$CreateShoppingCartItem({
    String? operationName,
    required Variables$Mutation$CreateShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCartItem? typedOptimisticResult,
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
          document: documentNodeMutationCreateShoppingCartItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateShoppingCartItem,
        );
}

extension ClientExtension$Mutation$CreateShoppingCartItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateShoppingCartItem>>
      mutate$CreateShoppingCartItem(
              Options$Mutation$CreateShoppingCartItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateShoppingCartItem>
      watchMutation$CreateShoppingCartItem(
              WatchOptions$Mutation$CreateShoppingCartItem options) =>
          this.watchMutation(options);
}

class Mutation$CreateShoppingCartItem$HookResult {
  Mutation$CreateShoppingCartItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateShoppingCartItem runMutation;

  final graphql.QueryResult<Mutation$CreateShoppingCartItem> result;
}

Mutation$CreateShoppingCartItem$HookResult useMutation$CreateShoppingCartItem(
    [WidgetOptions$Mutation$CreateShoppingCartItem? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateShoppingCartItem());
  return Mutation$CreateShoppingCartItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateShoppingCartItem>
    useWatchMutation$CreateShoppingCartItem(
            WatchOptions$Mutation$CreateShoppingCartItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateShoppingCartItem
    extends graphql.MutationOptions<Mutation$CreateShoppingCartItem> {
  WidgetOptions$Mutation$CreateShoppingCartItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateShoppingCartItem>? update,
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
                        : _parserFn$Mutation$CreateShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateShoppingCartItem,
          parserFn: _parserFn$Mutation$CreateShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$CreateShoppingCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateShoppingCartItem
    = graphql.MultiSourceResult<Mutation$CreateShoppingCartItem> Function(
  Variables$Mutation$CreateShoppingCartItem, {
  Object? optimisticResult,
  Mutation$CreateShoppingCartItem? typedOptimisticResult,
});
typedef Builder$Mutation$CreateShoppingCartItem = widgets.Widget Function(
  RunMutation$Mutation$CreateShoppingCartItem,
  graphql.QueryResult<Mutation$CreateShoppingCartItem>?,
);

class Mutation$CreateShoppingCartItem$Widget
    extends graphql_flutter.Mutation<Mutation$CreateShoppingCartItem> {
  Mutation$CreateShoppingCartItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateShoppingCartItem? options,
    required Builder$Mutation$CreateShoppingCartItem builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateShoppingCartItem(),
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

class Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection {
  Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartItemsInsertResponse',
  });

  factory Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCartItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCartItem> records;

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
    if (other
            is! Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection ||
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

extension UtilityExtension$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection
    on Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection {
  CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
          Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection>
      get copyWith =>
          CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
    TRes> {
  factory CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
    Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection
        instance,
    TRes Function(
            Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection;

  factory CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection;

  TRes call({
    List<Fragment$ShoppingCartItem>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCartItem> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCartItem<
                      Fragment$ShoppingCartItem>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection
      _instance;

  final TRes Function(
          Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCartItem>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCartItem> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCartItem<
                          Fragment$ShoppingCartItem>>)
              _fn) =>
      call(
          records: _fn(
              _instance.records.map((e) => CopyWith$Fragment$ShoppingCartItem(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateShoppingCartItem$insertIntoShoppingCartItemsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCartItem>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteShoppingCartItem {
  factory Variables$Mutation$DeleteShoppingCartItem({required String id}) =>
      Variables$Mutation$DeleteShoppingCartItem._({
        r'id': id,
      });

  Variables$Mutation$DeleteShoppingCartItem._(this._$data);

  factory Variables$Mutation$DeleteShoppingCartItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteShoppingCartItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteShoppingCartItem<
          Variables$Mutation$DeleteShoppingCartItem>
      get copyWith => CopyWith$Variables$Mutation$DeleteShoppingCartItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteShoppingCartItem ||
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

abstract class CopyWith$Variables$Mutation$DeleteShoppingCartItem<TRes> {
  factory CopyWith$Variables$Mutation$DeleteShoppingCartItem(
    Variables$Mutation$DeleteShoppingCartItem instance,
    TRes Function(Variables$Mutation$DeleteShoppingCartItem) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteShoppingCartItem;

  factory CopyWith$Variables$Mutation$DeleteShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCartItem;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$DeleteShoppingCartItem<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteShoppingCartItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteShoppingCartItem _instance;

  final TRes Function(Variables$Mutation$DeleteShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteShoppingCartItem._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$DeleteShoppingCartItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteShoppingCartItem(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteShoppingCartItem {
  Mutation$DeleteShoppingCartItem({
    required this.deleteFromShoppingCartItemsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteShoppingCartItem.fromJson(Map<String, dynamic> json) {
    final l$deleteFromShoppingCartItemsCollection =
        json['deleteFromShoppingCartItemsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCartItem(
      deleteFromShoppingCartItemsCollection:
          Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection
              .fromJson((l$deleteFromShoppingCartItemsCollection
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection
      deleteFromShoppingCartItemsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromShoppingCartItemsCollection =
        deleteFromShoppingCartItemsCollection;
    _resultData['deleteFromShoppingCartItemsCollection'] =
        l$deleteFromShoppingCartItemsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromShoppingCartItemsCollection =
        deleteFromShoppingCartItemsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromShoppingCartItemsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteShoppingCartItem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromShoppingCartItemsCollection =
        deleteFromShoppingCartItemsCollection;
    final lOther$deleteFromShoppingCartItemsCollection =
        other.deleteFromShoppingCartItemsCollection;
    if (l$deleteFromShoppingCartItemsCollection !=
        lOther$deleteFromShoppingCartItemsCollection) {
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

extension UtilityExtension$Mutation$DeleteShoppingCartItem
    on Mutation$DeleteShoppingCartItem {
  CopyWith$Mutation$DeleteShoppingCartItem<Mutation$DeleteShoppingCartItem>
      get copyWith => CopyWith$Mutation$DeleteShoppingCartItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCartItem<TRes> {
  factory CopyWith$Mutation$DeleteShoppingCartItem(
    Mutation$DeleteShoppingCartItem instance,
    TRes Function(Mutation$DeleteShoppingCartItem) then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCartItem;

  factory CopyWith$Mutation$DeleteShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCartItem;

  TRes call({
    Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection?
        deleteFromShoppingCartItemsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
      TRes> get deleteFromShoppingCartItemsCollection;
}

class _CopyWithImpl$Mutation$DeleteShoppingCartItem<TRes>
    implements CopyWith$Mutation$DeleteShoppingCartItem<TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCartItem(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCartItem _instance;

  final TRes Function(Mutation$DeleteShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromShoppingCartItemsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteShoppingCartItem(
        deleteFromShoppingCartItemsCollection:
            deleteFromShoppingCartItemsCollection == _undefined ||
                    deleteFromShoppingCartItemsCollection == null
                ? _instance.deleteFromShoppingCartItemsCollection
                : (deleteFromShoppingCartItemsCollection
                    as Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
      TRes> get deleteFromShoppingCartItemsCollection {
    final local$deleteFromShoppingCartItemsCollection =
        _instance.deleteFromShoppingCartItemsCollection;
    return CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
        local$deleteFromShoppingCartItemsCollection,
        (e) => call(deleteFromShoppingCartItemsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCartItem<TRes>
    implements CopyWith$Mutation$DeleteShoppingCartItem<TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCartItem(this._res);

  TRes _res;

  call({
    Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection?
        deleteFromShoppingCartItemsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
          TRes>
      get deleteFromShoppingCartItemsCollection =>
          CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection
              .stub(_res);
}

const documentNodeMutationDeleteShoppingCartItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteShoppingCartItem'),
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
        name: NameNode(value: 'deleteFromShoppingCartItemsCollection'),
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
]);
Mutation$DeleteShoppingCartItem _parserFn$Mutation$DeleteShoppingCartItem(
        Map<String, dynamic> data) =>
    Mutation$DeleteShoppingCartItem.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteShoppingCartItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteShoppingCartItem?,
);

class Options$Mutation$DeleteShoppingCartItem
    extends graphql.MutationOptions<Mutation$DeleteShoppingCartItem> {
  Options$Mutation$DeleteShoppingCartItem({
    String? operationName,
    required Variables$Mutation$DeleteShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteShoppingCartItem>? update,
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
                        : _parserFn$Mutation$DeleteShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteShoppingCartItem,
          parserFn: _parserFn$Mutation$DeleteShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$DeleteShoppingCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteShoppingCartItem
    extends graphql.WatchQueryOptions<Mutation$DeleteShoppingCartItem> {
  WatchOptions$Mutation$DeleteShoppingCartItem({
    String? operationName,
    required Variables$Mutation$DeleteShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCartItem? typedOptimisticResult,
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
          document: documentNodeMutationDeleteShoppingCartItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteShoppingCartItem,
        );
}

extension ClientExtension$Mutation$DeleteShoppingCartItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteShoppingCartItem>>
      mutate$DeleteShoppingCartItem(
              Options$Mutation$DeleteShoppingCartItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteShoppingCartItem>
      watchMutation$DeleteShoppingCartItem(
              WatchOptions$Mutation$DeleteShoppingCartItem options) =>
          this.watchMutation(options);
}

class Mutation$DeleteShoppingCartItem$HookResult {
  Mutation$DeleteShoppingCartItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteShoppingCartItem runMutation;

  final graphql.QueryResult<Mutation$DeleteShoppingCartItem> result;
}

Mutation$DeleteShoppingCartItem$HookResult useMutation$DeleteShoppingCartItem(
    [WidgetOptions$Mutation$DeleteShoppingCartItem? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteShoppingCartItem());
  return Mutation$DeleteShoppingCartItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteShoppingCartItem>
    useWatchMutation$DeleteShoppingCartItem(
            WatchOptions$Mutation$DeleteShoppingCartItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteShoppingCartItem
    extends graphql.MutationOptions<Mutation$DeleteShoppingCartItem> {
  WidgetOptions$Mutation$DeleteShoppingCartItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteShoppingCartItem>? update,
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
                        : _parserFn$Mutation$DeleteShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteShoppingCartItem,
          parserFn: _parserFn$Mutation$DeleteShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$DeleteShoppingCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteShoppingCartItem
    = graphql.MultiSourceResult<Mutation$DeleteShoppingCartItem> Function(
  Variables$Mutation$DeleteShoppingCartItem, {
  Object? optimisticResult,
  Mutation$DeleteShoppingCartItem? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteShoppingCartItem = widgets.Widget Function(
  RunMutation$Mutation$DeleteShoppingCartItem,
  graphql.QueryResult<Mutation$DeleteShoppingCartItem>?,
);

class Mutation$DeleteShoppingCartItem$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteShoppingCartItem> {
  Mutation$DeleteShoppingCartItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteShoppingCartItem? options,
    required Builder$Mutation$DeleteShoppingCartItem builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteShoppingCartItem(),
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

class Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection {
  Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection({
    required this.affectedCount,
    this.$__typename = 'ShoppingCartItemsDeleteResponse',
  });

  factory Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedCount = affectedCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection
    on Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection {
  CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
          Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
    Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection
        instance,
    TRes Function(
            Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection)
        then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection;

  factory CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection;

  TRes call({
    int? affectedCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
            TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection
      _instance;

  final TRes Function(
          Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCartItem$deleteFromShoppingCartItemsCollection(
      this._res);

  TRes _res;

  call({
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;
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
    if (other is! Variables$Mutation$DeleteShoppingCart ||
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
    required this.deleteFromShoppingCartsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$deleteFromShoppingCartsCollection =
        json['deleteFromShoppingCartsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCart(
      deleteFromShoppingCartsCollection:
          Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection
              .fromJson((l$deleteFromShoppingCartsCollection
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection
      deleteFromShoppingCartsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromShoppingCartsCollection =
        deleteFromShoppingCartsCollection;
    _resultData['deleteFromShoppingCartsCollection'] =
        l$deleteFromShoppingCartsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromShoppingCartsCollection =
        deleteFromShoppingCartsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromShoppingCartsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteShoppingCart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromShoppingCartsCollection =
        deleteFromShoppingCartsCollection;
    final lOther$deleteFromShoppingCartsCollection =
        other.deleteFromShoppingCartsCollection;
    if (l$deleteFromShoppingCartsCollection !=
        lOther$deleteFromShoppingCartsCollection) {
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
    Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection?
        deleteFromShoppingCartsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<TRes>
      get deleteFromShoppingCartsCollection;
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
    Object? deleteFromShoppingCartsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteShoppingCart(
        deleteFromShoppingCartsCollection: deleteFromShoppingCartsCollection ==
                    _undefined ||
                deleteFromShoppingCartsCollection == null
            ? _instance.deleteFromShoppingCartsCollection
            : (deleteFromShoppingCartsCollection
                as Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<TRes>
      get deleteFromShoppingCartsCollection {
    final local$deleteFromShoppingCartsCollection =
        _instance.deleteFromShoppingCartsCollection;
    return CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
        local$deleteFromShoppingCartsCollection,
        (e) => call(deleteFromShoppingCartsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteShoppingCart<TRes>
    implements CopyWith$Mutation$DeleteShoppingCart<TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCart(this._res);

  TRes _res;

  call({
    Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection?
        deleteFromShoppingCartsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<TRes>
      get deleteFromShoppingCartsCollection =>
          CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection
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
        name: NameNode(value: 'deleteFromShoppingCartsCollection'),
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

class Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection {
  Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartsDeleteResponse',
  });

  factory Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
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
    if (other
            is! Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection ||
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

extension UtilityExtension$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection
    on Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection {
  CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<
          Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
    Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection instance,
    TRes Function(Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection)
        then,
  ) = _CopyWithImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection;

  factory CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection;

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

class _CopyWithImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<
            TRes> {
  _CopyWithImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection _instance;

  final TRes Function(
      Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
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

class _CopyWithStubImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteShoppingCart$deleteFromShoppingCartsCollection(
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
    Input$ShoppingCartsFilter? filter,
    List<Input$ShoppingCartsOrderBy>? orderBy,
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
          : Input$ShoppingCartsFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ShoppingCartsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$ShoppingCartCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$ShoppingCartsFilter? get filter =>
      (_$data['filter'] as Input$ShoppingCartsFilter?);

  List<Input$ShoppingCartsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ShoppingCartsOrderBy>?);

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
    if (other is! Variables$Query$ShoppingCartCollection ||
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
    Input$ShoppingCartsFilter? filter,
    List<Input$ShoppingCartsOrderBy>? orderBy,
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
          'filter': (filter as Input$ShoppingCartsFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ShoppingCartsOrderBy>?),
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
    Input$ShoppingCartsFilter? filter,
    List<Input$ShoppingCartsOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$ShoppingCartCollection {
  Query$ShoppingCartCollection({
    this.shoppingCartsCollection,
    this.$__typename = 'Query',
  });

  factory Query$ShoppingCartCollection.fromJson(Map<String, dynamic> json) {
    final l$shoppingCartsCollection = json['shoppingCartsCollection'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection(
      shoppingCartsCollection: l$shoppingCartsCollection == null
          ? null
          : Query$ShoppingCartCollection$shoppingCartsCollection.fromJson(
              (l$shoppingCartsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ShoppingCartCollection$shoppingCartsCollection?
      shoppingCartsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shoppingCartsCollection = shoppingCartsCollection;
    _resultData['shoppingCartsCollection'] =
        l$shoppingCartsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shoppingCartsCollection = shoppingCartsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shoppingCartsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ShoppingCartCollection ||
        runtimeType != other.runtimeType) {
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
    Query$ShoppingCartCollection$shoppingCartsCollection?
        shoppingCartsCollection,
    String? $__typename,
  });
  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<TRes>
      get shoppingCartsCollection;
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
    Object? shoppingCartsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection(
        shoppingCartsCollection: shoppingCartsCollection == _undefined
            ? _instance.shoppingCartsCollection
            : (shoppingCartsCollection
                as Query$ShoppingCartCollection$shoppingCartsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<TRes>
      get shoppingCartsCollection {
    final local$shoppingCartsCollection = _instance.shoppingCartsCollection;
    return local$shoppingCartsCollection == null
        ? CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection.stub(
            _then(_instance))
        : CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection(
            local$shoppingCartsCollection,
            (e) => call(shoppingCartsCollection: e));
  }
}

class _CopyWithStubImpl$Query$ShoppingCartCollection<TRes>
    implements CopyWith$Query$ShoppingCartCollection<TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection(this._res);

  TRes _res;

  call({
    Query$ShoppingCartCollection$shoppingCartsCollection?
        shoppingCartsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<TRes>
      get shoppingCartsCollection =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection.stub(
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
          name: NameNode(value: 'ShoppingCartsFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ShoppingCartsOrderBy'),
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
        name: NameNode(value: 'shoppingCartsCollection'),
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
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Query$ShoppingCartCollection$shoppingCartsCollection {
  Query$ShoppingCartCollection$shoppingCartsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ShoppingCartsConnection',
  });

  factory Query$ShoppingCartCollection$shoppingCartsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection$shoppingCartsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ShoppingCartCollection$shoppingCartsCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo
          .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ShoppingCartCollection$shoppingCartsCollection$edges> edges;

  final Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo pageInfo;

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
    if (other is! Query$ShoppingCartCollection$shoppingCartsCollection ||
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

extension UtilityExtension$Query$ShoppingCartCollection$shoppingCartsCollection
    on Query$ShoppingCartCollection$shoppingCartsCollection {
  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<
          Query$ShoppingCartCollection$shoppingCartsCollection>
      get copyWith =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<
    TRes> {
  factory CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection(
    Query$ShoppingCartCollection$shoppingCartsCollection instance,
    TRes Function(Query$ShoppingCartCollection$shoppingCartsCollection) then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection;

  factory CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection;

  TRes call({
    List<Query$ShoppingCartCollection$shoppingCartsCollection$edges>? edges,
    Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ShoppingCartCollection$shoppingCartsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
                      Query$ShoppingCartCollection$shoppingCartsCollection$edges>>)
          _fn);
  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection<TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection$shoppingCartsCollection _instance;

  final TRes Function(Query$ShoppingCartCollection$shoppingCartsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection$shoppingCartsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$ShoppingCartCollection$shoppingCartsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ShoppingCartCollection$shoppingCartsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
                          Query$ShoppingCartCollection$shoppingCartsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection<TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection(
      this._res);

  TRes _res;

  call({
    List<Query$ShoppingCartCollection$shoppingCartsCollection$edges>? edges,
    Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo
              .stub(_res);
}

class Query$ShoppingCartCollection$shoppingCartsCollection$edges {
  Query$ShoppingCartCollection$shoppingCartsCollection$edges({
    required this.node,
    this.$__typename = 'ShoppingCartsEdge',
  });

  factory Query$ShoppingCartCollection$shoppingCartsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection$shoppingCartsCollection$edges(
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
    if (other is! Query$ShoppingCartCollection$shoppingCartsCollection$edges ||
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

extension UtilityExtension$Query$ShoppingCartCollection$shoppingCartsCollection$edges
    on Query$ShoppingCartCollection$shoppingCartsCollection$edges {
  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
          Query$ShoppingCartCollection$shoppingCartsCollection$edges>
      get copyWith =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
    TRes> {
  factory CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges(
    Query$ShoppingCartCollection$shoppingCartsCollection$edges instance,
    TRes Function(Query$ShoppingCartCollection$shoppingCartsCollection$edges)
        then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection$edges;

  factory CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection$edges;

  TRes call({
    Fragment$ShoppingCart? node,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCart<TRes> get node;
}

class _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
            TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection$shoppingCartsCollection$edges _instance;

  final TRes Function(
      Query$ShoppingCartCollection$shoppingCartsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection$shoppingCartsCollection$edges(
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

class _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection$edges(
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

class Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo {
  Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
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
    if (other
            is! Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo ||
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

extension UtilityExtension$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo
    on Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo {
  CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<
          Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
    Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo instance,
    TRes Function(Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo;

  factory CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo _instance;

  final TRes Function(
      Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$ShoppingCartCollection$shoppingCartsCollection$pageInfo(
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
    required Input$ShoppingCartsUpdateInput input,
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
    result$data['input'] = Input$ShoppingCartsUpdateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateShoppingCart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ShoppingCartsUpdateInput get input =>
      (_$data['input'] as Input$ShoppingCartsUpdateInput);

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
    if (other is! Variables$Mutation$UpdateShoppingCart ||
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
    Input$ShoppingCartsUpdateInput? input,
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
          'input': (input as Input$ShoppingCartsUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCart<TRes>
    implements CopyWith$Variables$Mutation$UpdateShoppingCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCart(this._res);

  TRes _res;

  call({
    String? id,
    Input$ShoppingCartsUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateShoppingCart {
  Mutation$UpdateShoppingCart({
    required this.updateShoppingCartsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateShoppingCart.fromJson(Map<String, dynamic> json) {
    final l$updateShoppingCartsCollection =
        json['updateShoppingCartsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateShoppingCart(
      updateShoppingCartsCollection:
          Mutation$UpdateShoppingCart$updateShoppingCartsCollection.fromJson(
              (l$updateShoppingCartsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateShoppingCart$updateShoppingCartsCollection
      updateShoppingCartsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateShoppingCartsCollection = updateShoppingCartsCollection;
    _resultData['updateShoppingCartsCollection'] =
        l$updateShoppingCartsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateShoppingCartsCollection = updateShoppingCartsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateShoppingCartsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateShoppingCart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateShoppingCartsCollection = updateShoppingCartsCollection;
    final lOther$updateShoppingCartsCollection =
        other.updateShoppingCartsCollection;
    if (l$updateShoppingCartsCollection !=
        lOther$updateShoppingCartsCollection) {
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
    Mutation$UpdateShoppingCart$updateShoppingCartsCollection?
        updateShoppingCartsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<TRes>
      get updateShoppingCartsCollection;
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
    Object? updateShoppingCartsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateShoppingCart(
        updateShoppingCartsCollection: updateShoppingCartsCollection ==
                    _undefined ||
                updateShoppingCartsCollection == null
            ? _instance.updateShoppingCartsCollection
            : (updateShoppingCartsCollection
                as Mutation$UpdateShoppingCart$updateShoppingCartsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<TRes>
      get updateShoppingCartsCollection {
    final local$updateShoppingCartsCollection =
        _instance.updateShoppingCartsCollection;
    return CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
        local$updateShoppingCartsCollection,
        (e) => call(updateShoppingCartsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateShoppingCart<TRes>
    implements CopyWith$Mutation$UpdateShoppingCart<TRes> {
  _CopyWithStubImpl$Mutation$UpdateShoppingCart(this._res);

  TRes _res;

  call({
    Mutation$UpdateShoppingCart$updateShoppingCartsCollection?
        updateShoppingCartsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<TRes>
      get updateShoppingCartsCollection =>
          CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection
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
          name: NameNode(value: 'ShoppingCartsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateShoppingCartsCollection'),
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
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
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

class Mutation$UpdateShoppingCart$updateShoppingCartsCollection {
  Mutation$UpdateShoppingCart$updateShoppingCartsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartsUpdateResponse',
  });

  factory Mutation$UpdateShoppingCart$updateShoppingCartsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
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
    if (other is! Mutation$UpdateShoppingCart$updateShoppingCartsCollection ||
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

extension UtilityExtension$Mutation$UpdateShoppingCart$updateShoppingCartsCollection
    on Mutation$UpdateShoppingCart$updateShoppingCartsCollection {
  CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<
          Mutation$UpdateShoppingCart$updateShoppingCartsCollection>
      get copyWith =>
          CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<
    TRes> {
  factory CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
    Mutation$UpdateShoppingCart$updateShoppingCartsCollection instance,
    TRes Function(Mutation$UpdateShoppingCart$updateShoppingCartsCollection)
        then,
  ) = _CopyWithImpl$Mutation$UpdateShoppingCart$updateShoppingCartsCollection;

  factory CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateShoppingCart$updateShoppingCartsCollection;

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

class _CopyWithImpl$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<
            TRes> {
  _CopyWithImpl$Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateShoppingCart$updateShoppingCartsCollection _instance;

  final TRes Function(Mutation$UpdateShoppingCart$updateShoppingCartsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
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

class _CopyWithStubImpl$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateShoppingCart$updateShoppingCartsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateShoppingCart$updateShoppingCartsCollection(
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

class Variables$Mutation$UpdateShoppingCartItem {
  factory Variables$Mutation$UpdateShoppingCartItem({
    required String id,
    required Input$ShoppingCartItemsUpdateInput input,
  }) =>
      Variables$Mutation$UpdateShoppingCartItem._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateShoppingCartItem._(this._$data);

  factory Variables$Mutation$UpdateShoppingCartItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartItemsUpdateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateShoppingCartItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ShoppingCartItemsUpdateInput get input =>
      (_$data['input'] as Input$ShoppingCartItemsUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateShoppingCartItem<
          Variables$Mutation$UpdateShoppingCartItem>
      get copyWith => CopyWith$Variables$Mutation$UpdateShoppingCartItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateShoppingCartItem ||
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

abstract class CopyWith$Variables$Mutation$UpdateShoppingCartItem<TRes> {
  factory CopyWith$Variables$Mutation$UpdateShoppingCartItem(
    Variables$Mutation$UpdateShoppingCartItem instance,
    TRes Function(Variables$Mutation$UpdateShoppingCartItem) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateShoppingCartItem;

  factory CopyWith$Variables$Mutation$UpdateShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCartItem;

  TRes call({
    String? id,
    Input$ShoppingCartItemsUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$UpdateShoppingCartItem<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateShoppingCartItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateShoppingCartItem _instance;

  final TRes Function(Variables$Mutation$UpdateShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateShoppingCartItem._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ShoppingCartItemsUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$UpdateShoppingCartItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateShoppingCartItem(this._res);

  TRes _res;

  call({
    String? id,
    Input$ShoppingCartItemsUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateShoppingCartItem {
  Mutation$UpdateShoppingCartItem({
    required this.updateShoppingCartItemsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateShoppingCartItem.fromJson(Map<String, dynamic> json) {
    final l$updateShoppingCartItemsCollection =
        json['updateShoppingCartItemsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateShoppingCartItem(
      updateShoppingCartItemsCollection:
          Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection
              .fromJson((l$updateShoppingCartItemsCollection
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection
      updateShoppingCartItemsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateShoppingCartItemsCollection =
        updateShoppingCartItemsCollection;
    _resultData['updateShoppingCartItemsCollection'] =
        l$updateShoppingCartItemsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateShoppingCartItemsCollection =
        updateShoppingCartItemsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateShoppingCartItemsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateShoppingCartItem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateShoppingCartItemsCollection =
        updateShoppingCartItemsCollection;
    final lOther$updateShoppingCartItemsCollection =
        other.updateShoppingCartItemsCollection;
    if (l$updateShoppingCartItemsCollection !=
        lOther$updateShoppingCartItemsCollection) {
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

extension UtilityExtension$Mutation$UpdateShoppingCartItem
    on Mutation$UpdateShoppingCartItem {
  CopyWith$Mutation$UpdateShoppingCartItem<Mutation$UpdateShoppingCartItem>
      get copyWith => CopyWith$Mutation$UpdateShoppingCartItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateShoppingCartItem<TRes> {
  factory CopyWith$Mutation$UpdateShoppingCartItem(
    Mutation$UpdateShoppingCartItem instance,
    TRes Function(Mutation$UpdateShoppingCartItem) then,
  ) = _CopyWithImpl$Mutation$UpdateShoppingCartItem;

  factory CopyWith$Mutation$UpdateShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateShoppingCartItem;

  TRes call({
    Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection?
        updateShoppingCartItemsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
      TRes> get updateShoppingCartItemsCollection;
}

class _CopyWithImpl$Mutation$UpdateShoppingCartItem<TRes>
    implements CopyWith$Mutation$UpdateShoppingCartItem<TRes> {
  _CopyWithImpl$Mutation$UpdateShoppingCartItem(
    this._instance,
    this._then,
  );

  final Mutation$UpdateShoppingCartItem _instance;

  final TRes Function(Mutation$UpdateShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateShoppingCartItemsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateShoppingCartItem(
        updateShoppingCartItemsCollection: updateShoppingCartItemsCollection ==
                    _undefined ||
                updateShoppingCartItemsCollection == null
            ? _instance.updateShoppingCartItemsCollection
            : (updateShoppingCartItemsCollection
                as Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
      TRes> get updateShoppingCartItemsCollection {
    final local$updateShoppingCartItemsCollection =
        _instance.updateShoppingCartItemsCollection;
    return CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
        local$updateShoppingCartItemsCollection,
        (e) => call(updateShoppingCartItemsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateShoppingCartItem<TRes>
    implements CopyWith$Mutation$UpdateShoppingCartItem<TRes> {
  _CopyWithStubImpl$Mutation$UpdateShoppingCartItem(this._res);

  TRes _res;

  call({
    Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection?
        updateShoppingCartItemsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
          TRes>
      get updateShoppingCartItemsCollection =>
          CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection
              .stub(_res);
}

const documentNodeMutationUpdateShoppingCartItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateShoppingCartItem'),
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
          name: NameNode(value: 'ShoppingCartItemsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateShoppingCartItemsCollection'),
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
                name: NameNode(value: 'ShoppingCartItem'),
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
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);
Mutation$UpdateShoppingCartItem _parserFn$Mutation$UpdateShoppingCartItem(
        Map<String, dynamic> data) =>
    Mutation$UpdateShoppingCartItem.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateShoppingCartItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateShoppingCartItem?,
);

class Options$Mutation$UpdateShoppingCartItem
    extends graphql.MutationOptions<Mutation$UpdateShoppingCartItem> {
  Options$Mutation$UpdateShoppingCartItem({
    String? operationName,
    required Variables$Mutation$UpdateShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateShoppingCartItem>? update,
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
                        : _parserFn$Mutation$UpdateShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateShoppingCartItem,
          parserFn: _parserFn$Mutation$UpdateShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$UpdateShoppingCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateShoppingCartItem
    extends graphql.WatchQueryOptions<Mutation$UpdateShoppingCartItem> {
  WatchOptions$Mutation$UpdateShoppingCartItem({
    String? operationName,
    required Variables$Mutation$UpdateShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateShoppingCartItem? typedOptimisticResult,
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
          document: documentNodeMutationUpdateShoppingCartItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateShoppingCartItem,
        );
}

extension ClientExtension$Mutation$UpdateShoppingCartItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateShoppingCartItem>>
      mutate$UpdateShoppingCartItem(
              Options$Mutation$UpdateShoppingCartItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateShoppingCartItem>
      watchMutation$UpdateShoppingCartItem(
              WatchOptions$Mutation$UpdateShoppingCartItem options) =>
          this.watchMutation(options);
}

class Mutation$UpdateShoppingCartItem$HookResult {
  Mutation$UpdateShoppingCartItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateShoppingCartItem runMutation;

  final graphql.QueryResult<Mutation$UpdateShoppingCartItem> result;
}

Mutation$UpdateShoppingCartItem$HookResult useMutation$UpdateShoppingCartItem(
    [WidgetOptions$Mutation$UpdateShoppingCartItem? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateShoppingCartItem());
  return Mutation$UpdateShoppingCartItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateShoppingCartItem>
    useWatchMutation$UpdateShoppingCartItem(
            WatchOptions$Mutation$UpdateShoppingCartItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateShoppingCartItem
    extends graphql.MutationOptions<Mutation$UpdateShoppingCartItem> {
  WidgetOptions$Mutation$UpdateShoppingCartItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateShoppingCartItem>? update,
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
                        : _parserFn$Mutation$UpdateShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateShoppingCartItem,
          parserFn: _parserFn$Mutation$UpdateShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$UpdateShoppingCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateShoppingCartItem
    = graphql.MultiSourceResult<Mutation$UpdateShoppingCartItem> Function(
  Variables$Mutation$UpdateShoppingCartItem, {
  Object? optimisticResult,
  Mutation$UpdateShoppingCartItem? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateShoppingCartItem = widgets.Widget Function(
  RunMutation$Mutation$UpdateShoppingCartItem,
  graphql.QueryResult<Mutation$UpdateShoppingCartItem>?,
);

class Mutation$UpdateShoppingCartItem$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateShoppingCartItem> {
  Mutation$UpdateShoppingCartItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateShoppingCartItem? options,
    required Builder$Mutation$UpdateShoppingCartItem builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateShoppingCartItem(),
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

class Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection {
  Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartItemsUpdateResponse',
  });

  factory Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCartItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCartItem> records;

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
    if (other
            is! Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection ||
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

extension UtilityExtension$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection
    on Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection {
  CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
          Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection>
      get copyWith =>
          CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
    TRes> {
  factory CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
    Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection instance,
    TRes Function(
            Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection)
        then,
  ) = _CopyWithImpl$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection;

  factory CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection;

  TRes call({
    List<Fragment$ShoppingCartItem>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCartItem> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCartItem<
                      Fragment$ShoppingCartItem>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
            TRes> {
  _CopyWithImpl$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection
      _instance;

  final TRes Function(
      Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCartItem>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCartItem> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCartItem<
                          Fragment$ShoppingCartItem>>)
              _fn) =>
      call(
          records: _fn(
              _instance.records.map((e) => CopyWith$Fragment$ShoppingCartItem(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateShoppingCartItem$updateShoppingCartItemsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCartItem>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$AddShoppingCartItem {
  factory Variables$Mutation$AddShoppingCartItem(
          {required Input$ShoppingCartItemsInsertInput input}) =>
      Variables$Mutation$AddShoppingCartItem._({
        r'input': input,
      });

  Variables$Mutation$AddShoppingCartItem._(this._$data);

  factory Variables$Mutation$AddShoppingCartItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$ShoppingCartItemsInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$AddShoppingCartItem._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ShoppingCartItemsInsertInput get input =>
      (_$data['input'] as Input$ShoppingCartItemsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$AddShoppingCartItem<
          Variables$Mutation$AddShoppingCartItem>
      get copyWith => CopyWith$Variables$Mutation$AddShoppingCartItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$AddShoppingCartItem ||
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

abstract class CopyWith$Variables$Mutation$AddShoppingCartItem<TRes> {
  factory CopyWith$Variables$Mutation$AddShoppingCartItem(
    Variables$Mutation$AddShoppingCartItem instance,
    TRes Function(Variables$Mutation$AddShoppingCartItem) then,
  ) = _CopyWithImpl$Variables$Mutation$AddShoppingCartItem;

  factory CopyWith$Variables$Mutation$AddShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddShoppingCartItem;

  TRes call({Input$ShoppingCartItemsInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$AddShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$AddShoppingCartItem<TRes> {
  _CopyWithImpl$Variables$Mutation$AddShoppingCartItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddShoppingCartItem _instance;

  final TRes Function(Variables$Mutation$AddShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$AddShoppingCartItem._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ShoppingCartItemsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddShoppingCartItem<TRes>
    implements CopyWith$Variables$Mutation$AddShoppingCartItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddShoppingCartItem(this._res);

  TRes _res;

  call({Input$ShoppingCartItemsInsertInput? input}) => _res;
}

class Mutation$AddShoppingCartItem {
  Mutation$AddShoppingCartItem({
    this.insertIntoShoppingCartItemsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddShoppingCartItem.fromJson(Map<String, dynamic> json) {
    final l$insertIntoShoppingCartItemsCollection =
        json['insertIntoShoppingCartItemsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$AddShoppingCartItem(
      insertIntoShoppingCartItemsCollection:
          l$insertIntoShoppingCartItemsCollection == null
              ? null
              : Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection
                  .fromJson((l$insertIntoShoppingCartItemsCollection
                      as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection?
      insertIntoShoppingCartItemsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoShoppingCartItemsCollection =
        insertIntoShoppingCartItemsCollection;
    _resultData['insertIntoShoppingCartItemsCollection'] =
        l$insertIntoShoppingCartItemsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoShoppingCartItemsCollection =
        insertIntoShoppingCartItemsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoShoppingCartItemsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$AddShoppingCartItem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoShoppingCartItemsCollection =
        insertIntoShoppingCartItemsCollection;
    final lOther$insertIntoShoppingCartItemsCollection =
        other.insertIntoShoppingCartItemsCollection;
    if (l$insertIntoShoppingCartItemsCollection !=
        lOther$insertIntoShoppingCartItemsCollection) {
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

extension UtilityExtension$Mutation$AddShoppingCartItem
    on Mutation$AddShoppingCartItem {
  CopyWith$Mutation$AddShoppingCartItem<Mutation$AddShoppingCartItem>
      get copyWith => CopyWith$Mutation$AddShoppingCartItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddShoppingCartItem<TRes> {
  factory CopyWith$Mutation$AddShoppingCartItem(
    Mutation$AddShoppingCartItem instance,
    TRes Function(Mutation$AddShoppingCartItem) then,
  ) = _CopyWithImpl$Mutation$AddShoppingCartItem;

  factory CopyWith$Mutation$AddShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddShoppingCartItem;

  TRes call({
    Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection?
        insertIntoShoppingCartItemsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
      TRes> get insertIntoShoppingCartItemsCollection;
}

class _CopyWithImpl$Mutation$AddShoppingCartItem<TRes>
    implements CopyWith$Mutation$AddShoppingCartItem<TRes> {
  _CopyWithImpl$Mutation$AddShoppingCartItem(
    this._instance,
    this._then,
  );

  final Mutation$AddShoppingCartItem _instance;

  final TRes Function(Mutation$AddShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoShoppingCartItemsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddShoppingCartItem(
        insertIntoShoppingCartItemsCollection:
            insertIntoShoppingCartItemsCollection == _undefined
                ? _instance.insertIntoShoppingCartItemsCollection
                : (insertIntoShoppingCartItemsCollection
                    as Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
      TRes> get insertIntoShoppingCartItemsCollection {
    final local$insertIntoShoppingCartItemsCollection =
        _instance.insertIntoShoppingCartItemsCollection;
    return local$insertIntoShoppingCartItemsCollection == null
        ? CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
            local$insertIntoShoppingCartItemsCollection,
            (e) => call(insertIntoShoppingCartItemsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$AddShoppingCartItem<TRes>
    implements CopyWith$Mutation$AddShoppingCartItem<TRes> {
  _CopyWithStubImpl$Mutation$AddShoppingCartItem(this._res);

  TRes _res;

  call({
    Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection?
        insertIntoShoppingCartItemsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
          TRes>
      get insertIntoShoppingCartItemsCollection =>
          CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection
              .stub(_res);
}

const documentNodeMutationAddShoppingCartItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddShoppingCartItem'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ShoppingCartItemsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoShoppingCartItemsCollection'),
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
                name: NameNode(value: 'ShoppingCartItem'),
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
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);
Mutation$AddShoppingCartItem _parserFn$Mutation$AddShoppingCartItem(
        Map<String, dynamic> data) =>
    Mutation$AddShoppingCartItem.fromJson(data);
typedef OnMutationCompleted$Mutation$AddShoppingCartItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$AddShoppingCartItem?,
);

class Options$Mutation$AddShoppingCartItem
    extends graphql.MutationOptions<Mutation$AddShoppingCartItem> {
  Options$Mutation$AddShoppingCartItem({
    String? operationName,
    required Variables$Mutation$AddShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddShoppingCartItem>? update,
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
                        : _parserFn$Mutation$AddShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddShoppingCartItem,
          parserFn: _parserFn$Mutation$AddShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$AddShoppingCartItem? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddShoppingCartItem
    extends graphql.WatchQueryOptions<Mutation$AddShoppingCartItem> {
  WatchOptions$Mutation$AddShoppingCartItem({
    String? operationName,
    required Variables$Mutation$AddShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddShoppingCartItem? typedOptimisticResult,
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
          document: documentNodeMutationAddShoppingCartItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddShoppingCartItem,
        );
}

extension ClientExtension$Mutation$AddShoppingCartItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddShoppingCartItem>>
      mutate$AddShoppingCartItem(
              Options$Mutation$AddShoppingCartItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddShoppingCartItem>
      watchMutation$AddShoppingCartItem(
              WatchOptions$Mutation$AddShoppingCartItem options) =>
          this.watchMutation(options);
}

class Mutation$AddShoppingCartItem$HookResult {
  Mutation$AddShoppingCartItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddShoppingCartItem runMutation;

  final graphql.QueryResult<Mutation$AddShoppingCartItem> result;
}

Mutation$AddShoppingCartItem$HookResult useMutation$AddShoppingCartItem(
    [WidgetOptions$Mutation$AddShoppingCartItem? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddShoppingCartItem());
  return Mutation$AddShoppingCartItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddShoppingCartItem>
    useWatchMutation$AddShoppingCartItem(
            WatchOptions$Mutation$AddShoppingCartItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddShoppingCartItem
    extends graphql.MutationOptions<Mutation$AddShoppingCartItem> {
  WidgetOptions$Mutation$AddShoppingCartItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddShoppingCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddShoppingCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddShoppingCartItem>? update,
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
                        : _parserFn$Mutation$AddShoppingCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddShoppingCartItem,
          parserFn: _parserFn$Mutation$AddShoppingCartItem,
        );

  final OnMutationCompleted$Mutation$AddShoppingCartItem? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AddShoppingCartItem
    = graphql.MultiSourceResult<Mutation$AddShoppingCartItem> Function(
  Variables$Mutation$AddShoppingCartItem, {
  Object? optimisticResult,
  Mutation$AddShoppingCartItem? typedOptimisticResult,
});
typedef Builder$Mutation$AddShoppingCartItem = widgets.Widget Function(
  RunMutation$Mutation$AddShoppingCartItem,
  graphql.QueryResult<Mutation$AddShoppingCartItem>?,
);

class Mutation$AddShoppingCartItem$Widget
    extends graphql_flutter.Mutation<Mutation$AddShoppingCartItem> {
  Mutation$AddShoppingCartItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddShoppingCartItem? options,
    required Builder$Mutation$AddShoppingCartItem builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$AddShoppingCartItem(),
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

class Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection {
  Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ShoppingCartItemsInsertResponse',
  });

  factory Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCartItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ShoppingCartItem> records;

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
    if (other
            is! Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection ||
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

extension UtilityExtension$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection
    on Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection {
  CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
          Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection>
      get copyWith =>
          CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
    TRes> {
  factory CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
    Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection instance,
    TRes Function(
            Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection)
        then,
  ) = _CopyWithImpl$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection;

  factory CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection;

  TRes call({
    List<Fragment$ShoppingCartItem>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$ShoppingCartItem> Function(
              Iterable<
                  CopyWith$Fragment$ShoppingCartItem<
                      Fragment$ShoppingCartItem>>)
          _fn);
}

class _CopyWithImpl$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
            TRes> {
  _CopyWithImpl$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
    this._instance,
    this._then,
  );

  final Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection
      _instance;

  final TRes Function(
      Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$ShoppingCartItem>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$ShoppingCartItem> Function(
                  Iterable<
                      CopyWith$Fragment$ShoppingCartItem<
                          Fragment$ShoppingCartItem>>)
              _fn) =>
      call(
          records: _fn(
              _instance.records.map((e) => CopyWith$Fragment$ShoppingCartItem(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$AddShoppingCartItem$insertIntoShoppingCartItemsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$ShoppingCartItem>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$CreateOrderTransaction {
  factory Variables$Mutation$CreateOrderTransaction(
          {required Input$OrderTransactionsInsertInput input}) =>
      Variables$Mutation$CreateOrderTransaction._({
        r'input': input,
      });

  Variables$Mutation$CreateOrderTransaction._(this._$data);

  factory Variables$Mutation$CreateOrderTransaction.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$OrderTransactionsInsertInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateOrderTransaction._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrderTransactionsInsertInput get input =>
      (_$data['input'] as Input$OrderTransactionsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrderTransaction<
          Variables$Mutation$CreateOrderTransaction>
      get copyWith => CopyWith$Variables$Mutation$CreateOrderTransaction(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateOrderTransaction ||
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

abstract class CopyWith$Variables$Mutation$CreateOrderTransaction<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrderTransaction(
    Variables$Mutation$CreateOrderTransaction instance,
    TRes Function(Variables$Mutation$CreateOrderTransaction) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrderTransaction;

  factory CopyWith$Variables$Mutation$CreateOrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrderTransaction;

  TRes call({Input$OrderTransactionsInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateOrderTransaction<TRes>
    implements CopyWith$Variables$Mutation$CreateOrderTransaction<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrderTransaction(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrderTransaction _instance;

  final TRes Function(Variables$Mutation$CreateOrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateOrderTransaction._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$OrderTransactionsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrderTransaction<TRes>
    implements CopyWith$Variables$Mutation$CreateOrderTransaction<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrderTransaction(this._res);

  TRes _res;

  call({Input$OrderTransactionsInsertInput? input}) => _res;
}

class Mutation$CreateOrderTransaction {
  Mutation$CreateOrderTransaction({
    this.insertIntoOrderTransactionsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrderTransaction.fromJson(Map<String, dynamic> json) {
    final l$insertIntoOrderTransactionsCollection =
        json['insertIntoOrderTransactionsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrderTransaction(
      insertIntoOrderTransactionsCollection:
          l$insertIntoOrderTransactionsCollection == null
              ? null
              : Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection
                  .fromJson((l$insertIntoOrderTransactionsCollection
                      as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection?
      insertIntoOrderTransactionsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoOrderTransactionsCollection =
        insertIntoOrderTransactionsCollection;
    _resultData['insertIntoOrderTransactionsCollection'] =
        l$insertIntoOrderTransactionsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoOrderTransactionsCollection =
        insertIntoOrderTransactionsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoOrderTransactionsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrderTransaction ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoOrderTransactionsCollection =
        insertIntoOrderTransactionsCollection;
    final lOther$insertIntoOrderTransactionsCollection =
        other.insertIntoOrderTransactionsCollection;
    if (l$insertIntoOrderTransactionsCollection !=
        lOther$insertIntoOrderTransactionsCollection) {
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

extension UtilityExtension$Mutation$CreateOrderTransaction
    on Mutation$CreateOrderTransaction {
  CopyWith$Mutation$CreateOrderTransaction<Mutation$CreateOrderTransaction>
      get copyWith => CopyWith$Mutation$CreateOrderTransaction(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrderTransaction<TRes> {
  factory CopyWith$Mutation$CreateOrderTransaction(
    Mutation$CreateOrderTransaction instance,
    TRes Function(Mutation$CreateOrderTransaction) then,
  ) = _CopyWithImpl$Mutation$CreateOrderTransaction;

  factory CopyWith$Mutation$CreateOrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrderTransaction;

  TRes call({
    Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection?
        insertIntoOrderTransactionsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
      TRes> get insertIntoOrderTransactionsCollection;
}

class _CopyWithImpl$Mutation$CreateOrderTransaction<TRes>
    implements CopyWith$Mutation$CreateOrderTransaction<TRes> {
  _CopyWithImpl$Mutation$CreateOrderTransaction(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrderTransaction _instance;

  final TRes Function(Mutation$CreateOrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoOrderTransactionsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrderTransaction(
        insertIntoOrderTransactionsCollection:
            insertIntoOrderTransactionsCollection == _undefined
                ? _instance.insertIntoOrderTransactionsCollection
                : (insertIntoOrderTransactionsCollection
                    as Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
      TRes> get insertIntoOrderTransactionsCollection {
    final local$insertIntoOrderTransactionsCollection =
        _instance.insertIntoOrderTransactionsCollection;
    return local$insertIntoOrderTransactionsCollection == null
        ? CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
            local$insertIntoOrderTransactionsCollection,
            (e) => call(insertIntoOrderTransactionsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrderTransaction<TRes>
    implements CopyWith$Mutation$CreateOrderTransaction<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrderTransaction(this._res);

  TRes _res;

  call({
    Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection?
        insertIntoOrderTransactionsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
          TRes>
      get insertIntoOrderTransactionsCollection =>
          CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection
              .stub(_res);
}

const documentNodeMutationCreateOrderTransaction = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrderTransaction'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderTransactionsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoOrderTransactionsCollection'),
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
  fragmentDefinitionOrderTransaction,
]);
Mutation$CreateOrderTransaction _parserFn$Mutation$CreateOrderTransaction(
        Map<String, dynamic> data) =>
    Mutation$CreateOrderTransaction.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrderTransaction = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreateOrderTransaction?,
);

class Options$Mutation$CreateOrderTransaction
    extends graphql.MutationOptions<Mutation$CreateOrderTransaction> {
  Options$Mutation$CreateOrderTransaction({
    String? operationName,
    required Variables$Mutation$CreateOrderTransaction variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrderTransaction? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrderTransaction? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrderTransaction>? update,
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
                        : _parserFn$Mutation$CreateOrderTransaction(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrderTransaction,
          parserFn: _parserFn$Mutation$CreateOrderTransaction,
        );

  final OnMutationCompleted$Mutation$CreateOrderTransaction?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrderTransaction
    extends graphql.WatchQueryOptions<Mutation$CreateOrderTransaction> {
  WatchOptions$Mutation$CreateOrderTransaction({
    String? operationName,
    required Variables$Mutation$CreateOrderTransaction variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrderTransaction? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrderTransaction,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrderTransaction,
        );
}

extension ClientExtension$Mutation$CreateOrderTransaction
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrderTransaction>>
      mutate$CreateOrderTransaction(
              Options$Mutation$CreateOrderTransaction options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrderTransaction>
      watchMutation$CreateOrderTransaction(
              WatchOptions$Mutation$CreateOrderTransaction options) =>
          this.watchMutation(options);
}

class Mutation$CreateOrderTransaction$HookResult {
  Mutation$CreateOrderTransaction$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrderTransaction runMutation;

  final graphql.QueryResult<Mutation$CreateOrderTransaction> result;
}

Mutation$CreateOrderTransaction$HookResult useMutation$CreateOrderTransaction(
    [WidgetOptions$Mutation$CreateOrderTransaction? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrderTransaction());
  return Mutation$CreateOrderTransaction$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrderTransaction>
    useWatchMutation$CreateOrderTransaction(
            WatchOptions$Mutation$CreateOrderTransaction options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrderTransaction
    extends graphql.MutationOptions<Mutation$CreateOrderTransaction> {
  WidgetOptions$Mutation$CreateOrderTransaction({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrderTransaction? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrderTransaction? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrderTransaction>? update,
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
                        : _parserFn$Mutation$CreateOrderTransaction(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrderTransaction,
          parserFn: _parserFn$Mutation$CreateOrderTransaction,
        );

  final OnMutationCompleted$Mutation$CreateOrderTransaction?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrderTransaction
    = graphql.MultiSourceResult<Mutation$CreateOrderTransaction> Function(
  Variables$Mutation$CreateOrderTransaction, {
  Object? optimisticResult,
  Mutation$CreateOrderTransaction? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrderTransaction = widgets.Widget Function(
  RunMutation$Mutation$CreateOrderTransaction,
  graphql.QueryResult<Mutation$CreateOrderTransaction>?,
);

class Mutation$CreateOrderTransaction$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrderTransaction> {
  Mutation$CreateOrderTransaction$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrderTransaction? options,
    required Builder$Mutation$CreateOrderTransaction builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrderTransaction(),
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

class Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection {
  Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrderTransactionsInsertResponse',
  });

  factory Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$OrderTransaction.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$OrderTransaction> records;

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
    if (other
            is! Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection ||
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

extension UtilityExtension$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection
    on Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection {
  CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
          Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection>
      get copyWith =>
          CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
    TRes> {
  factory CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
    Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection
        instance,
    TRes Function(
            Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection;

  factory CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection;

  TRes call({
    List<Fragment$OrderTransaction>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$OrderTransaction> Function(
              Iterable<
                  CopyWith$Fragment$OrderTransaction<
                      Fragment$OrderTransaction>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection
      _instance;

  final TRes Function(
          Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$OrderTransaction>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$OrderTransaction> Function(
                  Iterable<
                      CopyWith$Fragment$OrderTransaction<
                          Fragment$OrderTransaction>>)
              _fn) =>
      call(
          records: _fn(
              _instance.records.map((e) => CopyWith$Fragment$OrderTransaction(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateOrderTransaction$insertIntoOrderTransactionsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$OrderTransaction>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateOrderTransaction {
  factory Variables$Mutation$UpdateOrderTransaction({
    required String id,
    required Input$OrderTransactionsUpdateInput input,
  }) =>
      Variables$Mutation$UpdateOrderTransaction._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateOrderTransaction._(this._$data);

  factory Variables$Mutation$UpdateOrderTransaction.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] = Input$OrderTransactionsUpdateInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateOrderTransaction._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$OrderTransactionsUpdateInput get input =>
      (_$data['input'] as Input$OrderTransactionsUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrderTransaction<
          Variables$Mutation$UpdateOrderTransaction>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrderTransaction(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateOrderTransaction ||
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

abstract class CopyWith$Variables$Mutation$UpdateOrderTransaction<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrderTransaction(
    Variables$Mutation$UpdateOrderTransaction instance,
    TRes Function(Variables$Mutation$UpdateOrderTransaction) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrderTransaction;

  factory CopyWith$Variables$Mutation$UpdateOrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrderTransaction;

  TRes call({
    String? id,
    Input$OrderTransactionsUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrderTransaction<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderTransaction<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrderTransaction(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrderTransaction _instance;

  final TRes Function(Variables$Mutation$UpdateOrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrderTransaction._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$OrderTransactionsUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrderTransaction<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderTransaction<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrderTransaction(this._res);

  TRes _res;

  call({
    String? id,
    Input$OrderTransactionsUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateOrderTransaction {
  Mutation$UpdateOrderTransaction({
    required this.updateOrderTransactionsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOrderTransaction.fromJson(Map<String, dynamic> json) {
    final l$updateOrderTransactionsCollection =
        json['updateOrderTransactionsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderTransaction(
      updateOrderTransactionsCollection:
          Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection
              .fromJson((l$updateOrderTransactionsCollection
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection
      updateOrderTransactionsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOrderTransactionsCollection =
        updateOrderTransactionsCollection;
    _resultData['updateOrderTransactionsCollection'] =
        l$updateOrderTransactionsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOrderTransactionsCollection =
        updateOrderTransactionsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOrderTransactionsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateOrderTransaction ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOrderTransactionsCollection =
        updateOrderTransactionsCollection;
    final lOther$updateOrderTransactionsCollection =
        other.updateOrderTransactionsCollection;
    if (l$updateOrderTransactionsCollection !=
        lOther$updateOrderTransactionsCollection) {
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

extension UtilityExtension$Mutation$UpdateOrderTransaction
    on Mutation$UpdateOrderTransaction {
  CopyWith$Mutation$UpdateOrderTransaction<Mutation$UpdateOrderTransaction>
      get copyWith => CopyWith$Mutation$UpdateOrderTransaction(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderTransaction<TRes> {
  factory CopyWith$Mutation$UpdateOrderTransaction(
    Mutation$UpdateOrderTransaction instance,
    TRes Function(Mutation$UpdateOrderTransaction) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderTransaction;

  factory CopyWith$Mutation$UpdateOrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderTransaction;

  TRes call({
    Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection?
        updateOrderTransactionsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
      TRes> get updateOrderTransactionsCollection;
}

class _CopyWithImpl$Mutation$UpdateOrderTransaction<TRes>
    implements CopyWith$Mutation$UpdateOrderTransaction<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderTransaction(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderTransaction _instance;

  final TRes Function(Mutation$UpdateOrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOrderTransactionsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderTransaction(
        updateOrderTransactionsCollection: updateOrderTransactionsCollection ==
                    _undefined ||
                updateOrderTransactionsCollection == null
            ? _instance.updateOrderTransactionsCollection
            : (updateOrderTransactionsCollection
                as Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
      TRes> get updateOrderTransactionsCollection {
    final local$updateOrderTransactionsCollection =
        _instance.updateOrderTransactionsCollection;
    return CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
        local$updateOrderTransactionsCollection,
        (e) => call(updateOrderTransactionsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderTransaction<TRes>
    implements CopyWith$Mutation$UpdateOrderTransaction<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderTransaction(this._res);

  TRes _res;

  call({
    Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection?
        updateOrderTransactionsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
          TRes>
      get updateOrderTransactionsCollection =>
          CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection
              .stub(_res);
}

const documentNodeMutationUpdateOrderTransaction = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrderTransaction'),
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
          name: NameNode(value: 'OrderTransactionsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOrderTransactionsCollection'),
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
  fragmentDefinitionOrderTransaction,
]);
Mutation$UpdateOrderTransaction _parserFn$Mutation$UpdateOrderTransaction(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrderTransaction.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrderTransaction = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrderTransaction?,
);

class Options$Mutation$UpdateOrderTransaction
    extends graphql.MutationOptions<Mutation$UpdateOrderTransaction> {
  Options$Mutation$UpdateOrderTransaction({
    String? operationName,
    required Variables$Mutation$UpdateOrderTransaction variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderTransaction? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderTransaction? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderTransaction>? update,
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
                        : _parserFn$Mutation$UpdateOrderTransaction(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderTransaction,
          parserFn: _parserFn$Mutation$UpdateOrderTransaction,
        );

  final OnMutationCompleted$Mutation$UpdateOrderTransaction?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrderTransaction
    extends graphql.WatchQueryOptions<Mutation$UpdateOrderTransaction> {
  WatchOptions$Mutation$UpdateOrderTransaction({
    String? operationName,
    required Variables$Mutation$UpdateOrderTransaction variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderTransaction? typedOptimisticResult,
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
          document: documentNodeMutationUpdateOrderTransaction,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrderTransaction,
        );
}

extension ClientExtension$Mutation$UpdateOrderTransaction
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrderTransaction>>
      mutate$UpdateOrderTransaction(
              Options$Mutation$UpdateOrderTransaction options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrderTransaction>
      watchMutation$UpdateOrderTransaction(
              WatchOptions$Mutation$UpdateOrderTransaction options) =>
          this.watchMutation(options);
}

class Mutation$UpdateOrderTransaction$HookResult {
  Mutation$UpdateOrderTransaction$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateOrderTransaction runMutation;

  final graphql.QueryResult<Mutation$UpdateOrderTransaction> result;
}

Mutation$UpdateOrderTransaction$HookResult useMutation$UpdateOrderTransaction(
    [WidgetOptions$Mutation$UpdateOrderTransaction? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateOrderTransaction());
  return Mutation$UpdateOrderTransaction$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateOrderTransaction>
    useWatchMutation$UpdateOrderTransaction(
            WatchOptions$Mutation$UpdateOrderTransaction options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateOrderTransaction
    extends graphql.MutationOptions<Mutation$UpdateOrderTransaction> {
  WidgetOptions$Mutation$UpdateOrderTransaction({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderTransaction? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderTransaction? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderTransaction>? update,
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
                        : _parserFn$Mutation$UpdateOrderTransaction(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderTransaction,
          parserFn: _parserFn$Mutation$UpdateOrderTransaction,
        );

  final OnMutationCompleted$Mutation$UpdateOrderTransaction?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateOrderTransaction
    = graphql.MultiSourceResult<Mutation$UpdateOrderTransaction> Function(
  Variables$Mutation$UpdateOrderTransaction, {
  Object? optimisticResult,
  Mutation$UpdateOrderTransaction? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateOrderTransaction = widgets.Widget Function(
  RunMutation$Mutation$UpdateOrderTransaction,
  graphql.QueryResult<Mutation$UpdateOrderTransaction>?,
);

class Mutation$UpdateOrderTransaction$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateOrderTransaction> {
  Mutation$UpdateOrderTransaction$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateOrderTransaction? options,
    required Builder$Mutation$UpdateOrderTransaction builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateOrderTransaction(),
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

class Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection {
  Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrderTransactionsUpdateResponse',
  });

  factory Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
      records: (l$records as List<dynamic>)
          .map((e) =>
              Fragment$OrderTransaction.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$OrderTransaction> records;

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
    if (other
            is! Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection ||
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

extension UtilityExtension$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection
    on Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection {
  CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
          Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection>
      get copyWith =>
          CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
    TRes> {
  factory CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
    Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection instance,
    TRes Function(
            Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection)
        then,
  ) = _CopyWithImpl$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection;

  factory CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection;

  TRes call({
    List<Fragment$OrderTransaction>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$OrderTransaction> Function(
              Iterable<
                  CopyWith$Fragment$OrderTransaction<
                      Fragment$OrderTransaction>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
            TRes> {
  _CopyWithImpl$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection
      _instance;

  final TRes Function(
      Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$OrderTransaction>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$OrderTransaction> Function(
                  Iterable<
                      CopyWith$Fragment$OrderTransaction<
                          Fragment$OrderTransaction>>)
              _fn) =>
      call(
          records: _fn(
              _instance.records.map((e) => CopyWith$Fragment$OrderTransaction(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
        TRes>
    implements
        CopyWith$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderTransaction$updateOrderTransactionsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$OrderTransaction>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteOrderTransaction {
  factory Variables$Mutation$DeleteOrderTransaction({required String id}) =>
      Variables$Mutation$DeleteOrderTransaction._({
        r'id': id,
      });

  Variables$Mutation$DeleteOrderTransaction._(this._$data);

  factory Variables$Mutation$DeleteOrderTransaction.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteOrderTransaction._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteOrderTransaction<
          Variables$Mutation$DeleteOrderTransaction>
      get copyWith => CopyWith$Variables$Mutation$DeleteOrderTransaction(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteOrderTransaction ||
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

abstract class CopyWith$Variables$Mutation$DeleteOrderTransaction<TRes> {
  factory CopyWith$Variables$Mutation$DeleteOrderTransaction(
    Variables$Mutation$DeleteOrderTransaction instance,
    TRes Function(Variables$Mutation$DeleteOrderTransaction) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteOrderTransaction;

  factory CopyWith$Variables$Mutation$DeleteOrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteOrderTransaction;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteOrderTransaction<TRes>
    implements CopyWith$Variables$Mutation$DeleteOrderTransaction<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteOrderTransaction(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteOrderTransaction _instance;

  final TRes Function(Variables$Mutation$DeleteOrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteOrderTransaction._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteOrderTransaction<TRes>
    implements CopyWith$Variables$Mutation$DeleteOrderTransaction<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteOrderTransaction(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteOrderTransaction {
  Mutation$DeleteOrderTransaction({
    required this.deleteFromOrderTransactionsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteOrderTransaction.fromJson(Map<String, dynamic> json) {
    final l$deleteFromOrderTransactionsCollection =
        json['deleteFromOrderTransactionsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOrderTransaction(
      deleteFromOrderTransactionsCollection:
          Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection
              .fromJson((l$deleteFromOrderTransactionsCollection
                  as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection
      deleteFromOrderTransactionsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromOrderTransactionsCollection =
        deleteFromOrderTransactionsCollection;
    _resultData['deleteFromOrderTransactionsCollection'] =
        l$deleteFromOrderTransactionsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromOrderTransactionsCollection =
        deleteFromOrderTransactionsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromOrderTransactionsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteOrderTransaction ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromOrderTransactionsCollection =
        deleteFromOrderTransactionsCollection;
    final lOther$deleteFromOrderTransactionsCollection =
        other.deleteFromOrderTransactionsCollection;
    if (l$deleteFromOrderTransactionsCollection !=
        lOther$deleteFromOrderTransactionsCollection) {
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

extension UtilityExtension$Mutation$DeleteOrderTransaction
    on Mutation$DeleteOrderTransaction {
  CopyWith$Mutation$DeleteOrderTransaction<Mutation$DeleteOrderTransaction>
      get copyWith => CopyWith$Mutation$DeleteOrderTransaction(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOrderTransaction<TRes> {
  factory CopyWith$Mutation$DeleteOrderTransaction(
    Mutation$DeleteOrderTransaction instance,
    TRes Function(Mutation$DeleteOrderTransaction) then,
  ) = _CopyWithImpl$Mutation$DeleteOrderTransaction;

  factory CopyWith$Mutation$DeleteOrderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOrderTransaction;

  TRes call({
    Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection?
        deleteFromOrderTransactionsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
      TRes> get deleteFromOrderTransactionsCollection;
}

class _CopyWithImpl$Mutation$DeleteOrderTransaction<TRes>
    implements CopyWith$Mutation$DeleteOrderTransaction<TRes> {
  _CopyWithImpl$Mutation$DeleteOrderTransaction(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOrderTransaction _instance;

  final TRes Function(Mutation$DeleteOrderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromOrderTransactionsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteOrderTransaction(
        deleteFromOrderTransactionsCollection:
            deleteFromOrderTransactionsCollection == _undefined ||
                    deleteFromOrderTransactionsCollection == null
                ? _instance.deleteFromOrderTransactionsCollection
                : (deleteFromOrderTransactionsCollection
                    as Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
      TRes> get deleteFromOrderTransactionsCollection {
    final local$deleteFromOrderTransactionsCollection =
        _instance.deleteFromOrderTransactionsCollection;
    return CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
        local$deleteFromOrderTransactionsCollection,
        (e) => call(deleteFromOrderTransactionsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteOrderTransaction<TRes>
    implements CopyWith$Mutation$DeleteOrderTransaction<TRes> {
  _CopyWithStubImpl$Mutation$DeleteOrderTransaction(this._res);

  TRes _res;

  call({
    Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection?
        deleteFromOrderTransactionsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
          TRes>
      get deleteFromOrderTransactionsCollection =>
          CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection
              .stub(_res);
}

const documentNodeMutationDeleteOrderTransaction = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteOrderTransaction'),
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
        name: NameNode(value: 'deleteFromOrderTransactionsCollection'),
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
]);
Mutation$DeleteOrderTransaction _parserFn$Mutation$DeleteOrderTransaction(
        Map<String, dynamic> data) =>
    Mutation$DeleteOrderTransaction.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteOrderTransaction = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteOrderTransaction?,
);

class Options$Mutation$DeleteOrderTransaction
    extends graphql.MutationOptions<Mutation$DeleteOrderTransaction> {
  Options$Mutation$DeleteOrderTransaction({
    String? operationName,
    required Variables$Mutation$DeleteOrderTransaction variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrderTransaction? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOrderTransaction? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOrderTransaction>? update,
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
                        : _parserFn$Mutation$DeleteOrderTransaction(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOrderTransaction,
          parserFn: _parserFn$Mutation$DeleteOrderTransaction,
        );

  final OnMutationCompleted$Mutation$DeleteOrderTransaction?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteOrderTransaction
    extends graphql.WatchQueryOptions<Mutation$DeleteOrderTransaction> {
  WatchOptions$Mutation$DeleteOrderTransaction({
    String? operationName,
    required Variables$Mutation$DeleteOrderTransaction variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrderTransaction? typedOptimisticResult,
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
          document: documentNodeMutationDeleteOrderTransaction,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteOrderTransaction,
        );
}

extension ClientExtension$Mutation$DeleteOrderTransaction
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteOrderTransaction>>
      mutate$DeleteOrderTransaction(
              Options$Mutation$DeleteOrderTransaction options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteOrderTransaction>
      watchMutation$DeleteOrderTransaction(
              WatchOptions$Mutation$DeleteOrderTransaction options) =>
          this.watchMutation(options);
}

class Mutation$DeleteOrderTransaction$HookResult {
  Mutation$DeleteOrderTransaction$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteOrderTransaction runMutation;

  final graphql.QueryResult<Mutation$DeleteOrderTransaction> result;
}

Mutation$DeleteOrderTransaction$HookResult useMutation$DeleteOrderTransaction(
    [WidgetOptions$Mutation$DeleteOrderTransaction? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteOrderTransaction());
  return Mutation$DeleteOrderTransaction$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteOrderTransaction>
    useWatchMutation$DeleteOrderTransaction(
            WatchOptions$Mutation$DeleteOrderTransaction options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteOrderTransaction
    extends graphql.MutationOptions<Mutation$DeleteOrderTransaction> {
  WidgetOptions$Mutation$DeleteOrderTransaction({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteOrderTransaction? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteOrderTransaction? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteOrderTransaction>? update,
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
                        : _parserFn$Mutation$DeleteOrderTransaction(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteOrderTransaction,
          parserFn: _parserFn$Mutation$DeleteOrderTransaction,
        );

  final OnMutationCompleted$Mutation$DeleteOrderTransaction?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteOrderTransaction
    = graphql.MultiSourceResult<Mutation$DeleteOrderTransaction> Function(
  Variables$Mutation$DeleteOrderTransaction, {
  Object? optimisticResult,
  Mutation$DeleteOrderTransaction? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteOrderTransaction = widgets.Widget Function(
  RunMutation$Mutation$DeleteOrderTransaction,
  graphql.QueryResult<Mutation$DeleteOrderTransaction>?,
);

class Mutation$DeleteOrderTransaction$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteOrderTransaction> {
  Mutation$DeleteOrderTransaction$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteOrderTransaction? options,
    required Builder$Mutation$DeleteOrderTransaction builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteOrderTransaction(),
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

class Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection {
  Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection({
    required this.affectedCount,
    this.$__typename = 'OrderTransactionsDeleteResponse',
  });

  factory Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affectedCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affectedCount = affectedCount;
    _resultData['affectedCount'] = l$affectedCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affectedCount = affectedCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affectedCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection
    on Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection {
  CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
          Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
    Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection
        instance,
    TRes Function(
            Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection)
        then,
  ) = _CopyWithImpl$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection;

  factory CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection;

  TRes call({
    int? affectedCount,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
            TRes> {
  _CopyWithImpl$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection
      _instance;

  final TRes Function(
          Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteOrderTransaction$deleteFromOrderTransactionsCollection(
      this._res);

  TRes _res;

  call({
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetShoppingCartItem {
  factory Variables$Query$GetShoppingCartItem({required String id}) =>
      Variables$Query$GetShoppingCartItem._({
        r'id': id,
      });

  Variables$Query$GetShoppingCartItem._(this._$data);

  factory Variables$Query$GetShoppingCartItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$GetShoppingCartItem._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$GetShoppingCartItem<
          Variables$Query$GetShoppingCartItem>
      get copyWith => CopyWith$Variables$Query$GetShoppingCartItem(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetShoppingCartItem ||
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

abstract class CopyWith$Variables$Query$GetShoppingCartItem<TRes> {
  factory CopyWith$Variables$Query$GetShoppingCartItem(
    Variables$Query$GetShoppingCartItem instance,
    TRes Function(Variables$Query$GetShoppingCartItem) then,
  ) = _CopyWithImpl$Variables$Query$GetShoppingCartItem;

  factory CopyWith$Variables$Query$GetShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetShoppingCartItem;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$GetShoppingCartItem<TRes>
    implements CopyWith$Variables$Query$GetShoppingCartItem<TRes> {
  _CopyWithImpl$Variables$Query$GetShoppingCartItem(
    this._instance,
    this._then,
  );

  final Variables$Query$GetShoppingCartItem _instance;

  final TRes Function(Variables$Query$GetShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$GetShoppingCartItem._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetShoppingCartItem<TRes>
    implements CopyWith$Variables$Query$GetShoppingCartItem<TRes> {
  _CopyWithStubImpl$Variables$Query$GetShoppingCartItem(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$GetShoppingCartItem {
  Query$GetShoppingCartItem({
    this.shoppingCartItemsCollection,
    this.$__typename = 'Query',
  });

  factory Query$GetShoppingCartItem.fromJson(Map<String, dynamic> json) {
    final l$shoppingCartItemsCollection = json['shoppingCartItemsCollection'];
    final l$$__typename = json['__typename'];
    return Query$GetShoppingCartItem(
      shoppingCartItemsCollection: l$shoppingCartItemsCollection == null
          ? null
          : Query$GetShoppingCartItem$shoppingCartItemsCollection.fromJson(
              (l$shoppingCartItemsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetShoppingCartItem$shoppingCartItemsCollection?
      shoppingCartItemsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$shoppingCartItemsCollection = shoppingCartItemsCollection;
    _resultData['shoppingCartItemsCollection'] =
        l$shoppingCartItemsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$shoppingCartItemsCollection = shoppingCartItemsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shoppingCartItemsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetShoppingCartItem ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shoppingCartItemsCollection = shoppingCartItemsCollection;
    final lOther$shoppingCartItemsCollection =
        other.shoppingCartItemsCollection;
    if (l$shoppingCartItemsCollection != lOther$shoppingCartItemsCollection) {
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

extension UtilityExtension$Query$GetShoppingCartItem
    on Query$GetShoppingCartItem {
  CopyWith$Query$GetShoppingCartItem<Query$GetShoppingCartItem> get copyWith =>
      CopyWith$Query$GetShoppingCartItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetShoppingCartItem<TRes> {
  factory CopyWith$Query$GetShoppingCartItem(
    Query$GetShoppingCartItem instance,
    TRes Function(Query$GetShoppingCartItem) then,
  ) = _CopyWithImpl$Query$GetShoppingCartItem;

  factory CopyWith$Query$GetShoppingCartItem.stub(TRes res) =
      _CopyWithStubImpl$Query$GetShoppingCartItem;

  TRes call({
    Query$GetShoppingCartItem$shoppingCartItemsCollection?
        shoppingCartItemsCollection,
    String? $__typename,
  });
  CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<TRes>
      get shoppingCartItemsCollection;
}

class _CopyWithImpl$Query$GetShoppingCartItem<TRes>
    implements CopyWith$Query$GetShoppingCartItem<TRes> {
  _CopyWithImpl$Query$GetShoppingCartItem(
    this._instance,
    this._then,
  );

  final Query$GetShoppingCartItem _instance;

  final TRes Function(Query$GetShoppingCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? shoppingCartItemsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShoppingCartItem(
        shoppingCartItemsCollection: shoppingCartItemsCollection == _undefined
            ? _instance.shoppingCartItemsCollection
            : (shoppingCartItemsCollection
                as Query$GetShoppingCartItem$shoppingCartItemsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<TRes>
      get shoppingCartItemsCollection {
    final local$shoppingCartItemsCollection =
        _instance.shoppingCartItemsCollection;
    return local$shoppingCartItemsCollection == null
        ? CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection.stub(
            _then(_instance))
        : CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection(
            local$shoppingCartItemsCollection,
            (e) => call(shoppingCartItemsCollection: e));
  }
}

class _CopyWithStubImpl$Query$GetShoppingCartItem<TRes>
    implements CopyWith$Query$GetShoppingCartItem<TRes> {
  _CopyWithStubImpl$Query$GetShoppingCartItem(this._res);

  TRes _res;

  call({
    Query$GetShoppingCartItem$shoppingCartItemsCollection?
        shoppingCartItemsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<TRes>
      get shoppingCartItemsCollection =>
          CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection.stub(
              _res);
}

const documentNodeQueryGetShoppingCartItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetShoppingCartItem'),
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
        name: NameNode(value: 'shoppingCartItemsCollection'),
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
                    name: NameNode(value: 'ShoppingCartItemWithCart'),
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
  fragmentDefinitionShoppingCartItemWithCart,
  fragmentDefinitionShoppingCart,
  fragmentDefinitionShoppingCartItem,
  fragmentDefinitionProduct,
]);
Query$GetShoppingCartItem _parserFn$Query$GetShoppingCartItem(
        Map<String, dynamic> data) =>
    Query$GetShoppingCartItem.fromJson(data);
typedef OnQueryComplete$Query$GetShoppingCartItem = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetShoppingCartItem?,
);

class Options$Query$GetShoppingCartItem
    extends graphql.QueryOptions<Query$GetShoppingCartItem> {
  Options$Query$GetShoppingCartItem({
    String? operationName,
    required Variables$Query$GetShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetShoppingCartItem? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetShoppingCartItem? onComplete,
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
                        : _parserFn$Query$GetShoppingCartItem(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetShoppingCartItem,
          parserFn: _parserFn$Query$GetShoppingCartItem,
        );

  final OnQueryComplete$Query$GetShoppingCartItem? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetShoppingCartItem
    extends graphql.WatchQueryOptions<Query$GetShoppingCartItem> {
  WatchOptions$Query$GetShoppingCartItem({
    String? operationName,
    required Variables$Query$GetShoppingCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetShoppingCartItem? typedOptimisticResult,
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
          document: documentNodeQueryGetShoppingCartItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetShoppingCartItem,
        );
}

class FetchMoreOptions$Query$GetShoppingCartItem
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetShoppingCartItem({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetShoppingCartItem variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetShoppingCartItem,
        );
}

extension ClientExtension$Query$GetShoppingCartItem on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetShoppingCartItem>>
      query$GetShoppingCartItem(
              Options$Query$GetShoppingCartItem options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$GetShoppingCartItem>
      watchQuery$GetShoppingCartItem(
              WatchOptions$Query$GetShoppingCartItem options) =>
          this.watchQuery(options);
  void writeQuery$GetShoppingCartItem({
    required Query$GetShoppingCartItem data,
    required Variables$Query$GetShoppingCartItem variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetShoppingCartItem),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetShoppingCartItem? readQuery$GetShoppingCartItem({
    required Variables$Query$GetShoppingCartItem variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryGetShoppingCartItem),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetShoppingCartItem.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetShoppingCartItem>
    useQuery$GetShoppingCartItem(Options$Query$GetShoppingCartItem options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$GetShoppingCartItem>
    useWatchQuery$GetShoppingCartItem(
            WatchOptions$Query$GetShoppingCartItem options) =>
        graphql_flutter.useWatchQuery(options);

class Query$GetShoppingCartItem$Widget
    extends graphql_flutter.Query<Query$GetShoppingCartItem> {
  Query$GetShoppingCartItem$Widget({
    widgets.Key? key,
    required Options$Query$GetShoppingCartItem options,
    required graphql_flutter.QueryBuilder<Query$GetShoppingCartItem> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$GetShoppingCartItem$shoppingCartItemsCollection {
  Query$GetShoppingCartItem$shoppingCartItemsCollection({
    required this.edges,
    this.$__typename = 'ShoppingCartItemsConnection',
  });

  factory Query$GetShoppingCartItem$shoppingCartItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$GetShoppingCartItem$shoppingCartItemsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$GetShoppingCartItem$shoppingCartItemsCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$GetShoppingCartItem$shoppingCartItemsCollection$edges> edges;

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
    if (other is! Query$GetShoppingCartItem$shoppingCartItemsCollection ||
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

extension UtilityExtension$Query$GetShoppingCartItem$shoppingCartItemsCollection
    on Query$GetShoppingCartItem$shoppingCartItemsCollection {
  CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<
          Query$GetShoppingCartItem$shoppingCartItemsCollection>
      get copyWith =>
          CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<
    TRes> {
  factory CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection(
    Query$GetShoppingCartItem$shoppingCartItemsCollection instance,
    TRes Function(Query$GetShoppingCartItem$shoppingCartItemsCollection) then,
  ) = _CopyWithImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection;

  factory CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection;

  TRes call({
    List<Query$GetShoppingCartItem$shoppingCartItemsCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$GetShoppingCartItem$shoppingCartItemsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
                      Query$GetShoppingCartItem$shoppingCartItemsCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection<TRes>
    implements
        CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<TRes> {
  _CopyWithImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection(
    this._instance,
    this._then,
  );

  final Query$GetShoppingCartItem$shoppingCartItemsCollection _instance;

  final TRes Function(Query$GetShoppingCartItem$shoppingCartItemsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShoppingCartItem$shoppingCartItemsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$GetShoppingCartItem$shoppingCartItemsCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$GetShoppingCartItem$shoppingCartItemsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
                          Query$GetShoppingCartItem$shoppingCartItemsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection<
        TRes>
    implements
        CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection<TRes> {
  _CopyWithStubImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection(
      this._res);

  TRes _res;

  call({
    List<Query$GetShoppingCartItem$shoppingCartItemsCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$GetShoppingCartItem$shoppingCartItemsCollection$edges {
  Query$GetShoppingCartItem$shoppingCartItemsCollection$edges({
    required this.node,
    this.$__typename = 'ShoppingCartItemsEdge',
  });

  factory Query$GetShoppingCartItem$shoppingCartItemsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
      node: Fragment$ShoppingCartItemWithCart.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ShoppingCartItemWithCart node;

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
    if (other is! Query$GetShoppingCartItem$shoppingCartItemsCollection$edges ||
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

extension UtilityExtension$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges
    on Query$GetShoppingCartItem$shoppingCartItemsCollection$edges {
  CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
          Query$GetShoppingCartItem$shoppingCartItemsCollection$edges>
      get copyWith =>
          CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
    TRes> {
  factory CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
    Query$GetShoppingCartItem$shoppingCartItemsCollection$edges instance,
    TRes Function(Query$GetShoppingCartItem$shoppingCartItemsCollection$edges)
        then,
  ) = _CopyWithImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges;

  factory CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges;

  TRes call({
    Fragment$ShoppingCartItemWithCart? node,
    String? $__typename,
  });
  CopyWith$Fragment$ShoppingCartItemWithCart<TRes> get node;
}

class _CopyWithImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
        TRes>
    implements
        CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
            TRes> {
  _CopyWithImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$GetShoppingCartItem$shoppingCartItemsCollection$edges _instance;

  final TRes Function(
      Query$GetShoppingCartItem$shoppingCartItemsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$ShoppingCartItemWithCart),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ShoppingCartItemWithCart<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$ShoppingCartItemWithCart(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
        TRes>
    implements
        CopyWith$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$GetShoppingCartItem$shoppingCartItemsCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$ShoppingCartItemWithCart? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ShoppingCartItemWithCart<TRes> get node =>
      CopyWith$Fragment$ShoppingCartItemWithCart.stub(_res);
}

class Variables$Mutation$CreateOrderItems {
  factory Variables$Mutation$CreateOrderItems(
          {required List<Input$OrderItemsInsertInput> input}) =>
      Variables$Mutation$CreateOrderItems._({
        r'input': input,
      });

  Variables$Mutation$CreateOrderItems._(this._$data);

  factory Variables$Mutation$CreateOrderItems.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = (l$input as List<dynamic>)
        .map((e) =>
            Input$OrderItemsInsertInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$CreateOrderItems._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderItemsInsertInput> get input =>
      (_$data['input'] as List<Input$OrderItemsInsertInput>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrderItems<
          Variables$Mutation$CreateOrderItems>
      get copyWith => CopyWith$Variables$Mutation$CreateOrderItems(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateOrderItems ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input.length != lOther$input.length) {
      return false;
    }
    for (int i = 0; i < l$input.length; i++) {
      final l$input$entry = l$input[i];
      final lOther$input$entry = lOther$input[i];
      if (l$input$entry != lOther$input$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([Object.hashAll(l$input.map((v) => v))]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrderItems<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrderItems(
    Variables$Mutation$CreateOrderItems instance,
    TRes Function(Variables$Mutation$CreateOrderItems) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrderItems;

  factory CopyWith$Variables$Mutation$CreateOrderItems.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrderItems;

  TRes call({List<Input$OrderItemsInsertInput>? input});
}

class _CopyWithImpl$Variables$Mutation$CreateOrderItems<TRes>
    implements CopyWith$Variables$Mutation$CreateOrderItems<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrderItems(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrderItems _instance;

  final TRes Function(Variables$Mutation$CreateOrderItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateOrderItems._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as List<Input$OrderItemsInsertInput>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrderItems<TRes>
    implements CopyWith$Variables$Mutation$CreateOrderItems<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrderItems(this._res);

  TRes _res;

  call({List<Input$OrderItemsInsertInput>? input}) => _res;
}

class Mutation$CreateOrderItems {
  Mutation$CreateOrderItems({
    this.insertIntoOrderItemsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrderItems.fromJson(Map<String, dynamic> json) {
    final l$insertIntoOrderItemsCollection =
        json['insertIntoOrderItemsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrderItems(
      insertIntoOrderItemsCollection: l$insertIntoOrderItemsCollection == null
          ? null
          : Mutation$CreateOrderItems$insertIntoOrderItemsCollection.fromJson(
              (l$insertIntoOrderItemsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrderItems$insertIntoOrderItemsCollection?
      insertIntoOrderItemsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoOrderItemsCollection = insertIntoOrderItemsCollection;
    _resultData['insertIntoOrderItemsCollection'] =
        l$insertIntoOrderItemsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoOrderItemsCollection = insertIntoOrderItemsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoOrderItemsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateOrderItems ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoOrderItemsCollection = insertIntoOrderItemsCollection;
    final lOther$insertIntoOrderItemsCollection =
        other.insertIntoOrderItemsCollection;
    if (l$insertIntoOrderItemsCollection !=
        lOther$insertIntoOrderItemsCollection) {
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

extension UtilityExtension$Mutation$CreateOrderItems
    on Mutation$CreateOrderItems {
  CopyWith$Mutation$CreateOrderItems<Mutation$CreateOrderItems> get copyWith =>
      CopyWith$Mutation$CreateOrderItems(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrderItems<TRes> {
  factory CopyWith$Mutation$CreateOrderItems(
    Mutation$CreateOrderItems instance,
    TRes Function(Mutation$CreateOrderItems) then,
  ) = _CopyWithImpl$Mutation$CreateOrderItems;

  factory CopyWith$Mutation$CreateOrderItems.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrderItems;

  TRes call({
    Mutation$CreateOrderItems$insertIntoOrderItemsCollection?
        insertIntoOrderItemsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<TRes>
      get insertIntoOrderItemsCollection;
}

class _CopyWithImpl$Mutation$CreateOrderItems<TRes>
    implements CopyWith$Mutation$CreateOrderItems<TRes> {
  _CopyWithImpl$Mutation$CreateOrderItems(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrderItems _instance;

  final TRes Function(Mutation$CreateOrderItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoOrderItemsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrderItems(
        insertIntoOrderItemsCollection: insertIntoOrderItemsCollection ==
                _undefined
            ? _instance.insertIntoOrderItemsCollection
            : (insertIntoOrderItemsCollection
                as Mutation$CreateOrderItems$insertIntoOrderItemsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<TRes>
      get insertIntoOrderItemsCollection {
    final local$insertIntoOrderItemsCollection =
        _instance.insertIntoOrderItemsCollection;
    return local$insertIntoOrderItemsCollection == null
        ? CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection
            .stub(_then(_instance))
        : CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
            local$insertIntoOrderItemsCollection,
            (e) => call(insertIntoOrderItemsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrderItems<TRes>
    implements CopyWith$Mutation$CreateOrderItems<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrderItems(this._res);

  TRes _res;

  call({
    Mutation$CreateOrderItems$insertIntoOrderItemsCollection?
        insertIntoOrderItemsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<TRes>
      get insertIntoOrderItemsCollection =>
          CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection
              .stub(_res);
}

const documentNodeMutationCreateOrderItems = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrderItems'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'OrderItemsInsertInput'),
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
        name: NameNode(value: 'insertIntoOrderItemsCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'input')),
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
                name: NameNode(value: 'OrderItem'),
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
  fragmentDefinitionOrderItem,
  fragmentDefinitionProduct,
]);
Mutation$CreateOrderItems _parserFn$Mutation$CreateOrderItems(
        Map<String, dynamic> data) =>
    Mutation$CreateOrderItems.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrderItems = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrderItems?,
);

class Options$Mutation$CreateOrderItems
    extends graphql.MutationOptions<Mutation$CreateOrderItems> {
  Options$Mutation$CreateOrderItems({
    String? operationName,
    required Variables$Mutation$CreateOrderItems variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrderItems? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrderItems? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrderItems>? update,
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
                        : _parserFn$Mutation$CreateOrderItems(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrderItems,
          parserFn: _parserFn$Mutation$CreateOrderItems,
        );

  final OnMutationCompleted$Mutation$CreateOrderItems? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrderItems
    extends graphql.WatchQueryOptions<Mutation$CreateOrderItems> {
  WatchOptions$Mutation$CreateOrderItems({
    String? operationName,
    required Variables$Mutation$CreateOrderItems variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrderItems? typedOptimisticResult,
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
          document: documentNodeMutationCreateOrderItems,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrderItems,
        );
}

extension ClientExtension$Mutation$CreateOrderItems on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrderItems>>
      mutate$CreateOrderItems(
              Options$Mutation$CreateOrderItems options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrderItems>
      watchMutation$CreateOrderItems(
              WatchOptions$Mutation$CreateOrderItems options) =>
          this.watchMutation(options);
}

class Mutation$CreateOrderItems$HookResult {
  Mutation$CreateOrderItems$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrderItems runMutation;

  final graphql.QueryResult<Mutation$CreateOrderItems> result;
}

Mutation$CreateOrderItems$HookResult useMutation$CreateOrderItems(
    [WidgetOptions$Mutation$CreateOrderItems? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrderItems());
  return Mutation$CreateOrderItems$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrderItems>
    useWatchMutation$CreateOrderItems(
            WatchOptions$Mutation$CreateOrderItems options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrderItems
    extends graphql.MutationOptions<Mutation$CreateOrderItems> {
  WidgetOptions$Mutation$CreateOrderItems({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrderItems? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrderItems? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrderItems>? update,
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
                        : _parserFn$Mutation$CreateOrderItems(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrderItems,
          parserFn: _parserFn$Mutation$CreateOrderItems,
        );

  final OnMutationCompleted$Mutation$CreateOrderItems? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrderItems
    = graphql.MultiSourceResult<Mutation$CreateOrderItems> Function(
  Variables$Mutation$CreateOrderItems, {
  Object? optimisticResult,
  Mutation$CreateOrderItems? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrderItems = widgets.Widget Function(
  RunMutation$Mutation$CreateOrderItems,
  graphql.QueryResult<Mutation$CreateOrderItems>?,
);

class Mutation$CreateOrderItems$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrderItems> {
  Mutation$CreateOrderItems$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrderItems? options,
    required Builder$Mutation$CreateOrderItems builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrderItems(),
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

class Mutation$CreateOrderItems$insertIntoOrderItemsCollection {
  Mutation$CreateOrderItems$insertIntoOrderItemsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'OrderItemsInsertResponse',
  });

  factory Mutation$CreateOrderItems$insertIntoOrderItemsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$OrderItem.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$OrderItem> records;

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
    if (other is! Mutation$CreateOrderItems$insertIntoOrderItemsCollection ||
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

extension UtilityExtension$Mutation$CreateOrderItems$insertIntoOrderItemsCollection
    on Mutation$CreateOrderItems$insertIntoOrderItemsCollection {
  CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<
          Mutation$CreateOrderItems$insertIntoOrderItemsCollection>
      get copyWith =>
          CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<
    TRes> {
  factory CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
    Mutation$CreateOrderItems$insertIntoOrderItemsCollection instance,
    TRes Function(Mutation$CreateOrderItems$insertIntoOrderItemsCollection)
        then,
  ) = _CopyWithImpl$Mutation$CreateOrderItems$insertIntoOrderItemsCollection;

  factory CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrderItems$insertIntoOrderItemsCollection;

  TRes call({
    List<Fragment$OrderItem>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$OrderItem> Function(
              Iterable<CopyWith$Fragment$OrderItem<Fragment$OrderItem>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<
            TRes> {
  _CopyWithImpl$Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrderItems$insertIntoOrderItemsCollection _instance;

  final TRes Function(Mutation$CreateOrderItems$insertIntoOrderItemsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$OrderItem>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$OrderItem> Function(
                  Iterable<CopyWith$Fragment$OrderItem<Fragment$OrderItem>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$OrderItem(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateOrderItems$insertIntoOrderItemsCollection<
            TRes> {
  _CopyWithStubImpl$Mutation$CreateOrderItems$insertIntoOrderItemsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$OrderItem>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Query$SiteDeliveryLocationsForSite {
  factory Variables$Query$SiteDeliveryLocationsForSite(
          {required String siteId}) =>
      Variables$Query$SiteDeliveryLocationsForSite._({
        r'siteId': siteId,
      });

  Variables$Query$SiteDeliveryLocationsForSite._(this._$data);

  factory Variables$Query$SiteDeliveryLocationsForSite.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    return Variables$Query$SiteDeliveryLocationsForSite._(result$data);
  }

  Map<String, dynamic> _$data;

  String get siteId => (_$data['siteId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    return result$data;
  }

  CopyWith$Variables$Query$SiteDeliveryLocationsForSite<
          Variables$Query$SiteDeliveryLocationsForSite>
      get copyWith => CopyWith$Variables$Query$SiteDeliveryLocationsForSite(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$SiteDeliveryLocationsForSite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    return Object.hashAll([l$siteId]);
  }
}

abstract class CopyWith$Variables$Query$SiteDeliveryLocationsForSite<TRes> {
  factory CopyWith$Variables$Query$SiteDeliveryLocationsForSite(
    Variables$Query$SiteDeliveryLocationsForSite instance,
    TRes Function(Variables$Query$SiteDeliveryLocationsForSite) then,
  ) = _CopyWithImpl$Variables$Query$SiteDeliveryLocationsForSite;

  factory CopyWith$Variables$Query$SiteDeliveryLocationsForSite.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$SiteDeliveryLocationsForSite;

  TRes call({String? siteId});
}

class _CopyWithImpl$Variables$Query$SiteDeliveryLocationsForSite<TRes>
    implements CopyWith$Variables$Query$SiteDeliveryLocationsForSite<TRes> {
  _CopyWithImpl$Variables$Query$SiteDeliveryLocationsForSite(
    this._instance,
    this._then,
  );

  final Variables$Query$SiteDeliveryLocationsForSite _instance;

  final TRes Function(Variables$Query$SiteDeliveryLocationsForSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? siteId = _undefined}) =>
      _then(Variables$Query$SiteDeliveryLocationsForSite._({
        ..._instance._$data,
        if (siteId != _undefined && siteId != null)
          'siteId': (siteId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$SiteDeliveryLocationsForSite<TRes>
    implements CopyWith$Variables$Query$SiteDeliveryLocationsForSite<TRes> {
  _CopyWithStubImpl$Variables$Query$SiteDeliveryLocationsForSite(this._res);

  TRes _res;

  call({String? siteId}) => _res;
}

class Query$SiteDeliveryLocationsForSite {
  Query$SiteDeliveryLocationsForSite({
    this.siteDeliveryLocationCollection,
    this.$__typename = 'Query',
  });

  factory Query$SiteDeliveryLocationsForSite.fromJson(
      Map<String, dynamic> json) {
    final l$siteDeliveryLocationCollection =
        json['siteDeliveryLocationCollection'];
    final l$$__typename = json['__typename'];
    return Query$SiteDeliveryLocationsForSite(
      siteDeliveryLocationCollection: l$siteDeliveryLocationCollection == null
          ? null
          : Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection
              .fromJson(
                  (l$siteDeliveryLocationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection?
      siteDeliveryLocationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$siteDeliveryLocationCollection = siteDeliveryLocationCollection;
    _resultData['siteDeliveryLocationCollection'] =
        l$siteDeliveryLocationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$siteDeliveryLocationCollection = siteDeliveryLocationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$siteDeliveryLocationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SiteDeliveryLocationsForSite ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteDeliveryLocationCollection = siteDeliveryLocationCollection;
    final lOther$siteDeliveryLocationCollection =
        other.siteDeliveryLocationCollection;
    if (l$siteDeliveryLocationCollection !=
        lOther$siteDeliveryLocationCollection) {
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

extension UtilityExtension$Query$SiteDeliveryLocationsForSite
    on Query$SiteDeliveryLocationsForSite {
  CopyWith$Query$SiteDeliveryLocationsForSite<
          Query$SiteDeliveryLocationsForSite>
      get copyWith => CopyWith$Query$SiteDeliveryLocationsForSite(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SiteDeliveryLocationsForSite<TRes> {
  factory CopyWith$Query$SiteDeliveryLocationsForSite(
    Query$SiteDeliveryLocationsForSite instance,
    TRes Function(Query$SiteDeliveryLocationsForSite) then,
  ) = _CopyWithImpl$Query$SiteDeliveryLocationsForSite;

  factory CopyWith$Query$SiteDeliveryLocationsForSite.stub(TRes res) =
      _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite;

  TRes call({
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection?
        siteDeliveryLocationCollection,
    String? $__typename,
  });
  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
      TRes> get siteDeliveryLocationCollection;
}

class _CopyWithImpl$Query$SiteDeliveryLocationsForSite<TRes>
    implements CopyWith$Query$SiteDeliveryLocationsForSite<TRes> {
  _CopyWithImpl$Query$SiteDeliveryLocationsForSite(
    this._instance,
    this._then,
  );

  final Query$SiteDeliveryLocationsForSite _instance;

  final TRes Function(Query$SiteDeliveryLocationsForSite) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteDeliveryLocationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SiteDeliveryLocationsForSite(
        siteDeliveryLocationCollection: siteDeliveryLocationCollection ==
                _undefined
            ? _instance.siteDeliveryLocationCollection
            : (siteDeliveryLocationCollection
                as Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
      TRes> get siteDeliveryLocationCollection {
    final local$siteDeliveryLocationCollection =
        _instance.siteDeliveryLocationCollection;
    return local$siteDeliveryLocationCollection == null
        ? CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection
            .stub(_then(_instance))
        : CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
            local$siteDeliveryLocationCollection,
            (e) => call(siteDeliveryLocationCollection: e));
  }
}

class _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite<TRes>
    implements CopyWith$Query$SiteDeliveryLocationsForSite<TRes> {
  _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite(this._res);

  TRes _res;

  call({
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection?
        siteDeliveryLocationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
          TRes>
      get siteDeliveryLocationCollection =>
          CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection
              .stub(_res);
}

const documentNodeQuerySiteDeliveryLocationsForSite =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SiteDeliveryLocationsForSite'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'siteId')),
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
        name: NameNode(value: 'siteDeliveryLocationCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'siteId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'siteId')),
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
                    name: NameNode(value: 'SiteDeliveryLocation'),
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
  fragmentDefinitionSiteDeliveryLocation,
  fragmentDefinitionDeliveryLocation,
]);
Query$SiteDeliveryLocationsForSite _parserFn$Query$SiteDeliveryLocationsForSite(
        Map<String, dynamic> data) =>
    Query$SiteDeliveryLocationsForSite.fromJson(data);
typedef OnQueryComplete$Query$SiteDeliveryLocationsForSite = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$SiteDeliveryLocationsForSite?,
);

class Options$Query$SiteDeliveryLocationsForSite
    extends graphql.QueryOptions<Query$SiteDeliveryLocationsForSite> {
  Options$Query$SiteDeliveryLocationsForSite({
    String? operationName,
    required Variables$Query$SiteDeliveryLocationsForSite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SiteDeliveryLocationsForSite? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SiteDeliveryLocationsForSite? onComplete,
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
                        : _parserFn$Query$SiteDeliveryLocationsForSite(data),
                  ),
          onError: onError,
          document: documentNodeQuerySiteDeliveryLocationsForSite,
          parserFn: _parserFn$Query$SiteDeliveryLocationsForSite,
        );

  final OnQueryComplete$Query$SiteDeliveryLocationsForSite?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SiteDeliveryLocationsForSite
    extends graphql.WatchQueryOptions<Query$SiteDeliveryLocationsForSite> {
  WatchOptions$Query$SiteDeliveryLocationsForSite({
    String? operationName,
    required Variables$Query$SiteDeliveryLocationsForSite variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SiteDeliveryLocationsForSite? typedOptimisticResult,
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
          document: documentNodeQuerySiteDeliveryLocationsForSite,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SiteDeliveryLocationsForSite,
        );
}

class FetchMoreOptions$Query$SiteDeliveryLocationsForSite
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SiteDeliveryLocationsForSite({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$SiteDeliveryLocationsForSite variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQuerySiteDeliveryLocationsForSite,
        );
}

extension ClientExtension$Query$SiteDeliveryLocationsForSite
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SiteDeliveryLocationsForSite>>
      query$SiteDeliveryLocationsForSite(
              Options$Query$SiteDeliveryLocationsForSite options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$SiteDeliveryLocationsForSite>
      watchQuery$SiteDeliveryLocationsForSite(
              WatchOptions$Query$SiteDeliveryLocationsForSite options) =>
          this.watchQuery(options);
  void writeQuery$SiteDeliveryLocationsForSite({
    required Query$SiteDeliveryLocationsForSite data,
    required Variables$Query$SiteDeliveryLocationsForSite variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerySiteDeliveryLocationsForSite),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SiteDeliveryLocationsForSite? readQuery$SiteDeliveryLocationsForSite({
    required Variables$Query$SiteDeliveryLocationsForSite variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQuerySiteDeliveryLocationsForSite),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SiteDeliveryLocationsForSite.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$SiteDeliveryLocationsForSite>
    useQuery$SiteDeliveryLocationsForSite(
            Options$Query$SiteDeliveryLocationsForSite options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$SiteDeliveryLocationsForSite>
    useWatchQuery$SiteDeliveryLocationsForSite(
            WatchOptions$Query$SiteDeliveryLocationsForSite options) =>
        graphql_flutter.useWatchQuery(options);

class Query$SiteDeliveryLocationsForSite$Widget
    extends graphql_flutter.Query<Query$SiteDeliveryLocationsForSite> {
  Query$SiteDeliveryLocationsForSite$Widget({
    widgets.Key? key,
    required Options$Query$SiteDeliveryLocationsForSite options,
    required graphql_flutter.QueryBuilder<Query$SiteDeliveryLocationsForSite>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection {
  Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'SiteDeliveryLocationConnection',
  });

  factory Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>
      edges;

  final Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo
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
    if (other
            is! Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection ||
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

extension UtilityExtension$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection
    on Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection {
  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection>
      get copyWith =>
          CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
    TRes> {
  factory CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection instance,
    TRes Function(
            Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection)
        then,
  ) = _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection;

  factory CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection;

  TRes call({
    List<Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>?
        edges,
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
                      Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>>)
          _fn);
  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
        TRes>
    implements
        CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
            TRes> {
  _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
    this._instance,
    this._then,
  );

  final Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection
      _instance;

  final TRes Function(
      Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
                          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
        TRes>
    implements
        CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection<
            TRes> {
  _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection(
      this._res);

  TRes _res;

  call({
    List<Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>?
        edges,
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo
              .stub(_res);
}

class Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges {
  Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges({
    required this.node,
    this.$__typename = 'SiteDeliveryLocationEdge',
  });

  factory Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
      node: Fragment$SiteDeliveryLocation.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$SiteDeliveryLocation node;

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
    if (other
            is! Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges ||
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

extension UtilityExtension$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges
    on Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges {
  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges>
      get copyWith =>
          CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
    TRes> {
  factory CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges
        instance,
    TRes Function(
            Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges)
        then,
  ) = _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges;

  factory CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges;

  TRes call({
    Fragment$SiteDeliveryLocation? node,
    String? $__typename,
  });
  CopyWith$Fragment$SiteDeliveryLocation<TRes> get node;
}

class _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
        TRes>
    implements
        CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
            TRes> {
  _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges
      _instance;

  final TRes Function(
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$SiteDeliveryLocation),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$SiteDeliveryLocation<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$SiteDeliveryLocation(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
        TRes>
    implements
        CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$SiteDeliveryLocation? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SiteDeliveryLocation<TRes> get node =>
      CopyWith$Fragment$SiteDeliveryLocation.stub(_res);
}

class Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo {
  Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
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
    if (other
            is! Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo ||
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

extension UtilityExtension$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo
    on Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo {
  CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
    Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo
        instance,
    TRes Function(
            Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo;

  factory CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo
      _instance;

  final TRes Function(
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo)
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
          Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
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

class _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$SiteDeliveryLocationsForSite$siteDeliveryLocationCollection$pageInfo(
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

class Variables$Query$DeliveryPeriod {
  factory Variables$Query$DeliveryPeriod({
    required DateTime startDate,
    required DateTime endDate,
  }) =>
      Variables$Query$DeliveryPeriod._({
        r'startDate': startDate,
        r'endDate': endDate,
      });

  Variables$Query$DeliveryPeriod._(this._$data);

  factory Variables$Query$DeliveryPeriod.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$startDate = data['startDate'];
    result$data['startDate'] = DateTime.parse((l$startDate as String));
    final l$endDate = data['endDate'];
    result$data['endDate'] = DateTime.parse((l$endDate as String));
    return Variables$Query$DeliveryPeriod._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get startDate => (_$data['startDate'] as DateTime);

  DateTime get endDate => (_$data['endDate'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$startDate = startDate;
    result$data['startDate'] = l$startDate.toIso8601String();
    final l$endDate = endDate;
    result$data['endDate'] = l$endDate.toIso8601String();
    return result$data;
  }

  CopyWith$Variables$Query$DeliveryPeriod<Variables$Query$DeliveryPeriod>
      get copyWith => CopyWith$Variables$Query$DeliveryPeriod(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DeliveryPeriod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$startDate = startDate;
    final lOther$startDate = other.startDate;
    if (l$startDate != lOther$startDate) {
      return false;
    }
    final l$endDate = endDate;
    final lOther$endDate = other.endDate;
    if (l$endDate != lOther$endDate) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$startDate = startDate;
    final l$endDate = endDate;
    return Object.hashAll([
      l$startDate,
      l$endDate,
    ]);
  }
}

abstract class CopyWith$Variables$Query$DeliveryPeriod<TRes> {
  factory CopyWith$Variables$Query$DeliveryPeriod(
    Variables$Query$DeliveryPeriod instance,
    TRes Function(Variables$Query$DeliveryPeriod) then,
  ) = _CopyWithImpl$Variables$Query$DeliveryPeriod;

  factory CopyWith$Variables$Query$DeliveryPeriod.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DeliveryPeriod;

  TRes call({
    DateTime? startDate,
    DateTime? endDate,
  });
}

class _CopyWithImpl$Variables$Query$DeliveryPeriod<TRes>
    implements CopyWith$Variables$Query$DeliveryPeriod<TRes> {
  _CopyWithImpl$Variables$Query$DeliveryPeriod(
    this._instance,
    this._then,
  );

  final Variables$Query$DeliveryPeriod _instance;

  final TRes Function(Variables$Query$DeliveryPeriod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startDate = _undefined,
    Object? endDate = _undefined,
  }) =>
      _then(Variables$Query$DeliveryPeriod._({
        ..._instance._$data,
        if (startDate != _undefined && startDate != null)
          'startDate': (startDate as DateTime),
        if (endDate != _undefined && endDate != null)
          'endDate': (endDate as DateTime),
      }));
}

class _CopyWithStubImpl$Variables$Query$DeliveryPeriod<TRes>
    implements CopyWith$Variables$Query$DeliveryPeriod<TRes> {
  _CopyWithStubImpl$Variables$Query$DeliveryPeriod(this._res);

  TRes _res;

  call({
    DateTime? startDate,
    DateTime? endDate,
  }) =>
      _res;
}

class Query$DeliveryPeriod {
  Query$DeliveryPeriod({
    this.deliveryPeriodCollection,
    this.$__typename = 'Query',
  });

  factory Query$DeliveryPeriod.fromJson(Map<String, dynamic> json) {
    final l$deliveryPeriodCollection = json['deliveryPeriodCollection'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriod(
      deliveryPeriodCollection: l$deliveryPeriodCollection == null
          ? null
          : Query$DeliveryPeriod$deliveryPeriodCollection.fromJson(
              (l$deliveryPeriodCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DeliveryPeriod$deliveryPeriodCollection? deliveryPeriodCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    _resultData['deliveryPeriodCollection'] =
        l$deliveryPeriodCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deliveryPeriodCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DeliveryPeriod || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    final lOther$deliveryPeriodCollection = other.deliveryPeriodCollection;
    if (l$deliveryPeriodCollection != lOther$deliveryPeriodCollection) {
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

extension UtilityExtension$Query$DeliveryPeriod on Query$DeliveryPeriod {
  CopyWith$Query$DeliveryPeriod<Query$DeliveryPeriod> get copyWith =>
      CopyWith$Query$DeliveryPeriod(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DeliveryPeriod<TRes> {
  factory CopyWith$Query$DeliveryPeriod(
    Query$DeliveryPeriod instance,
    TRes Function(Query$DeliveryPeriod) then,
  ) = _CopyWithImpl$Query$DeliveryPeriod;

  factory CopyWith$Query$DeliveryPeriod.stub(TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriod;

  TRes call({
    Query$DeliveryPeriod$deliveryPeriodCollection? deliveryPeriodCollection,
    String? $__typename,
  });
  CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<TRes>
      get deliveryPeriodCollection;
}

class _CopyWithImpl$Query$DeliveryPeriod<TRes>
    implements CopyWith$Query$DeliveryPeriod<TRes> {
  _CopyWithImpl$Query$DeliveryPeriod(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriod _instance;

  final TRes Function(Query$DeliveryPeriod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deliveryPeriodCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriod(
        deliveryPeriodCollection: deliveryPeriodCollection == _undefined
            ? _instance.deliveryPeriodCollection
            : (deliveryPeriodCollection
                as Query$DeliveryPeriod$deliveryPeriodCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<TRes>
      get deliveryPeriodCollection {
    final local$deliveryPeriodCollection = _instance.deliveryPeriodCollection;
    return local$deliveryPeriodCollection == null
        ? CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection.stub(
            _then(_instance))
        : CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection(
            local$deliveryPeriodCollection,
            (e) => call(deliveryPeriodCollection: e));
  }
}

class _CopyWithStubImpl$Query$DeliveryPeriod<TRes>
    implements CopyWith$Query$DeliveryPeriod<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriod(this._res);

  TRes _res;

  call({
    Query$DeliveryPeriod$deliveryPeriodCollection? deliveryPeriodCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<TRes>
      get deliveryPeriodCollection =>
          CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection.stub(_res);
}

const documentNodeQueryDeliveryPeriod = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DeliveryPeriod'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'startDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Datetime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'endDate')),
        type: NamedTypeNode(
          name: NameNode(value: 'Datetime'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deliveryPeriodCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'startDate'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'gte'),
                    value: VariableNode(name: NameNode(value: 'startDate')),
                  )
                ]),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'endDate'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'lte'),
                    value: VariableNode(name: NameNode(value: 'endDate')),
                  )
                ]),
              ),
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
                    name: NameNode(value: 'DeliveryPeriod'),
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
  fragmentDefinitionDeliveryPeriod,
  fragmentDefinitionDeliveryLocation,
]);
Query$DeliveryPeriod _parserFn$Query$DeliveryPeriod(
        Map<String, dynamic> data) =>
    Query$DeliveryPeriod.fromJson(data);
typedef OnQueryComplete$Query$DeliveryPeriod = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$DeliveryPeriod?,
);

class Options$Query$DeliveryPeriod
    extends graphql.QueryOptions<Query$DeliveryPeriod> {
  Options$Query$DeliveryPeriod({
    String? operationName,
    required Variables$Query$DeliveryPeriod variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DeliveryPeriod? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DeliveryPeriod? onComplete,
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
                    data == null ? null : _parserFn$Query$DeliveryPeriod(data),
                  ),
          onError: onError,
          document: documentNodeQueryDeliveryPeriod,
          parserFn: _parserFn$Query$DeliveryPeriod,
        );

  final OnQueryComplete$Query$DeliveryPeriod? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$DeliveryPeriod
    extends graphql.WatchQueryOptions<Query$DeliveryPeriod> {
  WatchOptions$Query$DeliveryPeriod({
    String? operationName,
    required Variables$Query$DeliveryPeriod variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DeliveryPeriod? typedOptimisticResult,
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
          document: documentNodeQueryDeliveryPeriod,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DeliveryPeriod,
        );
}

class FetchMoreOptions$Query$DeliveryPeriod extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DeliveryPeriod({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$DeliveryPeriod variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryDeliveryPeriod,
        );
}

extension ClientExtension$Query$DeliveryPeriod on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DeliveryPeriod>> query$DeliveryPeriod(
          Options$Query$DeliveryPeriod options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$DeliveryPeriod> watchQuery$DeliveryPeriod(
          WatchOptions$Query$DeliveryPeriod options) =>
      this.watchQuery(options);
  void writeQuery$DeliveryPeriod({
    required Query$DeliveryPeriod data,
    required Variables$Query$DeliveryPeriod variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryDeliveryPeriod),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DeliveryPeriod? readQuery$DeliveryPeriod({
    required Variables$Query$DeliveryPeriod variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryDeliveryPeriod),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DeliveryPeriod.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$DeliveryPeriod> useQuery$DeliveryPeriod(
        Options$Query$DeliveryPeriod options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$DeliveryPeriod> useWatchQuery$DeliveryPeriod(
        WatchOptions$Query$DeliveryPeriod options) =>
    graphql_flutter.useWatchQuery(options);

class Query$DeliveryPeriod$Widget
    extends graphql_flutter.Query<Query$DeliveryPeriod> {
  Query$DeliveryPeriod$Widget({
    widgets.Key? key,
    required Options$Query$DeliveryPeriod options,
    required graphql_flutter.QueryBuilder<Query$DeliveryPeriod> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$DeliveryPeriod$deliveryPeriodCollection {
  Query$DeliveryPeriod$deliveryPeriodCollection({
    required this.edges,
    this.$__typename = 'DeliveryPeriodConnection',
  });

  factory Query$DeliveryPeriod$deliveryPeriodCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriod$deliveryPeriodCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$DeliveryPeriod$deliveryPeriodCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$DeliveryPeriod$deliveryPeriodCollection$edges> edges;

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
    if (other is! Query$DeliveryPeriod$deliveryPeriodCollection ||
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

extension UtilityExtension$Query$DeliveryPeriod$deliveryPeriodCollection
    on Query$DeliveryPeriod$deliveryPeriodCollection {
  CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<
          Query$DeliveryPeriod$deliveryPeriodCollection>
      get copyWith => CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<TRes> {
  factory CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection(
    Query$DeliveryPeriod$deliveryPeriodCollection instance,
    TRes Function(Query$DeliveryPeriod$deliveryPeriodCollection) then,
  ) = _CopyWithImpl$Query$DeliveryPeriod$deliveryPeriodCollection;

  factory CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriod$deliveryPeriodCollection;

  TRes call({
    List<Query$DeliveryPeriod$deliveryPeriodCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$DeliveryPeriod$deliveryPeriodCollection$edges> Function(
              Iterable<
                  CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges<
                      Query$DeliveryPeriod$deliveryPeriodCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$DeliveryPeriod$deliveryPeriodCollection<TRes>
    implements CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<TRes> {
  _CopyWithImpl$Query$DeliveryPeriod$deliveryPeriodCollection(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriod$deliveryPeriodCollection _instance;

  final TRes Function(Query$DeliveryPeriod$deliveryPeriodCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriod$deliveryPeriodCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Query$DeliveryPeriod$deliveryPeriodCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$DeliveryPeriod$deliveryPeriodCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges<
                          Query$DeliveryPeriod$deliveryPeriodCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$DeliveryPeriod$deliveryPeriodCollection<TRes>
    implements CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriod$deliveryPeriodCollection(this._res);

  TRes _res;

  call({
    List<Query$DeliveryPeriod$deliveryPeriodCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$DeliveryPeriod$deliveryPeriodCollection$edges {
  Query$DeliveryPeriod$deliveryPeriodCollection$edges({
    required this.node,
    this.$__typename = 'DeliveryPeriodEdge',
  });

  factory Query$DeliveryPeriod$deliveryPeriodCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriod$deliveryPeriodCollection$edges(
      node: Fragment$DeliveryPeriod.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DeliveryPeriod node;

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
    if (other is! Query$DeliveryPeriod$deliveryPeriodCollection$edges ||
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

extension UtilityExtension$Query$DeliveryPeriod$deliveryPeriodCollection$edges
    on Query$DeliveryPeriod$deliveryPeriodCollection$edges {
  CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges<
          Query$DeliveryPeriod$deliveryPeriodCollection$edges>
      get copyWith =>
          CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges<
    TRes> {
  factory CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges(
    Query$DeliveryPeriod$deliveryPeriodCollection$edges instance,
    TRes Function(Query$DeliveryPeriod$deliveryPeriodCollection$edges) then,
  ) = _CopyWithImpl$Query$DeliveryPeriod$deliveryPeriodCollection$edges;

  factory CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriod$deliveryPeriodCollection$edges;

  TRes call({
    Fragment$DeliveryPeriod? node,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryPeriod<TRes> get node;
}

class _CopyWithImpl$Query$DeliveryPeriod$deliveryPeriodCollection$edges<TRes>
    implements
        CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges<TRes> {
  _CopyWithImpl$Query$DeliveryPeriod$deliveryPeriodCollection$edges(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriod$deliveryPeriodCollection$edges _instance;

  final TRes Function(Query$DeliveryPeriod$deliveryPeriodCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriod$deliveryPeriodCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$DeliveryPeriod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryPeriod<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$DeliveryPeriod(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$DeliveryPeriod$deliveryPeriodCollection$edges<
        TRes>
    implements
        CopyWith$Query$DeliveryPeriod$deliveryPeriodCollection$edges<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriod$deliveryPeriodCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$DeliveryPeriod? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryPeriod<TRes> get node =>
      CopyWith$Fragment$DeliveryPeriod.stub(_res);
}

class Variables$Query$DeliveryPeriods {
  factory Variables$Query$DeliveryPeriods({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$DeliveryPeriodFilter? filter,
    List<Input$DeliveryPeriodOrderBy>? orderBy,
  }) =>
      Variables$Query$DeliveryPeriods._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$DeliveryPeriods._(this._$data);

  factory Variables$Query$DeliveryPeriods.fromJson(Map<String, dynamic> data) {
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
          : Input$DeliveryPeriodFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$DeliveryPeriodOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$DeliveryPeriods._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$DeliveryPeriodFilter? get filter =>
      (_$data['filter'] as Input$DeliveryPeriodFilter?);

  List<Input$DeliveryPeriodOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$DeliveryPeriodOrderBy>?);

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

  CopyWith$Variables$Query$DeliveryPeriods<Variables$Query$DeliveryPeriods>
      get copyWith => CopyWith$Variables$Query$DeliveryPeriods(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$DeliveryPeriods ||
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

abstract class CopyWith$Variables$Query$DeliveryPeriods<TRes> {
  factory CopyWith$Variables$Query$DeliveryPeriods(
    Variables$Query$DeliveryPeriods instance,
    TRes Function(Variables$Query$DeliveryPeriods) then,
  ) = _CopyWithImpl$Variables$Query$DeliveryPeriods;

  factory CopyWith$Variables$Query$DeliveryPeriods.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$DeliveryPeriods;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$DeliveryPeriodFilter? filter,
    List<Input$DeliveryPeriodOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$DeliveryPeriods<TRes>
    implements CopyWith$Variables$Query$DeliveryPeriods<TRes> {
  _CopyWithImpl$Variables$Query$DeliveryPeriods(
    this._instance,
    this._then,
  );

  final Variables$Query$DeliveryPeriods _instance;

  final TRes Function(Variables$Query$DeliveryPeriods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$DeliveryPeriods._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$DeliveryPeriodFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$DeliveryPeriodOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$DeliveryPeriods<TRes>
    implements CopyWith$Variables$Query$DeliveryPeriods<TRes> {
  _CopyWithStubImpl$Variables$Query$DeliveryPeriods(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$DeliveryPeriodFilter? filter,
    List<Input$DeliveryPeriodOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$DeliveryPeriods {
  Query$DeliveryPeriods({
    this.deliveryPeriodCollection,
    this.$__typename = 'Query',
  });

  factory Query$DeliveryPeriods.fromJson(Map<String, dynamic> json) {
    final l$deliveryPeriodCollection = json['deliveryPeriodCollection'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriods(
      deliveryPeriodCollection: l$deliveryPeriodCollection == null
          ? null
          : Query$DeliveryPeriods$deliveryPeriodCollection.fromJson(
              (l$deliveryPeriodCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$DeliveryPeriods$deliveryPeriodCollection?
      deliveryPeriodCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    _resultData['deliveryPeriodCollection'] =
        l$deliveryPeriodCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deliveryPeriodCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$DeliveryPeriods || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    final lOther$deliveryPeriodCollection = other.deliveryPeriodCollection;
    if (l$deliveryPeriodCollection != lOther$deliveryPeriodCollection) {
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

extension UtilityExtension$Query$DeliveryPeriods on Query$DeliveryPeriods {
  CopyWith$Query$DeliveryPeriods<Query$DeliveryPeriods> get copyWith =>
      CopyWith$Query$DeliveryPeriods(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$DeliveryPeriods<TRes> {
  factory CopyWith$Query$DeliveryPeriods(
    Query$DeliveryPeriods instance,
    TRes Function(Query$DeliveryPeriods) then,
  ) = _CopyWithImpl$Query$DeliveryPeriods;

  factory CopyWith$Query$DeliveryPeriods.stub(TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriods;

  TRes call({
    Query$DeliveryPeriods$deliveryPeriodCollection? deliveryPeriodCollection,
    String? $__typename,
  });
  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<TRes>
      get deliveryPeriodCollection;
}

class _CopyWithImpl$Query$DeliveryPeriods<TRes>
    implements CopyWith$Query$DeliveryPeriods<TRes> {
  _CopyWithImpl$Query$DeliveryPeriods(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriods _instance;

  final TRes Function(Query$DeliveryPeriods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deliveryPeriodCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriods(
        deliveryPeriodCollection: deliveryPeriodCollection == _undefined
            ? _instance.deliveryPeriodCollection
            : (deliveryPeriodCollection
                as Query$DeliveryPeriods$deliveryPeriodCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<TRes>
      get deliveryPeriodCollection {
    final local$deliveryPeriodCollection = _instance.deliveryPeriodCollection;
    return local$deliveryPeriodCollection == null
        ? CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection.stub(
            _then(_instance))
        : CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection(
            local$deliveryPeriodCollection,
            (e) => call(deliveryPeriodCollection: e));
  }
}

class _CopyWithStubImpl$Query$DeliveryPeriods<TRes>
    implements CopyWith$Query$DeliveryPeriods<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriods(this._res);

  TRes _res;

  call({
    Query$DeliveryPeriods$deliveryPeriodCollection? deliveryPeriodCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<TRes>
      get deliveryPeriodCollection =>
          CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection.stub(_res);
}

const documentNodeQueryDeliveryPeriods = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'DeliveryPeriods'),
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
          name: NameNode(value: 'DeliveryPeriodFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'DeliveryPeriodOrderBy'),
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
        name: NameNode(value: 'deliveryPeriodCollection'),
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
                    name: NameNode(value: 'DeliveryPeriod'),
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
  fragmentDefinitionDeliveryPeriod,
  fragmentDefinitionDeliveryLocation,
]);
Query$DeliveryPeriods _parserFn$Query$DeliveryPeriods(
        Map<String, dynamic> data) =>
    Query$DeliveryPeriods.fromJson(data);
typedef OnQueryComplete$Query$DeliveryPeriods = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$DeliveryPeriods?,
);

class Options$Query$DeliveryPeriods
    extends graphql.QueryOptions<Query$DeliveryPeriods> {
  Options$Query$DeliveryPeriods({
    String? operationName,
    Variables$Query$DeliveryPeriods? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DeliveryPeriods? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$DeliveryPeriods? onComplete,
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
                    data == null ? null : _parserFn$Query$DeliveryPeriods(data),
                  ),
          onError: onError,
          document: documentNodeQueryDeliveryPeriods,
          parserFn: _parserFn$Query$DeliveryPeriods,
        );

  final OnQueryComplete$Query$DeliveryPeriods? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$DeliveryPeriods
    extends graphql.WatchQueryOptions<Query$DeliveryPeriods> {
  WatchOptions$Query$DeliveryPeriods({
    String? operationName,
    Variables$Query$DeliveryPeriods? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$DeliveryPeriods? typedOptimisticResult,
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
          document: documentNodeQueryDeliveryPeriods,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$DeliveryPeriods,
        );
}

class FetchMoreOptions$Query$DeliveryPeriods extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$DeliveryPeriods({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$DeliveryPeriods? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryDeliveryPeriods,
        );
}

extension ClientExtension$Query$DeliveryPeriods on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$DeliveryPeriods>> query$DeliveryPeriods(
          [Options$Query$DeliveryPeriods? options]) async =>
      await this.query(options ?? Options$Query$DeliveryPeriods());
  graphql.ObservableQuery<Query$DeliveryPeriods> watchQuery$DeliveryPeriods(
          [WatchOptions$Query$DeliveryPeriods? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$DeliveryPeriods());
  void writeQuery$DeliveryPeriods({
    required Query$DeliveryPeriods data,
    Variables$Query$DeliveryPeriods? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryDeliveryPeriods),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$DeliveryPeriods? readQuery$DeliveryPeriods({
    Variables$Query$DeliveryPeriods? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryDeliveryPeriods),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$DeliveryPeriods.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$DeliveryPeriods> useQuery$DeliveryPeriods(
        [Options$Query$DeliveryPeriods? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$DeliveryPeriods());
graphql.ObservableQuery<Query$DeliveryPeriods> useWatchQuery$DeliveryPeriods(
        [WatchOptions$Query$DeliveryPeriods? options]) =>
    graphql_flutter
        .useWatchQuery(options ?? WatchOptions$Query$DeliveryPeriods());

class Query$DeliveryPeriods$Widget
    extends graphql_flutter.Query<Query$DeliveryPeriods> {
  Query$DeliveryPeriods$Widget({
    widgets.Key? key,
    Options$Query$DeliveryPeriods? options,
    required graphql_flutter.QueryBuilder<Query$DeliveryPeriods> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$DeliveryPeriods(),
          builder: builder,
        );
}

class Query$DeliveryPeriods$deliveryPeriodCollection {
  Query$DeliveryPeriods$deliveryPeriodCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'DeliveryPeriodConnection',
  });

  factory Query$DeliveryPeriods$deliveryPeriodCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriods$deliveryPeriodCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$DeliveryPeriods$deliveryPeriodCollection$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$DeliveryPeriods$deliveryPeriodCollection$edges> edges;

  final Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo pageInfo;

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
    if (other is! Query$DeliveryPeriods$deliveryPeriodCollection ||
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

extension UtilityExtension$Query$DeliveryPeriods$deliveryPeriodCollection
    on Query$DeliveryPeriods$deliveryPeriodCollection {
  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<
          Query$DeliveryPeriods$deliveryPeriodCollection>
      get copyWith => CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<TRes> {
  factory CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection(
    Query$DeliveryPeriods$deliveryPeriodCollection instance,
    TRes Function(Query$DeliveryPeriods$deliveryPeriodCollection) then,
  ) = _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection;

  factory CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection;

  TRes call({
    List<Query$DeliveryPeriods$deliveryPeriodCollection$edges>? edges,
    Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$DeliveryPeriods$deliveryPeriodCollection$edges> Function(
              Iterable<
                  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges<
                      Query$DeliveryPeriods$deliveryPeriodCollection$edges>>)
          _fn);
  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection<TRes>
    implements CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<TRes> {
  _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriods$deliveryPeriodCollection _instance;

  final TRes Function(Query$DeliveryPeriods$deliveryPeriodCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriods$deliveryPeriodCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges
                as List<Query$DeliveryPeriods$deliveryPeriodCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$DeliveryPeriods$deliveryPeriodCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges<
                          Query$DeliveryPeriods$deliveryPeriodCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection<TRes>
    implements CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection(this._res);

  TRes _res;

  call({
    List<Query$DeliveryPeriods$deliveryPeriodCollection$edges>? edges,
    Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo.stub(
              _res);
}

class Query$DeliveryPeriods$deliveryPeriodCollection$edges {
  Query$DeliveryPeriods$deliveryPeriodCollection$edges({
    required this.node,
    this.$__typename = 'DeliveryPeriodEdge',
  });

  factory Query$DeliveryPeriods$deliveryPeriodCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriods$deliveryPeriodCollection$edges(
      node: Fragment$DeliveryPeriod.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DeliveryPeriod node;

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
    if (other is! Query$DeliveryPeriods$deliveryPeriodCollection$edges ||
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

extension UtilityExtension$Query$DeliveryPeriods$deliveryPeriodCollection$edges
    on Query$DeliveryPeriods$deliveryPeriodCollection$edges {
  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges<
          Query$DeliveryPeriods$deliveryPeriodCollection$edges>
      get copyWith =>
          CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges<
    TRes> {
  factory CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges(
    Query$DeliveryPeriods$deliveryPeriodCollection$edges instance,
    TRes Function(Query$DeliveryPeriods$deliveryPeriodCollection$edges) then,
  ) = _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection$edges;

  factory CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection$edges;

  TRes call({
    Fragment$DeliveryPeriod? node,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryPeriod<TRes> get node;
}

class _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection$edges<TRes>
    implements
        CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges<TRes> {
  _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection$edges(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriods$deliveryPeriodCollection$edges _instance;

  final TRes Function(Query$DeliveryPeriods$deliveryPeriodCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriods$deliveryPeriodCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$DeliveryPeriod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryPeriod<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$DeliveryPeriod(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection$edges<
        TRes>
    implements
        CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$edges<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$DeliveryPeriod? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryPeriod<TRes> get node =>
      CopyWith$Fragment$DeliveryPeriod.stub(_res);
}

class Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo {
  Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo({
    required this.hasPreviousPage,
    required this.hasNextPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$hasNextPage = json['hasNextPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
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
    if (other is! Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo ||
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

extension UtilityExtension$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo
    on Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo {
  CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<
          Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
    Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo instance,
    TRes Function(Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo;

  factory CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo;

  TRes call({
    bool? hasPreviousPage,
    bool? hasNextPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo _instance;

  final TRes Function(Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPreviousPage = _undefined,
    Object? hasNextPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
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

class _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$DeliveryPeriods$deliveryPeriodCollection$pageInfo(
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

class Variables$Query$StationWithSiteDeliveryLocationsForPeriod {
  factory Variables$Query$StationWithSiteDeliveryLocationsForPeriod({
    required String siteId,
    required String deliveryPeriodId,
  }) =>
      Variables$Query$StationWithSiteDeliveryLocationsForPeriod._({
        r'siteId': siteId,
        r'deliveryPeriodId': deliveryPeriodId,
      });

  Variables$Query$StationWithSiteDeliveryLocationsForPeriod._(this._$data);

  factory Variables$Query$StationWithSiteDeliveryLocationsForPeriod.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$siteId = data['siteId'];
    result$data['siteId'] = (l$siteId as String);
    final l$deliveryPeriodId = data['deliveryPeriodId'];
    result$data['deliveryPeriodId'] = (l$deliveryPeriodId as String);
    return Variables$Query$StationWithSiteDeliveryLocationsForPeriod._(
        result$data);
  }

  Map<String, dynamic> _$data;

  String get siteId => (_$data['siteId'] as String);

  String get deliveryPeriodId => (_$data['deliveryPeriodId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$siteId = siteId;
    result$data['siteId'] = l$siteId;
    final l$deliveryPeriodId = deliveryPeriodId;
    result$data['deliveryPeriodId'] = l$deliveryPeriodId;
    return result$data;
  }

  CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod<
          Variables$Query$StationWithSiteDeliveryLocationsForPeriod>
      get copyWith =>
          CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$StationWithSiteDeliveryLocationsForPeriod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteId = siteId;
    final lOther$siteId = other.siteId;
    if (l$siteId != lOther$siteId) {
      return false;
    }
    final l$deliveryPeriodId = deliveryPeriodId;
    final lOther$deliveryPeriodId = other.deliveryPeriodId;
    if (l$deliveryPeriodId != lOther$deliveryPeriodId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$siteId = siteId;
    final l$deliveryPeriodId = deliveryPeriodId;
    return Object.hashAll([
      l$siteId,
      l$deliveryPeriodId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod<
    TRes> {
  factory CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod(
    Variables$Query$StationWithSiteDeliveryLocationsForPeriod instance,
    TRes Function(Variables$Query$StationWithSiteDeliveryLocationsForPeriod)
        then,
  ) = _CopyWithImpl$Variables$Query$StationWithSiteDeliveryLocationsForPeriod;

  factory CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Query$StationWithSiteDeliveryLocationsForPeriod;

  TRes call({
    String? siteId,
    String? deliveryPeriodId,
  });
}

class _CopyWithImpl$Variables$Query$StationWithSiteDeliveryLocationsForPeriod<
        TRes>
    implements
        CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod<
            TRes> {
  _CopyWithImpl$Variables$Query$StationWithSiteDeliveryLocationsForPeriod(
    this._instance,
    this._then,
  );

  final Variables$Query$StationWithSiteDeliveryLocationsForPeriod _instance;

  final TRes Function(Variables$Query$StationWithSiteDeliveryLocationsForPeriod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteId = _undefined,
    Object? deliveryPeriodId = _undefined,
  }) =>
      _then(Variables$Query$StationWithSiteDeliveryLocationsForPeriod._({
        ..._instance._$data,
        if (siteId != _undefined && siteId != null)
          'siteId': (siteId as String),
        if (deliveryPeriodId != _undefined && deliveryPeriodId != null)
          'deliveryPeriodId': (deliveryPeriodId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$StationWithSiteDeliveryLocationsForPeriod<
        TRes>
    implements
        CopyWith$Variables$Query$StationWithSiteDeliveryLocationsForPeriod<
            TRes> {
  _CopyWithStubImpl$Variables$Query$StationWithSiteDeliveryLocationsForPeriod(
      this._res);

  TRes _res;

  call({
    String? siteId,
    String? deliveryPeriodId,
  }) =>
      _res;
}

class Query$StationWithSiteDeliveryLocationsForPeriod {
  Query$StationWithSiteDeliveryLocationsForPeriod({
    this.siteDeliveryLocationCollection,
    this.deliveryPeriodCollection,
    this.$__typename = 'Query',
  });

  factory Query$StationWithSiteDeliveryLocationsForPeriod.fromJson(
      Map<String, dynamic> json) {
    final l$siteDeliveryLocationCollection =
        json['siteDeliveryLocationCollection'];
    final l$deliveryPeriodCollection = json['deliveryPeriodCollection'];
    final l$$__typename = json['__typename'];
    return Query$StationWithSiteDeliveryLocationsForPeriod(
      siteDeliveryLocationCollection: l$siteDeliveryLocationCollection == null
          ? null
          : Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection
              .fromJson(
                  (l$siteDeliveryLocationCollection as Map<String, dynamic>)),
      deliveryPeriodCollection: l$deliveryPeriodCollection == null
          ? null
          : Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection
              .fromJson((l$deliveryPeriodCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection?
      siteDeliveryLocationCollection;

  final Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection?
      deliveryPeriodCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$siteDeliveryLocationCollection = siteDeliveryLocationCollection;
    _resultData['siteDeliveryLocationCollection'] =
        l$siteDeliveryLocationCollection?.toJson();
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    _resultData['deliveryPeriodCollection'] =
        l$deliveryPeriodCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$siteDeliveryLocationCollection = siteDeliveryLocationCollection;
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$siteDeliveryLocationCollection,
      l$deliveryPeriodCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$StationWithSiteDeliveryLocationsForPeriod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$siteDeliveryLocationCollection = siteDeliveryLocationCollection;
    final lOther$siteDeliveryLocationCollection =
        other.siteDeliveryLocationCollection;
    if (l$siteDeliveryLocationCollection !=
        lOther$siteDeliveryLocationCollection) {
      return false;
    }
    final l$deliveryPeriodCollection = deliveryPeriodCollection;
    final lOther$deliveryPeriodCollection = other.deliveryPeriodCollection;
    if (l$deliveryPeriodCollection != lOther$deliveryPeriodCollection) {
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

extension UtilityExtension$Query$StationWithSiteDeliveryLocationsForPeriod
    on Query$StationWithSiteDeliveryLocationsForPeriod {
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod<
          Query$StationWithSiteDeliveryLocationsForPeriod>
      get copyWith => CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod<TRes> {
  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod(
    Query$StationWithSiteDeliveryLocationsForPeriod instance,
    TRes Function(Query$StationWithSiteDeliveryLocationsForPeriod) then,
  ) = _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod;

  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod;

  TRes call({
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection?
        siteDeliveryLocationCollection,
    Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection?
        deliveryPeriodCollection,
    String? $__typename,
  });
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
      TRes> get siteDeliveryLocationCollection;
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
      TRes> get deliveryPeriodCollection;
}

class _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod<TRes>
    implements CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod<TRes> {
  _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod(
    this._instance,
    this._then,
  );

  final Query$StationWithSiteDeliveryLocationsForPeriod _instance;

  final TRes Function(Query$StationWithSiteDeliveryLocationsForPeriod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? siteDeliveryLocationCollection = _undefined,
    Object? deliveryPeriodCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$StationWithSiteDeliveryLocationsForPeriod(
        siteDeliveryLocationCollection: siteDeliveryLocationCollection ==
                _undefined
            ? _instance.siteDeliveryLocationCollection
            : (siteDeliveryLocationCollection
                as Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection?),
        deliveryPeriodCollection: deliveryPeriodCollection == _undefined
            ? _instance.deliveryPeriodCollection
            : (deliveryPeriodCollection
                as Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
      TRes> get siteDeliveryLocationCollection {
    final local$siteDeliveryLocationCollection =
        _instance.siteDeliveryLocationCollection;
    return local$siteDeliveryLocationCollection == null
        ? CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection
            .stub(_then(_instance))
        : CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
            local$siteDeliveryLocationCollection,
            (e) => call(siteDeliveryLocationCollection: e));
  }

  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
      TRes> get deliveryPeriodCollection {
    final local$deliveryPeriodCollection = _instance.deliveryPeriodCollection;
    return local$deliveryPeriodCollection == null
        ? CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection
            .stub(_then(_instance))
        : CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
            local$deliveryPeriodCollection,
            (e) => call(deliveryPeriodCollection: e));
  }
}

class _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod<TRes>
    implements CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod<TRes> {
  _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod(this._res);

  TRes _res;

  call({
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection?
        siteDeliveryLocationCollection,
    Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection?
        deliveryPeriodCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
          TRes>
      get siteDeliveryLocationCollection =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection
              .stub(_res);

  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
          TRes>
      get deliveryPeriodCollection =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection
              .stub(_res);
}

const documentNodeQueryStationWithSiteDeliveryLocationsForPeriod =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'StationWithSiteDeliveryLocationsForPeriod'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'siteId')),
        type: NamedTypeNode(
          name: NameNode(value: 'UUID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'deliveryPeriodId')),
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
        name: NameNode(value: 'siteDeliveryLocationCollection'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'siteId'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'eq'),
                    value: VariableNode(name: NameNode(value: 'siteId')),
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
                    name: NameNode(value: 'deliveryLocationId'),
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
                    name: NameNode(value: 'deliveryLocation'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'DeliveryLocation'),
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
                    name: NameNode(value: 'site'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FragmentSpreadNode(
                        name: NameNode(value: 'Site'),
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
      FieldNode(
        name: NameNode(value: 'deliveryPeriodCollection'),
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
                    value:
                        VariableNode(name: NameNode(value: 'deliveryPeriodId')),
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
                    name: NameNode(value: 'DeliveryPeriod'),
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
  fragmentDefinitionDeliveryLocation,
  fragmentDefinitionSite,
  fragmentDefinitionSiteDeliveryLocation,
  fragmentDefinitionDeliveryPeriod,
]);
Query$StationWithSiteDeliveryLocationsForPeriod
    _parserFn$Query$StationWithSiteDeliveryLocationsForPeriod(
            Map<String, dynamic> data) =>
        Query$StationWithSiteDeliveryLocationsForPeriod.fromJson(data);
typedef OnQueryComplete$Query$StationWithSiteDeliveryLocationsForPeriod
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$StationWithSiteDeliveryLocationsForPeriod?,
);

class Options$Query$StationWithSiteDeliveryLocationsForPeriod extends graphql
    .QueryOptions<Query$StationWithSiteDeliveryLocationsForPeriod> {
  Options$Query$StationWithSiteDeliveryLocationsForPeriod({
    String? operationName,
    required Variables$Query$StationWithSiteDeliveryLocationsForPeriod
        variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationWithSiteDeliveryLocationsForPeriod? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$StationWithSiteDeliveryLocationsForPeriod? onComplete,
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
                        : _parserFn$Query$StationWithSiteDeliveryLocationsForPeriod(
                            data),
                  ),
          onError: onError,
          document: documentNodeQueryStationWithSiteDeliveryLocationsForPeriod,
          parserFn: _parserFn$Query$StationWithSiteDeliveryLocationsForPeriod,
        );

  final OnQueryComplete$Query$StationWithSiteDeliveryLocationsForPeriod?
      onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$StationWithSiteDeliveryLocationsForPeriod
    extends graphql
    .WatchQueryOptions<Query$StationWithSiteDeliveryLocationsForPeriod> {
  WatchOptions$Query$StationWithSiteDeliveryLocationsForPeriod({
    String? operationName,
    required Variables$Query$StationWithSiteDeliveryLocationsForPeriod
        variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$StationWithSiteDeliveryLocationsForPeriod? typedOptimisticResult,
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
          document: documentNodeQueryStationWithSiteDeliveryLocationsForPeriod,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$StationWithSiteDeliveryLocationsForPeriod,
        );
}

class FetchMoreOptions$Query$StationWithSiteDeliveryLocationsForPeriod
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$StationWithSiteDeliveryLocationsForPeriod({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$StationWithSiteDeliveryLocationsForPeriod
        variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryStationWithSiteDeliveryLocationsForPeriod,
        );
}

extension ClientExtension$Query$StationWithSiteDeliveryLocationsForPeriod
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$StationWithSiteDeliveryLocationsForPeriod>>
      query$StationWithSiteDeliveryLocationsForPeriod(
              Options$Query$StationWithSiteDeliveryLocationsForPeriod
                  options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$StationWithSiteDeliveryLocationsForPeriod>
      watchQuery$StationWithSiteDeliveryLocationsForPeriod(
              WatchOptions$Query$StationWithSiteDeliveryLocationsForPeriod
                  options) =>
          this.watchQuery(options);
  void writeQuery$StationWithSiteDeliveryLocationsForPeriod({
    required Query$StationWithSiteDeliveryLocationsForPeriod data,
    required Variables$Query$StationWithSiteDeliveryLocationsForPeriod
        variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document:
                  documentNodeQueryStationWithSiteDeliveryLocationsForPeriod),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$StationWithSiteDeliveryLocationsForPeriod?
      readQuery$StationWithSiteDeliveryLocationsForPeriod({
    required Variables$Query$StationWithSiteDeliveryLocationsForPeriod
        variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document:
                documentNodeQueryStationWithSiteDeliveryLocationsForPeriod),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$StationWithSiteDeliveryLocationsForPeriod.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$StationWithSiteDeliveryLocationsForPeriod>
    useQuery$StationWithSiteDeliveryLocationsForPeriod(
            Options$Query$StationWithSiteDeliveryLocationsForPeriod options) =>
        graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$StationWithSiteDeliveryLocationsForPeriod>
    useWatchQuery$StationWithSiteDeliveryLocationsForPeriod(
            WatchOptions$Query$StationWithSiteDeliveryLocationsForPeriod
                options) =>
        graphql_flutter.useWatchQuery(options);

class Query$StationWithSiteDeliveryLocationsForPeriod$Widget
    extends graphql_flutter
    .Query<Query$StationWithSiteDeliveryLocationsForPeriod> {
  Query$StationWithSiteDeliveryLocationsForPeriod$Widget({
    widgets.Key? key,
    required Options$Query$StationWithSiteDeliveryLocationsForPeriod options,
    required graphql_flutter
        .QueryBuilder<Query$StationWithSiteDeliveryLocationsForPeriod>
        builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection {
  Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection({
    required this.edges,
    this.$__typename = 'SiteDeliveryLocationConnection',
  });

  factory Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>
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
    if (other
            is! Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection ||
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

extension UtilityExtension$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection
    on Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection {
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection>
      get copyWith =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
    TRes> {
  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection
        instance,
    TRes Function(
            Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection)
        then,
  ) = _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection;

  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection;

  TRes call({
    List<Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>?
        edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
                      Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
            TRes> {
  _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
    this._instance,
    this._then,
  );

  final Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection
      _instance;

  final TRes Function(
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
                          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection<
            TRes> {
  _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection(
      this._res);

  TRes _res;

  call({
    List<Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>?
        edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges {
  Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges({
    required this.node,
    this.$__typename = 'SiteDeliveryLocationEdge',
  });

  factory Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
      node:
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node
              .fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node
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
    if (other
            is! Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges ||
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

extension UtilityExtension$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges
    on Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges {
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges>
      get copyWith =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
    TRes> {
  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges
        instance,
    TRes Function(
            Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges)
        then,
  ) = _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges;

  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges;

  TRes call({
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node?
        node,
    String? $__typename,
  });
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
      TRes> get node;
}

class _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
            TRes> {
  _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges
      _instance;

  final TRes Function(
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node
                as Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
      TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges(
      this._res);

  TRes _res;

  call({
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node?
        node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
          TRes>
      get node =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node
              .stub(_res);
}

class Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node {
  Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node({
    required this.id,
    required this.siteId,
    required this.deliveryLocationId,
    required this.createdAt,
    required this.deliveryLocation,
    required this.site,
    this.$__typename = 'SiteDeliveryLocation',
  });

  factory Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$siteId = json['siteId'];
    final l$deliveryLocationId = json['deliveryLocationId'];
    final l$createdAt = json['createdAt'];
    final l$deliveryLocation = json['deliveryLocation'];
    final l$site = json['site'];
    final l$$__typename = json['__typename'];
    return Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
      id: (l$id as String),
      siteId: (l$siteId as String),
      deliveryLocationId: (l$deliveryLocationId as String),
      createdAt: DateTime.parse((l$createdAt as String)),
      deliveryLocation: Fragment$DeliveryLocation.fromJson(
          (l$deliveryLocation as Map<String, dynamic>)),
      site: Fragment$Site.fromJson((l$site as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String siteId;

  final String deliveryLocationId;

  final DateTime createdAt;

  final Fragment$DeliveryLocation deliveryLocation;

  final Fragment$Site site;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$siteId = siteId;
    _resultData['siteId'] = l$siteId;
    final l$deliveryLocationId = deliveryLocationId;
    _resultData['deliveryLocationId'] = l$deliveryLocationId;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$deliveryLocation = deliveryLocation;
    _resultData['deliveryLocation'] = l$deliveryLocation.toJson();
    final l$site = site;
    _resultData['site'] = l$site.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$siteId = siteId;
    final l$deliveryLocationId = deliveryLocationId;
    final l$createdAt = createdAt;
    final l$deliveryLocation = deliveryLocation;
    final l$site = site;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$siteId,
      l$deliveryLocationId,
      l$createdAt,
      l$deliveryLocation,
      l$site,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node ||
        runtimeType != other.runtimeType) {
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
    final l$deliveryLocationId = deliveryLocationId;
    final lOther$deliveryLocationId = other.deliveryLocationId;
    if (l$deliveryLocationId != lOther$deliveryLocationId) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$deliveryLocation = deliveryLocation;
    final lOther$deliveryLocation = other.deliveryLocation;
    if (l$deliveryLocation != lOther$deliveryLocation) {
      return false;
    }
    final l$site = site;
    final lOther$site = other.site;
    if (l$site != lOther$site) {
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

extension UtilityExtension$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node
    on Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node {
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node>
      get copyWith =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
    TRes> {
  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
    Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node
        instance,
    TRes Function(
            Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node)
        then,
  ) = _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node;

  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node;

  TRes call({
    String? id,
    String? siteId,
    String? deliveryLocationId,
    DateTime? createdAt,
    Fragment$DeliveryLocation? deliveryLocation,
    Fragment$Site? site,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation;
  CopyWith$Fragment$Site<TRes> get site;
}

class _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
            TRes> {
  _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
    this._instance,
    this._then,
  );

  final Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node
      _instance;

  final TRes Function(
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? siteId = _undefined,
    Object? deliveryLocationId = _undefined,
    Object? createdAt = _undefined,
    Object? deliveryLocation = _undefined,
    Object? site = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        siteId: siteId == _undefined || siteId == null
            ? _instance.siteId
            : (siteId as String),
        deliveryLocationId:
            deliveryLocationId == _undefined || deliveryLocationId == null
                ? _instance.deliveryLocationId
                : (deliveryLocationId as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        deliveryLocation:
            deliveryLocation == _undefined || deliveryLocation == null
                ? _instance.deliveryLocation
                : (deliveryLocation as Fragment$DeliveryLocation),
        site: site == _undefined || site == null
            ? _instance.site
            : (site as Fragment$Site),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation {
    final local$deliveryLocation = _instance.deliveryLocation;
    return CopyWith$Fragment$DeliveryLocation(
        local$deliveryLocation, (e) => call(deliveryLocation: e));
  }

  CopyWith$Fragment$Site<TRes> get site {
    final local$site = _instance.site;
    return CopyWith$Fragment$Site(local$site, (e) => call(site: e));
  }
}

class _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node<
            TRes> {
  _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$siteDeliveryLocationCollection$edges$node(
      this._res);

  TRes _res;

  call({
    String? id,
    String? siteId,
    String? deliveryLocationId,
    DateTime? createdAt,
    Fragment$DeliveryLocation? deliveryLocation,
    Fragment$Site? site,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryLocation<TRes> get deliveryLocation =>
      CopyWith$Fragment$DeliveryLocation.stub(_res);

  CopyWith$Fragment$Site<TRes> get site => CopyWith$Fragment$Site.stub(_res);
}

class Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection {
  Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection({
    required this.edges,
    this.$__typename = 'DeliveryPeriodConnection',
  });

  factory Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>
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
    if (other
            is! Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection ||
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

extension UtilityExtension$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection
    on Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection {
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection>
      get copyWith =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
    TRes> {
  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
    Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection
        instance,
    TRes Function(
            Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection)
        then,
  ) = _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection;

  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection;

  TRes call({
    List<Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>?
        edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges> Function(
              Iterable<
                  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
                      Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
            TRes> {
  _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
    this._instance,
    this._then,
  );

  final Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection
      _instance;

  final TRes Function(
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
                          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection<
            TRes> {
  _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection(
      this._res);

  TRes _res;

  call({
    List<Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>?
        edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges {
  Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges({
    required this.node,
    this.$__typename = 'DeliveryPeriodEdge',
  });

  factory Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
      node: Fragment$DeliveryPeriod.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$DeliveryPeriod node;

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
    if (other
            is! Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges ||
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

extension UtilityExtension$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges
    on Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges {
  CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges>
      get copyWith =>
          CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
    TRes> {
  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
    Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges
        instance,
    TRes Function(
            Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges)
        then,
  ) = _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges;

  factory CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges;

  TRes call({
    Fragment$DeliveryPeriod? node,
    String? $__typename,
  });
  CopyWith$Fragment$DeliveryPeriod<TRes> get node;
}

class _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
            TRes> {
  _CopyWithImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
    this._instance,
    this._then,
  );

  final Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges
      _instance;

  final TRes Function(
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$DeliveryPeriod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$DeliveryPeriod<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$DeliveryPeriod(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
        TRes>
    implements
        CopyWith$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$StationWithSiteDeliveryLocationsForPeriod$deliveryPeriodCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$DeliveryPeriod? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$DeliveryPeriod<TRes> get node =>
      CopyWith$Fragment$DeliveryPeriod.stub(_res);
}
