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
    this.$__typename = 'NotificationType',
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
    if (!(other is Fragment$NotificationType) ||
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
    name: NameNode(value: 'NotificationType'),
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
    required this.applicationId,
    this.userId,
    required this.notificationTypeId,
    required this.notificationType,
    required this.title,
    this.subtitle,
    this.iconUrl,
    required this.isRead,
    required this.messageMarkdown,
    this.data,
    required this.createdAt,
    this.$__typename = 'Notification',
  });

  factory Fragment$Notification.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$applicationId = json['applicationId'];
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
      applicationId: (l$applicationId as String),
      userId: (l$userId as String?),
      notificationTypeId: (l$notificationTypeId as String),
      notificationType: Fragment$NotificationType.fromJson(
          (l$notificationType as Map<String, dynamic>)),
      title: (l$title as String),
      subtitle: (l$subtitle as String?),
      iconUrl: (l$iconUrl as String?),
      isRead: (l$isRead as bool),
      messageMarkdown: (l$messageMarkdown as String),
      data: l$data == null ? null : jsonFieldFromJson(l$data),
      createdAt: DateTime.parse((l$createdAt as String)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String applicationId;

  final String? userId;

  final String notificationTypeId;

  final Fragment$NotificationType notificationType;

  final String title;

  final String? subtitle;

  final String? iconUrl;

  final bool isRead;

  final String messageMarkdown;

  final Map<String, dynamic>? data;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$applicationId = applicationId;
    _resultData['applicationId'] = l$applicationId;
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
    final l$applicationId = applicationId;
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
      l$applicationId,
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
    if (!(other is Fragment$Notification) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$applicationId = applicationId;
    final lOther$applicationId = other.applicationId;
    if (l$applicationId != lOther$applicationId) {
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
    String? applicationId,
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
    Object? applicationId = _undefined,
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
        applicationId: applicationId == _undefined || applicationId == null
            ? _instance.applicationId
            : (applicationId as String),
        userId: userId == _undefined ? _instance.userId : (userId as String?),
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
        subtitle:
            subtitle == _undefined ? _instance.subtitle : (subtitle as String?),
        iconUrl:
            iconUrl == _undefined ? _instance.iconUrl : (iconUrl as String?),
        isRead: isRead == _undefined || isRead == null
            ? _instance.isRead
            : (isRead as bool),
        messageMarkdown:
            messageMarkdown == _undefined || messageMarkdown == null
                ? _instance.messageMarkdown
                : (messageMarkdown as String),
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
    String? applicationId,
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
    name: NameNode(value: 'Notification'),
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
      name: NameNode(value: 'applicationId'),
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
    Input$NotificationFilter? filter,
    List<Input$NotificationOrderBy>? orderBy,
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
          : Input$NotificationFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) =>
              Input$NotificationOrderBy.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    return Variables$Query$NotificationCollection._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  dynamic? get after => (_$data['after'] as dynamic?);

  dynamic? get before => (_$data['before'] as dynamic?);

  Input$NotificationFilter? get filter =>
      (_$data['filter'] as Input$NotificationFilter?);

  List<Input$NotificationOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$NotificationOrderBy>?);

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
    if (!(other is Variables$Query$NotificationCollection) ||
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
    Input$NotificationFilter? filter,
    List<Input$NotificationOrderBy>? orderBy,
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
          'filter': (filter as Input$NotificationFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$NotificationOrderBy>?),
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
    Input$NotificationFilter? filter,
    List<Input$NotificationOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$NotificationCollection {
  Query$NotificationCollection({
    this.notificationCollection,
    this.$__typename = 'Query',
  });

  factory Query$NotificationCollection.fromJson(Map<String, dynamic> json) {
    final l$notificationCollection = json['notificationCollection'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection(
      notificationCollection: l$notificationCollection == null
          ? null
          : Query$NotificationCollection$notificationCollection.fromJson(
              (l$notificationCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationCollection$notificationCollection?
      notificationCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationCollection = notificationCollection;
    _resultData['notificationCollection'] = l$notificationCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationCollection = notificationCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notificationCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NotificationCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationCollection = notificationCollection;
    final lOther$notificationCollection = other.notificationCollection;
    if (l$notificationCollection != lOther$notificationCollection) {
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
    Query$NotificationCollection$notificationCollection? notificationCollection,
    String? $__typename,
  });
  CopyWith$Query$NotificationCollection$notificationCollection<TRes>
      get notificationCollection;
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
    Object? notificationCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection(
        notificationCollection: notificationCollection == _undefined
            ? _instance.notificationCollection
            : (notificationCollection
                as Query$NotificationCollection$notificationCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NotificationCollection$notificationCollection<TRes>
      get notificationCollection {
    final local$notificationCollection = _instance.notificationCollection;
    return local$notificationCollection == null
        ? CopyWith$Query$NotificationCollection$notificationCollection.stub(
            _then(_instance))
        : CopyWith$Query$NotificationCollection$notificationCollection(
            local$notificationCollection,
            (e) => call(notificationCollection: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCollection<TRes>
    implements CopyWith$Query$NotificationCollection<TRes> {
  _CopyWithStubImpl$Query$NotificationCollection(this._res);

  TRes _res;

  call({
    Query$NotificationCollection$notificationCollection? notificationCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NotificationCollection$notificationCollection<TRes>
      get notificationCollection =>
          CopyWith$Query$NotificationCollection$notificationCollection.stub(
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
          name: NameNode(value: 'NotificationFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationOrderBy'),
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
        name: NameNode(value: 'notificationCollection'),
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

class Query$NotificationCollection$notificationCollection {
  Query$NotificationCollection$notificationCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'NotificationConnection',
  });

  factory Query$NotificationCollection$notificationCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection$notificationCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$NotificationCollection$notificationCollection$edges
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$NotificationCollection$notificationCollection$pageInfo.fromJson(
              (l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$NotificationCollection$notificationCollection$edges> edges;

  final Query$NotificationCollection$notificationCollection$pageInfo pageInfo;

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
    if (!(other is Query$NotificationCollection$notificationCollection) ||
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

extension UtilityExtension$Query$NotificationCollection$notificationCollection
    on Query$NotificationCollection$notificationCollection {
  CopyWith$Query$NotificationCollection$notificationCollection<
          Query$NotificationCollection$notificationCollection>
      get copyWith =>
          CopyWith$Query$NotificationCollection$notificationCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection$notificationCollection<
    TRes> {
  factory CopyWith$Query$NotificationCollection$notificationCollection(
    Query$NotificationCollection$notificationCollection instance,
    TRes Function(Query$NotificationCollection$notificationCollection) then,
  ) = _CopyWithImpl$Query$NotificationCollection$notificationCollection;

  factory CopyWith$Query$NotificationCollection$notificationCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection$notificationCollection;

  TRes call({
    List<Query$NotificationCollection$notificationCollection$edges>? edges,
    Query$NotificationCollection$notificationCollection$pageInfo? pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$NotificationCollection$notificationCollection$edges> Function(
              Iterable<
                  CopyWith$Query$NotificationCollection$notificationCollection$edges<
                      Query$NotificationCollection$notificationCollection$edges>>)
          _fn);
  CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<TRes>
      get pageInfo;
}

class _CopyWithImpl$Query$NotificationCollection$notificationCollection<TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationCollection<TRes> {
  _CopyWithImpl$Query$NotificationCollection$notificationCollection(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection$notificationCollection _instance;

  final TRes Function(Query$NotificationCollection$notificationCollection)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection$notificationCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$NotificationCollection$notificationCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$NotificationCollection$notificationCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$NotificationCollection$notificationCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$NotificationCollection$notificationCollection$edges<
                          Query$NotificationCollection$notificationCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$NotificationCollection$notificationCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<TRes>
      get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$NotificationCollection$notificationCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$NotificationCollection$notificationCollection<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationCollection<TRes> {
  _CopyWithStubImpl$Query$NotificationCollection$notificationCollection(
      this._res);

  TRes _res;

  call({
    List<Query$NotificationCollection$notificationCollection$edges>? edges,
    Query$NotificationCollection$notificationCollection$pageInfo? pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<TRes>
      get pageInfo =>
          CopyWith$Query$NotificationCollection$notificationCollection$pageInfo
              .stub(_res);
}

class Query$NotificationCollection$notificationCollection$edges {
  Query$NotificationCollection$notificationCollection$edges({
    required this.node,
    this.$__typename = 'NotificationEdge',
  });

  factory Query$NotificationCollection$notificationCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection$notificationCollection$edges(
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
    if (!(other is Query$NotificationCollection$notificationCollection$edges) ||
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

extension UtilityExtension$Query$NotificationCollection$notificationCollection$edges
    on Query$NotificationCollection$notificationCollection$edges {
  CopyWith$Query$NotificationCollection$notificationCollection$edges<
          Query$NotificationCollection$notificationCollection$edges>
      get copyWith =>
          CopyWith$Query$NotificationCollection$notificationCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection$notificationCollection$edges<
    TRes> {
  factory CopyWith$Query$NotificationCollection$notificationCollection$edges(
    Query$NotificationCollection$notificationCollection$edges instance,
    TRes Function(Query$NotificationCollection$notificationCollection$edges)
        then,
  ) = _CopyWithImpl$Query$NotificationCollection$notificationCollection$edges;

  factory CopyWith$Query$NotificationCollection$notificationCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection$notificationCollection$edges;

  TRes call({
    Fragment$Notification? node,
    String? $__typename,
  });
  CopyWith$Fragment$Notification<TRes> get node;
}

class _CopyWithImpl$Query$NotificationCollection$notificationCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationCollection$edges<
            TRes> {
  _CopyWithImpl$Query$NotificationCollection$notificationCollection$edges(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection$notificationCollection$edges _instance;

  final TRes Function(Query$NotificationCollection$notificationCollection$edges)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection$notificationCollection$edges(
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

class _CopyWithStubImpl$Query$NotificationCollection$notificationCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$NotificationCollection$notificationCollection$edges(
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

class Query$NotificationCollection$notificationCollection$pageInfo {
  Query$NotificationCollection$notificationCollection$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$NotificationCollection$notificationCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$NotificationCollection$notificationCollection$pageInfo(
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
    if (!(other
            is Query$NotificationCollection$notificationCollection$pageInfo) ||
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

extension UtilityExtension$Query$NotificationCollection$notificationCollection$pageInfo
    on Query$NotificationCollection$notificationCollection$pageInfo {
  CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<
          Query$NotificationCollection$notificationCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$NotificationCollection$notificationCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$NotificationCollection$notificationCollection$pageInfo(
    Query$NotificationCollection$notificationCollection$pageInfo instance,
    TRes Function(Query$NotificationCollection$notificationCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$NotificationCollection$notificationCollection$pageInfo;

  factory CopyWith$Query$NotificationCollection$notificationCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationCollection$notificationCollection$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NotificationCollection$notificationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$NotificationCollection$notificationCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$NotificationCollection$notificationCollection$pageInfo _instance;

  final TRes Function(
      Query$NotificationCollection$notificationCollection$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasNextPage = _undefined,
    Object? hasPreviousPage = _undefined,
    Object? startCursor = _undefined,
    Object? endCursor = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationCollection$notificationCollection$pageInfo(
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

class _CopyWithStubImpl$Query$NotificationCollection$notificationCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationCollection$notificationCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$NotificationCollection$notificationCollection$pageInfo(
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
    Input$NotificationTypeFilter? filter,
    List<Input$NotificationTypeOrderBy>? orderBy,
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
          : Input$NotificationTypeFilter.fromJson(
              (l$filter as Map<String, dynamic>));
    }
    if (data.containsKey('orderBy')) {
      final l$orderBy = data['orderBy'];
      result$data['orderBy'] = (l$orderBy as List<dynamic>?)
          ?.map((e) => Input$NotificationTypeOrderBy.fromJson(
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

  Input$NotificationTypeFilter? get filter =>
      (_$data['filter'] as Input$NotificationTypeFilter?);

  List<Input$NotificationTypeOrderBy>? get orderBy =>
      (_$data['orderBy'] as List<Input$NotificationTypeOrderBy>?);

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
    if (!(other is Variables$Query$NotificationTypesCollection) ||
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
    Input$NotificationTypeFilter? filter,
    List<Input$NotificationTypeOrderBy>? orderBy,
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
          'filter': (filter as Input$NotificationTypeFilter?),
        if (orderBy != _undefined)
          'orderBy': (orderBy as List<Input$NotificationTypeOrderBy>?),
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
    Input$NotificationTypeFilter? filter,
    List<Input$NotificationTypeOrderBy>? orderBy,
  }) =>
      _res;
}

class Query$NotificationTypesCollection {
  Query$NotificationTypesCollection({
    this.notificationTypeCollection,
    this.$__typename = 'Query',
  });

  factory Query$NotificationTypesCollection.fromJson(
      Map<String, dynamic> json) {
    final l$notificationTypeCollection = json['notificationTypeCollection'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection(
      notificationTypeCollection: l$notificationTypeCollection == null
          ? null
          : Query$NotificationTypesCollection$notificationTypeCollection
              .fromJson((l$notificationTypeCollection as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$NotificationTypesCollection$notificationTypeCollection?
      notificationTypeCollection;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$notificationTypeCollection = notificationTypeCollection;
    _resultData['notificationTypeCollection'] =
        l$notificationTypeCollection?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$notificationTypeCollection = notificationTypeCollection;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$notificationTypeCollection,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$NotificationTypesCollection) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$notificationTypeCollection = notificationTypeCollection;
    final lOther$notificationTypeCollection = other.notificationTypeCollection;
    if (l$notificationTypeCollection != lOther$notificationTypeCollection) {
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
    Query$NotificationTypesCollection$notificationTypeCollection?
        notificationTypeCollection,
    String? $__typename,
  });
  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<TRes>
      get notificationTypeCollection;
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
    Object? notificationTypeCollection = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationTypesCollection(
        notificationTypeCollection: notificationTypeCollection == _undefined
            ? _instance.notificationTypeCollection
            : (notificationTypeCollection
                as Query$NotificationTypesCollection$notificationTypeCollection?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<TRes>
      get notificationTypeCollection {
    final local$notificationTypeCollection =
        _instance.notificationTypeCollection;
    return local$notificationTypeCollection == null
        ? CopyWith$Query$NotificationTypesCollection$notificationTypeCollection
            .stub(_then(_instance))
        : CopyWith$Query$NotificationTypesCollection$notificationTypeCollection(
            local$notificationTypeCollection,
            (e) => call(notificationTypeCollection: e));
  }
}

class _CopyWithStubImpl$Query$NotificationTypesCollection<TRes>
    implements CopyWith$Query$NotificationTypesCollection<TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection(this._res);

  TRes _res;

  call({
    Query$NotificationTypesCollection$notificationTypeCollection?
        notificationTypeCollection,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<TRes>
      get notificationTypeCollection =>
          CopyWith$Query$NotificationTypesCollection$notificationTypeCollection
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
          name: NameNode(value: 'NotificationTypeFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderBy')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'NotificationTypeOrderBy'),
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
        name: NameNode(value: 'notificationTypeCollection'),
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

class Query$NotificationTypesCollection$notificationTypeCollection {
  Query$NotificationTypesCollection$notificationTypeCollection({
    required this.edges,
    required this.pageInfo,
    this.$__typename = 'NotificationTypeConnection',
  });

  factory Query$NotificationTypesCollection$notificationTypeCollection.fromJson(
      Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$pageInfo = json['pageInfo'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection$notificationTypeCollection(
      edges: (l$edges as List<dynamic>)
          .map((e) =>
              Query$NotificationTypesCollection$notificationTypeCollection$edges
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pageInfo:
          Query$NotificationTypesCollection$notificationTypeCollection$pageInfo
              .fromJson((l$pageInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$NotificationTypesCollection$notificationTypeCollection$edges>
      edges;

  final Query$NotificationTypesCollection$notificationTypeCollection$pageInfo
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
            is Query$NotificationTypesCollection$notificationTypeCollection) ||
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

extension UtilityExtension$Query$NotificationTypesCollection$notificationTypeCollection
    on Query$NotificationTypesCollection$notificationTypeCollection {
  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<
          Query$NotificationTypesCollection$notificationTypeCollection>
      get copyWith =>
          CopyWith$Query$NotificationTypesCollection$notificationTypeCollection(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<
    TRes> {
  factory CopyWith$Query$NotificationTypesCollection$notificationTypeCollection(
    Query$NotificationTypesCollection$notificationTypeCollection instance,
    TRes Function(Query$NotificationTypesCollection$notificationTypeCollection)
        then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection;

  factory CopyWith$Query$NotificationTypesCollection$notificationTypeCollection.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection;

  TRes call({
    List<Query$NotificationTypesCollection$notificationTypeCollection$edges>?
        edges,
    Query$NotificationTypesCollection$notificationTypeCollection$pageInfo?
        pageInfo,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$NotificationTypesCollection$notificationTypeCollection$edges> Function(
              Iterable<
                  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges<
                      Query$NotificationTypesCollection$notificationTypeCollection$edges>>)
          _fn);
  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
      TRes> get pageInfo;
}

class _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<
            TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection$notificationTypeCollection _instance;

  final TRes Function(
      Query$NotificationTypesCollection$notificationTypeCollection) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? pageInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationTypesCollection$notificationTypeCollection(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<
                Query$NotificationTypesCollection$notificationTypeCollection$edges>),
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo
                as Query$NotificationTypesCollection$notificationTypeCollection$pageInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$NotificationTypesCollection$notificationTypeCollection$edges> Function(
                  Iterable<
                      CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges<
                          Query$NotificationTypesCollection$notificationTypeCollection$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges.map((e) =>
              CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
      TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }
}

class _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypeCollection<
            TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection(
      this._res);

  TRes _res;

  call({
    List<Query$NotificationTypesCollection$notificationTypeCollection$edges>?
        edges,
    Query$NotificationTypesCollection$notificationTypeCollection$pageInfo?
        pageInfo,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;

  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
          TRes>
      get pageInfo =>
          CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo
              .stub(_res);
}

class Query$NotificationTypesCollection$notificationTypeCollection$edges {
  Query$NotificationTypesCollection$notificationTypeCollection$edges({
    required this.node,
    this.$__typename = 'NotificationTypeEdge',
  });

  factory Query$NotificationTypesCollection$notificationTypeCollection$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection$notificationTypeCollection$edges(
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
    if (!(other
            is Query$NotificationTypesCollection$notificationTypeCollection$edges) ||
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

extension UtilityExtension$Query$NotificationTypesCollection$notificationTypeCollection$edges
    on Query$NotificationTypesCollection$notificationTypeCollection$edges {
  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges<
          Query$NotificationTypesCollection$notificationTypeCollection$edges>
      get copyWith =>
          CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges<
    TRes> {
  factory CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges(
    Query$NotificationTypesCollection$notificationTypeCollection$edges instance,
    TRes Function(
            Query$NotificationTypesCollection$notificationTypeCollection$edges)
        then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection$edges;

  factory CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection$edges;

  TRes call({
    Fragment$NotificationType? node,
    String? $__typename,
  });
  CopyWith$Fragment$NotificationType<TRes> get node;
}

class _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges<
            TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection$edges(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection$notificationTypeCollection$edges
      _instance;

  final TRes Function(
      Query$NotificationTypesCollection$notificationTypeCollection$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$NotificationTypesCollection$notificationTypeCollection$edges(
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

class _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection$edges<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$edges<
            TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection$edges(
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

class Query$NotificationTypesCollection$notificationTypeCollection$pageInfo {
  Query$NotificationTypesCollection$notificationTypeCollection$pageInfo({
    required this.hasNextPage,
    required this.hasPreviousPage,
    this.startCursor,
    this.endCursor,
    this.$__typename = 'PageInfo',
  });

  factory Query$NotificationTypesCollection$notificationTypeCollection$pageInfo.fromJson(
      Map<String, dynamic> json) {
    final l$hasNextPage = json['hasNextPage'];
    final l$hasPreviousPage = json['hasPreviousPage'];
    final l$startCursor = json['startCursor'];
    final l$endCursor = json['endCursor'];
    final l$$__typename = json['__typename'];
    return Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
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
    if (!(other
            is Query$NotificationTypesCollection$notificationTypeCollection$pageInfo) ||
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

extension UtilityExtension$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo
    on Query$NotificationTypesCollection$notificationTypeCollection$pageInfo {
  CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
          Query$NotificationTypesCollection$notificationTypeCollection$pageInfo>
      get copyWith =>
          CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
    TRes> {
  factory CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
    Query$NotificationTypesCollection$notificationTypeCollection$pageInfo
        instance,
    TRes Function(
            Query$NotificationTypesCollection$notificationTypeCollection$pageInfo)
        then,
  ) = _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo;

  factory CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo.stub(
          TRes res) =
      _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo;

  TRes call({
    bool? hasNextPage,
    bool? hasPreviousPage,
    String? startCursor,
    String? endCursor,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
            TRes> {
  _CopyWithImpl$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
    this._instance,
    this._then,
  );

  final Query$NotificationTypesCollection$notificationTypeCollection$pageInfo
      _instance;

  final TRes Function(
          Query$NotificationTypesCollection$notificationTypeCollection$pageInfo)
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
          Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
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

class _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
        TRes>
    implements
        CopyWith$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo<
            TRes> {
  _CopyWithStubImpl$Query$NotificationTypesCollection$notificationTypeCollection$pageInfo(
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
