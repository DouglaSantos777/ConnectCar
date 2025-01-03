import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/categories.dart';

import 'package:connectcar/data/database/database.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoryDao extends DatabaseAccessor<Database> with _$CategoryDaoMixin {
  final Database db;

  CategoryDao(this.db) : super(db);

  Stream<List<Category>> watchCategories() => select(categories).watch();

  Future insertTag(Insertable<Category> category) =>
      into(categories).insert(category);
}

