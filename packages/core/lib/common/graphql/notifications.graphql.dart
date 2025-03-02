import '../../schema.graphql.dart';
import 'dart:async';
import 'package:core/scalars.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Fragment$NotificationType {
  Fragment$NotificationType({
    required this.id,
    required this.key,
    required this.name,
    this.iconUrl,
    this.schema,
    required this.createdAt,
    this.$__typename = 'NotificationTypes',
  });

  factory Fragment$NotificationType.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$key = json['key'];
    final l$name = json['name'];
    final l$iconUrl = json['iconUrl'];
    final l$schema = json['schema'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$NotificationType(
      id: (l$id as String),
      key: (l$key as String),
      name: (l$name as String),
      iconUrl: (l$iconUrl as String?),
      schema: l$schema == null ? null : jsonFieldFromJson(l$schema),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String key;

  final String name;

  final String? iconUrl;

  final Map<String, dynamic>? schema;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$key = key;
    _resultData['key'] = l$key;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
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
    final l$key = key;
    final l$name = name;
    final l$iconUrl = iconUrl;
    final l$schema = schema;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$key,
      l$name,
      l$iconUrl,
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
    if (other is! Fragment$NotificationType ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$key = key;
    final lOther$key = other.key;
    if (l$key != lOther$key) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$iconUrl = iconUrl;
    final lOther$iconUrl = other.iconUrl;
    if (l$iconUrl != lOther$iconUrl) {
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

extension UtilityExtension$Fragment$NotificationType
    on Fragment$NotificationType {
  CopyWith$Fragment$NotificationType<Fragment$NotificationType> get copyWith =>
      CopyWith$Fragment$NotificationType(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$NotificationType<TRes> {
  factory CopyWith$Fragment$NotificationType(
    Fragment$NotificationType instance,
    TRes Function(Fragment$NotificationType) then,
  ) = _CopyWithImpl$Fragment$NotificationType;

  factory CopyWith$Fragment$NotificationType.stub(TRes res) =
      _CopyWithStubImpl$Fragment$NotificationType;

  TRes call({
    String? id,
    String? key,
    String? name,
    String? iconUrl,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$NotificationType<TRes>
    implements CopyWith$Fragment$NotificationType<TRes> {
  _CopyWithImpl$Fragment$NotificationType(
    this._instance,
    this._then,
  );

  final Fragment$NotificationType _instance;

  final TRes Function(Fragment$NotificationType) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? key = _undefined,
    Object? name = _undefined,
    Object? iconUrl = _undefined,
    Object? schema = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$NotificationType(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        key: key == _undefined || key == null ? _instance.key : (key as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
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

class _CopyWithStubImpl$Fragment$NotificationType<TRes>
    implements CopyWith$Fragment$NotificationType<TRes> {
  _CopyWithStubImpl$Fragment$NotificationType(this._res);

  TRes _res;

  call({
    String? id,
    String? key,
    String? name,
    String? iconUrl,
    Map<String, dynamic>? schema,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionNotificationType = FragmentDefinitionNode(
  name: NameNode(value: 'NotificationType'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'NotificationTypes'),
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
      name: NameNode(value: 'key'),
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
      name: NameNode(value: 'iconUrl'),
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
const documentNodeFragmentNotificationType = DocumentNode(definitions: [
  fragmentDefinitionNotificationType,
]);

extension ClientExtension$Fragment$NotificationType on graphql.GraphQLClient {
  void writeFragment$NotificationType({
    required Fragment$NotificationType data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'NotificationType',
            document: documentNodeFragmentNotificationType,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$NotificationType? readFragment$NotificationType({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'NotificationType',
          document: documentNodeFragmentNotificationType,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$NotificationType.fromJson(result);
  }
}

class Fragment$Notification {
  Fragment$Notification({
    required this.id,
    required this.userId,
    required this.notificationTypeId,
    required this.notificationType,
    required this.title,
    required this.subtitle,
    this.iconUrl,
    required this.isRead,
    this.messageMarkdown,
    this.data,
    required this.createdAt,
    this.$__typename = 'Notifications',
  });

  factory Fragment$Notification.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userId = json['userId'];
    final l$notificationTypeId = json['notificationTypeId'];
    final l$notificationType = json['notificationType'];
    final l$title = json['title'];
    final l$subtitle = json['subtitle'];
    final l$iconUrl = json['iconUrl'];
    final l$isRead = json['isRead'];
    final l$messageMarkdown = json['messageMarkdown'];
    final l$data = json['data'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$Notification(
      id: (l$id as String),
      userId: (l$userId as String),
      notificationTypeId: (l$notificationTypeId as String),
      notificationType: Fragment$NotificationType.fromJson(
          (l$notificationType as Map<String, dynamic>)),
      title: (l$title as String),
      subtitle: (l$subtitle as String),
      iconUrl: (l$iconUrl as String?),
      isRead: (l$isRead as bool),
      messageMarkdown: (l$messageMarkdown as String?),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String userId;

  final String notificationTypeId;

  final Fragment$NotificationType notificationType;

  final String title;

  final String subtitle;

  final String? iconUrl;

  final bool isRead;

  final String? messageMarkdown;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$notificationTypeId = notificationTypeId;
    _resultData['notificationTypeId'] = l$notificationTypeId;
    final l$notificationType = notificationType;
    _resultData['notificationType'] = l$notificationType.toJson();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$subtitle = subtitle;
    _resultData['subtitle'] = l$subtitle;
    final l$iconUrl = iconUrl;
    _resultData['iconUrl'] = l$iconUrl;
    final l$isRead = isRead;
    _resultData['isRead'] = l$isRead;
    final l$messageMarkdown = messageMarkdown;
    _resultData['messageMarkdown'] = l$messageMarkdown;
    final l$data = data;
    _resultData['data'] = l$data == null ? null : jsonFieldToJson(l$data);
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
    final l$notificationTypeId = notificationTypeId;
    final l$notificationType = notificationType;
    final l$title = title;
    final l$subtitle = subtitle;
    final l$iconUrl = iconUrl;
    final l$isRead = isRead;
    final l$messageMarkdown = messageMarkdown;
    final l$data = data;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$userId,
      l$notificationTypeId,
      l$notificationType,
      l$title,
      l$subtitle,
      l$iconUrl,
      l$isRead,
      l$messageMarkdown,
      l$data,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Notification || runtimeType != other.runtimeType) {
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
    final l$notificationTypeId = notificationTypeId;
    final lOther$notificationTypeId = other.notificationTypeId;
    if (l$notificationTypeId != lOther$notificationTypeId) {
      return false;
    }
    final l$notificationType = notificationType;
    final lOther$notificationType = other.notificationType;
    if (l$notificationType != lOther$notificationType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$subtitle = subtitle;
    final lOther$subtitle = other.subtitle;
    if (l$subtitle != lOther$subtitle) {
      return false;
    }
    final l$iconUrl = iconUrl;
    final lOther$iconUrl = other.iconUrl;
    if (l$iconUrl != lOther$iconUrl) {
      return false;
    }
    final l$isRead = isRead;
    final lOther$isRead = other.isRead;
    if (l$isRead != lOther$isRead) {
      return false;
    }
    final l$messageMarkdown = messageMarkdown;
    final lOther$messageMarkdown = other.messageMarkdown;
    if (l$messageMarkdown != lOther$messageMarkdown) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$Notification on Fragment$Notification {
  CopyWith$Fragment$Notification<Fragment$Notification> get copyWith =>
      CopyWith$Fragment$Notification(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Notification<TRes> {
  factory CopyWith$Fragment$Notification(
    Fragment$Notification instance,
    TRes Function(Fragment$Notification) then,
  ) = _CopyWithImpl$Fragment$Notification;

  factory CopyWith$Fragment$Notification.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Notification;

  TRes call({
    String? id,
    String? userId,
    String? notificationTypeId,
    Fragment$NotificationType? notificationType,
    String? title,
    String? subtitle,
    String? iconUrl,
    bool? isRead,
    String? messageMarkdown,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    String? $__typename,
  });
  CopyWith$Fragment$NotificationType<TRes> get notificationType;
}

class _CopyWithImpl$Fragment$Notification<TRes>
    implements CopyWith$Fragment$Notification<TRes> {
  _CopyWithImpl$Fragment$Notification(
    this._instance,
    this._then,
  );

  final Fragment$Notification _instance;

  final TRes Function(Fragment$Notification) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userId = _undefined,
    Object? notificationTypeId = _undefined,
    Object? notificationType = _undefined,
    Object? title = _undefined,
    Object? subtitle = _undefined,
    Object? iconUrl = _undefined,
    Object? isRead = _undefined,
    Object? messageMarkdown = _undefined,
    Object? data = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Notification(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        notificationTypeId:
            notificationTypeId == _undefined || notificationTypeId == null
                ? _instance.notificationTypeId
                : (notificationTypeId as String),
        notificationType:
            notificationType == _undefined || notificationType == null
                ? _instance.notificationType
                : (notificationType as Fragment$NotificationType),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        subtitle: subtitle == _undefined || subtitle == null
            ? _instance.subtitle
            : (subtitle as String),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        isRead: isRead == _undefined || isRead == null
            ? _instance.isRead
            : (isRead as bool),
        messageMarkdown: messageMarkdown == _undefined
            ? _instance.messageMarkdown
            : (messageMarkdown as String?),
        data: data == _undefined
            ? _instance.data
            : (data as Map<String, dynamic>?),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$NotificationType<TRes> get notificationType {
    final local$notificationType = _instance.notificationType;
    return CopyWith$Fragment$NotificationType(
        local$notificationType, (e) => call(notificationType: e));
  }
}

class _CopyWithStubImpl$Fragment$Notification<TRes>
    implements CopyWith$Fragment$Notification<TRes> {
  _CopyWithStubImpl$Fragment$Notification(this._res);

  TRes _res;

  call({
    String? id,
    String? userId,
    String? notificationTypeId,
    Fragment$NotificationType? notificationType,
    String? title,
    String? subtitle,
    String? iconUrl,
    bool? isRead,
    String? messageMarkdown,
    Map<String, dynamic>? data,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$NotificationType<TRes> get notificationType =>
      CopyWith$Fragment$NotificationType.stub(_res);
}

const fragmentDefinitionNotification = FragmentDefinitionNode(
  name: NameNode(value: 'Notification'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Notifications'),
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
      name: NameNode(value: 'notificationTypeId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'notificationType'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'NotificationType'),
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
      name: NameNode(value: 'title'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'subtitle'),
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
      name: NameNode(value: 'isRead'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'messageMarkdown'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentNotification = DocumentNode(definitions: [
  fragmentDefinitionNotification,
  fragmentDefinitionNotificationType,
]);

extension ClientExtension$Fragment$Notification on graphql.GraphQLClient {
  void writeFragment$Notification({
    required Fragment$Notification data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Notification',
            document: documentNodeFragmentNotification,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Notification? readFragment$Notification({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Notification',
          document: documentNodeFragmentNotification,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Notification.fromJson(result);
  }
}

class Variables$Query$NotificationCollection {
  factory Variables$Query$NotificationCollection({
    int? first,
    int? last,
    dynamic? after,
    dynamic? before,
    Input$NotificationsFilter? filter,
    List<Input$NotificationsOrderBy>? orderBy,
  }) =>
      Variables$Query$NotificationCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$NotificationCollection._(this._$data);

  factory Variables$Query$NotificationCollection.fromJson(
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
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as dynamic?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as dynamic?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$NotificationsFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$NotificationsOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$NotificationCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get after => (_$data['after'] as dynamic?);

  dynamic? get before => (_$data['before'] as dynamic?);

  Input$NotificationsFilter? get filter =>
      (_$data['filter'] as Input$NotificationsFilter?);

  List<Input$NotificationsOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$NotificationsOrderBy>?);

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
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
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

  CopyWith$Variables$Query$NotificationCollection<
          Variables$Query$NotificationCollection>
      get copyWith => CopyWith$Variables$Query$NotificationCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$NotificationCollection ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$after = after;
    final l$before = before;
    final l$filter = filter;
    final l$orderBy = orderBy;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$NotificationCollection<TRes> {
  factory CopyWith$Variables$Query$NotificationCollection(
    Variables$Query$NotificationCollection instance,
    TRes Function(Variables$Query$NotificationCollection) then,
  ) = _CopyWithImpl$Variables$Query$NotificationCollection;

  factory CopyWith$Variables$Query$NotificationCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$NotificationCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? after,
    dynamic? before,
    Input$NotificationsFilter? filter,
    List<Input$NotificationsOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$NotificationCollection<TRes>
    implements CopyWith$Variables$Query$NotificationCollection<TRes> {
  _CopyWithImpl$Variables$Query$NotificationCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$NotificationCollection _instance;

  final TRes Function(Variables$Query$NotificationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? after = _undefined,
    Object? before = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$NotificationCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$NotificationsFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$NotificationsOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$NotificationCollection<TRes>
    implements CopyWith$Variables$Query$NotificationCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$NotificationCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? after,
    dynamic? before,
    Input$NotificationsFilter? filter,
    List<Input$NotificationsOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$NotificationCollection {
  Query$NotificationCollection({
    this.notificationsCollection,
    this.$__typename = 'Query',
  });

  factory Query$NotificationCollection.fromJson(Map<String, dynamic> json) {
    final l$notificationsCollection = json['notificationsCollection'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection(
      notificationsCollection: l$notificationsCollection == null
          ? null
          : Query$NotificationCollection$notificationsCollection.fromJson(
              (l$notificationsCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationCollection$notificationsCollection?
      notificationsCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationsCollection = notificationsCollection;
    _resultData['notificationsCollection'] =
        l$notificationsCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationsCollection = notificationsCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notificationsCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$NotificationCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationsCollection = notificationsCollection;
    final lOther$notificationsCollection = other.notificationsCollection;
    if (l$notificationsCollection != lOther$notificationsCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NotificationCollection
    on Query$NotificationCollection {
  CopyWith$Query$NotificationCollection<Query$NotificationCollection>
      get copyWith => CopyWith$Query$NotificationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection<TRes> {
  factory CopyWith$Query$NotificationCollection(
    Query$NotificationCollection instance,
    TRes Function(Query$NotificationCollection) then,
  ) = _CopyWithImpl$Query$NotificationCollection;

  factory CopyWith$Query$NotificationCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection;

  TRes call({
    Query$NotificationCollection$notificationsCollection?
        notificationsCollection,
    String? $__typename,
  });
  CopyWith$Query$NotificationCollection$notificationsCollection<TRes>
      get notificationsCollection;
}

class _CopyWithImpl$Query$NotificationCollection<TRes>
    implements CopyWith$Query$NotificationCollection<TRes> {
  _CopyWithImpl$Query$NotificationCollection(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection _instance;

  final TRes Function(Query$NotificationCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notificationsCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection(
        notificationsCollection: notificationsCollection == _undefined
            ? _instance.notificationsCollection
            : (notificationsCollection
                as Query$NotificationCollection$notificationsCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NotificationCollection$notificationsCollection<TRes>
      get notificationsCollection {
    final local$notificationsCollection = _instance.notificationsCollection;
    return local$notificationsCollection == null
        ? CopyWith$Query$NotificationCollection$notificationsCollection.stub(
            _then(_instance))
        : CopyWith$Query$NotificationCollection$notificationsCollection(
            local$notificationsCollection,
            (e) => call(notificationsCollection: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCollection<TRes>
    implements CopyWith$Query$NotificationCollection<TRes> {
  _CopyWithStubImpl$Query$NotificationCollection(this._res);

  TRes _res;

  call({
    Query$NotificationCollection$notificationsCollection?
        notificationsCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NotificationCollection$notificationsCollection<TRes>
      get notificationsCollection =>
          CopyWith$Query$NotificationCollection$notificationsCollection.stub(
              _res);
}

const documentNodeQueryNotificationCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'NotificationCollection'),
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
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
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
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'NotificationsFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationsOrderBy'),
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
        name: NameNode(value: 'notificationsCollection'),
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
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
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
                    name: NameNode(value: 'Notification'),
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
  fragmentDefinitionNotification,
  fragmentDefinitionNotificationType,
]);
Query$NotificationCollection _parserFn$Query$NotificationCollection(
        Map<String, dynamic> data) =>
    Query$NotificationCollection.fromJson(data);
typedef OnQueryComplete$Query$NotificationCollection = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$NotificationCollection?,
);

class Options$Query$NotificationCollection
    extends graphql.QueryOptions<Query$NotificationCollection> {
  Options$Query$NotificationCollection({
    String? operationName,
    Variables$Query$NotificationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$NotificationCollection? onComplete,
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
                        : _parserFn$Query$NotificationCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotificationCollection,
          parserFn: _parserFn$Query$NotificationCollection,
        );

  final OnQueryComplete$Query$NotificationCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$NotificationCollection
    extends graphql.WatchQueryOptions<Query$NotificationCollection> {
  WatchOptions$Query$NotificationCollection({
    String? operationName,
    Variables$Query$NotificationCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationCollection? typedOptimisticResult,
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
          document: documentNodeQueryNotificationCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$NotificationCollection,
        );
}

class FetchMoreOptions$Query$NotificationCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$NotificationCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$NotificationCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryNotificationCollection,
        );
}

extension ClientExtension$Query$NotificationCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$NotificationCollection>>
      query$NotificationCollection(
              [Options$Query$NotificationCollection? options]) async =>
          await this.query(options ?? Options$Query$NotificationCollection());
  graphql.ObservableQuery<
      Query$NotificationCollection> watchQuery$NotificationCollection(
          [WatchOptions$Query$NotificationCollection? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$NotificationCollection());
  void writeQuery$NotificationCollection({
    required Query$NotificationCollection data,
    Variables$Query$NotificationCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryNotificationCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$NotificationCollection? readQuery$NotificationCollection({
    Variables$Query$NotificationCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryNotificationCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$NotificationCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$NotificationCollection>
    useQuery$NotificationCollection(
            [Options$Query$NotificationCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$NotificationCollection());
graphql.ObservableQuery<Query$NotificationCollection>
    useWatchQuery$NotificationCollection(
            [WatchOptions$Query$NotificationCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$NotificationCollection());

class Query$NotificationCollection$Widget
    extends graphql_flutter.Query<Query$NotificationCollection> {
  Query$NotificationCollection$Widget({
    widgets.Key? key,
    Options$Query$NotificationCollection? options,
    required graphql_flutter.QueryBuilder<Query$NotificationCollection> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$NotificationCollection(),
          builder: builder,
        );
}

class Query$NotificationCollection$notificationsCollection {
  Query$NotificationCollection$notificationsCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'NotificationsConnection',
  });

  factory Query$NotificationCollection$notificationsCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection$notificationsCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$NotificationCollection$notificationsCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo: Query$NotificationCollection$notificationsCollection$pageInfo
          .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$NotificationCollection$notificationsCollection$edges> edges;

  final Query$NotificationCollection$notificationsCollection$pageInfo pageInfo;

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
    if (other is! Query$NotificationCollection$notificationsCollection ||
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

extension UtilityExtension$Query$NotificationCollection$notificationsCollection
    on Query$NotificationCollection$notificationsCollection {
  CopyWith$Query$NotificationCollection$notificationsCollection<
          Query$NotificationCollection$notificationsCollection>
      get copyWith =>
          CopyWith$Query$NotificationCollection$notificationsCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection$notificationsCollection<
    TRes> {
  factory CopyWith$Query$NotificationCollection$notificationsCollection(
    Query$NotificationCollection$notificationsCollection instance,
    TRes Function(Query$NotificationCollection$notificationsCollection) then,
  ) = _CopyWithImpl$Query$NotificationCollection$notificationsCollection;

  factory CopyWith$Query$NotificationCollection$notificationsCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection;

  TRes call({
    List<Query$NotificationCollection$notificationsCollection$edges>? edges,
    Query$NotificationCollection$notificationsCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$NotificationCollection$notificationsCollection$edges> Function(
              Iterable<
                  CopyWith$Query$NotificationCollection$notificationsCollection$edges<
                      Query$NotificationCollection$notificationsCollection$edges>>)
          _fn);
  CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$NotificationCollection$notificationsCollection<TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationsCollection<TRes> {
  _CopyWithImpl$Query$NotificationCollection$notificationsCollection(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection$notificationsCollection _instance;

  final TRes Function(Query$NotificationCollection$notificationsCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection$notificationsCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$NotificationCollection$notificationsCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$NotificationCollection$notificationsCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$NotificationCollection$notificationsCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$NotificationCollection$notificationsCollection$edges<
                          Query$NotificationCollection$notificationsCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$NotificationCollection$notificationsCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationsCollection<TRes> {
  _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection(
      this._res);

  TRes _res;

  call({
    List<Query$NotificationCollection$notificationsCollection$edges>? edges,
    Query$NotificationCollection$notificationsCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo
              .stub(_res);
}

class Query$NotificationCollection$notificationsCollection$edges {
  Query$NotificationCollection$notificationsCollection$edges({
    required this.node,
    this.$__typename = 'NotificationsEdge',
  });

  factory Query$NotificationCollection$notificationsCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection$notificationsCollection$edges(
      node: Fragment$Notification.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Notification node;

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
    if (other is! Query$NotificationCollection$notificationsCollection$edges ||
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

extension UtilityExtension$Query$NotificationCollection$notificationsCollection$edges
    on Query$NotificationCollection$notificationsCollection$edges {
  CopyWith$Query$NotificationCollection$notificationsCollection$edges<
          Query$NotificationCollection$notificationsCollection$edges>
      get copyWith =>
          CopyWith$Query$NotificationCollection$notificationsCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection$notificationsCollection$edges<
    TRes> {
  factory CopyWith$Query$NotificationCollection$notificationsCollection$edges(
    Query$NotificationCollection$notificationsCollection$edges instance,
    TRes Function(Query$NotificationCollection$notificationsCollection$edges)
        then,
  ) = _CopyWithImpl$Query$NotificationCollection$notificationsCollection$edges;

  factory CopyWith$Query$NotificationCollection$notificationsCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection$edges;

  TRes call({
    Fragment$Notification? node,
    String? $__typename,
  });
  CopyWith$Fragment$Notification<TRes> get node;
}

class _CopyWithImpl$Query$NotificationCollection$notificationsCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationsCollection$edges<
            TRes> {
  _CopyWithImpl$Query$NotificationCollection$notificationsCollection$edges(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection$notificationsCollection$edges _instance;

  final TRes Function(
      Query$NotificationCollection$notificationsCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection$notificationsCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$Notification),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Notification<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$Notification(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationsCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$Notification? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Notification<TRes> get node =>
      CopyWith$Fragment$Notification.stub(_res);
}

class Query$NotificationCollection$notificationsCollection$pageInfo {
  Query$NotificationCollection$notificationsCollection$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$NotificationCollection$notificationsCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection$notificationsCollection$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
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
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
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
            is! Query$NotificationCollection$notificationsCollection$pageInfo ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$NotificationCollection$notificationsCollection$pageInfo
    on Query$NotificationCollection$notificationsCollection$pageInfo {
  CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<
          Query$NotificationCollection$notificationsCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo(
    Query$NotificationCollection$notificationsCollection$pageInfo instance,
    TRes Function(Query$NotificationCollection$notificationsCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$NotificationCollection$notificationsCollection$pageInfo;

  factory CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NotificationCollection$notificationsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$NotificationCollection$notificationsCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection$notificationsCollection$pageInfo _instance;

  final TRes Function(
      Query$NotificationCollection$notificationsCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection$notificationsCollection$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
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

class _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationsCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$NotificationCollection$notificationsCollection$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$NotificationTypesCollection {
  factory Variables$Query$NotificationTypesCollection({
    int? first,
    int? last,
    dynamic? after,
    dynamic? before,
    Input$NotificationTypesFilter? filter,
    List<Input$NotificationTypesOrderBy>? orderBy,
  }) =>
      Variables$Query$NotificationTypesCollection._({
        if (first != null) r'first': first,
        if (last != null) r'last': last,
        if (after != null) r'after': after,
        if (before != null) r'before': before,
        if (filter != null) r'filter': filter,
        if (orderBy != null) r'orderBy': orderBy,
      });

  Variables$Query$NotificationTypesCollection._(this._$data);

  factory Variables$Query$NotificationTypesCollection.fromJson(
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
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = (l$after as dynamic?);
    }
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = (l$before as dynamic?);
    }
    if (data.containsKey('filter')) {
      final l$filter = data['filter'];
      result$data['filter'] = l$filter == null
          ? null
          : Input$NotificationTypesFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$NotificationTypesOrderBy.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$NotificationTypesCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get after => (_$data['after'] as dynamic?);

  dynamic? get before => (_$data['before'] as dynamic?);

  Input$NotificationTypesFilter? get filter =>
      (_$data['filter'] as Input$NotificationTypesFilter?);

  List<Input$NotificationTypesOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$NotificationTypesOrderBy>?);

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
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after;
    }
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before;
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

  CopyWith$Variables$Query$NotificationTypesCollection<
          Variables$Query$NotificationTypesCollection>
      get copyWith => CopyWith$Variables$Query$NotificationTypesCollection(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$NotificationTypesCollection ||
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
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
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
    final l$after = after;
    final l$before = before;
    final l$filter = filter;
    final l$orderBy = orderBy;
    return Object.hashAll([
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('filter') ? l$filter : const {},
      _$data.containsKey('orderBy')
          ? l$orderBy == null
              ? null
              : Object.hashAll(l$orderBy.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$NotificationTypesCollection<TRes> {
  factory CopyWith$Variables$Query$NotificationTypesCollection(
    Variables$Query$NotificationTypesCollection instance,
    TRes Function(Variables$Query$NotificationTypesCollection) then,
  ) = _CopyWithImpl$Variables$Query$NotificationTypesCollection;

  factory CopyWith$Variables$Query$NotificationTypesCollection.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$NotificationTypesCollection;

  TRes call({
    int? first,
    int? last,
    dynamic? after,
    dynamic? before,
    Input$NotificationTypesFilter? filter,
    List<Input$NotificationTypesOrderBy>? orderBy,
  });
}

class _CopyWithImpl$Variables$Query$NotificationTypesCollection<TRes>
    implements CopyWith$Variables$Query$NotificationTypesCollection<TRes> {
  _CopyWithImpl$Variables$Query$NotificationTypesCollection(
    this._instance,
    this._then,
  );

  final Variables$Query$NotificationTypesCollection _instance;

  final TRes Function(Variables$Query$NotificationTypesCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? first = _undefined,
    Object? last = _undefined,
    Object? after = _undefined,
    Object? before = _undefined,
    Object? filter = _undefined,
    Object? orderBy = _undefined,
  }) =>
      _then(Variables$Query$NotificationTypesCollection._({
        ..._instance._$data,
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
        if (after != _undefined) 'after': (after as dynamic?),
        if (before != _undefined) 'before': (before as dynamic?),
        if (filter != _undefined)
          'filter': (filter as Input$NotificationTypesFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$NotificationTypesOrderBy>?),
      }));
}

class _CopyWithStubImpl$Variables$Query$NotificationTypesCollection<TRes>
    implements CopyWith$Variables$Query$NotificationTypesCollection<TRes> {
  _CopyWithStubImpl$Variables$Query$NotificationTypesCollection(this._res);

  TRes _res;

  call({
    int? first,
    int? last,
    dynamic? after,
    dynamic? before,
    Input$NotificationTypesFilter? filter,
    List<Input$NotificationTypesOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$NotificationTypesCollection {
  Query$NotificationTypesCollection({
    this.notificationTypesCollection,
    this.$__typename = 'Query',
  });

  factory Query$NotificationTypesCollection.fromJson(
      Map<String, dynamic> json) {
    final l$notificationTypesCollection = json['notificationTypesCollection'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection(
      notificationTypesCollection: l$notificationTypesCollection == null
          ? null
          : Query$NotificationTypesCollection$notificationTypesCollection
              .fromJson(
                  (l$notificationTypesCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationTypesCollection$notificationTypesCollection?
      notificationTypesCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationTypesCollection = notificationTypesCollection;
    _resultData['notificationTypesCollection'] =
        l$notificationTypesCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationTypesCollection = notificationTypesCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notificationTypesCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$NotificationTypesCollection ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationTypesCollection = notificationTypesCollection;
    final lOther$notificationTypesCollection =
        other.notificationTypesCollection;
    if (l$notificationTypesCollection != lOther$notificationTypesCollection) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$NotificationTypesCollection
    on Query$NotificationTypesCollection {
  CopyWith$Query$NotificationTypesCollection<Query$NotificationTypesCollection>
      get copyWith => CopyWith$Query$NotificationTypesCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection<TRes> {
  factory CopyWith$Query$NotificationTypesCollection(
    Query$NotificationTypesCollection instance,
    TRes Function(Query$NotificationTypesCollection) then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection;

  factory CopyWith$Query$NotificationTypesCollection.stub(TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection;

  TRes call({
    Query$NotificationTypesCollection$notificationTypesCollection?
        notificationTypesCollection,
    String? $__typename,
  });
  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<TRes>
      get notificationTypesCollection;
}

class _CopyWithImpl$Query$NotificationTypesCollection<TRes>
    implements CopyWith$Query$NotificationTypesCollection<TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection _instance;

  final TRes Function(Query$NotificationTypesCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? notificationTypesCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationTypesCollection(
        notificationTypesCollection: notificationTypesCollection == _undefined
            ? _instance.notificationTypesCollection
            : (notificationTypesCollection
                as Query$NotificationTypesCollection$notificationTypesCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<TRes>
      get notificationTypesCollection {
    final local$notificationTypesCollection =
        _instance.notificationTypesCollection;
    return local$notificationTypesCollection == null
        ? CopyWith$Query$NotificationTypesCollection$notificationTypesCollection
            .stub(_then(_instance))
        : CopyWith$Query$NotificationTypesCollection$notificationTypesCollection(
            local$notificationTypesCollection,
            (e) => call(notificationTypesCollection: e));
  }
}

class _CopyWithStubImpl$Query$NotificationTypesCollection<TRes>
    implements CopyWith$Query$NotificationTypesCollection<TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection(this._res);

  TRes _res;

  call({
    Query$NotificationTypesCollection$notificationTypesCollection?
        notificationTypesCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<TRes>
      get notificationTypesCollection =>
          CopyWith$Query$NotificationTypesCollection$notificationTypesCollection
              .stub(_res);
}

const documentNodeQueryNotificationTypesCollection = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'NotificationTypesCollection'),
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
        variable: VariableNode(name: NameNode(value: 'after')),
        type: NamedTypeNode(
          name: NameNode(value: 'Cursor'),
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
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'NotificationTypesFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationTypesOrderBy'),
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
        name: NameNode(value: 'notificationTypesCollection'),
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
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'after')),
          ),
          ArgumentNode(
            name: NameNode(value: 'before'),
            value: VariableNode(name: NameNode(value: 'before')),
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
                    name: NameNode(value: 'NotificationType'),
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
  fragmentDefinitionNotificationType,
]);
Query$NotificationTypesCollection _parserFn$Query$NotificationTypesCollection(
        Map<String, dynamic> data) =>
    Query$NotificationTypesCollection.fromJson(data);
typedef OnQueryComplete$Query$NotificationTypesCollection = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Query$NotificationTypesCollection?,
);

class Options$Query$NotificationTypesCollection
    extends graphql.QueryOptions<Query$NotificationTypesCollection> {
  Options$Query$NotificationTypesCollection({
    String? operationName,
    Variables$Query$NotificationTypesCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationTypesCollection? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$NotificationTypesCollection? onComplete,
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
                        : _parserFn$Query$NotificationTypesCollection(data),
                  ),
          onError: onError,
          document: documentNodeQueryNotificationTypesCollection,
          parserFn: _parserFn$Query$NotificationTypesCollection,
        );

  final OnQueryComplete$Query$NotificationTypesCollection? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$NotificationTypesCollection
    extends graphql.WatchQueryOptions<Query$NotificationTypesCollection> {
  WatchOptions$Query$NotificationTypesCollection({
    String? operationName,
    Variables$Query$NotificationTypesCollection? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$NotificationTypesCollection? typedOptimisticResult,
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
          document: documentNodeQueryNotificationTypesCollection,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$NotificationTypesCollection,
        );
}

class FetchMoreOptions$Query$NotificationTypesCollection
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$NotificationTypesCollection({
    required graphql.UpdateQuery updateQuery,
    Variables$Query$NotificationTypesCollection? variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables?.toJson() ?? {},
          document: documentNodeQueryNotificationTypesCollection,
        );
}

extension ClientExtension$Query$NotificationTypesCollection
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$NotificationTypesCollection>>
      query$NotificationTypesCollection(
              [Options$Query$NotificationTypesCollection? options]) async =>
          await this
              .query(options ?? Options$Query$NotificationTypesCollection());
  graphql.ObservableQuery<Query$NotificationTypesCollection>
      watchQuery$NotificationTypesCollection(
              [WatchOptions$Query$NotificationTypesCollection? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Query$NotificationTypesCollection());
  void writeQuery$NotificationTypesCollection({
    required Query$NotificationTypesCollection data,
    Variables$Query$NotificationTypesCollection? variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryNotificationTypesCollection),
          variables: variables?.toJson() ?? const {},
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$NotificationTypesCollection? readQuery$NotificationTypesCollection({
    Variables$Query$NotificationTypesCollection? variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(
            document: documentNodeQueryNotificationTypesCollection),
        variables: variables?.toJson() ?? const {},
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$NotificationTypesCollection.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$NotificationTypesCollection>
    useQuery$NotificationTypesCollection(
            [Options$Query$NotificationTypesCollection? options]) =>
        graphql_flutter
            .useQuery(options ?? Options$Query$NotificationTypesCollection());
graphql.ObservableQuery<Query$NotificationTypesCollection>
    useWatchQuery$NotificationTypesCollection(
            [WatchOptions$Query$NotificationTypesCollection? options]) =>
        graphql_flutter.useWatchQuery(
            options ?? WatchOptions$Query$NotificationTypesCollection());

class Query$NotificationTypesCollection$Widget
    extends graphql_flutter.Query<Query$NotificationTypesCollection> {
  Query$NotificationTypesCollection$Widget({
    widgets.Key? key,
    Options$Query$NotificationTypesCollection? options,
    required graphql_flutter.QueryBuilder<Query$NotificationTypesCollection>
        builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$NotificationTypesCollection(),
          builder: builder,
        );
}

class Query$NotificationTypesCollection$notificationTypesCollection {
  Query$NotificationTypesCollection$notificationTypesCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'NotificationTypesConnection',
  });

  factory Query$NotificationTypesCollection$notificationTypesCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection$notificationTypesCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$NotificationTypesCollection$notificationTypesCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$NotificationTypesCollection$notificationTypesCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$NotificationTypesCollection$notificationTypesCollection$edges>
      edges;

  final Query$NotificationTypesCollection$notificationTypesCollection$pageInfo
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
            is! Query$NotificationTypesCollection$notificationTypesCollection ||
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

extension UtilityExtension$Query$NotificationTypesCollection$notificationTypesCollection
    on Query$NotificationTypesCollection$notificationTypesCollection {
  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<
          Query$NotificationTypesCollection$notificationTypesCollection>
      get copyWith =>
          CopyWith$Query$NotificationTypesCollection$notificationTypesCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<
    TRes> {
  factory CopyWith$Query$NotificationTypesCollection$notificationTypesCollection(
    Query$NotificationTypesCollection$notificationTypesCollection instance,
    TRes Function(Query$NotificationTypesCollection$notificationTypesCollection)
        then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection;

  factory CopyWith$Query$NotificationTypesCollection$notificationTypesCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection;

  TRes call({
    List<Query$NotificationTypesCollection$notificationTypesCollection$edges>?
        edges,
    Query$NotificationTypesCollection$notificationTypesCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$NotificationTypesCollection$notificationTypesCollection$edges> Function(
              Iterable<
                  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges<
                      Query$NotificationTypesCollection$notificationTypesCollection$edges>>)
          _fn);
  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<
            TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection$notificationTypesCollection _instance;

  final TRes Function(
      Query$NotificationTypesCollection$notificationTypesCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationTypesCollection$notificationTypesCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$NotificationTypesCollection$notificationTypesCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$NotificationTypesCollection$notificationTypesCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$NotificationTypesCollection$notificationTypesCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges<
                          Query$NotificationTypesCollection$notificationTypesCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypesCollection<
            TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection(
      this._res);

  TRes _res;

  call({
    List<Query$NotificationTypesCollection$notificationTypesCollection$edges>?
        edges,
    Query$NotificationTypesCollection$notificationTypesCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo
              .stub(_res);
}

class Query$NotificationTypesCollection$notificationTypesCollection$edges {
  Query$NotificationTypesCollection$notificationTypesCollection$edges({
    required this.node,
    this.$__typename = 'NotificationTypesEdge',
  });

  factory Query$NotificationTypesCollection$notificationTypesCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection$notificationTypesCollection$edges(
      node:
          Fragment$NotificationType.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$NotificationType node;

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
            is! Query$NotificationTypesCollection$notificationTypesCollection$edges ||
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

extension UtilityExtension$Query$NotificationTypesCollection$notificationTypesCollection$edges
    on Query$NotificationTypesCollection$notificationTypesCollection$edges {
  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges<
          Query$NotificationTypesCollection$notificationTypesCollection$edges>
      get copyWith =>
          CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges<
    TRes> {
  factory CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges(
    Query$NotificationTypesCollection$notificationTypesCollection$edges
        instance,
    TRes Function(
            Query$NotificationTypesCollection$notificationTypesCollection$edges)
        then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection$edges;

  factory CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection$edges;

  TRes call({
    Fragment$NotificationType? node,
    String? $__typename,
  });
  CopyWith$Fragment$NotificationType<TRes> get node;
}

class _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges<
            TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection$edges(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection$notificationTypesCollection$edges
      _instance;

  final TRes Function(
          Query$NotificationTypesCollection$notificationTypesCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationTypesCollection$notificationTypesCollection$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$NotificationType),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$NotificationType<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$NotificationType(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection$edges(
      this._res);

  TRes _res;

  call({
    Fragment$NotificationType? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$NotificationType<TRes> get node =>
      CopyWith$Fragment$NotificationType.stub(_res);
}

class Query$NotificationTypesCollection$notificationTypesCollection$pageInfo {
  Query$NotificationTypesCollection$notificationTypesCollection$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$NotificationTypesCollection$notificationTypesCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
      hasNextPage: (l$hasNextPage as bool),
      hasPreviousPage: (l$hasPreviousPage as bool),
      startCursor: (l$startCursor as String?),
      endCursor: (l$endCursor as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasNextPage;

  final bool hasPreviousPage;

  final String? startCursor;

  final String? endCursor;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    _resultData['hasPreviousPage'] = l$hasPreviousPage;
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
    final l$hasNextPage = hasNextPage;
    final l$hasPreviousPage = hasPreviousPage;
    final l$startCursor = startCursor;
    final l$endCursor = endCursor;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasNextPage,
      l$hasPreviousPage,
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
            is! Query$NotificationTypesCollection$notificationTypesCollection$pageInfo ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo
    on Query$NotificationTypesCollection$notificationTypesCollection$pageInfo {
  CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
          Query$NotificationTypesCollection$notificationTypesCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
    Query$NotificationTypesCollection$notificationTypesCollection$pageInfo
        instance,
    TRes Function(
            Query$NotificationTypesCollection$notificationTypesCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo;

  factory CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection$notificationTypesCollection$pageInfo
      _instance;

  final TRes Function(
          Query$NotificationTypesCollection$notificationTypesCollection$pageInfo)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        hasPreviousPage:
            hasPreviousPage == _undefined || hasPreviousPage == null
                ? _instance.hasPreviousPage
                : (hasPreviousPage as bool),
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

class _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypesCollection$pageInfo(
      this._res);

  TRes _res;

  call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  }) =>
      _res;
}
