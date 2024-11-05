import 'package:drift/drift.dart';

@DataClassName('User')
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get userId => text().named('user_id')();
  TextColumn get firstName => text().named('first_name').nullable()();
  TextColumn get lastName => text().named('last_name').nullable()();
  BlobColumn get embedding => blob().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}
