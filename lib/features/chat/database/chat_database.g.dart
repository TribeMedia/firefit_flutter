// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'chat_database.dart';

// ignore_for_file: type=lint
class $MessagesTable extends Messages with TableInfo<$MessagesTable, Message> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MessagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _messageIdMeta =
      const VerificationMeta('messageId');
  @override
  late final GeneratedColumn<String> messageId = GeneratedColumn<String>(
      'message_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorIdMeta =
      const VerificationMeta('authorId');
  @override
  late final GeneratedColumn<int> authorId = GeneratedColumn<int>(
      'author_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'message_content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _timestampMeta =
      const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<int> timestamp = GeneratedColumn<int>(
      'created_at', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _embeddingMeta =
      const VerificationMeta('embedding');
  @override
  late final GeneratedColumn<Uint8List> embedding = GeneratedColumn<Uint8List>(
      'embedding', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  static const VerificationMeta _contextHashMeta =
      const VerificationMeta('contextHash');
  @override
  late final GeneratedColumn<String> contextHash = GeneratedColumn<String>(
      'context_hash', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, messageId, authorId, content, timestamp, embedding, contextHash];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'messages';
  @override
  VerificationContext validateIntegrity(Insertable<Message> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('message_id')) {
      context.handle(_messageIdMeta,
          messageId.isAcceptableOrUnknown(data['message_id']!, _messageIdMeta));
    } else if (isInserting) {
      context.missing(_messageIdMeta);
    }
    if (data.containsKey('author_id')) {
      context.handle(_authorIdMeta,
          authorId.isAcceptableOrUnknown(data['author_id']!, _authorIdMeta));
    } else if (isInserting) {
      context.missing(_authorIdMeta);
    }
    if (data.containsKey('message_content')) {
      context.handle(
          _contentMeta,
          content.isAcceptableOrUnknown(
              data['message_content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['created_at']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    if (data.containsKey('embedding')) {
      context.handle(_embeddingMeta,
          embedding.isAcceptableOrUnknown(data['embedding']!, _embeddingMeta));
    }
    if (data.containsKey('context_hash')) {
      context.handle(
          _contextHashMeta,
          contextHash.isAcceptableOrUnknown(
              data['context_hash']!, _contextHashMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Message map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Message(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      messageId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}message_id'])!,
      authorId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}author_id'])!,
      content: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}message_content'])!,
      timestamp: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}created_at'])!,
      embedding: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}embedding']),
      contextHash: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}context_hash']),
    );
  }

  @override
  $MessagesTable createAlias(String alias) {
    return $MessagesTable(attachedDatabase, alias);
  }
}

class Message extends DataClass implements Insertable<Message> {
  final int id;
  final String messageId;
  final int authorId;
  final String content;
  final int timestamp;
  final Uint8List? embedding;
  final String? contextHash;
  const Message(
      {required this.id,
      required this.messageId,
      required this.authorId,
      required this.content,
      required this.timestamp,
      this.embedding,
      this.contextHash});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['message_id'] = Variable<String>(messageId);
    map['author_id'] = Variable<int>(authorId);
    map['message_content'] = Variable<String>(content);
    map['created_at'] = Variable<int>(timestamp);
    if (!nullToAbsent || embedding != null) {
      map['embedding'] = Variable<Uint8List>(embedding);
    }
    if (!nullToAbsent || contextHash != null) {
      map['context_hash'] = Variable<String>(contextHash);
    }
    return map;
  }

  MessagesCompanion toCompanion(bool nullToAbsent) {
    return MessagesCompanion(
      id: Value(id),
      messageId: Value(messageId),
      authorId: Value(authorId),
      content: Value(content),
      timestamp: Value(timestamp),
      embedding: embedding == null && nullToAbsent
          ? const Value.absent()
          : Value(embedding),
      contextHash: contextHash == null && nullToAbsent
          ? const Value.absent()
          : Value(contextHash),
    );
  }

  factory Message.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Message(
      id: serializer.fromJson<int>(json['id']),
      messageId: serializer.fromJson<String>(json['messageId']),
      authorId: serializer.fromJson<int>(json['authorId']),
      content: serializer.fromJson<String>(json['content']),
      timestamp: serializer.fromJson<int>(json['timestamp']),
      embedding: serializer.fromJson<Uint8List?>(json['embedding']),
      contextHash: serializer.fromJson<String?>(json['contextHash']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'messageId': serializer.toJson<String>(messageId),
      'authorId': serializer.toJson<int>(authorId),
      'content': serializer.toJson<String>(content),
      'timestamp': serializer.toJson<int>(timestamp),
      'embedding': serializer.toJson<Uint8List?>(embedding),
      'contextHash': serializer.toJson<String?>(contextHash),
    };
  }

  Message copyWith(
          {int? id,
          String? messageId,
          int? authorId,
          String? content,
          int? timestamp,
          Value<Uint8List?> embedding = const Value.absent(),
          Value<String?> contextHash = const Value.absent()}) =>
      Message(
        id: id ?? this.id,
        messageId: messageId ?? this.messageId,
        authorId: authorId ?? this.authorId,
        content: content ?? this.content,
        timestamp: timestamp ?? this.timestamp,
        embedding: embedding.present ? embedding.value : this.embedding,
        contextHash: contextHash.present ? contextHash.value : this.contextHash,
      );
  Message copyWithCompanion(MessagesCompanion data) {
    return Message(
      id: data.id.present ? data.id.value : this.id,
      messageId: data.messageId.present ? data.messageId.value : this.messageId,
      authorId: data.authorId.present ? data.authorId.value : this.authorId,
      content: data.content.present ? data.content.value : this.content,
      timestamp: data.timestamp.present ? data.timestamp.value : this.timestamp,
      embedding: data.embedding.present ? data.embedding.value : this.embedding,
      contextHash:
          data.contextHash.present ? data.contextHash.value : this.contextHash,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Message(')
          ..write('id: $id, ')
          ..write('messageId: $messageId, ')
          ..write('authorId: $authorId, ')
          ..write('content: $content, ')
          ..write('timestamp: $timestamp, ')
          ..write('embedding: $embedding, ')
          ..write('contextHash: $contextHash')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, messageId, authorId, content, timestamp,
      $driftBlobEquality.hash(embedding), contextHash);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Message &&
          other.id == this.id &&
          other.messageId == this.messageId &&
          other.authorId == this.authorId &&
          other.content == this.content &&
          other.timestamp == this.timestamp &&
          $driftBlobEquality.equals(other.embedding, this.embedding) &&
          other.contextHash == this.contextHash);
}

class MessagesCompanion extends UpdateCompanion<Message> {
  final Value<int> id;
  final Value<String> messageId;
  final Value<int> authorId;
  final Value<String> content;
  final Value<int> timestamp;
  final Value<Uint8List?> embedding;
  final Value<String?> contextHash;
  const MessagesCompanion({
    this.id = const Value.absent(),
    this.messageId = const Value.absent(),
    this.authorId = const Value.absent(),
    this.content = const Value.absent(),
    this.timestamp = const Value.absent(),
    this.embedding = const Value.absent(),
    this.contextHash = const Value.absent(),
  });
  MessagesCompanion.insert({
    this.id = const Value.absent(),
    required String messageId,
    required int authorId,
    required String content,
    required int timestamp,
    this.embedding = const Value.absent(),
    this.contextHash = const Value.absent(),
  })  : messageId = Value(messageId),
        authorId = Value(authorId),
        content = Value(content),
        timestamp = Value(timestamp);
  static Insertable<Message> custom({
    Expression<int>? id,
    Expression<String>? messageId,
    Expression<int>? authorId,
    Expression<String>? content,
    Expression<int>? timestamp,
    Expression<Uint8List>? embedding,
    Expression<String>? contextHash,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (messageId != null) 'message_id': messageId,
      if (authorId != null) 'author_id': authorId,
      if (content != null) 'message_content': content,
      if (timestamp != null) 'created_at': timestamp,
      if (embedding != null) 'embedding': embedding,
      if (contextHash != null) 'context_hash': contextHash,
    });
  }

  MessagesCompanion copyWith(
      {Value<int>? id,
      Value<String>? messageId,
      Value<int>? authorId,
      Value<String>? content,
      Value<int>? timestamp,
      Value<Uint8List?>? embedding,
      Value<String?>? contextHash}) {
    return MessagesCompanion(
      id: id ?? this.id,
      messageId: messageId ?? this.messageId,
      authorId: authorId ?? this.authorId,
      content: content ?? this.content,
      timestamp: timestamp ?? this.timestamp,
      embedding: embedding ?? this.embedding,
      contextHash: contextHash ?? this.contextHash,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (messageId.present) {
      map['message_id'] = Variable<String>(messageId.value);
    }
    if (authorId.present) {
      map['author_id'] = Variable<int>(authorId.value);
    }
    if (content.present) {
      map['message_content'] = Variable<String>(content.value);
    }
    if (timestamp.present) {
      map['created_at'] = Variable<int>(timestamp.value);
    }
    if (embedding.present) {
      map['embedding'] = Variable<Uint8List>(embedding.value);
    }
    if (contextHash.present) {
      map['context_hash'] = Variable<String>(contextHash.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MessagesCompanion(')
          ..write('id: $id, ')
          ..write('messageId: $messageId, ')
          ..write('authorId: $authorId, ')
          ..write('content: $content, ')
          ..write('timestamp: $timestamp, ')
          ..write('embedding: $embedding, ')
          ..write('contextHash: $contextHash')
          ..write(')'))
        .toString();
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _embeddingMeta =
      const VerificationMeta('embedding');
  @override
  late final GeneratedColumn<Uint8List> embedding = GeneratedColumn<Uint8List>(
      'embedding', aliasedName, true,
      type: DriftSqlType.blob, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userId, firstName, lastName, embedding];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    }
    if (data.containsKey('embedding')) {
      context.handle(_embeddingMeta,
          embedding.isAcceptableOrUnknown(data['embedding']!, _embeddingMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name']),
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name']),
      embedding: attachedDatabase.typeMapping
          .read(DriftSqlType.blob, data['${effectivePrefix}embedding']),
    );
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(attachedDatabase, alias);
  }
}

class User extends DataClass implements Insertable<User> {
  final int id;
  final String userId;
  final String? firstName;
  final String? lastName;
  final Uint8List? embedding;
  const User(
      {required this.id,
      required this.userId,
      this.firstName,
      this.lastName,
      this.embedding});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<String>(userId);
    if (!nullToAbsent || firstName != null) {
      map['first_name'] = Variable<String>(firstName);
    }
    if (!nullToAbsent || lastName != null) {
      map['last_name'] = Variable<String>(lastName);
    }
    if (!nullToAbsent || embedding != null) {
      map['embedding'] = Variable<Uint8List>(embedding);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: Value(id),
      userId: Value(userId),
      firstName: firstName == null && nullToAbsent
          ? const Value.absent()
          : Value(firstName),
      lastName: lastName == null && nullToAbsent
          ? const Value.absent()
          : Value(lastName),
      embedding: embedding == null && nullToAbsent
          ? const Value.absent()
          : Value(embedding),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      firstName: serializer.fromJson<String?>(json['firstName']),
      lastName: serializer.fromJson<String?>(json['lastName']),
      embedding: serializer.fromJson<Uint8List?>(json['embedding']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<String>(userId),
      'firstName': serializer.toJson<String?>(firstName),
      'lastName': serializer.toJson<String?>(lastName),
      'embedding': serializer.toJson<Uint8List?>(embedding),
    };
  }

  User copyWith(
          {int? id,
          String? userId,
          Value<String?> firstName = const Value.absent(),
          Value<String?> lastName = const Value.absent(),
          Value<Uint8List?> embedding = const Value.absent()}) =>
      User(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        firstName: firstName.present ? firstName.value : this.firstName,
        lastName: lastName.present ? lastName.value : this.lastName,
        embedding: embedding.present ? embedding.value : this.embedding,
      );
  User copyWithCompanion(UsersCompanion data) {
    return User(
      id: data.id.present ? data.id.value : this.id,
      userId: data.userId.present ? data.userId.value : this.userId,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      embedding: data.embedding.present ? data.embedding.value : this.embedding,
    );
  }

  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('embedding: $embedding')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, userId, firstName, lastName, $driftBlobEquality.hash(embedding));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          $driftBlobEquality.equals(other.embedding, this.embedding));
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> userId;
  final Value<String?> firstName;
  final Value<String?> lastName;
  final Value<Uint8List?> embedding;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.embedding = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    required String userId,
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.embedding = const Value.absent(),
  }) : userId = Value(userId);
  static Insertable<User> custom({
    Expression<int>? id,
    Expression<String>? userId,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<Uint8List>? embedding,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (embedding != null) 'embedding': embedding,
    });
  }

  UsersCompanion copyWith(
      {Value<int>? id,
      Value<String>? userId,
      Value<String?>? firstName,
      Value<String?>? lastName,
      Value<Uint8List?>? embedding}) {
    return UsersCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      embedding: embedding ?? this.embedding,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (embedding.present) {
      map['embedding'] = Variable<Uint8List>(embedding.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('embedding: $embedding')
          ..write(')'))
        .toString();
  }
}

abstract class _$ChatDatabase extends GeneratedDatabase {
  _$ChatDatabase(QueryExecutor e) : super(e);
  $ChatDatabaseManager get managers => $ChatDatabaseManager(this);
  late final $MessagesTable messages = $MessagesTable(this);
  late final $UsersTable users = $UsersTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [messages, users];
}

typedef $$MessagesTableCreateCompanionBuilder = MessagesCompanion Function({
  Value<int> id,
  required String messageId,
  required int authorId,
  required String content,
  required int timestamp,
  Value<Uint8List?> embedding,
  Value<String?> contextHash,
});
typedef $$MessagesTableUpdateCompanionBuilder = MessagesCompanion Function({
  Value<int> id,
  Value<String> messageId,
  Value<int> authorId,
  Value<String> content,
  Value<int> timestamp,
  Value<Uint8List?> embedding,
  Value<String?> contextHash,
});

class $$MessagesTableFilterComposer
    extends Composer<_$ChatDatabase, $MessagesTable> {
  $$MessagesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get messageId => $composableBuilder(
      column: $table.messageId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get authorId => $composableBuilder(
      column: $table.authorId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get embedding => $composableBuilder(
      column: $table.embedding, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contextHash => $composableBuilder(
      column: $table.contextHash, builder: (column) => ColumnFilters(column));
}

class $$MessagesTableOrderingComposer
    extends Composer<_$ChatDatabase, $MessagesTable> {
  $$MessagesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get messageId => $composableBuilder(
      column: $table.messageId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get authorId => $composableBuilder(
      column: $table.authorId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get timestamp => $composableBuilder(
      column: $table.timestamp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get embedding => $composableBuilder(
      column: $table.embedding, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contextHash => $composableBuilder(
      column: $table.contextHash, builder: (column) => ColumnOrderings(column));
}

class $$MessagesTableAnnotationComposer
    extends Composer<_$ChatDatabase, $MessagesTable> {
  $$MessagesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get messageId =>
      $composableBuilder(column: $table.messageId, builder: (column) => column);

  GeneratedColumn<int> get authorId =>
      $composableBuilder(column: $table.authorId, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<int> get timestamp =>
      $composableBuilder(column: $table.timestamp, builder: (column) => column);

  GeneratedColumn<Uint8List> get embedding =>
      $composableBuilder(column: $table.embedding, builder: (column) => column);

  GeneratedColumn<String> get contextHash => $composableBuilder(
      column: $table.contextHash, builder: (column) => column);
}

class $$MessagesTableTableManager extends RootTableManager<
    _$ChatDatabase,
    $MessagesTable,
    Message,
    $$MessagesTableFilterComposer,
    $$MessagesTableOrderingComposer,
    $$MessagesTableAnnotationComposer,
    $$MessagesTableCreateCompanionBuilder,
    $$MessagesTableUpdateCompanionBuilder,
    (Message, BaseReferences<_$ChatDatabase, $MessagesTable, Message>),
    Message,
    PrefetchHooks Function()> {
  $$MessagesTableTableManager(_$ChatDatabase db, $MessagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MessagesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MessagesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MessagesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> messageId = const Value.absent(),
            Value<int> authorId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> timestamp = const Value.absent(),
            Value<Uint8List?> embedding = const Value.absent(),
            Value<String?> contextHash = const Value.absent(),
          }) =>
              MessagesCompanion(
            id: id,
            messageId: messageId,
            authorId: authorId,
            content: content,
            timestamp: timestamp,
            embedding: embedding,
            contextHash: contextHash,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String messageId,
            required int authorId,
            required String content,
            required int timestamp,
            Value<Uint8List?> embedding = const Value.absent(),
            Value<String?> contextHash = const Value.absent(),
          }) =>
              MessagesCompanion.insert(
            id: id,
            messageId: messageId,
            authorId: authorId,
            content: content,
            timestamp: timestamp,
            embedding: embedding,
            contextHash: contextHash,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MessagesTableProcessedTableManager = ProcessedTableManager<
    _$ChatDatabase,
    $MessagesTable,
    Message,
    $$MessagesTableFilterComposer,
    $$MessagesTableOrderingComposer,
    $$MessagesTableAnnotationComposer,
    $$MessagesTableCreateCompanionBuilder,
    $$MessagesTableUpdateCompanionBuilder,
    (Message, BaseReferences<_$ChatDatabase, $MessagesTable, Message>),
    Message,
    PrefetchHooks Function()>;
typedef $$UsersTableCreateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  required String userId,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<Uint8List?> embedding,
});
typedef $$UsersTableUpdateCompanionBuilder = UsersCompanion Function({
  Value<int> id,
  Value<String> userId,
  Value<String?> firstName,
  Value<String?> lastName,
  Value<Uint8List?> embedding,
});

class $$UsersTableFilterComposer extends Composer<_$ChatDatabase, $UsersTable> {
  $$UsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<Uint8List> get embedding => $composableBuilder(
      column: $table.embedding, builder: (column) => ColumnFilters(column));
}

class $$UsersTableOrderingComposer
    extends Composer<_$ChatDatabase, $UsersTable> {
  $$UsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<Uint8List> get embedding => $composableBuilder(
      column: $table.embedding, builder: (column) => ColumnOrderings(column));
}

class $$UsersTableAnnotationComposer
    extends Composer<_$ChatDatabase, $UsersTable> {
  $$UsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<Uint8List> get embedding =>
      $composableBuilder(column: $table.embedding, builder: (column) => column);
}

class $$UsersTableTableManager extends RootTableManager<
    _$ChatDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$ChatDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()> {
  $$UsersTableTableManager(_$ChatDatabase db, $UsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userId = const Value.absent(),
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<Uint8List?> embedding = const Value.absent(),
          }) =>
              UsersCompanion(
            id: id,
            userId: userId,
            firstName: firstName,
            lastName: lastName,
            embedding: embedding,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userId,
            Value<String?> firstName = const Value.absent(),
            Value<String?> lastName = const Value.absent(),
            Value<Uint8List?> embedding = const Value.absent(),
          }) =>
              UsersCompanion.insert(
            id: id,
            userId: userId,
            firstName: firstName,
            lastName: lastName,
            embedding: embedding,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UsersTableProcessedTableManager = ProcessedTableManager<
    _$ChatDatabase,
    $UsersTable,
    User,
    $$UsersTableFilterComposer,
    $$UsersTableOrderingComposer,
    $$UsersTableAnnotationComposer,
    $$UsersTableCreateCompanionBuilder,
    $$UsersTableUpdateCompanionBuilder,
    (User, BaseReferences<_$ChatDatabase, $UsersTable, User>),
    User,
    PrefetchHooks Function()>;

class $ChatDatabaseManager {
  final _$ChatDatabase _db;
  $ChatDatabaseManager(this._db);
  $$MessagesTableTableManager get messages =>
      $$MessagesTableTableManager(_db, _db.messages);
  $$UsersTableTableManager get users =>
      $$UsersTableTableManager(_db, _db.users);
}
