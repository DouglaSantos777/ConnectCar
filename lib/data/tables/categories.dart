import 'package:drift/drift.dart';

class Categories extends Table {
  TextColumn get nome => text().withLength(min: 1, max: 20)();

  @override
  Set<Column> get primaryKey => {nome};
}
