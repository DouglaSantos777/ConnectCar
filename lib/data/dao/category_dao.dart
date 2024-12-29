import 'package:drift/drift.dart';
import 'package:connectcar/data/tables/category.dart';

import 'package:connectcar/data/database/database.dart';

part 'category_dao.g.dart';

@DriftAccessor(tables: [Category])
class CategoryDao extends DatabaseAccessor<Database> with _$CategoryDaoMixin {
  final Database db;

  CategoryDao(this.db) : super(db);

  Stream<List<Categories>> watchTags() => select(category).watch();
  Future insertTag(Insertable<Categories> cat) =>
      into(category).insert(cat);
}
