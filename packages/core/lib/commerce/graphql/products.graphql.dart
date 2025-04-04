import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$Product {
  Fragment$Product({
    required this.id,
    this.productTypeId,
    required this.name,
    this.shortDescription,
    this.longDescription,
    this.nutritionDetails,
    this.photoUrl,
    this.data,
    required this.createdAt,
    this.updatedAt,
    required this.unitPrice,
    this.unit,
    this.instructions,
    this.stripeProductId,
    this.$__typename = 'Products',
  });

  factory Fragment$Product.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$productTypeId = json['productTypeId'];
    final l$name = json['name'];
    final l$shortDescription = json['shortDescription'];
    final l$longDescription = json['longDescription'];
    final l$nutritionDetails = json['nutritionDetails'];
    final l$photoUrl = json['photoUrl'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$updatedAt = json['updatedAt'];
    final l$unitPrice = json['unitPrice'];
    final l$unit = json['unit'];
    final l$instructions = json['instructions'];
    final l$stripeProductId = json['stripeProductId'];
    final l$$__typename = json['__typename'];
    return Fragment$Product(
      id: (l$id as String),
      productTypeId: (l$productTypeId as String?),
      name: (l$name as String),
      shortDescription: (l$shortDescription as String?),
      longDescription: (l$longDescription as String?),
      nutritionDetails: (l$nutritionDetails as String?),
      photoUrl: (l$photoUrl as String?),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      updatedAt:
          l$updatedAt == null ? null : DateTime.parse((l$updatedAt as String)),
      unitPrice: (l$unitPrice as num).toDouble(),
      unit: (l$unit as String?),
      instructions: (l$instructions as String?),
      stripeProductId: (l$stripeProductId as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? productTypeId;

  final String name;

  final String? shortDescription;

  final String? longDescription;

  final String? nutritionDetails;

  final String? photoUrl;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final DateTime? updatedAt;

  final double unitPrice;

  final String? unit;

  final String? instructions;

  final String? stripeProductId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$productTypeId = productTypeId;
    _resultData['productTypeId'] = l$productTypeId;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$shortDescription = shortDescription;
    _resultData['shortDescription'] = l$shortDescription;
    final l$longDescription = longDescription;
    _resultData['longDescription'] = l$longDescription;
    final l$nutritionDetails = nutritionDetails;
    _resultData['nutritionDetails'] = l$nutritionDetails;
    final l$photoUrl = photoUrl;
    _resultData['photoUrl'] = l$photoUrl;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$updatedAt = updatedAt;
    _resultData['updatedAt'] = l$updatedAt?.toIso8601String();
    final l$unitPrice = unitPrice;
    _resultData['unitPrice'] = l$unitPrice;
    final l$unit = unit;
    _resultData['unit'] = l$unit;
    final l$instructions = instructions;
    _resultData['instructions'] = l$instructions;
    final l$stripeProductId = stripeProductId;
    _resultData['stripeProductId'] = l$stripeProductId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$productTypeId = productTypeId;
    final l$name = name;
    final l$shortDescription = shortDescription;
    final l$longDescription = longDescription;
    final l$nutritionDetails = nutritionDetails;
    final l$photoUrl = photoUrl;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$updatedAt = updatedAt;
    final l$unitPrice = unitPrice;
    final l$unit = unit;
    final l$instructions = instructions;
    final l$stripeProductId = stripeProductId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$productTypeId,
      l$name,
      l$shortDescription,
      l$longDescription,
      l$nutritionDetails,
      l$photoUrl,
      l$data,
      l$createdAt,
      l$updatedAt,
      l$unitPrice,
      l$unit,
      l$instructions,
      l$stripeProductId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$productTypeId = productTypeId;
    final lOther$productTypeId = other.productTypeId;
    if (l$productTypeId != lOther$productTypeId) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$shortDescription = shortDescription;
    final lOther$shortDescription = other.shortDescription;
    if (l$shortDescription != lOther$shortDescription) {
      return false;
    }
    final l$longDescription = longDescription;
    final lOther$longDescription = other.longDescription;
    if (l$longDescription != lOther$longDescription) {
      return false;
    }
    final l$nutritionDetails = nutritionDetails;
    final lOther$nutritionDetails = other.nutritionDetails;
    if (l$nutritionDetails != lOther$nutritionDetails) {
      return false;
    }
    final l$photoUrl = photoUrl;
    final lOther$photoUrl = other.photoUrl;
    if (l$photoUrl != lOther$photoUrl) {
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
    final l$unitPrice = unitPrice;
    final lOther$unitPrice = other.unitPrice;
    if (l$unitPrice != lOther$unitPrice) {
      return false;
    }
    final l$unit = unit;
    final lOther$unit = other.unit;
    if (l$unit != lOther$unit) {
      return false;
    }
    final l$instructions = instructions;
    final lOther$instructions = other.instructions;
    if (l$instructions != lOther$instructions) {
      return false;
    }
    final l$stripeProductId = stripeProductId;
    final lOther$stripeProductId = other.stripeProductId;
    if (l$stripeProductId != lOther$stripeProductId) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Product on Fragment$Product {
  CopyWith$Fragment$Product<Fragment$Product> get copyWith =>
      CopyWith$Fragment$Product(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Product<TRes> {
  factory CopyWith$Fragment$Product(
    Fragment$Product instance,
    TRes Function(Fragment$Product) then,
  ) = _CopyWithImpl$Fragment$Product;

  factory CopyWith$Fragment$Product.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Product;

  TRes call({
    String? id,
    String? productTypeId,
    String? name,
    String? shortDescription,
    String? longDescription,
    String? nutritionDetails,
    String? photoUrl,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? unitPrice,
    String? unit,
    String? instructions,
    String? stripeProductId,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Product<TRes>
    implements CopyWith$Fragment$Product<TRes> {
  _CopyWithImpl$Fragment$Product(
    this._instance,
    this._then,
  );

  final Fragment$Product _instance;

  final TRes Function(Fragment$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? productTypeId = _undefined,
    Object? name = _undefined,
    Object? shortDescription = _undefined,
    Object? longDescription = _undefined,
    Object? nutritionDetails = _undefined,
    Object? photoUrl = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? updatedAt = _undefined,
    Object? unitPrice = _undefined,
    Object? unit = _undefined,
    Object? instructions = _undefined,
    Object? stripeProductId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Product(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        productTypeId: productTypeId == _undefined
            ? _instance.productTypeId
            : (productTypeId as String?),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        shortDescription: shortDescription == _undefined
            ? _instance.shortDescription
            : (shortDescription as String?),
        longDescription: longDescription == _undefined
            ? _instance.longDescription
            : (longDescription as String?),
        nutritionDetails: nutritionDetails == _undefined
            ? _instance.nutritionDetails
            : (nutritionDetails as String?),
        photoUrl:
            photoUrl == _undefined ? _instance.photoUrl : (photoUrl as String?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        updatedAt: updatedAt == _undefined
            ? _instance.updatedAt
            : (updatedAt as DateTime?),
        unitPrice: unitPrice == _undefined || unitPrice == null
            ? _instance.unitPrice
            : (unitPrice as double),
        unit: unit == _undefined ? _instance.unit : (unit as String?),
        instructions: instructions == _undefined
            ? _instance.instructions
            : (instructions as String?),
        stripeProductId: stripeProductId == _undefined
            ? _instance.stripeProductId
            : (stripeProductId as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Product<TRes>
    implements CopyWith$Fragment$Product<TRes> {
  _CopyWithStubImpl$Fragment$Product(this._res);

  TRes _res;

  call({
    String? id,
    String? productTypeId,
    String? name,
    String? shortDescription,
    String? longDescription,
    String? nutritionDetails,
    String? photoUrl,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? unitPrice,
    String? unit,
    String? instructions,
    String? stripeProductId,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionProduct = FragmentDefinitionNode(
  name: NameNode(value: 'Product'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Products'),
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
      name: NameNode(value: 'productTypeId'),
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
      name: NameNode(value: 'shortDescription'),
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
      name: NameNode(value: 'nutritionDetails'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'photoUrl'),
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
      name: NameNode(value: 'unitPrice'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'unit'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'instructions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'stripeProductId'),
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
const documentNodeFragmentProduct = DocumentNode(definitions: [
  fragmentDefinitionProduct,
]);

extension ClientExtension$Fragment$Product on graphql.GraphQLClient {
  void writeFragment$Product({
    required Fragment$Product data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Product',
            document: documentNodeFragmentProduct,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Product? readFragment$Product({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Product',
          document: documentNodeFragmentProduct,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Product.fromJson(result);
  }
}

class Variables$Query$ProductCollection {
  factory Variables$Query$ProductCollection({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ProductsFilter? filter,
    List<Input$ProductsOrderBy>? orderBy,
  }) =>
      Variables$Query$ProductCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$ProductCollection._(this._$data);

  factory Variables$Query$ProductCollection.fromJson(
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
          : Input$ProductsFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$ProductsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$ProductCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$ProductsFilter? get filter =>
      (_$data['filter'] as Input$ProductsFilter?);

  List<Input$ProductsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$ProductsOrderBy>?);

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

  CopyWith$Variables$Query$ProductCollection<Variables$Query$ProductCollection>
      get copyWith => CopyWith$Variables$Query$ProductCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$ProductCollection ||
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

abstract class CopyWith$Variables$Query$ProductCollection<TRes> {
  factory CopyWith$Variables$Query$ProductCollection(
    Variables$Query$ProductCollection instance,
    TRes Function(Variables$Query$ProductCollection) then,
  ) = _CopyWithImpl$Variables$Query$ProductCollection;

  factory CopyWith$Variables$Query$ProductCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ProductCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ProductsFilter? filter,
    List<Input$ProductsOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$ProductCollection<TRes>
    implements CopyWith$Variables$Query$ProductCollection<TRes> {
  _CopyWithImpl$Variables$Query$ProductCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$ProductCollection _instance;

  final TRes Function(Variables$Query$ProductCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$ProductCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined) 'filter': (filter as Input$ProductsFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$ProductsOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ProductCollection<TRes>
    implements CopyWith$Variables$Query$ProductCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$ProductCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$ProductsFilter? filter,
    List<Input$ProductsOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$ProductCollection {
  Query$ProductCollection({
    this.productsCollection,
    this.$__typename = 'Query',
  });

  factory Query$ProductCollection.fromJson(Map<String, dynamic> json) {
    final l$productsCollection = json['productsCollection'];
    final l$$__typename = json['__typename'];
    return Query$ProductCollection(
      productsCollection: l$productsCollection == null
          ? null
          : Query$ProductCollection$productsCollection.fromJson(
              (l$productsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProductCollection$productsCollection? productsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$productsCollection = productsCollection;
    _resultData['productsCollection'] = l$productsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$productsCollection = productsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$productsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProductCollection || runtimeType != other.runtimeType) {
      return false;
    }
    final l$productsCollection = productsCollection;
    final lOther$productsCollection = other.productsCollection;
    if (l$productsCollection != lOther$productsCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ProductCollection on Query$ProductCollection {
  CopyWith$Query$ProductCollection<Query$ProductCollection> get copyWith =>
      CopyWith$Query$ProductCollection(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProductCollection<TRes> {
  factory CopyWith$Query$ProductCollection(
    Query$ProductCollection instance,
    TRes Function(Query$ProductCollection) then,
  ) = _CopyWithImpl$Query$ProductCollection;

  factory CopyWith$Query$ProductCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductCollection;

  TRes call({
    Query$ProductCollection$productsCollection? productsCollection,
    String? $__typename,
  });
  CopyWith$Query$ProductCollection$productsCollection<TRes>
      get productsCollection;
}

class _CopyWithImpl$Query$ProductCollection<TRes>
    implements CopyWith$Query$ProductCollection<TRes> {
  _CopyWithImpl$Query$ProductCollection(
    this._instance,
    this._then,
  );

  final Query$ProductCollection _instance;

  final TRes Function(Query$ProductCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? productsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductCollection(
        productsCollection: productsCollection == _undefined
            ? _instance.productsCollection
            : (productsCollection
                as Query$ProductCollection$productsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProductCollection$productsCollection<TRes>
      get productsCollection {
    final local$productsCollection = _instance.productsCollection;
    return local$productsCollection == null
        ? CopyWith$Query$ProductCollection$productsCollection.stub(
            _then(_instance))
        : CopyWith$Query$ProductCollection$productsCollection(
            local$productsCollection, (e) => call(productsCollection: e));
  }
}

class _CopyWithStubImpl$Query$ProductCollection<TRes>
    implements CopyWith$Query$ProductCollection<TRes> {
  _CopyWithStubImpl$Query$ProductCollection(this._res);

  TRes _res;

  call({
    Query$ProductCollection$productsCollection? productsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProductCollection$productsCollection<TRes>
      get productsCollection =>
          CopyWith$Query$ProductCollection$productsCollection.stub(_res);
}

const documentNodeQueryProductCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProductCollection'),
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
          name: NameNode(value: 'ProductsFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'ProductsOrderBy'),
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
        name: NameNode(value: 'productsCollection'),
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
  fragmentDefinitionProduct,
]);
Query$ProductCollection _parserFn$Query$ProductCollection(
        Map<String, dynamic> data) =>
    Query$ProductCollection.fromJson(data);
typedef OnQueryComplete$Query$ProductCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ProductCollection?,
);

class Options$Query$ProductCollection
    extends graphql.QueryOptions<Query$ProductCollection> {
  Options$Query$ProductCollection({
    String? operationName,
    Variables$Query$ProductCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProductCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProductCollection? onComplete,
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
                        : _parserFn$Query$ProductCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryProductCollection,
          parserFn: _parserFn$Query$ProductCollection,
        );

  final OnQueryComplete$Query$ProductCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ProductCollection
    extends graphql.WatchQueryOptions<Query$ProductCollection> {
  WatchOptions$Query$ProductCollection({
    String? operationName,
    Variables$Query$ProductCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProductCollection? typedOptimisticResult,
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
          document: documentNodeQueryProductCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProductCollection,
        );
}

class FetchMoreOptions$Query$ProductCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProductCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$ProductCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryProductCollection,
        );
}

extension ClientExtension$Query$ProductCollection on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProductCollection>> query$ProductCollection(
          [Options$Query$ProductCollection? options]) async =>
      await this.query(options ?? Options$Query$ProductCollection());
  graphql.ObservableQuery<Query$ProductCollection> watchQuery$ProductCollection(
          [WatchOptions$Query$ProductCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$ProductCollection());
  void writeQuery$ProductCollection({
    required Query$ProductCollection data,
    Variables$Query$ProductCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryProductCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProductCollection? readQuery$ProductCollection({
    Variables$Query$ProductCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryProductCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProductCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$ProductCollection>
    useQuery$ProductCollection([Options$Query$ProductCollection? options]) =>
        graphql_flutter.useQuery(options ?? Options$Query$ProductCollection());
graphql.ObservableQuery<Query$ProductCollection>
    useWatchQuery$ProductCollection(
            [WatchOptions$Query$ProductCollection? options]) =>
        graphql_flutter
            .useWatchQuery(options ?? WatchOptions$Query$ProductCollection());

class Query$ProductCollection$Widget
    extends graphql_flutter.Query<Query$ProductCollection> {
  Query$ProductCollection$Widget({
    widgets.Key? key,
    Options$Query$ProductCollection? options,
    required graphql_flutter.QueryBuilder<Query$ProductCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$ProductCollection(),
          builder: builder,
        );
}

class Query$ProductCollection$productsCollection {
  Query$ProductCollection$productsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'ProductsConnection',
  });

  factory Query$ProductCollection$productsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$ProductCollection$productsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$ProductCollection$productsCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$ProductCollection$productsCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProductCollection$productsCollection$edges> edges;

  final Query$ProductCollection$productsCollection$pageInfo pageInfo;

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
    if (other is! Query$ProductCollection$productsCollection ||
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

extension UtilityExtension$Query$ProductCollection$productsCollection
    on Query$ProductCollection$productsCollection {
  CopyWith$Query$ProductCollection$productsCollection<
          Query$ProductCollection$productsCollection>
      get copyWith => CopyWith$Query$ProductCollection$productsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductCollection$productsCollection<TRes> {
  factory CopyWith$Query$ProductCollection$productsCollection(
    Query$ProductCollection$productsCollection instance,
    TRes Function(Query$ProductCollection$productsCollection) then,
  ) = _CopyWithImpl$Query$ProductCollection$productsCollection;

  factory CopyWith$Query$ProductCollection$productsCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$ProductCollection$productsCollection;

  TRes call({
    List<Query$ProductCollection$productsCollection$edges>? edges,
    Query$ProductCollection$productsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$ProductCollection$productsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$ProductCollection$productsCollection$edges<
                      Query$ProductCollection$productsCollection$edges>>)
          _fn);
  CopyWith$Query$ProductCollection$productsCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$ProductCollection$productsCollection<TRes>
    implements CopyWith$Query$ProductCollection$productsCollection<TRes> {
  _CopyWithImpl$Query$ProductCollection$productsCollection(
    this._instance,
    this._then,
  );

  final Query$ProductCollection$productsCollection _instance;

  final TRes Function(Query$ProductCollection$productsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductCollection$productsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$ProductCollection$productsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$ProductCollection$productsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$ProductCollection$productsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$ProductCollection$productsCollection$edges<
                          Query$ProductCollection$productsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map(
              (e) => CopyWith$Query$ProductCollection$productsCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$ProductCollection$productsCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ProductCollection$productsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$ProductCollection$productsCollection<TRes>
    implements CopyWith$Query$ProductCollection$productsCollection<TRes> {
  _CopyWithStubImpl$Query$ProductCollection$productsCollection(this._res);

  TRes _res;

  call({
    List<Query$ProductCollection$productsCollection$edges>? edges,
    Query$ProductCollection$productsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$ProductCollection$productsCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$ProductCollection$productsCollection$pageInfo.stub(
              _res);
}

class Query$ProductCollection$productsCollection$edges {
  Query$ProductCollection$productsCollection$edges({
    required this.node,
    this.$__typename = 'ProductsEdge',
  });

  factory Query$ProductCollection$productsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ProductCollection$productsCollection$edges(
      node: Fragment$Product.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Product node;

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
    if (other is! Query$ProductCollection$productsCollection$edges ||
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

extension UtilityExtension$Query$ProductCollection$productsCollection$edges
    on Query$ProductCollection$productsCollection$edges {
  CopyWith$Query$ProductCollection$productsCollection$edges<
          Query$ProductCollection$productsCollection$edges>
      get copyWith => CopyWith$Query$ProductCollection$productsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductCollection$productsCollection$edges<TRes> {
  factory CopyWith$Query$ProductCollection$productsCollection$edges(
    Query$ProductCollection$productsCollection$edges instance,
    TRes Function(Query$ProductCollection$productsCollection$edges) then,
  ) = _CopyWithImpl$Query$ProductCollection$productsCollection$edges;

  factory CopyWith$Query$ProductCollection$productsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProductCollection$productsCollection$edges;

  TRes call({
    Fragment$Product? node,
    String? $__typename,
  });
  CopyWith$Fragment$Product<TRes> get node;
}

class _CopyWithImpl$Query$ProductCollection$productsCollection$edges<TRes>
    implements CopyWith$Query$ProductCollection$productsCollection$edges<TRes> {
  _CopyWithImpl$Query$ProductCollection$productsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$ProductCollection$productsCollection$edges _instance;

  final TRes Function(Query$ProductCollection$productsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductCollection$productsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Product),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Product<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Product(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ProductCollection$productsCollection$edges<TRes>
    implements CopyWith$Query$ProductCollection$productsCollection$edges<TRes> {
  _CopyWithStubImpl$Query$ProductCollection$productsCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Product? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Product<TRes> get node =>
      CopyWith$Fragment$Product.stub(_res);
}

class Query$ProductCollection$productsCollection$pageInfo {
  Query$ProductCollection$productsCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ProductCollection$productsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$ProductCollection$productsCollection$pageInfo(
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
    if (other is! Query$ProductCollection$productsCollection$pageInfo ||
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

extension UtilityExtension$Query$ProductCollection$productsCollection$pageInfo
    on Query$ProductCollection$productsCollection$pageInfo {
  CopyWith$Query$ProductCollection$productsCollection$pageInfo<
          Query$ProductCollection$productsCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$ProductCollection$productsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProductCollection$productsCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$ProductCollection$productsCollection$pageInfo(
    Query$ProductCollection$productsCollection$pageInfo instance,
    TRes Function(Query$ProductCollection$productsCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$ProductCollection$productsCollection$pageInfo;

  factory CopyWith$Query$ProductCollection$productsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProductCollection$productsCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProductCollection$productsCollection$pageInfo<TRes>
    implements
        CopyWith$Query$ProductCollection$productsCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$ProductCollection$productsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ProductCollection$productsCollection$pageInfo _instance;

  final TRes Function(Query$ProductCollection$productsCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProductCollection$productsCollection$pageInfo(
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

class _CopyWithStubImpl$Query$ProductCollection$productsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$ProductCollection$productsCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ProductCollection$productsCollection$pageInfo(
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

class Variables$Mutation$CreateProduct {
  factory Variables$Mutation$CreateProduct(
          {required Input$ProductsInsertInput input}) =>
      Variables$Mutation$CreateProduct._({
        r'input': input,
      });

  Variables$Mutation$CreateProduct._(this._$data);

  factory Variables$Mutation$CreateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$ProductsInsertInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ProductsInsertInput get input =>
      (_$data['input'] as Input$ProductsInsertInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateProduct<Variables$Mutation$CreateProduct>
      get copyWith => CopyWith$Variables$Mutation$CreateProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreateProduct ||
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

abstract class CopyWith$Variables$Mutation$CreateProduct<TRes> {
  factory CopyWith$Variables$Mutation$CreateProduct(
    Variables$Mutation$CreateProduct instance,
    TRes Function(Variables$Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateProduct;

  factory CopyWith$Variables$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateProduct;

  TRes call({Input$ProductsInsertInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateProduct _instance;

  final TRes Function(Variables$Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreateProduct._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$ProductsInsertInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateProduct<TRes>
    implements CopyWith$Variables$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateProduct(this._res);

  TRes _res;

  call({Input$ProductsInsertInput? input}) => _res;
}

class Mutation$CreateProduct {
  Mutation$CreateProduct({
    this.insertIntoProductsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateProduct.fromJson(Map<String, dynamic> json) {
    final l$insertIntoProductsCollection = json['insertIntoProductsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct(
      insertIntoProductsCollection: l$insertIntoProductsCollection == null
          ? null
          : Mutation$CreateProduct$insertIntoProductsCollection.fromJson(
              (l$insertIntoProductsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateProduct$insertIntoProductsCollection?
      insertIntoProductsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insertIntoProductsCollection = insertIntoProductsCollection;
    _resultData['insertIntoProductsCollection'] =
        l$insertIntoProductsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insertIntoProductsCollection = insertIntoProductsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insertIntoProductsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreateProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insertIntoProductsCollection = insertIntoProductsCollection;
    final lOther$insertIntoProductsCollection =
        other.insertIntoProductsCollection;
    if (l$insertIntoProductsCollection != lOther$insertIntoProductsCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateProduct on Mutation$CreateProduct {
  CopyWith$Mutation$CreateProduct<Mutation$CreateProduct> get copyWith =>
      CopyWith$Mutation$CreateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateProduct<TRes> {
  factory CopyWith$Mutation$CreateProduct(
    Mutation$CreateProduct instance,
    TRes Function(Mutation$CreateProduct) then,
  ) = _CopyWithImpl$Mutation$CreateProduct;

  factory CopyWith$Mutation$CreateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct;

  TRes call({
    Mutation$CreateProduct$insertIntoProductsCollection?
        insertIntoProductsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<TRes>
      get insertIntoProductsCollection;
}

class _CopyWithImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithImpl$Mutation$CreateProduct(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct _instance;

  final TRes Function(Mutation$CreateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insertIntoProductsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct(
        insertIntoProductsCollection: insertIntoProductsCollection == _undefined
            ? _instance.insertIntoProductsCollection
            : (insertIntoProductsCollection
                as Mutation$CreateProduct$insertIntoProductsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<TRes>
      get insertIntoProductsCollection {
    final local$insertIntoProductsCollection =
        _instance.insertIntoProductsCollection;
    return local$insertIntoProductsCollection == null
        ? CopyWith$Mutation$CreateProduct$insertIntoProductsCollection.stub(
            _then(_instance))
        : CopyWith$Mutation$CreateProduct$insertIntoProductsCollection(
            local$insertIntoProductsCollection,
            (e) => call(insertIntoProductsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateProduct<TRes>
    implements CopyWith$Mutation$CreateProduct<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct(this._res);

  TRes _res;

  call({
    Mutation$CreateProduct$insertIntoProductsCollection?
        insertIntoProductsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<TRes>
      get insertIntoProductsCollection =>
          CopyWith$Mutation$CreateProduct$insertIntoProductsCollection.stub(
              _res);
}

const documentNodeMutationCreateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'ProductsInsertInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insertIntoProductsCollection'),
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
  fragmentDefinitionProduct,
]);
Mutation$CreateProduct _parserFn$Mutation$CreateProduct(
        Map<String, dynamic> data) =>
    Mutation$CreateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateProduct?,
);

class Options$Mutation$CreateProduct
    extends graphql.MutationOptions<Mutation$CreateProduct> {
  Options$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateProduct>? update,
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
                        : _parserFn$Mutation$CreateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateProduct,
          parserFn: _parserFn$Mutation$CreateProduct,
        );

  final OnMutationCompleted$Mutation$CreateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateProduct
    extends graphql.WatchQueryOptions<Mutation$CreateProduct> {
  WatchOptions$Mutation$CreateProduct({
    String? operationName,
    required Variables$Mutation$CreateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
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
          document: documentNodeMutationCreateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateProduct,
        );
}

extension ClientExtension$Mutation$CreateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateProduct>> mutate$CreateProduct(
          Options$Mutation$CreateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateProduct> watchMutation$CreateProduct(
          WatchOptions$Mutation$CreateProduct options) =>
      this.watchMutation(options);
}

class Mutation$CreateProduct$HookResult {
  Mutation$CreateProduct$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateProduct runMutation;

  final graphql.QueryResult<Mutation$CreateProduct> result;
}

Mutation$CreateProduct$HookResult useMutation$CreateProduct(
    [WidgetOptions$Mutation$CreateProduct? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateProduct());
  return Mutation$CreateProduct$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateProduct> useWatchMutation$CreateProduct(
        WatchOptions$Mutation$CreateProduct options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateProduct
    extends graphql.MutationOptions<Mutation$CreateProduct> {
  WidgetOptions$Mutation$CreateProduct({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateProduct>? update,
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
                        : _parserFn$Mutation$CreateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateProduct,
          parserFn: _parserFn$Mutation$CreateProduct,
        );

  final OnMutationCompleted$Mutation$CreateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateProduct
    = graphql.MultiSourceResult<Mutation$CreateProduct> Function(
  Variables$Mutation$CreateProduct, {
  Object? optimisticResult,
  Mutation$CreateProduct? typedOptimisticResult,
});
typedef Builder$Mutation$CreateProduct = widgets.Widget Function(
  RunMutation$Mutation$CreateProduct,
  graphql.QueryResult<Mutation$CreateProduct>?,
);

class Mutation$CreateProduct$Widget
    extends graphql_flutter.Mutation<Mutation$CreateProduct> {
  Mutation$CreateProduct$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateProduct? options,
    required Builder$Mutation$CreateProduct builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateProduct(),
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

class Mutation$CreateProduct$insertIntoProductsCollection {
  Mutation$CreateProduct$insertIntoProductsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ProductsInsertResponse',
  });

  factory Mutation$CreateProduct$insertIntoProductsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateProduct$insertIntoProductsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Product.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Product> records;

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
    if (other is! Mutation$CreateProduct$insertIntoProductsCollection ||
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

extension UtilityExtension$Mutation$CreateProduct$insertIntoProductsCollection
    on Mutation$CreateProduct$insertIntoProductsCollection {
  CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<
          Mutation$CreateProduct$insertIntoProductsCollection>
      get copyWith =>
          CopyWith$Mutation$CreateProduct$insertIntoProductsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<
    TRes> {
  factory CopyWith$Mutation$CreateProduct$insertIntoProductsCollection(
    Mutation$CreateProduct$insertIntoProductsCollection instance,
    TRes Function(Mutation$CreateProduct$insertIntoProductsCollection) then,
  ) = _CopyWithImpl$Mutation$CreateProduct$insertIntoProductsCollection;

  factory CopyWith$Mutation$CreateProduct$insertIntoProductsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$CreateProduct$insertIntoProductsCollection;

  TRes call({
    List<Fragment$Product>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Product> Function(
              Iterable<CopyWith$Fragment$Product<Fragment$Product>>)
          _fn);
}

class _CopyWithImpl$Mutation$CreateProduct$insertIntoProductsCollection<TRes>
    implements
        CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<TRes> {
  _CopyWithImpl$Mutation$CreateProduct$insertIntoProductsCollection(
    this._instance,
    this._then,
  );

  final Mutation$CreateProduct$insertIntoProductsCollection _instance;

  final TRes Function(Mutation$CreateProduct$insertIntoProductsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateProduct$insertIntoProductsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Product>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Product> Function(
                  Iterable<CopyWith$Fragment$Product<Fragment$Product>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Product(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$CreateProduct$insertIntoProductsCollection<
        TRes>
    implements
        CopyWith$Mutation$CreateProduct$insertIntoProductsCollection<TRes> {
  _CopyWithStubImpl$Mutation$CreateProduct$insertIntoProductsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Product>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$UpdateProduct {
  factory Variables$Mutation$UpdateProduct({
    required String id,
    required Input$ProductsUpdateInput input,
  }) =>
      Variables$Mutation$UpdateProduct._({
        r'id': id,
        r'input': input,
      });

  Variables$Mutation$UpdateProduct._(this._$data);

  factory Variables$Mutation$UpdateProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$input = data['input'];
    result$data['input'] =
        Input$ProductsUpdateInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$UpdateProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$ProductsUpdateInput get input =>
      (_$data['input'] as Input$ProductsUpdateInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProduct<Variables$Mutation$UpdateProduct>
      get copyWith => CopyWith$Variables$Mutation$UpdateProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateProduct ||
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

abstract class CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProduct(
    Variables$Mutation$UpdateProduct instance,
    TRes Function(Variables$Mutation$UpdateProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProduct;

  factory CopyWith$Variables$Mutation$UpdateProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProduct;

  TRes call({
    String? id,
    Input$ProductsUpdateInput? input,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateProduct<TRes>
    implements CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProduct _instance;

  final TRes Function(Variables$Mutation$UpdateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? input = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateProduct._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (input != _undefined && input != null)
          'input': (input as Input$ProductsUpdateInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProduct<TRes>
    implements CopyWith$Variables$Mutation$UpdateProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProduct(this._res);

  TRes _res;

  call({
    String? id,
    Input$ProductsUpdateInput? input,
  }) =>
      _res;
}

class Mutation$UpdateProduct {
  Mutation$UpdateProduct({
    required this.updateProductsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProduct.fromJson(Map<String, dynamic> json) {
    final l$updateProductsCollection = json['updateProductsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProduct(
      updateProductsCollection:
          Mutation$UpdateProduct$updateProductsCollection.fromJson(
              (l$updateProductsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateProduct$updateProductsCollection
      updateProductsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateProductsCollection = updateProductsCollection;
    _resultData['updateProductsCollection'] =
        l$updateProductsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateProductsCollection = updateProductsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateProductsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateProductsCollection = updateProductsCollection;
    final lOther$updateProductsCollection = other.updateProductsCollection;
    if (l$updateProductsCollection != lOther$updateProductsCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$UpdateProduct on Mutation$UpdateProduct {
  CopyWith$Mutation$UpdateProduct<Mutation$UpdateProduct> get copyWith =>
      CopyWith$Mutation$UpdateProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateProduct<TRes> {
  factory CopyWith$Mutation$UpdateProduct(
    Mutation$UpdateProduct instance,
    TRes Function(Mutation$UpdateProduct) then,
  ) = _CopyWithImpl$Mutation$UpdateProduct;

  factory CopyWith$Mutation$UpdateProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProduct;

  TRes call({
    Mutation$UpdateProduct$updateProductsCollection? updateProductsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateProduct$updateProductsCollection<TRes>
      get updateProductsCollection;
}

class _CopyWithImpl$Mutation$UpdateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct<TRes> {
  _CopyWithImpl$Mutation$UpdateProduct(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProduct _instance;

  final TRes Function(Mutation$UpdateProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateProductsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProduct(
        updateProductsCollection: updateProductsCollection == _undefined ||
                updateProductsCollection == null
            ? _instance.updateProductsCollection
            : (updateProductsCollection
                as Mutation$UpdateProduct$updateProductsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateProduct$updateProductsCollection<TRes>
      get updateProductsCollection {
    final local$updateProductsCollection = _instance.updateProductsCollection;
    return CopyWith$Mutation$UpdateProduct$updateProductsCollection(
        local$updateProductsCollection,
        (e) => call(updateProductsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateProduct<TRes>
    implements CopyWith$Mutation$UpdateProduct<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProduct(this._res);

  TRes _res;

  call({
    Mutation$UpdateProduct$updateProductsCollection? updateProductsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateProduct$updateProductsCollection<TRes>
      get updateProductsCollection =>
          CopyWith$Mutation$UpdateProduct$updateProductsCollection.stub(_res);
}

const documentNodeMutationUpdateProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProduct'),
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
          name: NameNode(value: 'ProductsUpdateInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateProductsCollection'),
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
  fragmentDefinitionProduct,
]);
Mutation$UpdateProduct _parserFn$Mutation$UpdateProduct(
        Map<String, dynamic> data) =>
    Mutation$UpdateProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateProduct?,
);

class Options$Mutation$UpdateProduct
    extends graphql.MutationOptions<Mutation$UpdateProduct> {
  Options$Mutation$UpdateProduct({
    String? operationName,
    required Variables$Mutation$UpdateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProduct>? update,
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
                        : _parserFn$Mutation$UpdateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProduct,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );

  final OnMutationCompleted$Mutation$UpdateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProduct
    extends graphql.WatchQueryOptions<Mutation$UpdateProduct> {
  WatchOptions$Mutation$UpdateProduct({
    String? operationName,
    required Variables$Mutation$UpdateProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );
}

extension ClientExtension$Mutation$UpdateProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProduct>> mutate$UpdateProduct(
          Options$Mutation$UpdateProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProduct> watchMutation$UpdateProduct(
          WatchOptions$Mutation$UpdateProduct options) =>
      this.watchMutation(options);
}

class Mutation$UpdateProduct$HookResult {
  Mutation$UpdateProduct$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$UpdateProduct runMutation;

  final graphql.QueryResult<Mutation$UpdateProduct> result;
}

Mutation$UpdateProduct$HookResult useMutation$UpdateProduct(
    [WidgetOptions$Mutation$UpdateProduct? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$UpdateProduct());
  return Mutation$UpdateProduct$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$UpdateProduct> useWatchMutation$UpdateProduct(
        WatchOptions$Mutation$UpdateProduct options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$UpdateProduct
    extends graphql.MutationOptions<Mutation$UpdateProduct> {
  WidgetOptions$Mutation$UpdateProduct({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProduct>? update,
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
                        : _parserFn$Mutation$UpdateProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProduct,
          parserFn: _parserFn$Mutation$UpdateProduct,
        );

  final OnMutationCompleted$Mutation$UpdateProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$UpdateProduct
    = graphql.MultiSourceResult<Mutation$UpdateProduct> Function(
  Variables$Mutation$UpdateProduct, {
  Object? optimisticResult,
  Mutation$UpdateProduct? typedOptimisticResult,
});
typedef Builder$Mutation$UpdateProduct = widgets.Widget Function(
  RunMutation$Mutation$UpdateProduct,
  graphql.QueryResult<Mutation$UpdateProduct>?,
);

class Mutation$UpdateProduct$Widget
    extends graphql_flutter.Mutation<Mutation$UpdateProduct> {
  Mutation$UpdateProduct$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$UpdateProduct? options,
    required Builder$Mutation$UpdateProduct builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$UpdateProduct(),
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

class Mutation$UpdateProduct$updateProductsCollection {
  Mutation$UpdateProduct$updateProductsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ProductsUpdateResponse',
  });

  factory Mutation$UpdateProduct$updateProductsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProduct$updateProductsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Product.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Product> records;

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
    if (other is! Mutation$UpdateProduct$updateProductsCollection ||
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

extension UtilityExtension$Mutation$UpdateProduct$updateProductsCollection
    on Mutation$UpdateProduct$updateProductsCollection {
  CopyWith$Mutation$UpdateProduct$updateProductsCollection<
          Mutation$UpdateProduct$updateProductsCollection>
      get copyWith => CopyWith$Mutation$UpdateProduct$updateProductsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProduct$updateProductsCollection<TRes> {
  factory CopyWith$Mutation$UpdateProduct$updateProductsCollection(
    Mutation$UpdateProduct$updateProductsCollection instance,
    TRes Function(Mutation$UpdateProduct$updateProductsCollection) then,
  ) = _CopyWithImpl$Mutation$UpdateProduct$updateProductsCollection;

  factory CopyWith$Mutation$UpdateProduct$updateProductsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProduct$updateProductsCollection;

  TRes call({
    List<Fragment$Product>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Product> Function(
              Iterable<CopyWith$Fragment$Product<Fragment$Product>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateProduct$updateProductsCollection<TRes>
    implements CopyWith$Mutation$UpdateProduct$updateProductsCollection<TRes> {
  _CopyWithImpl$Mutation$UpdateProduct$updateProductsCollection(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProduct$updateProductsCollection _instance;

  final TRes Function(Mutation$UpdateProduct$updateProductsCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProduct$updateProductsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Product>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Product> Function(
                  Iterable<CopyWith$Fragment$Product<Fragment$Product>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Product(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateProduct$updateProductsCollection<TRes>
    implements CopyWith$Mutation$UpdateProduct$updateProductsCollection<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProduct$updateProductsCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Product>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}

class Variables$Mutation$DeleteProduct {
  factory Variables$Mutation$DeleteProduct({required String id}) =>
      Variables$Mutation$DeleteProduct._({
        r'id': id,
      });

  Variables$Mutation$DeleteProduct._(this._$data);

  factory Variables$Mutation$DeleteProduct.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteProduct._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteProduct<Variables$Mutation$DeleteProduct>
      get copyWith => CopyWith$Variables$Mutation$DeleteProduct(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteProduct ||
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

abstract class CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  factory CopyWith$Variables$Mutation$DeleteProduct(
    Variables$Mutation$DeleteProduct instance,
    TRes Function(Variables$Mutation$DeleteProduct) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteProduct;

  factory CopyWith$Variables$Mutation$DeleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteProduct;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteProduct<TRes>
    implements CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteProduct(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteProduct _instance;

  final TRes Function(Variables$Mutation$DeleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteProduct._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteProduct<TRes>
    implements CopyWith$Variables$Mutation$DeleteProduct<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteProduct(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteProduct {
  Mutation$DeleteProduct({
    required this.deleteFromProductsCollection,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteProduct.fromJson(Map<String, dynamic> json) {
    final l$deleteFromProductsCollection = json['deleteFromProductsCollection'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteProduct(
      deleteFromProductsCollection:
          Mutation$DeleteProduct$deleteFromProductsCollection.fromJson(
              (l$deleteFromProductsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteProduct$deleteFromProductsCollection
      deleteFromProductsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteFromProductsCollection = deleteFromProductsCollection;
    _resultData['deleteFromProductsCollection'] =
        l$deleteFromProductsCollection.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteFromProductsCollection = deleteFromProductsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteFromProductsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteProduct || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteFromProductsCollection = deleteFromProductsCollection;
    final lOther$deleteFromProductsCollection =
        other.deleteFromProductsCollection;
    if (l$deleteFromProductsCollection != lOther$deleteFromProductsCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$DeleteProduct on Mutation$DeleteProduct {
  CopyWith$Mutation$DeleteProduct<Mutation$DeleteProduct> get copyWith =>
      CopyWith$Mutation$DeleteProduct(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteProduct<TRes> {
  factory CopyWith$Mutation$DeleteProduct(
    Mutation$DeleteProduct instance,
    TRes Function(Mutation$DeleteProduct) then,
  ) = _CopyWithImpl$Mutation$DeleteProduct;

  factory CopyWith$Mutation$DeleteProduct.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProduct;

  TRes call({
    Mutation$DeleteProduct$deleteFromProductsCollection?
        deleteFromProductsCollection,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<TRes>
      get deleteFromProductsCollection;
}

class _CopyWithImpl$Mutation$DeleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct<TRes> {
  _CopyWithImpl$Mutation$DeleteProduct(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProduct _instance;

  final TRes Function(Mutation$DeleteProduct) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteFromProductsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteProduct(
        deleteFromProductsCollection:
            deleteFromProductsCollection == _undefined ||
                    deleteFromProductsCollection == null
                ? _instance.deleteFromProductsCollection
                : (deleteFromProductsCollection
                    as Mutation$DeleteProduct$deleteFromProductsCollection),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<TRes>
      get deleteFromProductsCollection {
    final local$deleteFromProductsCollection =
        _instance.deleteFromProductsCollection;
    return CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection(
        local$deleteFromProductsCollection,
        (e) => call(deleteFromProductsCollection: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteProduct<TRes>
    implements CopyWith$Mutation$DeleteProduct<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProduct(this._res);

  TRes _res;

  call({
    Mutation$DeleteProduct$deleteFromProductsCollection?
        deleteFromProductsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<TRes>
      get deleteFromProductsCollection =>
          CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection.stub(
              _res);
}

const documentNodeMutationDeleteProduct = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteProduct'),
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
        name: NameNode(value: 'deleteFromProductsCollection'),
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
  fragmentDefinitionProduct,
]);
Mutation$DeleteProduct _parserFn$Mutation$DeleteProduct(
        Map<String, dynamic> data) =>
    Mutation$DeleteProduct.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteProduct = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteProduct?,
);

class Options$Mutation$DeleteProduct
    extends graphql.MutationOptions<Mutation$DeleteProduct> {
  Options$Mutation$DeleteProduct({
    String? operationName,
    required Variables$Mutation$DeleteProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteProduct>? update,
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
                        : _parserFn$Mutation$DeleteProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteProduct,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );

  final OnMutationCompleted$Mutation$DeleteProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteProduct
    extends graphql.WatchQueryOptions<Mutation$DeleteProduct> {
  WatchOptions$Mutation$DeleteProduct({
    String? operationName,
    required Variables$Mutation$DeleteProduct variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
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
          document: documentNodeMutationDeleteProduct,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );
}

extension ClientExtension$Mutation$DeleteProduct on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteProduct>> mutate$DeleteProduct(
          Options$Mutation$DeleteProduct options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteProduct> watchMutation$DeleteProduct(
          WatchOptions$Mutation$DeleteProduct options) =>
      this.watchMutation(options);
}

class Mutation$DeleteProduct$HookResult {
  Mutation$DeleteProduct$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteProduct runMutation;

  final graphql.QueryResult<Mutation$DeleteProduct> result;
}

Mutation$DeleteProduct$HookResult useMutation$DeleteProduct(
    [WidgetOptions$Mutation$DeleteProduct? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteProduct());
  return Mutation$DeleteProduct$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteProduct> useWatchMutation$DeleteProduct(
        WatchOptions$Mutation$DeleteProduct options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteProduct
    extends graphql.MutationOptions<Mutation$DeleteProduct> {
  WidgetOptions$Mutation$DeleteProduct({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteProduct? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteProduct? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteProduct>? update,
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
                        : _parserFn$Mutation$DeleteProduct(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteProduct,
          parserFn: _parserFn$Mutation$DeleteProduct,
        );

  final OnMutationCompleted$Mutation$DeleteProduct? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteProduct
    = graphql.MultiSourceResult<Mutation$DeleteProduct> Function(
  Variables$Mutation$DeleteProduct, {
  Object? optimisticResult,
  Mutation$DeleteProduct? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteProduct = widgets.Widget Function(
  RunMutation$Mutation$DeleteProduct,
  graphql.QueryResult<Mutation$DeleteProduct>?,
);

class Mutation$DeleteProduct$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteProduct> {
  Mutation$DeleteProduct$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteProduct? options,
    required Builder$Mutation$DeleteProduct builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteProduct(),
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

class Mutation$DeleteProduct$deleteFromProductsCollection {
  Mutation$DeleteProduct$deleteFromProductsCollection({
    required this.records,
    required this.affectedCount,
    this.$__typename = 'ProductsDeleteResponse',
  });

  factory Mutation$DeleteProduct$deleteFromProductsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$records = json['records'];
    final l$affectedCount = json['affectedCount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteProduct$deleteFromProductsCollection(
      records: (l$records as List<dynamic>)
          .map((e) => Fragment$Product.fromJson((e as Map<String, dynamic>)))
          .toList(),
      affectedCount: (l$affectedCount as int),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Product> records;

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
    if (other is! Mutation$DeleteProduct$deleteFromProductsCollection ||
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

extension UtilityExtension$Mutation$DeleteProduct$deleteFromProductsCollection
    on Mutation$DeleteProduct$deleteFromProductsCollection {
  CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<
          Mutation$DeleteProduct$deleteFromProductsCollection>
      get copyWith =>
          CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<
    TRes> {
  factory CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection(
    Mutation$DeleteProduct$deleteFromProductsCollection instance,
    TRes Function(Mutation$DeleteProduct$deleteFromProductsCollection) then,
  ) = _CopyWithImpl$Mutation$DeleteProduct$deleteFromProductsCollection;

  factory CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteProduct$deleteFromProductsCollection;

  TRes call({
    List<Fragment$Product>? records,
    int? affectedCount,
    String? $__typename,
  });
  TRes records(
      Iterable<Fragment$Product> Function(
              Iterable<CopyWith$Fragment$Product<Fragment$Product>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteProduct$deleteFromProductsCollection<TRes>
    implements
        CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<TRes> {
  _CopyWithImpl$Mutation$DeleteProduct$deleteFromProductsCollection(
    this._instance,
    this._then,
  );

  final Mutation$DeleteProduct$deleteFromProductsCollection _instance;

  final TRes Function(Mutation$DeleteProduct$deleteFromProductsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? records = _undefined,
    Object? affectedCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteProduct$deleteFromProductsCollection(
        records: records == _undefined || records == null
            ? _instance.records
            : (records as List<Fragment$Product>),
        affectedCount: affectedCount == _undefined || affectedCount == null
            ? _instance.affectedCount
            : (affectedCount as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes records(
          Iterable<Fragment$Product> Function(
                  Iterable<CopyWith$Fragment$Product<Fragment$Product>>)
              _fn) =>
      call(
          records: _fn(_instance.records.map((e) => CopyWith$Fragment$Product(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteProduct$deleteFromProductsCollection<
        TRes>
    implements
        CopyWith$Mutation$DeleteProduct$deleteFromProductsCollection<TRes> {
  _CopyWithStubImpl$Mutation$DeleteProduct$deleteFromProductsCollection(
      this._res);

  TRes _res;

  call({
    List<Fragment$Product>? records,
    int? affectedCount,
    String? $__typename,
  }) =>
      _res;

  records(_fn) => _res;
}
