import 'dart:io';

import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/categories.dart';
import 'package:connectcar/data/tables/status.dart';
import 'package:connectcar/data/tables/cars.dart';
import 'package:connectcar/data/dao/car_dao.dart';
import 'package:connectcar/data/dao/category_dao.dart';
import 'package:connectcar/data/dao/status_dao.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'database.sqlite'));

    return NativeDatabase(file);
  });
}

@DriftDatabase(
  tables: [Cars, Categories, Status],
  daos: [CarDao, CategoryDao, StatusDao],
)
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onUpgrade: (migrator, from, to) async {
          if (from == 1) {
            await migrator.addColumn(cars, cars.category);
            await migrator.addColumn(cars, cars.status); 
            await migrator.createTable(categories);
            await migrator.createTable(status);
          }
        },
        beforeOpen: (details) async {
          await customStatement('PRAGMA foreign_keys = ON');
        },
      );
}
