import 'package:drift/drift.dart';

@DataClassName('Message')
class Messages extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get messageId => text().named('message_id')();
  IntColumn get authorId => integer().named('author_id')();
  TextColumn get content => text().named('message_content')();
  IntColumn get timestamp => integer().named('created_at')();
  BlobColumn get embedding => blob().nullable()();
  TextColumn get contextHash => text().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
