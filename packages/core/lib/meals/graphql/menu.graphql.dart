import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$MenuType {
  Fragment$MenuType({
    required this.id,
    required this.name,
    required this.key,
    this.description,
    this.iconUrl,
    this.coverUrl,
    this.schema,
    this.$__typename = 'MenuType',
  });

  factory Fragment$MenuType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$key = json['key'];
    final l$description = json['description'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$schema = json['schema'];
    final l$$__typename = json['__typename'];
    return Fragment$MenuType(
      id: (l$id as String),
      name: (l$name as String),
      key: (l$key as String),
      description: (l$description as String?),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String key;

  final String? description;

  final String? iconUrl;

  final String? coverUrl;

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
    final l$description = description;
    _resultData['description'] = l$description;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$coverUrl = coverUrl;
    _resultData['coverUrl'] = l$coverUrl;
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
    final l$description = description;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$schema = schema;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$key,
      l$description,
      l$iconUrl,
      l$coverUrl,
      l$schema,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MenuType) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$MenuType on Fragment$MenuType {
  CopyWith$Fragment$MenuType<Fragment$MenuType> get copyWith =>
      CopyWith$Fragment$MenuType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MenuType<TRes> {
  factory CopyWith$Fragment$MenuType(
    Fragment$MenuType instance,
    TRes Function(Fragment$MenuType) then,
  ) = _CopyWithImpl$Fragment$MenuType;

  factory CopyWith$Fragment$MenuType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MenuType;

  TRes call({
    String? id,
    String? name,
    String? key,
    String? description,
    String? iconUrl,
    String? coverUrl,
    Map<String, dynamic>? schema,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MenuType<TRes>
    implements CopyWith$Fragment$MenuType<TRes> {
  _CopyWithImpl$Fragment$MenuType(
    this._instance,
    this._then,
  );

  final Fragment$MenuType _instance;

  final TRes Function(Fragment$MenuType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? key = _undefined,
    Object? description = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? schema = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MenuType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        schema: schema == _undefined
            ? _instance.schema
            : (schema as Map<String, dynamic>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MenuType<TRes>
    implements CopyWith$Fragment$MenuType<TRes> {
  _CopyWithStubImpl$Fragment$MenuType(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? key,
    String? description,
    String? iconUrl,
    String? coverUrl,
    Map<String, dynamic>? schema,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMenuType = FragmentDefinitionNode(
  name: NameNode(value: 'MenuType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MenuType'),
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
const documentNodeFragmentMenuType = DocumentNode(definitions: [
  fragmentDefinitionMenuType,
]);

extension ClientExtension$Fragment$MenuType on graphql.GraphQLClient {
  void writeFragment$MenuType({
    required Fragment$MenuType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MenuType',
            document: documentNodeFragmentMenuType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MenuType? readFragment$MenuType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MenuType',
          document: documentNodeFragmentMenuType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MenuType.fromJson(result);
  }
}

class Fragment$MenuItem {
  Fragment$MenuItem({
    required this.id,
    this.menuId,
    required this.name,
    this.data,
    this.notes,
    this.imageUrl,
    this.coverUrl,
    required this.price,
    required this.isAvailable,
    required this.isFeatured,
    required this.categories,
    required this.createdAt,
    this.$__typename = 'MenuItem',
  });

  factory Fragment$MenuItem.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$menuId = json['menuId'];
    final l$name = json['name'];
    final l$data = json['data'];
    final l$notes = json['notes'];
    final l$imageUrl = json['imageUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$price = json['price'];
    final l$isAvailable = json['isAvailable'];
    final l$isFeatured = json['isFeatured'];
    final l$categories = json['categories'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$MenuItem(
      id: (l$id as String),
      menuId: (l$menuId as String?),
      name: (l$name as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      notes: (l$notes as String?),
      imageUrl: (l$imageUrl as String?),
      coverUrl: (l$coverUrl as String?),
      price: (l$price as num).toDouble(),
      isAvailable: (l$isAvailable as bool),
      isFeatured: (l$isFeatured as bool),
      categories:
          (l$categories as List<dynamic>).map((e) => (e as String?)).toList(),
      createdAt: DateTime.parse((l$createdAt as String)),
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

  final bool isFeatured;

  final List<String?> categories;

  final DateTime createdAt;

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
    final l$isFeatured = isFeatured;
    _resultData['isFeatured'] = l$isFeatured;
    final l$categories = categories;
    _resultData['categories'] = l$categories.map((e) => e).toList();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
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
    final l$isFeatured = isFeatured;
    final l$categories = categories;
    final l$createdAt = createdAt;
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
      l$isFeatured,
      Object.hashAll(l$categories.map((v) => v)),
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$MenuItem) || runtimeType != other.runtimeType) {
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
    final l$isFeatured = isFeatured;
    final lOther$isFeatured = other.isFeatured;
    if (l$isFeatured != lOther$isFeatured) {
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

extension UtilityExtension$Fragment$MenuItem on Fragment$MenuItem {
  CopyWith$Fragment$MenuItem<Fragment$MenuItem> get copyWith =>
      CopyWith$Fragment$MenuItem(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$MenuItem<TRes> {
  factory CopyWith$Fragment$MenuItem(
    Fragment$MenuItem instance,
    TRes Function(Fragment$MenuItem) then,
  ) = _CopyWithImpl$Fragment$MenuItem;

  factory CopyWith$Fragment$MenuItem.stub(TRes res) =
      _CopyWithStubImpl$Fragment$MenuItem;

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
    bool? isFeatured,
    List<String?>? categories,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$MenuItem<TRes>
    implements CopyWith$Fragment$MenuItem<TRes> {
  _CopyWithImpl$Fragment$MenuItem(
    this._instance,
    this._then,
  );

  final Fragment$MenuItem _instance;

  final TRes Function(Fragment$MenuItem) _then;

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
    Object? isFeatured = _undefined,
    Object? categories = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$MenuItem(
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
        isFeatured: isFeatured == _undefined || isFeatured == null
            ? _instance.isFeatured
            : (isFeatured as bool),
        categories: categories == _undefined || categories == null
            ? _instance.categories
            : (categories as List<String?>),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$MenuItem<TRes>
    implements CopyWith$Fragment$MenuItem<TRes> {
  _CopyWithStubImpl$Fragment$MenuItem(this._res);

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
    bool? isFeatured,
    List<String?>? categories,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMenuItem = FragmentDefinitionNode(
  name: NameNode(value: 'MenuItem'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'MenuItem'),
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
      name: NameNode(value: 'isFeatured'),
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
const documentNodeFragmentMenuItem = DocumentNode(definitions: [
  fragmentDefinitionMenuItem,
]);

extension ClientExtension$Fragment$MenuItem on graphql.GraphQLClient {
  void writeFragment$MenuItem({
    required Fragment$MenuItem data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'MenuItem',
            document: documentNodeFragmentMenuItem,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$MenuItem? readFragment$MenuItem({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'MenuItem',
          document: documentNodeFragmentMenuItem,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$MenuItem.fromJson(result);
  }
}

class Fragment$Menu {
  Fragment$Menu({
    required this.id,
    required this.menuTypeId,
    required this.menuType,
    required this.name,
    this.description,
    required this.providerId,
    required this.provider,
    this.menuItemCollection,
    required this.createdAt,
    this.$__typename = 'Menu',
  });

  factory Fragment$Menu.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$menuTypeId = json['menuTypeId'];
    final l$menuType = json['menuType'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$providerId = json['providerId'];
    final l$provider = json['provider'];
    final l$menuItemCollection = json['menuItemCollection'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Menu(
      id: (l$id as String),
      menuTypeId: (l$menuTypeId as String),
      menuType:
          Fragment$MenuType.fromJson((l$menuType as Map<String, dynamic>)),
      name: (l$name as String),
      description: (l$description as String?),
      providerId: (l$providerId as String),
      provider:
          Fragment$Menu$provider.fromJson((l$provider as Map<String, dynamic>)),
      menuItemCollection: l$menuItemCollection == null
          ? null
          : Fragment$Menu$menuItemCollection.fromJson(
              (l$menuItemCollection as Map<String, dynamic>)),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String menuTypeId;

  final Fragment$MenuType menuType;

  final String name;

  final String? description;

  final String providerId;

  final Fragment$Menu$provider provider;

  final Fragment$Menu$menuItemCollection? menuItemCollection;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$menuTypeId = menuTypeId;
    _resultData['menuTypeId'] = l$menuTypeId;
    final l$menuType = menuType;
    _resultData['menuType'] = l$menuType.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$providerId = providerId;
    _resultData['providerId'] = l$providerId;
    final l$provider = provider;
    _resultData['provider'] = l$provider.toJson();
    final l$menuItemCollection = menuItemCollection;
    _resultData['menuItemCollection'] = l$menuItemCollection?.toJson();
    final l$createdAt = createdAt;
    _resultData['createdAt'] = l$createdAt.toIso8601String();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$menuTypeId = menuTypeId;
    final l$menuType = menuType;
    final l$name = name;
    final l$description = description;
    final l$providerId = providerId;
    final l$provider = provider;
    final l$menuItemCollection = menuItemCollection;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$menuTypeId,
      l$menuType,
      l$name,
      l$description,
      l$providerId,
      l$provider,
      l$menuItemCollection,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Fragment$Menu) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$menuTypeId = menuTypeId;
    final lOther$menuTypeId = other.menuTypeId;
    if (l$menuTypeId != lOther$menuTypeId) {
      return false;
    }
    final l$menuType = menuType;
    final lOther$menuType = other.menuType;
    if (l$menuType != lOther$menuType) {
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
    final l$menuItemCollection = menuItemCollection;
    final lOther$menuItemCollection = other.menuItemCollection;
    if (l$menuItemCollection != lOther$menuItemCollection) {
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

extension UtilityExtension$Fragment$Menu on Fragment$Menu {
  CopyWith$Fragment$Menu<Fragment$Menu> get copyWith => CopyWith$Fragment$Menu(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Menu<TRes> {
  factory CopyWith$Fragment$Menu(
    Fragment$Menu instance,
    TRes Function(Fragment$Menu) then,
  ) = _CopyWithImpl$Fragment$Menu;

  factory CopyWith$Fragment$Menu.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Menu;

  TRes call({
    String? id,
    String? menuTypeId,
    Fragment$MenuType? menuType,
    String? name,
    String? description,
    String? providerId,
    Fragment$Menu$provider? provider,
    Fragment$Menu$menuItemCollection? menuItemCollection,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$MenuType<TRes> get menuType;
  CopyWith$Fragment$Menu$provider<TRes> get provider;
  CopyWith$Fragment$Menu$menuItemCollection<TRes> get menuItemCollection;
}

class _CopyWithImpl$Fragment$Menu<TRes>
    implements CopyWith$Fragment$Menu<TRes> {
  _CopyWithImpl$Fragment$Menu(
    this._instance,
    this._then,
  );

  final Fragment$Menu _instance;

  final TRes Function(Fragment$Menu) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? menuTypeId = _undefined,
    Object? menuType = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? providerId = _undefined,
    Object? provider = _undefined,
    Object? menuItemCollection = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Menu(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        menuTypeId: menuTypeId == _undefined || menuTypeId == null
            ? _instance.menuTypeId
            : (menuTypeId as String),
        menuType: menuType == _undefined || menuType == null
            ? _instance.menuType
            : (menuType as Fragment$MenuType),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        providerId: providerId == _undefined || providerId == null
            ? _instance.providerId
            : (providerId as String),
        provider: provider == _undefined || provider == null
            ? _instance.provider
            : (provider as Fragment$Menu$provider),
        menuItemCollection: menuItemCollection == _undefined
            ? _instance.menuItemCollection
            : (menuItemCollection as Fragment$Menu$menuItemCollection?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MenuType<TRes> get menuType {
    final local$menuType = _instance.menuType;
    return CopyWith$Fragment$MenuType(local$menuType, (e) => call(menuType: e));
  }

  CopyWith$Fragment$Menu$provider<TRes> get provider {
    final local$provider = _instance.provider;
    return CopyWith$Fragment$Menu$provider(
        local$provider, (e) => call(provider: e));
  }

  CopyWith$Fragment$Menu$menuItemCollection<TRes> get menuItemCollection {
    final local$menuItemCollection = _instance.menuItemCollection;
    return local$menuItemCollection == null
        ? CopyWith$Fragment$Menu$menuItemCollection.stub(_then(_instance))
        : CopyWith$Fragment$Menu$menuItemCollection(
            local$menuItemCollection, (e) => call(menuItemCollection: e));
  }
}

class _CopyWithStubImpl$Fragment$Menu<TRes>
    implements CopyWith$Fragment$Menu<TRes> {
  _CopyWithStubImpl$Fragment$Menu(this._res);

  TRes _res;

  call({
    String? id,
    String? menuTypeId,
    Fragment$MenuType? menuType,
    String? name,
    String? description,
    String? providerId,
    Fragment$Menu$provider? provider,
    Fragment$Menu$menuItemCollection? menuItemCollection,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MenuType<TRes> get menuType =>
      CopyWith$Fragment$MenuType.stub(_res);

  CopyWith$Fragment$Menu$provider<TRes> get provider =>
      CopyWith$Fragment$Menu$provider.stub(_res);

  CopyWith$Fragment$Menu$menuItemCollection<TRes> get menuItemCollection =>
      CopyWith$Fragment$Menu$menuItemCollection.stub(_res);
}

const fragmentDefinitionMenu = FragmentDefinitionNode(
  name: NameNode(value: 'Menu'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Menu'),
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
      name: NameNode(value: 'menuTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'menuType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'MenuType'),
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
      name: NameNode(value: 'description'),
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
          name: NameNode(value: 'description'),
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
    ),
    FieldNode(
      name: NameNode(value: 'menuItemCollection'),
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
const documentNodeFragmentMenu = DocumentNode(definitions: [
  fragmentDefinitionMenu,
  fragmentDefinitionMenuType,
  fragmentDefinitionMenuItem,
]);

extension ClientExtension$Fragment$Menu on graphql.GraphQLClient {
  void writeFragment$Menu({
    required Fragment$Menu data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Menu',
            document: documentNodeFragmentMenu,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Menu? readFragment$Menu({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Menu',
          document: documentNodeFragmentMenu,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Menu.fromJson(result);
  }
}

class Fragment$Menu$provider {
  Fragment$Menu$provider({
    required this.id,
    required this.name,
    this.description,
    this.iconUrl,
    this.coverUrl,
    this.$__typename = 'Provider',
  });

  factory Fragment$Menu$provider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$description = json['description'];
    final l$iconUrl = json['iconUrl'];
    final l$coverUrl = json['coverUrl'];
    final l$$__typename = json['__typename'];
    return Fragment$Menu$provider(
      id: (l$id as String),
      name: (l$name as String),
      description: (l$description as String?),
      iconUrl: (l$iconUrl as String?),
      coverUrl: (l$coverUrl as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final String? description;

  final String? iconUrl;

  final String? coverUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$description = description;
    _resultData['description'] = l$description;
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
    final l$description = description;
    final l$iconUrl = iconUrl;
    final l$coverUrl = coverUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$description,
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
    if (!(other is Fragment$Menu$provider) ||
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
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

extension UtilityExtension$Fragment$Menu$provider on Fragment$Menu$provider {
  CopyWith$Fragment$Menu$provider<Fragment$Menu$provider> get copyWith =>
      CopyWith$Fragment$Menu$provider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Menu$provider<TRes> {
  factory CopyWith$Fragment$Menu$provider(
    Fragment$Menu$provider instance,
    TRes Function(Fragment$Menu$provider) then,
  ) = _CopyWithImpl$Fragment$Menu$provider;

  factory CopyWith$Fragment$Menu$provider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Menu$provider;

  TRes call({
    String? id,
    String? name,
    String? description,
    String? iconUrl,
    String? coverUrl,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Menu$provider<TRes>
    implements CopyWith$Fragment$Menu$provider<TRes> {
  _CopyWithImpl$Fragment$Menu$provider(
    this._instance,
    this._then,
  );

  final Fragment$Menu$provider _instance;

  final TRes Function(Fragment$Menu$provider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? description = _undefined,
    Object? iconUrl = _undefined,
    Object? coverUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Menu$provider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        coverUrl:
            coverUrl == _undefined ? _instance.coverUrl : (coverUrl as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Menu$provider<TRes>
    implements CopyWith$Fragment$Menu$provider<TRes> {
  _CopyWithStubImpl$Fragment$Menu$provider(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? description,
    String? iconUrl,
    String? coverUrl,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Menu$menuItemCollection {
  Fragment$Menu$menuItemCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'MenuItemConnection',
  });

  factory Fragment$Menu$menuItemCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Fragment$Menu$menuItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Fragment$Menu$menuItemCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Fragment$Menu$menuItemCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Menu$menuItemCollection$edges> edges;

  final Fragment$Menu$menuItemCollection$pageInfo pageInfo;

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
    if (!(other is Fragment$Menu$menuItemCollection) ||
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

extension UtilityExtension$Fragment$Menu$menuItemCollection
    on Fragment$Menu$menuItemCollection {
  CopyWith$Fragment$Menu$menuItemCollection<Fragment$Menu$menuItemCollection>
      get copyWith => CopyWith$Fragment$Menu$menuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Menu$menuItemCollection<TRes> {
  factory CopyWith$Fragment$Menu$menuItemCollection(
    Fragment$Menu$menuItemCollection instance,
    TRes Function(Fragment$Menu$menuItemCollection) then,
  ) = _CopyWithImpl$Fragment$Menu$menuItemCollection;

  factory CopyWith$Fragment$Menu$menuItemCollection.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Menu$menuItemCollection;

  TRes call({
    List<Fragment$Menu$menuItemCollection$edges>? edges,
    Fragment$Menu$menuItemCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Fragment$Menu$menuItemCollection$edges> Function(
              Iterable<
                  CopyWith$Fragment$Menu$menuItemCollection$edges<
                      Fragment$Menu$menuItemCollection$edges>>)
          _fn);
  CopyWith$Fragment$Menu$menuItemCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Fragment$Menu$menuItemCollection<TRes>
    implements CopyWith$Fragment$Menu$menuItemCollection<TRes> {
  _CopyWithImpl$Fragment$Menu$menuItemCollection(
    this._instance,
    this._then,
  );

  final Fragment$Menu$menuItemCollection _instance;

  final TRes Function(Fragment$Menu$menuItemCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Menu$menuItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Fragment$Menu$menuItemCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Fragment$Menu$menuItemCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Fragment$Menu$menuItemCollection$edges> Function(
                  Iterable<
                      CopyWith$Fragment$Menu$menuItemCollection$edges<
                          Fragment$Menu$menuItemCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Fragment$Menu$menuItemCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Menu$menuItemCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Fragment$Menu$menuItemCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Fragment$Menu$menuItemCollection<TRes>
    implements CopyWith$Fragment$Menu$menuItemCollection<TRes> {
  _CopyWithStubImpl$Fragment$Menu$menuItemCollection(this._res);

  TRes _res;

  call({
    List<Fragment$Menu$menuItemCollection$edges>? edges,
    Fragment$Menu$menuItemCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Fragment$Menu$menuItemCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Fragment$Menu$menuItemCollection$pageInfo.stub(_res);
}

class Fragment$Menu$menuItemCollection$edges {
  Fragment$Menu$menuItemCollection$edges({
    required this.node,
    this.$__typename = 'MenuItemEdge',
  });

  factory Fragment$Menu$menuItemCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Fragment$Menu$menuItemCollection$edges(
      node: Fragment$MenuItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MenuItem node;

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
    if (!(other is Fragment$Menu$menuItemCollection$edges) ||
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

extension UtilityExtension$Fragment$Menu$menuItemCollection$edges
    on Fragment$Menu$menuItemCollection$edges {
  CopyWith$Fragment$Menu$menuItemCollection$edges<
          Fragment$Menu$menuItemCollection$edges>
      get copyWith => CopyWith$Fragment$Menu$menuItemCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Menu$menuItemCollection$edges<TRes> {
  factory CopyWith$Fragment$Menu$menuItemCollection$edges(
    Fragment$Menu$menuItemCollection$edges instance,
    TRes Function(Fragment$Menu$menuItemCollection$edges) then,
  ) = _CopyWithImpl$Fragment$Menu$menuItemCollection$edges;

  factory CopyWith$Fragment$Menu$menuItemCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Menu$menuItemCollection$edges;

  TRes call({
    Fragment$MenuItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$MenuItem<TRes> get node;
}

class _CopyWithImpl$Fragment$Menu$menuItemCollection$edges<TRes>
    implements CopyWith$Fragment$Menu$menuItemCollection$edges<TRes> {
  _CopyWithImpl$Fragment$Menu$menuItemCollection$edges(
    this._instance,
    this._then,
  );

  final Fragment$Menu$menuItemCollection$edges _instance;

  final TRes Function(Fragment$Menu$menuItemCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Menu$menuItemCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$MenuItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MenuItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$MenuItem(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Fragment$Menu$menuItemCollection$edges<TRes>
    implements CopyWith$Fragment$Menu$menuItemCollection$edges<TRes> {
  _CopyWithStubImpl$Fragment$Menu$menuItemCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$MenuItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MenuItem<TRes> get node =>
      CopyWith$Fragment$MenuItem.stub(_res);
}

class Fragment$Menu$menuItemCollection$pageInfo {
  Fragment$Menu$menuItemCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Fragment$Menu$menuItemCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Fragment$Menu$menuItemCollection$pageInfo(
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
    if (!(other is Fragment$Menu$menuItemCollection$pageInfo) ||
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

extension UtilityExtension$Fragment$Menu$menuItemCollection$pageInfo
    on Fragment$Menu$menuItemCollection$pageInfo {
  CopyWith$Fragment$Menu$menuItemCollection$pageInfo<
          Fragment$Menu$menuItemCollection$pageInfo>
      get copyWith => CopyWith$Fragment$Menu$menuItemCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Menu$menuItemCollection$pageInfo<TRes> {
  factory CopyWith$Fragment$Menu$menuItemCollection$pageInfo(
    Fragment$Menu$menuItemCollection$pageInfo instance,
    TRes Function(Fragment$Menu$menuItemCollection$pageInfo) then,
  ) = _CopyWithImpl$Fragment$Menu$menuItemCollection$pageInfo;

  factory CopyWith$Fragment$Menu$menuItemCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Menu$menuItemCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Menu$menuItemCollection$pageInfo<TRes>
    implements CopyWith$Fragment$Menu$menuItemCollection$pageInfo<TRes> {
  _CopyWithImpl$Fragment$Menu$menuItemCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Fragment$Menu$menuItemCollection$pageInfo _instance;

  final TRes Function(Fragment$Menu$menuItemCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Menu$menuItemCollection$pageInfo(
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

class _CopyWithStubImpl$Fragment$Menu$menuItemCollection$pageInfo<TRes>
    implements CopyWith$Fragment$Menu$menuItemCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Fragment$Menu$menuItemCollection$pageInfo(this._res);

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

class Variables$Query$MenuById {
  factory Variables$Query$MenuById({required String id}) =>
      Variables$Query$MenuById._({
        r'id': id,
      });

  Variables$Query$MenuById._(this._$data);

  factory Variables$Query$MenuById.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$MenuById._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$MenuById<Variables$Query$MenuById> get copyWith =>
      CopyWith$Variables$Query$MenuById(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MenuById) ||
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

abstract class CopyWith$Variables$Query$MenuById<TRes> {
  factory CopyWith$Variables$Query$MenuById(
    Variables$Query$MenuById instance,
    TRes Function(Variables$Query$MenuById) then,
  ) = _CopyWithImpl$Variables$Query$MenuById;

  factory CopyWith$Variables$Query$MenuById.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MenuById;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$MenuById<TRes>
    implements CopyWith$Variables$Query$MenuById<TRes> {
  _CopyWithImpl$Variables$Query$MenuById(
    this._instance,
    this._then,
  );

  final Variables$Query$MenuById _instance;

  final TRes Function(Variables$Query$MenuById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$MenuById._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$MenuById<TRes>
    implements CopyWith$Variables$Query$MenuById<TRes> {
  _CopyWithStubImpl$Variables$Query$MenuById(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$MenuById {
  Query$MenuById({
    this.menuCollection,
    this.$__typename = 'Query',
  });

  factory Query$MenuById.fromJson(Map<String, dynamic> json) {
    final l$menuCollection = json['menuCollection'];
    final l$$__typename = json['__typename'];
    return Query$MenuById(
      menuCollection: l$menuCollection == null
          ? null
          : Query$MenuById$menuCollection.fromJson(
              (l$menuCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MenuById$menuCollection? menuCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$menuCollection = menuCollection;
    _resultData['menuCollection'] = l$menuCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$menuCollection = menuCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$menuCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MenuById) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$menuCollection = menuCollection;
    final lOther$menuCollection = other.menuCollection;
    if (l$menuCollection != lOther$menuCollection) {
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

extension UtilityExtension$Query$MenuById on Query$MenuById {
  CopyWith$Query$MenuById<Query$MenuById> get copyWith =>
      CopyWith$Query$MenuById(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MenuById<TRes> {
  factory CopyWith$Query$MenuById(
    Query$MenuById instance,
    TRes Function(Query$MenuById) then,
  ) = _CopyWithImpl$Query$MenuById;

  factory CopyWith$Query$MenuById.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuById;

  TRes call({
    Query$MenuById$menuCollection? menuCollection,
    String? $__typename,
  });
  CopyWith$Query$MenuById$menuCollection<TRes> get menuCollection;
}

class _CopyWithImpl$Query$MenuById<TRes>
    implements CopyWith$Query$MenuById<TRes> {
  _CopyWithImpl$Query$MenuById(
    this._instance,
    this._then,
  );

  final Query$MenuById _instance;

  final TRes Function(Query$MenuById) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? menuCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuById(
        menuCollection: menuCollection == _undefined
            ? _instance.menuCollection
            : (menuCollection as Query$MenuById$menuCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MenuById$menuCollection<TRes> get menuCollection {
    final local$menuCollection = _instance.menuCollection;
    return local$menuCollection == null
        ? CopyWith$Query$MenuById$menuCollection.stub(_then(_instance))
        : CopyWith$Query$MenuById$menuCollection(
            local$menuCollection, (e) => call(menuCollection: e));
  }
}

class _CopyWithStubImpl$Query$MenuById<TRes>
    implements CopyWith$Query$MenuById<TRes> {
  _CopyWithStubImpl$Query$MenuById(this._res);

  TRes _res;

  call({
    Query$MenuById$menuCollection? menuCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MenuById$menuCollection<TRes> get menuCollection =>
      CopyWith$Query$MenuById$menuCollection.stub(_res);
}

const documentNodeQueryMenuById = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MenuById'),
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
        name: NameNode(value: 'menuCollection'),
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
                    name: NameNode(value: 'Menu'),
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
  fragmentDefinitionMenu,
  fragmentDefinitionMenuType,
  fragmentDefinitionMenuItem,
]);
Query$MenuById _parserFn$Query$MenuById(Map<String, dynamic> data) =>
    Query$MenuById.fromJson(data);
typedef OnQueryComplete$Query$MenuById = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MenuById?,
);

class Options$Query$MenuById extends graphql.QueryOptions<Query$MenuById> {
  Options$Query$MenuById({
    String? operationName,
    required Variables$Query$MenuById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MenuById? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MenuById? onComplete,
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
                    data == null ? null : _parserFn$Query$MenuById(data),
                  ),
          onError: onError,
          document: documentNodeQueryMenuById,
          parserFn: _parserFn$Query$MenuById,
        );

  final OnQueryComplete$Query$MenuById? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MenuById
    extends graphql.WatchQueryOptions<Query$MenuById> {
  WatchOptions$Query$MenuById({
    String? operationName,
    required Variables$Query$MenuById variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MenuById? typedOptimisticResult,
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
          document: documentNodeQueryMenuById,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MenuById,
        );
}

class FetchMoreOptions$Query$MenuById extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MenuById({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$MenuById variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryMenuById,
        );
}

extension ClientExtension$Query$MenuById on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MenuById>> query$MenuById(
          Options$Query$MenuById options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$MenuById> watchQuery$MenuById(
          WatchOptions$Query$MenuById options) =>
      this.watchQuery(options);
  void writeQuery$MenuById({
    required Query$MenuById data,
    required Variables$Query$MenuById variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMenuById),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MenuById? readQuery$MenuById({
    required Variables$Query$MenuById variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMenuById),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MenuById.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MenuById> useQuery$MenuById(
        Options$Query$MenuById options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$MenuById> useWatchQuery$MenuById(
        WatchOptions$Query$MenuById options) =>
    graphql_flutter.useWatchQuery(options);

class Query$MenuById$Widget extends graphql_flutter.Query<Query$MenuById> {
  Query$MenuById$Widget({
    widgets.Key? key,
    required Options$Query$MenuById options,
    required graphql_flutter.QueryBuilder<Query$MenuById> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$MenuById$menuCollection {
  Query$MenuById$menuCollection({
    required this.edges,
    this.$__typename = 'MenuConnection',
  });

  factory Query$MenuById$menuCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$MenuById$menuCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$MenuById$menuCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MenuById$menuCollection$edges> edges;

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
    if (!(other is Query$MenuById$menuCollection) ||
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

extension UtilityExtension$Query$MenuById$menuCollection
    on Query$MenuById$menuCollection {
  CopyWith$Query$MenuById$menuCollection<Query$MenuById$menuCollection>
      get copyWith => CopyWith$Query$MenuById$menuCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MenuById$menuCollection<TRes> {
  factory CopyWith$Query$MenuById$menuCollection(
    Query$MenuById$menuCollection instance,
    TRes Function(Query$MenuById$menuCollection) then,
  ) = _CopyWithImpl$Query$MenuById$menuCollection;

  factory CopyWith$Query$MenuById$menuCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuById$menuCollection;

  TRes call({
    List<Query$MenuById$menuCollection$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$MenuById$menuCollection$edges> Function(
              Iterable<
                  CopyWith$Query$MenuById$menuCollection$edges<
                      Query$MenuById$menuCollection$edges>>)
          _fn);
}

class _CopyWithImpl$Query$MenuById$menuCollection<TRes>
    implements CopyWith$Query$MenuById$menuCollection<TRes> {
  _CopyWithImpl$Query$MenuById$menuCollection(
    this._instance,
    this._then,
  );

  final Query$MenuById$menuCollection _instance;

  final TRes Function(Query$MenuById$menuCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuById$menuCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$MenuById$menuCollection$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$MenuById$menuCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$MenuById$menuCollection$edges<
                          Query$MenuById$menuCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$MenuById$menuCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$MenuById$menuCollection<TRes>
    implements CopyWith$Query$MenuById$menuCollection<TRes> {
  _CopyWithStubImpl$Query$MenuById$menuCollection(this._res);

  TRes _res;

  call({
    List<Query$MenuById$menuCollection$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$MenuById$menuCollection$edges {
  Query$MenuById$menuCollection$edges({
    required this.node,
    this.$__typename = 'MenuEdge',
  });

  factory Query$MenuById$menuCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$MenuById$menuCollection$edges(
      node: Fragment$Menu.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Menu node;

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
    if (!(other is Query$MenuById$menuCollection$edges) ||
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

extension UtilityExtension$Query$MenuById$menuCollection$edges
    on Query$MenuById$menuCollection$edges {
  CopyWith$Query$MenuById$menuCollection$edges<
          Query$MenuById$menuCollection$edges>
      get copyWith => CopyWith$Query$MenuById$menuCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MenuById$menuCollection$edges<TRes> {
  factory CopyWith$Query$MenuById$menuCollection$edges(
    Query$MenuById$menuCollection$edges instance,
    TRes Function(Query$MenuById$menuCollection$edges) then,
  ) = _CopyWithImpl$Query$MenuById$menuCollection$edges;

  factory CopyWith$Query$MenuById$menuCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuById$menuCollection$edges;

  TRes call({
    Fragment$Menu? node,
    String? $__typename,
  });
  CopyWith$Fragment$Menu<TRes> get node;
}

class _CopyWithImpl$Query$MenuById$menuCollection$edges<TRes>
    implements CopyWith$Query$MenuById$menuCollection$edges<TRes> {
  _CopyWithImpl$Query$MenuById$menuCollection$edges(
    this._instance,
    this._then,
  );

  final Query$MenuById$menuCollection$edges _instance;

  final TRes Function(Query$MenuById$menuCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuById$menuCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Menu),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Menu<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Menu(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$MenuById$menuCollection$edges<TRes>
    implements CopyWith$Query$MenuById$menuCollection$edges<TRes> {
  _CopyWithStubImpl$Query$MenuById$menuCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Menu? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Menu<TRes> get node => CopyWith$Fragment$Menu.stub(_res);
}

class Variables$Query$Menus {
  factory Variables$Query$Menus({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$MenuFilter? filter,
    List<Input$MenuOrderBy>? orderBy,
  }) =>
      Variables$Query$Menus._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$Menus._(this._$data);

  factory Variables$Query$Menus.fromJson(Map<String, dynamic> data) {
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
          : Input$MenuFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$MenuOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$Menus._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$MenuFilter? get filter => (_$data['filter'] as Input$MenuFilter?);

  List<Input$MenuOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$MenuOrderBy>?);

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

  CopyWith$Variables$Query$Menus<Variables$Query$Menus> get copyWith =>
      CopyWith$Variables$Query$Menus(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Menus) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Variables$Query$Menus<TRes> {
  factory CopyWith$Variables$Query$Menus(
    Variables$Query$Menus instance,
    TRes Function(Variables$Query$Menus) then,
  ) = _CopyWithImpl$Variables$Query$Menus;

  factory CopyWith$Variables$Query$Menus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Menus;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$MenuFilter? filter,
    List<Input$MenuOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$Menus<TRes>
    implements CopyWith$Variables$Query$Menus<TRes> {
  _CopyWithImpl$Variables$Query$Menus(
    this._instance,
    this._then,
  );

  final Variables$Query$Menus _instance;

  final TRes Function(Variables$Query$Menus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$Menus._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined) 'filter': (filter as Input$MenuFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$MenuOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$Menus<TRes>
    implements CopyWith$Variables$Query$Menus<TRes> {
  _CopyWithStubImpl$Variables$Query$Menus(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$MenuFilter? filter,
    List<Input$MenuOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$Menus {
  Query$Menus({
    this.menuCollection,
    this.$__typename = 'Query',
  });

  factory Query$Menus.fromJson(Map<String, dynamic> json) {
    final l$menuCollection = json['menuCollection'];
    final l$$__typename = json['__typename'];
    return Query$Menus(
      menuCollection: l$menuCollection == null
          ? null
          : Query$Menus$menuCollection.fromJson(
              (l$menuCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Menus$menuCollection? menuCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$menuCollection = menuCollection;
    _resultData['menuCollection'] = l$menuCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$menuCollection = menuCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$menuCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Menus) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$menuCollection = menuCollection;
    final lOther$menuCollection = other.menuCollection;
    if (l$menuCollection != lOther$menuCollection) {
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

extension UtilityExtension$Query$Menus on Query$Menus {
  CopyWith$Query$Menus<Query$Menus> get copyWith => CopyWith$Query$Menus(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Menus<TRes> {
  factory CopyWith$Query$Menus(
    Query$Menus instance,
    TRes Function(Query$Menus) then,
  ) = _CopyWithImpl$Query$Menus;

  factory CopyWith$Query$Menus.stub(TRes res) = _CopyWithStubImpl$Query$Menus;

  TRes call({
    Query$Menus$menuCollection? menuCollection,
    String? $__typename,
  });
  CopyWith$Query$Menus$menuCollection<TRes> get menuCollection;
}

class _CopyWithImpl$Query$Menus<TRes> implements CopyWith$Query$Menus<TRes> {
  _CopyWithImpl$Query$Menus(
    this._instance,
    this._then,
  );

  final Query$Menus _instance;

  final TRes Function(Query$Menus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? menuCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Menus(
        menuCollection: menuCollection == _undefined
            ? _instance.menuCollection
            : (menuCollection as Query$Menus$menuCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Menus$menuCollection<TRes> get menuCollection {
    final local$menuCollection = _instance.menuCollection;
    return local$menuCollection == null
        ? CopyWith$Query$Menus$menuCollection.stub(_then(_instance))
        : CopyWith$Query$Menus$menuCollection(
            local$menuCollection, (e) => call(menuCollection: e));
  }
}

class _CopyWithStubImpl$Query$Menus<TRes>
    implements CopyWith$Query$Menus<TRes> {
  _CopyWithStubImpl$Query$Menus(this._res);

  TRes _res;

  call({
    Query$Menus$menuCollection? menuCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Menus$menuCollection<TRes> get menuCollection =>
      CopyWith$Query$Menus$menuCollection.stub(_res);
}

const documentNodeQueryMenus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Menus'),
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
          name: NameNode(value: 'MenuFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MenuOrderBy'),
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
        name: NameNode(value: 'menuCollection'),
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
                    name: NameNode(value: 'Menu'),
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
  fragmentDefinitionMenu,
  fragmentDefinitionMenuType,
  fragmentDefinitionMenuItem,
]);
Query$Menus _parserFn$Query$Menus(Map<String, dynamic> data) =>
    Query$Menus.fromJson(data);
typedef OnQueryComplete$Query$Menus = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Menus?,
);

class Options$Query$Menus extends graphql.QueryOptions<Query$Menus> {
  Options$Query$Menus({
    String? operationName,
    Variables$Query$Menus? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Menus? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Menus? onComplete,
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
                    data == null ? null : _parserFn$Query$Menus(data),
                  ),
          onError: onError,
          document: documentNodeQueryMenus,
          parserFn: _parserFn$Query$Menus,
        );

  final OnQueryComplete$Query$Menus? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Menus extends graphql.WatchQueryOptions<Query$Menus> {
  WatchOptions$Query$Menus({
    String? operationName,
    Variables$Query$Menus? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Menus? typedOptimisticResult,
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
          document: documentNodeQueryMenus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Menus,
        );
}

class FetchMoreOptions$Query$Menus extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Menus({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$Menus? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMenus,
        );
}

extension ClientExtension$Query$Menus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Menus>> query$Menus(
          [Options$Query$Menus? options]) async =>
      await this.query(options ?? Options$Query$Menus());
  graphql.ObservableQuery<Query$Menus> watchQuery$Menus(
          [WatchOptions$Query$Menus? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Menus());
  void writeQuery$Menus({
    required Query$Menus data,
    Variables$Query$Menus? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMenus),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Menus? readQuery$Menus({
    Variables$Query$Menus? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMenus),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Menus.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Menus> useQuery$Menus(
        [Options$Query$Menus? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$Menus());
graphql.ObservableQuery<Query$Menus> useWatchQuery$Menus(
        [WatchOptions$Query$Menus? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$Menus());

class Query$Menus$Widget extends graphql_flutter.Query<Query$Menus> {
  Query$Menus$Widget({
    widgets.Key? key,
    Options$Query$Menus? options,
    required graphql_flutter.QueryBuilder<Query$Menus> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$Menus(),
          builder: builder,
        );
}

class Query$Menus$menuCollection {
  Query$Menus$menuCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'MenuConnection',
  });

  factory Query$Menus$menuCollection.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$Menus$menuCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Menus$menuCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$Menus$menuCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Menus$menuCollection$edges> edges;

  final Query$Menus$menuCollection$pageInfo pageInfo;

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
    if (!(other is Query$Menus$menuCollection) ||
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

extension UtilityExtension$Query$Menus$menuCollection
    on Query$Menus$menuCollection {
  CopyWith$Query$Menus$menuCollection<Query$Menus$menuCollection>
      get copyWith => CopyWith$Query$Menus$menuCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Menus$menuCollection<TRes> {
  factory CopyWith$Query$Menus$menuCollection(
    Query$Menus$menuCollection instance,
    TRes Function(Query$Menus$menuCollection) then,
  ) = _CopyWithImpl$Query$Menus$menuCollection;

  factory CopyWith$Query$Menus$menuCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$Menus$menuCollection;

  TRes call({
    List<Query$Menus$menuCollection$edges>? edges,
    Query$Menus$menuCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Menus$menuCollection$edges> Function(
              Iterable<
                  CopyWith$Query$Menus$menuCollection$edges<
                      Query$Menus$menuCollection$edges>>)
          _fn);
  CopyWith$Query$Menus$menuCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$Menus$menuCollection<TRes>
    implements CopyWith$Query$Menus$menuCollection<TRes> {
  _CopyWithImpl$Query$Menus$menuCollection(
    this._instance,
    this._then,
  );

  final Query$Menus$menuCollection _instance;

  final TRes Function(Query$Menus$menuCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Menus$menuCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Menus$menuCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$Menus$menuCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Menus$menuCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$Menus$menuCollection$edges<
                          Query$Menus$menuCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Menus$menuCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$Menus$menuCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$Menus$menuCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$Menus$menuCollection<TRes>
    implements CopyWith$Query$Menus$menuCollection<TRes> {
  _CopyWithStubImpl$Query$Menus$menuCollection(this._res);

  TRes _res;

  call({
    List<Query$Menus$menuCollection$edges>? edges,
    Query$Menus$menuCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$Menus$menuCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$Menus$menuCollection$pageInfo.stub(_res);
}

class Query$Menus$menuCollection$edges {
  Query$Menus$menuCollection$edges({
    required this.node,
    this.$__typename = 'MenuEdge',
  });

  factory Query$Menus$menuCollection$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Menus$menuCollection$edges(
      node: Fragment$Menu.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Menu node;

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
    if (!(other is Query$Menus$menuCollection$edges) ||
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

extension UtilityExtension$Query$Menus$menuCollection$edges
    on Query$Menus$menuCollection$edges {
  CopyWith$Query$Menus$menuCollection$edges<Query$Menus$menuCollection$edges>
      get copyWith => CopyWith$Query$Menus$menuCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Menus$menuCollection$edges<TRes> {
  factory CopyWith$Query$Menus$menuCollection$edges(
    Query$Menus$menuCollection$edges instance,
    TRes Function(Query$Menus$menuCollection$edges) then,
  ) = _CopyWithImpl$Query$Menus$menuCollection$edges;

  factory CopyWith$Query$Menus$menuCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Menus$menuCollection$edges;

  TRes call({
    Fragment$Menu? node,
    String? $__typename,
  });
  CopyWith$Fragment$Menu<TRes> get node;
}

class _CopyWithImpl$Query$Menus$menuCollection$edges<TRes>
    implements CopyWith$Query$Menus$menuCollection$edges<TRes> {
  _CopyWithImpl$Query$Menus$menuCollection$edges(
    this._instance,
    this._then,
  );

  final Query$Menus$menuCollection$edges _instance;

  final TRes Function(Query$Menus$menuCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Menus$menuCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Menu),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Menu<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Menu(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Menus$menuCollection$edges<TRes>
    implements CopyWith$Query$Menus$menuCollection$edges<TRes> {
  _CopyWithStubImpl$Query$Menus$menuCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$Menu? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Menu<TRes> get node => CopyWith$Fragment$Menu.stub(_res);
}

class Query$Menus$menuCollection$pageInfo {
  Query$Menus$menuCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$Menus$menuCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$Menus$menuCollection$pageInfo(
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
    if (!(other is Query$Menus$menuCollection$pageInfo) ||
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

extension UtilityExtension$Query$Menus$menuCollection$pageInfo
    on Query$Menus$menuCollection$pageInfo {
  CopyWith$Query$Menus$menuCollection$pageInfo<
          Query$Menus$menuCollection$pageInfo>
      get copyWith => CopyWith$Query$Menus$menuCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Menus$menuCollection$pageInfo<TRes> {
  factory CopyWith$Query$Menus$menuCollection$pageInfo(
    Query$Menus$menuCollection$pageInfo instance,
    TRes Function(Query$Menus$menuCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$Menus$menuCollection$pageInfo;

  factory CopyWith$Query$Menus$menuCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$Menus$menuCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Menus$menuCollection$pageInfo<TRes>
    implements CopyWith$Query$Menus$menuCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$Menus$menuCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$Menus$menuCollection$pageInfo _instance;

  final TRes Function(Query$Menus$menuCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Menus$menuCollection$pageInfo(
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

class _CopyWithStubImpl$Query$Menus$menuCollection$pageInfo<TRes>
    implements CopyWith$Query$Menus$menuCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$Menus$menuCollection$pageInfo(this._res);

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

class Variables$Query$MenuItems {
  factory Variables$Query$MenuItems({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$MenuItemFilter? filter,
    List<Input$MenuItemOrderBy>? orderBy,
  }) =>
      Variables$Query$MenuItems._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$MenuItems._(this._$data);

  factory Variables$Query$MenuItems.fromJson(Map<String, dynamic> data) {
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
          : Input$MenuItemFilter.fromJson((l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$MenuItemOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$MenuItems._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get before => (_$data['before'] as dynamic?);

  dynamic? get after => (_$data['after'] as dynamic?);

  Input$MenuItemFilter? get filter =>
      (_$data['filter'] as Input$MenuItemFilter?);

  List<Input$MenuItemOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$MenuItemOrderBy>?);

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

  CopyWith$Variables$Query$MenuItems<Variables$Query$MenuItems> get copyWith =>
      CopyWith$Variables$Query$MenuItems(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$MenuItems) ||
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

abstract class CopyWith$Variables$Query$MenuItems<TRes> {
  factory CopyWith$Variables$Query$MenuItems(
    Variables$Query$MenuItems instance,
    TRes Function(Variables$Query$MenuItems) then,
  ) = _CopyWithImpl$Variables$Query$MenuItems;

  factory CopyWith$Variables$Query$MenuItems.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$MenuItems;

  TRes call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$MenuItemFilter? filter,
    List<Input$MenuItemOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$MenuItems<TRes>
    implements CopyWith$Variables$Query$MenuItems<TRes> {
  _CopyWithImpl$Variables$Query$MenuItems(
    this._instance,
    this._then,
  );

  final Variables$Query$MenuItems _instance;

  final TRes Function(Variables$Query$MenuItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? before = _undefined,
    Object? after = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$MenuItems._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (filter != _undefined) 'filter': (filter as Input$MenuItemFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$MenuItemOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$MenuItems<TRes>
    implements CopyWith$Variables$Query$MenuItems<TRes> {
  _CopyWithStubImpl$Variables$Query$MenuItems(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? before,
    dynamic? after,
    Input$MenuItemFilter? filter,
    List<Input$MenuItemOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$MenuItems {
  Query$MenuItems({
    this.menuItemCollection,
    this.$__typename = 'Query',
  });

  factory Query$MenuItems.fromJson(Map<String, dynamic> json) {
    final l$menuItemCollection = json['menuItemCollection'];
    final l$$__typename = json['__typename'];
    return Query$MenuItems(
      menuItemCollection: l$menuItemCollection == null
          ? null
          : Query$MenuItems$menuItemCollection.fromJson(
              (l$menuItemCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$MenuItems$menuItemCollection? menuItemCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$menuItemCollection = menuItemCollection;
    _resultData['menuItemCollection'] = l$menuItemCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$menuItemCollection = menuItemCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$menuItemCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$MenuItems) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$menuItemCollection = menuItemCollection;
    final lOther$menuItemCollection = other.menuItemCollection;
    if (l$menuItemCollection != lOther$menuItemCollection) {
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

extension UtilityExtension$Query$MenuItems on Query$MenuItems {
  CopyWith$Query$MenuItems<Query$MenuItems> get copyWith =>
      CopyWith$Query$MenuItems(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$MenuItems<TRes> {
  factory CopyWith$Query$MenuItems(
    Query$MenuItems instance,
    TRes Function(Query$MenuItems) then,
  ) = _CopyWithImpl$Query$MenuItems;

  factory CopyWith$Query$MenuItems.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuItems;

  TRes call({
    Query$MenuItems$menuItemCollection? menuItemCollection,
    String? $__typename,
  });
  CopyWith$Query$MenuItems$menuItemCollection<TRes> get menuItemCollection;
}

class _CopyWithImpl$Query$MenuItems<TRes>
    implements CopyWith$Query$MenuItems<TRes> {
  _CopyWithImpl$Query$MenuItems(
    this._instance,
    this._then,
  );

  final Query$MenuItems _instance;

  final TRes Function(Query$MenuItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? menuItemCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuItems(
        menuItemCollection: menuItemCollection == _undefined
            ? _instance.menuItemCollection
            : (menuItemCollection as Query$MenuItems$menuItemCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$MenuItems$menuItemCollection<TRes> get menuItemCollection {
    final local$menuItemCollection = _instance.menuItemCollection;
    return local$menuItemCollection == null
        ? CopyWith$Query$MenuItems$menuItemCollection.stub(_then(_instance))
        : CopyWith$Query$MenuItems$menuItemCollection(
            local$menuItemCollection, (e) => call(menuItemCollection: e));
  }
}

class _CopyWithStubImpl$Query$MenuItems<TRes>
    implements CopyWith$Query$MenuItems<TRes> {
  _CopyWithStubImpl$Query$MenuItems(this._res);

  TRes _res;

  call({
    Query$MenuItems$menuItemCollection? menuItemCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$MenuItems$menuItemCollection<TRes> get menuItemCollection =>
      CopyWith$Query$MenuItems$menuItemCollection.stub(_res);
}

const documentNodeQueryMenuItems = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'MenuItems'),
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
          name: NameNode(value: 'MenuItemFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'MenuItemOrderBy'),
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
        name: NameNode(value: 'menuItemCollection'),
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
  fragmentDefinitionMenuItem,
]);
Query$MenuItems _parserFn$Query$MenuItems(Map<String, dynamic> data) =>
    Query$MenuItems.fromJson(data);
typedef OnQueryComplete$Query$MenuItems = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$MenuItems?,
);

class Options$Query$MenuItems extends graphql.QueryOptions<Query$MenuItems> {
  Options$Query$MenuItems({
    String? operationName,
    Variables$Query$MenuItems? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MenuItems? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$MenuItems? onComplete,
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
                    data == null ? null : _parserFn$Query$MenuItems(data),
                  ),
          onError: onError,
          document: documentNodeQueryMenuItems,
          parserFn: _parserFn$Query$MenuItems,
        );

  final OnQueryComplete$Query$MenuItems? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$MenuItems
    extends graphql.WatchQueryOptions<Query$MenuItems> {
  WatchOptions$Query$MenuItems({
    String? operationName,
    Variables$Query$MenuItems? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$MenuItems? typedOptimisticResult,
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
          document: documentNodeQueryMenuItems,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$MenuItems,
        );
}

class FetchMoreOptions$Query$MenuItems extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$MenuItems({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$MenuItems? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryMenuItems,
        );
}

extension ClientExtension$Query$MenuItems on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$MenuItems>> query$MenuItems(
          [Options$Query$MenuItems? options]) async =>
      await this.query(options ?? Options$Query$MenuItems());
  graphql.ObservableQuery<Query$MenuItems> watchQuery$MenuItems(
          [WatchOptions$Query$MenuItems? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$MenuItems());
  void writeQuery$MenuItems({
    required Query$MenuItems data,
    Variables$Query$MenuItems? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryMenuItems),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$MenuItems? readQuery$MenuItems({
    Variables$Query$MenuItems? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryMenuItems),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$MenuItems.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$MenuItems> useQuery$MenuItems(
        [Options$Query$MenuItems? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$MenuItems());
graphql.ObservableQuery<Query$MenuItems> useWatchQuery$MenuItems(
        [WatchOptions$Query$MenuItems? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$MenuItems());

class Query$MenuItems$Widget extends graphql_flutter.Query<Query$MenuItems> {
  Query$MenuItems$Widget({
    widgets.Key? key,
    Options$Query$MenuItems? options,
    required graphql_flutter.QueryBuilder<Query$MenuItems> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$MenuItems(),
          builder: builder,
        );
}

class Query$MenuItems$menuItemCollection {
  Query$MenuItems$menuItemCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'MenuItemConnection',
  });

  factory Query$MenuItems$menuItemCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$MenuItems$menuItemCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$MenuItems$menuItemCollection$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$MenuItems$menuItemCollection$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$MenuItems$menuItemCollection$edges> edges;

  final Query$MenuItems$menuItemCollection$pageInfo pageInfo;

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
    if (!(other is Query$MenuItems$menuItemCollection) ||
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

extension UtilityExtension$Query$MenuItems$menuItemCollection
    on Query$MenuItems$menuItemCollection {
  CopyWith$Query$MenuItems$menuItemCollection<
          Query$MenuItems$menuItemCollection>
      get copyWith => CopyWith$Query$MenuItems$menuItemCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MenuItems$menuItemCollection<TRes> {
  factory CopyWith$Query$MenuItems$menuItemCollection(
    Query$MenuItems$menuItemCollection instance,
    TRes Function(Query$MenuItems$menuItemCollection) then,
  ) = _CopyWithImpl$Query$MenuItems$menuItemCollection;

  factory CopyWith$Query$MenuItems$menuItemCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuItems$menuItemCollection;

  TRes call({
    List<Query$MenuItems$menuItemCollection$edges>? edges,
    Query$MenuItems$menuItemCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$MenuItems$menuItemCollection$edges> Function(
              Iterable<
                  CopyWith$Query$MenuItems$menuItemCollection$edges<
                      Query$MenuItems$menuItemCollection$edges>>)
          _fn);
  CopyWith$Query$MenuItems$menuItemCollection$pageInfo<TRes> get pageInfo;
}

class _CopyWithImpl$Query$MenuItems$menuItemCollection<TRes>
    implements CopyWith$Query$MenuItems$menuItemCollection<TRes> {
  _CopyWithImpl$Query$MenuItems$menuItemCollection(
    this._instance,
    this._then,
  );

  final Query$MenuItems$menuItemCollection _instance;

  final TRes Function(Query$MenuItems$menuItemCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuItems$menuItemCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$MenuItems$menuItemCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$MenuItems$menuItemCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$MenuItems$menuItemCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$MenuItems$menuItemCollection$edges<
                          Query$MenuItems$menuItemCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$MenuItems$menuItemCollection$edges(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$MenuItems$menuItemCollection$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$MenuItems$menuItemCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$MenuItems$menuItemCollection<TRes>
    implements CopyWith$Query$MenuItems$menuItemCollection<TRes> {
  _CopyWithStubImpl$Query$MenuItems$menuItemCollection(this._res);

  TRes _res;

  call({
    List<Query$MenuItems$menuItemCollection$edges>? edges,
    Query$MenuItems$menuItemCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$MenuItems$menuItemCollection$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$MenuItems$menuItemCollection$pageInfo.stub(_res);
}

class Query$MenuItems$menuItemCollection$edges {
  Query$MenuItems$menuItemCollection$edges({
    required this.node,
    this.$__typename = 'MenuItemEdge',
  });

  factory Query$MenuItems$menuItemCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$MenuItems$menuItemCollection$edges(
      node: Fragment$MenuItem.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$MenuItem node;

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
    if (!(other is Query$MenuItems$menuItemCollection$edges) ||
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

extension UtilityExtension$Query$MenuItems$menuItemCollection$edges
    on Query$MenuItems$menuItemCollection$edges {
  CopyWith$Query$MenuItems$menuItemCollection$edges<
          Query$MenuItems$menuItemCollection$edges>
      get copyWith => CopyWith$Query$MenuItems$menuItemCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MenuItems$menuItemCollection$edges<TRes> {
  factory CopyWith$Query$MenuItems$menuItemCollection$edges(
    Query$MenuItems$menuItemCollection$edges instance,
    TRes Function(Query$MenuItems$menuItemCollection$edges) then,
  ) = _CopyWithImpl$Query$MenuItems$menuItemCollection$edges;

  factory CopyWith$Query$MenuItems$menuItemCollection$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuItems$menuItemCollection$edges;

  TRes call({
    Fragment$MenuItem? node,
    String? $__typename,
  });
  CopyWith$Fragment$MenuItem<TRes> get node;
}

class _CopyWithImpl$Query$MenuItems$menuItemCollection$edges<TRes>
    implements CopyWith$Query$MenuItems$menuItemCollection$edges<TRes> {
  _CopyWithImpl$Query$MenuItems$menuItemCollection$edges(
    this._instance,
    this._then,
  );

  final Query$MenuItems$menuItemCollection$edges _instance;

  final TRes Function(Query$MenuItems$menuItemCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuItems$menuItemCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$MenuItem),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$MenuItem<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$MenuItem(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$MenuItems$menuItemCollection$edges<TRes>
    implements CopyWith$Query$MenuItems$menuItemCollection$edges<TRes> {
  _CopyWithStubImpl$Query$MenuItems$menuItemCollection$edges(this._res);

  TRes _res;

  call({
    Fragment$MenuItem? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$MenuItem<TRes> get node =>
      CopyWith$Fragment$MenuItem.stub(_res);
}

class Query$MenuItems$menuItemCollection$pageInfo {
  Query$MenuItems$menuItemCollection$pageInfo({
    this.startCursor,
    this.endCursor,
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$MenuItems$menuItemCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$$__typename = json['__typename'];
    return Query$MenuItems$menuItemCollection$pageInfo(
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
    if (!(other is Query$MenuItems$menuItemCollection$pageInfo) ||
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

extension UtilityExtension$Query$MenuItems$menuItemCollection$pageInfo
    on Query$MenuItems$menuItemCollection$pageInfo {
  CopyWith$Query$MenuItems$menuItemCollection$pageInfo<
          Query$MenuItems$menuItemCollection$pageInfo>
      get copyWith => CopyWith$Query$MenuItems$menuItemCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$MenuItems$menuItemCollection$pageInfo<TRes> {
  factory CopyWith$Query$MenuItems$menuItemCollection$pageInfo(
    Query$MenuItems$menuItemCollection$pageInfo instance,
    TRes Function(Query$MenuItems$menuItemCollection$pageInfo) then,
  ) = _CopyWithImpl$Query$MenuItems$menuItemCollection$pageInfo;

  factory CopyWith$Query$MenuItems$menuItemCollection$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$MenuItems$menuItemCollection$pageInfo;

  TRes call({
    String? startCursor,
    String? endCursor,
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$MenuItems$menuItemCollection$pageInfo<TRes>
    implements CopyWith$Query$MenuItems$menuItemCollection$pageInfo<TRes> {
  _CopyWithImpl$Query$MenuItems$menuItemCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$MenuItems$menuItemCollection$pageInfo _instance;

  final TRes Function(Query$MenuItems$menuItemCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$MenuItems$menuItemCollection$pageInfo(
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

class _CopyWithStubImpl$Query$MenuItems$menuItemCollection$pageInfo<TRes>
    implements CopyWith$Query$MenuItems$menuItemCollection$pageInfo<TRes> {
  _CopyWithStubImpl$Query$MenuItems$menuItemCollection$pageInfo(this._res);

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
